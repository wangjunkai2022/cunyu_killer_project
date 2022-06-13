package androidx.heifwriter;

import android.graphics.Bitmap;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import android.util.Pair;
import android.view.Surface;
import androidx.heifwriter.HeifEncoder;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class HeifWriter implements AutoCloseable {
    private static final boolean DEBUG = false;
    public static final int INPUT_MODE_BITMAP = 2;
    public static final int INPUT_MODE_BUFFER = 0;
    public static final int INPUT_MODE_SURFACE = 1;
    private static final int MUXER_DATA_FLAG = 16;
    private static final String TAG = "HeifWriter";
    private final Handler mHandler;
    private final HandlerThread mHandlerThread;
    private HeifEncoder mHeifEncoder;
    private final int mInputMode;
    final int mMaxImages;
    MediaMuxer mMuxer;
    int mNumTiles;
    int mOutputIndex;
    final int mPrimaryIndex;
    final int mRotation;
    private boolean mStarted;
    int[] mTrackIndexArray;
    final ResultWaiter mResultWaiter = new ResultWaiter();
    final AtomicBoolean mMuxerStarted = new AtomicBoolean(false);
    private final List<Pair<Integer, ByteBuffer>> mExifList = new ArrayList();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface InputMode {
    }

    /* loaded from: classes2.dex */
    public static final class Builder {
        private final FileDescriptor mFd;
        private boolean mGridEnabled;
        private Handler mHandler;
        private final int mHeight;
        private final int mInputMode;
        private int mMaxImages;
        private final String mPath;
        private int mPrimaryIndex;
        private int mQuality;
        private int mRotation;
        private final int mWidth;

        public Builder(String str, int i, int i2, int i3) {
            this(str, null, i, i2, i3);
        }

        public Builder(FileDescriptor fileDescriptor, int i, int i2, int i3) {
            this(null, fileDescriptor, i, i2, i3);
        }

        private Builder(String str, FileDescriptor fileDescriptor, int i, int i2, int i3) {
            this.mGridEnabled = true;
            this.mQuality = 100;
            this.mMaxImages = 1;
            this.mPrimaryIndex = 0;
            this.mRotation = 0;
            if (i <= 0 || i2 <= 0) {
                throw new IllegalArgumentException("Invalid image size: " + i + "x" + i2);
            }
            this.mPath = str;
            this.mFd = fileDescriptor;
            this.mWidth = i;
            this.mHeight = i2;
            this.mInputMode = i3;
        }

        public Builder setRotation(int i) {
            if (i == 0 || i == 90 || i == 180 || i == 270) {
                this.mRotation = i;
                return this;
            }
            throw new IllegalArgumentException("Invalid rotation angle: " + i);
        }

        public Builder setGridEnabled(boolean z) {
            this.mGridEnabled = z;
            return this;
        }

        public Builder setQuality(int i) {
            if (i < 0 || i > 100) {
                throw new IllegalArgumentException("Invalid quality: " + i);
            }
            this.mQuality = i;
            return this;
        }

        public Builder setMaxImages(int i) {
            if (i > 0) {
                this.mMaxImages = i;
                return this;
            }
            throw new IllegalArgumentException("Invalid maxImage: " + i);
        }

        public Builder setPrimaryIndex(int i) {
            if (i >= 0) {
                this.mPrimaryIndex = i;
                return this;
            }
            throw new IllegalArgumentException("Invalid primaryIndex: " + i);
        }

        public Builder setHandler(Handler handler) {
            this.mHandler = handler;
            return this;
        }

        public HeifWriter build() throws IOException {
            return new HeifWriter(this.mPath, this.mFd, this.mWidth, this.mHeight, this.mRotation, this.mGridEnabled, this.mQuality, this.mMaxImages, this.mPrimaryIndex, this.mInputMode, this.mHandler);
        }
    }

    HeifWriter(String str, FileDescriptor fileDescriptor, int i, int i2, int i3, boolean z, int i4, int i5, int i6, int i7, Handler handler) throws IOException {
        if (i6 < i5) {
            MediaFormat.createVideoFormat("image/vnd.android.heic", i, i2);
            this.mNumTiles = 1;
            this.mRotation = i3;
            this.mInputMode = i7;
            this.mMaxImages = i5;
            this.mPrimaryIndex = i6;
            Looper looper = handler != null ? handler.getLooper() : null;
            if (looper == null) {
                this.mHandlerThread = new HandlerThread("HeifEncoderThread", -2);
                this.mHandlerThread.start();
                looper = this.mHandlerThread.getLooper();
            } else {
                this.mHandlerThread = null;
            }
            this.mHandler = new Handler(looper);
            this.mMuxer = str != null ? new MediaMuxer(str, 3) : new MediaMuxer(fileDescriptor, 3);
            this.mHeifEncoder = new HeifEncoder(i, i2, z, i4, this.mInputMode, this.mHandler, new HeifCallback());
            return;
        }
        throw new IllegalArgumentException("Invalid maxImages (" + i5 + ") or primaryIndex (" + i6 + ")");
    }

    public void start() {
        checkStarted(false);
        this.mStarted = true;
        this.mHeifEncoder.start();
    }

    public void addYuvBuffer(int i, byte[] bArr) {
        checkStartedAndMode(0);
        synchronized (this) {
            if (this.mHeifEncoder != null) {
                this.mHeifEncoder.addYuvBuffer(i, bArr);
            }
        }
    }

    public Surface getInputSurface() {
        checkStarted(false);
        checkMode(1);
        return this.mHeifEncoder.getInputSurface();
    }

    public void setInputEndOfStreamTimestamp(long j) {
        checkStartedAndMode(1);
        synchronized (this) {
            if (this.mHeifEncoder != null) {
                this.mHeifEncoder.setEndOfInputStreamTimestamp(j);
            }
        }
    }

    public void addBitmap(Bitmap bitmap) {
        checkStartedAndMode(2);
        synchronized (this) {
            if (this.mHeifEncoder != null) {
                this.mHeifEncoder.addBitmap(bitmap);
            }
        }
    }

    public void addExifData(int i, byte[] bArr, int i2, int i3) {
        checkStarted(true);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i3);
        allocateDirect.put(bArr, i2, i3);
        allocateDirect.flip();
        synchronized (this.mExifList) {
            this.mExifList.add(new Pair<>(Integer.valueOf(i), allocateDirect));
        }
        processExifData();
    }

    void processExifData() {
        Pair<Integer, ByteBuffer> remove;
        if (this.mMuxerStarted.get()) {
            while (true) {
                synchronized (this.mExifList) {
                    if (!this.mExifList.isEmpty()) {
                        remove = this.mExifList.remove(0);
                    } else {
                        return;
                    }
                }
                MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                bufferInfo.set(((ByteBuffer) remove.second).position(), ((ByteBuffer) remove.second).remaining(), 0, 16);
                this.mMuxer.writeSampleData(this.mTrackIndexArray[((Integer) remove.first).intValue()], (ByteBuffer) remove.second, bufferInfo);
            }
        }
    }

    public void stop(long j) throws Exception {
        checkStarted(true);
        synchronized (this) {
            if (this.mHeifEncoder != null) {
                this.mHeifEncoder.stopAsync();
            }
        }
        this.mResultWaiter.waitForResult(j);
        processExifData();
        closeInternal();
    }

    private void checkStarted(boolean z) {
        if (this.mStarted != z) {
            throw new IllegalStateException("Already started");
        }
    }

    private void checkMode(int i) {
        if (this.mInputMode != i) {
            throw new IllegalStateException("Not valid in input mode " + this.mInputMode);
        }
    }

    private void checkStartedAndMode(int i) {
        checkStarted(true);
        checkMode(i);
    }

    void closeInternal() {
        MediaMuxer mediaMuxer = this.mMuxer;
        if (mediaMuxer != null) {
            mediaMuxer.stop();
            this.mMuxer.release();
            this.mMuxer = null;
        }
        HeifEncoder heifEncoder = this.mHeifEncoder;
        if (heifEncoder != null) {
            heifEncoder.close();
            synchronized (this) {
                this.mHeifEncoder = null;
            }
        }
    }

    /* loaded from: classes2.dex */
    class HeifCallback extends HeifEncoder.Callback {
        private boolean mEncoderStopped;

        HeifCallback() {
        }

        @Override // androidx.heifwriter.HeifEncoder.Callback
        public void onOutputFormatChanged(HeifEncoder heifEncoder, MediaFormat mediaFormat) {
            if (!this.mEncoderStopped) {
                if (HeifWriter.this.mTrackIndexArray != null) {
                    stopAndNotify(new IllegalStateException("Output format changed after muxer started"));
                    return;
                }
                try {
                    HeifWriter.this.mNumTiles = mediaFormat.getInteger("grid-rows") * mediaFormat.getInteger("grid-cols");
                } catch (ClassCastException | NullPointerException unused) {
                    HeifWriter.this.mNumTiles = 1;
                }
                HeifWriter heifWriter = HeifWriter.this;
                heifWriter.mTrackIndexArray = new int[heifWriter.mMaxImages];
                if (HeifWriter.this.mRotation > 0) {
                    Log.d(HeifWriter.TAG, "setting rotation: " + HeifWriter.this.mRotation);
                    HeifWriter.this.mMuxer.setOrientationHint(HeifWriter.this.mRotation);
                }
                int i = 0;
                while (i < HeifWriter.this.mTrackIndexArray.length) {
                    mediaFormat.setInteger("is-default", i == HeifWriter.this.mPrimaryIndex ? 1 : 0);
                    HeifWriter.this.mTrackIndexArray[i] = HeifWriter.this.mMuxer.addTrack(mediaFormat);
                    i++;
                }
                HeifWriter.this.mMuxer.start();
                HeifWriter.this.mMuxerStarted.set(true);
                HeifWriter.this.processExifData();
            }
        }

        @Override // androidx.heifwriter.HeifEncoder.Callback
        public void onDrainOutputBuffer(HeifEncoder heifEncoder, ByteBuffer byteBuffer) {
            if (!this.mEncoderStopped) {
                if (HeifWriter.this.mTrackIndexArray == null) {
                    stopAndNotify(new IllegalStateException("Output buffer received before format info"));
                    return;
                }
                if (HeifWriter.this.mOutputIndex < HeifWriter.this.mMaxImages * HeifWriter.this.mNumTiles) {
                    MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                    bufferInfo.set(byteBuffer.position(), byteBuffer.remaining(), 0, 0);
                    HeifWriter.this.mMuxer.writeSampleData(HeifWriter.this.mTrackIndexArray[HeifWriter.this.mOutputIndex / HeifWriter.this.mNumTiles], byteBuffer, bufferInfo);
                }
                HeifWriter.this.mOutputIndex++;
                if (HeifWriter.this.mOutputIndex == HeifWriter.this.mMaxImages * HeifWriter.this.mNumTiles) {
                    stopAndNotify(null);
                }
            }
        }

        @Override // androidx.heifwriter.HeifEncoder.Callback
        public void onComplete(HeifEncoder heifEncoder) {
            stopAndNotify(null);
        }

        @Override // androidx.heifwriter.HeifEncoder.Callback
        public void onError(HeifEncoder heifEncoder, MediaCodec.CodecException codecException) {
            stopAndNotify(codecException);
        }

        private void stopAndNotify(Exception exc) {
            if (!this.mEncoderStopped) {
                this.mEncoderStopped = true;
                HeifWriter.this.mResultWaiter.signalResult(exc);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class ResultWaiter {
        private boolean mDone;
        private Exception mException;

        ResultWaiter() {
        }

        synchronized void waitForResult(long j) throws Exception {
            int i = (j > 0 ? 1 : (j == 0 ? 0 : -1));
            if (i >= 0) {
                if (i == 0) {
                    while (!this.mDone) {
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                        }
                    }
                } else {
                    long currentTimeMillis = System.currentTimeMillis();
                    while (!this.mDone && j > 0) {
                        try {
                            wait(j);
                        } catch (InterruptedException unused2) {
                        }
                        j -= System.currentTimeMillis() - currentTimeMillis;
                    }
                }
                if (!this.mDone) {
                    this.mDone = true;
                    this.mException = new TimeoutException("timed out waiting for result");
                }
                if (this.mException != null) {
                    throw this.mException;
                }
            } else {
                throw new IllegalArgumentException("timeoutMs is negative");
            }
        }

        synchronized void signalResult(Exception exc) {
            if (!this.mDone) {
                this.mDone = true;
                this.mException = exc;
                notifyAll();
            }
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.mHandler.postAtFrontOfQueue(new Runnable() { // from class: androidx.heifwriter.HeifWriter.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    HeifWriter.this.closeInternal();
                } catch (Exception unused) {
                }
            }
        });
    }
}
