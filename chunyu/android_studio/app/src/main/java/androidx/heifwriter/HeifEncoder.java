package androidx.heifwriter;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.Image;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.view.Surface;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public final class HeifEncoder implements AutoCloseable, SurfaceTexture.OnFrameAvailableListener {
    private static final boolean DEBUG = false;
    private static final int GRID_HEIGHT = 512;
    private static final int GRID_WIDTH = 512;
    private static final int INPUT_BUFFER_POOL_SIZE = 2;
    public static final int INPUT_MODE_BITMAP = 2;
    public static final int INPUT_MODE_BUFFER = 0;
    public static final int INPUT_MODE_SURFACE = 1;
    private static final double MAX_COMPRESS_RATIO = 0.25d;
    private static final String TAG = "HeifEncoder";
    final Callback mCallback;
    private ByteBuffer mCurrentBuffer;
    private final Rect mDstRect;
    SurfaceEOSTracker mEOSTracker;
    MediaCodec mEncoder;
    private EglWindowSurface mEncoderEglSurface;
    private Surface mEncoderSurface;
    final int mGridCols;
    final int mGridHeight;
    final int mGridRows;
    final int mGridWidth;
    final Handler mHandler;
    private final HandlerThread mHandlerThread;
    final int mHeight;
    boolean mInputEOS;
    private int mInputIndex;
    private final int mInputMode;
    private Surface mInputSurface;
    private SurfaceTexture mInputTexture;
    private final int mNumTiles;
    private EglRectBlt mRectBlt;
    private final Rect mSrcRect;
    private int mTextureId;
    final boolean mUseGrid;
    final int mWidth;
    private final ArrayList<ByteBuffer> mEmptyBuffers = new ArrayList<>();
    private final ArrayList<ByteBuffer> mFilledBuffers = new ArrayList<>();
    final ArrayList<Integer> mCodecInputBuffers = new ArrayList<>();
    private final float[] mTmpMatrix = new float[16];

    /* loaded from: classes4.dex */
    public static abstract class Callback {
        public abstract void onComplete(HeifEncoder heifEncoder);

        public abstract void onDrainOutputBuffer(HeifEncoder heifEncoder, ByteBuffer byteBuffer);

        public abstract void onError(HeifEncoder heifEncoder, MediaCodec.CodecException codecException);

        public abstract void onOutputFormatChanged(HeifEncoder heifEncoder, MediaFormat mediaFormat);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4.dex */
    public @interface InputMode {
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0257  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public HeifEncoder(int r17, int r18, boolean r19, int r20, int r21, android.os.Handler r22, androidx.heifwriter.HeifEncoder.Callback r23) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 656
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.heifwriter.HeifEncoder.<init>(int, int, boolean, int, int, android.os.Handler, androidx.heifwriter.HeifEncoder$Callback):void");
    }

    private void copyTilesGL() {
        GLES20.glViewport(0, 0, this.mGridWidth, this.mGridHeight);
        for (int i = 0; i < this.mGridRows; i++) {
            for (int i2 = 0; i2 < this.mGridCols; i2++) {
                int i3 = this.mGridWidth;
                int i4 = i2 * i3;
                int i5 = this.mGridHeight;
                int i6 = i * i5;
                this.mSrcRect.set(i4, i6, i3 + i4, i5 + i6);
                this.mRectBlt.copyRect(this.mTextureId, Texture2dProgram.V_FLIP_MATRIX, this.mSrcRect);
                EglWindowSurface eglWindowSurface = this.mEncoderEglSurface;
                int i7 = this.mInputIndex;
                this.mInputIndex = i7 + 1;
                eglWindowSurface.setPresentationTime(computePresentationTime(i7) * 1000);
                this.mEncoderEglSurface.swapBuffers();
            }
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this) {
            if (this.mEncoderEglSurface != null) {
                this.mEncoderEglSurface.makeCurrent();
                surfaceTexture.updateTexImage();
                surfaceTexture.getTransformMatrix(this.mTmpMatrix);
                if (this.mEOSTracker.updateLastInputAndEncoderTime(surfaceTexture.getTimestamp(), computePresentationTime((this.mInputIndex + this.mNumTiles) - 1))) {
                    copyTilesGL();
                }
                surfaceTexture.releaseTexImage();
                this.mEncoderEglSurface.makeUnCurrent();
            }
        }
    }

    public void start() {
        this.mEncoder.start();
    }

    public void addYuvBuffer(int i, byte[] bArr) {
        if (this.mInputMode != 0) {
            throw new IllegalStateException("addYuvBuffer is only allowed in buffer input mode");
        } else if (bArr == null || bArr.length != ((this.mWidth * this.mHeight) * 3) / 2) {
            throw new IllegalArgumentException("invalid data");
        } else {
            addYuvBufferInternal(bArr);
        }
    }

    public Surface getInputSurface() {
        if (this.mInputMode == 1) {
            return this.mInputSurface;
        }
        throw new IllegalStateException("getInputSurface is only allowed in surface input mode");
    }

    public void setEndOfInputStreamTimestamp(long j) {
        if (this.mInputMode == 1) {
            SurfaceEOSTracker surfaceEOSTracker = this.mEOSTracker;
            if (surfaceEOSTracker != null) {
                surfaceEOSTracker.updateInputEOSTime(j);
                return;
            }
            return;
        }
        throw new IllegalStateException("setEndOfInputStreamTimestamp is only allowed in surface input mode");
    }

    public void addBitmap(Bitmap bitmap) {
        if (this.mInputMode != 2) {
            throw new IllegalStateException("addBitmap is only allowed in bitmap input mode");
        } else if (this.mEOSTracker.updateLastInputAndEncoderTime(computePresentationTime(this.mInputIndex) * 1000, computePresentationTime((this.mInputIndex + this.mNumTiles) - 1))) {
            synchronized (this) {
                if (this.mEncoderEglSurface != null) {
                    this.mEncoderEglSurface.makeCurrent();
                    this.mRectBlt.loadTexture(this.mTextureId, bitmap);
                    copyTilesGL();
                    this.mEncoderEglSurface.makeUnCurrent();
                }
            }
        }
    }

    public void stopAsync() {
        int i = this.mInputMode;
        if (i == 2) {
            this.mEOSTracker.updateInputEOSTime(0);
        } else if (i == 0) {
            addYuvBufferInternal(null);
        }
    }

    private long computePresentationTime(int i) {
        return ((((long) i) * 1000000) / ((long) this.mNumTiles)) + 132;
    }

    private void addYuvBufferInternal(byte[] bArr) {
        ByteBuffer acquireEmptyBuffer = acquireEmptyBuffer();
        if (acquireEmptyBuffer != null) {
            acquireEmptyBuffer.clear();
            if (bArr != null) {
                acquireEmptyBuffer.put(bArr);
            }
            acquireEmptyBuffer.flip();
            synchronized (this.mFilledBuffers) {
                this.mFilledBuffers.add(acquireEmptyBuffer);
            }
            this.mHandler.post(new Runnable() { // from class: androidx.heifwriter.HeifEncoder.1
                @Override // java.lang.Runnable
                public void run() {
                    HeifEncoder.this.maybeCopyOneTileYUV();
                }
            });
        }
    }

    void maybeCopyOneTileYUV() {
        int i;
        while (true) {
            ByteBuffer currentBuffer = getCurrentBuffer();
            if (currentBuffer != null && !this.mCodecInputBuffers.isEmpty()) {
                int i2 = 0;
                int intValue = this.mCodecInputBuffers.remove(0).intValue();
                boolean z = this.mInputIndex % this.mNumTiles == 0 && currentBuffer.remaining() == 0;
                if (!z) {
                    Image inputImage = this.mEncoder.getInputImage(intValue);
                    int i3 = this.mGridWidth;
                    int i4 = this.mInputIndex;
                    int i5 = this.mGridCols;
                    int i6 = (i4 % i5) * i3;
                    int i7 = this.mGridHeight;
                    int i8 = ((i4 / i5) % this.mGridRows) * i7;
                    this.mSrcRect.set(i6, i8, i3 + i6, i7 + i8);
                    copyOneTileYUV(currentBuffer, inputImage, this.mWidth, this.mHeight, this.mSrcRect, this.mDstRect);
                }
                MediaCodec mediaCodec = this.mEncoder;
                if (z) {
                    i = 0;
                } else {
                    i = mediaCodec.getInputBuffer(intValue).capacity();
                }
                int i9 = this.mInputIndex;
                this.mInputIndex = i9 + 1;
                long computePresentationTime = computePresentationTime(i9);
                if (z) {
                    i2 = 4;
                }
                mediaCodec.queueInputBuffer(intValue, 0, i, computePresentationTime, i2);
                if (z || this.mInputIndex % this.mNumTiles == 0) {
                    returnEmptyBufferAndNotify(z);
                }
            } else {
                return;
            }
        }
    }

    private static void copyOneTileYUV(ByteBuffer byteBuffer, Image image, int i, int i2, Rect rect, Rect rect2) {
        int i3;
        int i4;
        if (rect.width() == rect2.width() && rect.height() == rect2.height()) {
            if (i % 2 == 0 && i2 % 2 == 0) {
                int i5 = 2;
                if (rect.left % 2 == 0 && rect.top % 2 == 0 && rect.right % 2 == 0 && rect.bottom % 2 == 0 && rect2.left % 2 == 0 && rect2.top % 2 == 0 && rect2.right % 2 == 0 && rect2.bottom % 2 == 0) {
                    Image.Plane[] planes = image.getPlanes();
                    int i6 = 0;
                    while (i6 < planes.length) {
                        ByteBuffer buffer = planes[i6].getBuffer();
                        int pixelStride = planes[i6].getPixelStride();
                        int min = Math.min(rect.width(), i - rect.left);
                        int min2 = Math.min(rect.height(), i2 - rect.top);
                        if (i6 > 0) {
                            i4 = ((i * i2) * (i6 + 3)) / 4;
                            i3 = i5;
                        } else {
                            i3 = 1;
                            i4 = 0;
                        }
                        for (int i7 = 0; i7 < min2 / i3; i7++) {
                            byteBuffer.position(((((rect.top / i3) + i7) * i) / i3) + i4 + (rect.left / i3));
                            buffer.position((((rect2.top / i3) + i7) * planes[i6].getRowStride()) + ((rect2.left * pixelStride) / i3));
                            int i8 = 0;
                            while (true) {
                                int i9 = min / i3;
                                if (i8 < i9) {
                                    buffer.put(byteBuffer.get());
                                    if (pixelStride > 1 && i8 != i9 - 1) {
                                        buffer.position((buffer.position() + pixelStride) - 1);
                                    }
                                    i8++;
                                }
                            }
                        }
                        i6++;
                        i5 = 2;
                    }
                    return;
                }
            }
            throw new IllegalArgumentException("src or dst are not aligned!");
        }
        throw new IllegalArgumentException("src and dst rect size are different!");
    }

    private ByteBuffer acquireEmptyBuffer() {
        ByteBuffer remove;
        synchronized (this.mEmptyBuffers) {
            while (!this.mInputEOS && this.mEmptyBuffers.isEmpty()) {
                try {
                    this.mEmptyBuffers.wait();
                } catch (InterruptedException unused) {
                }
            }
            remove = this.mInputEOS ? null : this.mEmptyBuffers.remove(0);
        }
        return remove;
    }

    private ByteBuffer getCurrentBuffer() {
        ByteBuffer byteBuffer;
        if (!this.mInputEOS && this.mCurrentBuffer == null) {
            synchronized (this.mFilledBuffers) {
                if (this.mFilledBuffers.isEmpty()) {
                    byteBuffer = null;
                } else {
                    byteBuffer = this.mFilledBuffers.remove(0);
                }
                this.mCurrentBuffer = byteBuffer;
            }
        }
        if (this.mInputEOS) {
            return null;
        }
        return this.mCurrentBuffer;
    }

    private void returnEmptyBufferAndNotify(boolean z) {
        synchronized (this.mEmptyBuffers) {
            this.mInputEOS = z | this.mInputEOS;
            this.mEmptyBuffers.add(this.mCurrentBuffer);
            this.mEmptyBuffers.notifyAll();
        }
        this.mCurrentBuffer = null;
    }

    void stopInternal() {
        MediaCodec mediaCodec = this.mEncoder;
        if (mediaCodec != null) {
            mediaCodec.stop();
            this.mEncoder.release();
            this.mEncoder = null;
        }
        synchronized (this.mEmptyBuffers) {
            this.mInputEOS = true;
            this.mEmptyBuffers.notifyAll();
        }
        synchronized (this) {
            if (this.mRectBlt != null) {
                this.mRectBlt.release(false);
                this.mRectBlt = null;
            }
            if (this.mEncoderEglSurface != null) {
                this.mEncoderEglSurface.release();
                this.mEncoderEglSurface = null;
            }
            if (this.mInputTexture != null) {
                this.mInputTexture.release();
                this.mInputTexture = null;
            }
        }
    }

    /* loaded from: classes4.dex */
    private class SurfaceEOSTracker {
        private static final boolean DEBUG_EOS = false;
        final boolean mCopyTiles;
        boolean mSignaled;
        long mInputEOSTimeNs = -1;
        long mLastInputTimeNs = -1;
        long mEncoderEOSTimeUs = -1;
        long mLastEncoderTimeUs = -1;
        long mLastOutputTimeUs = -1;

        SurfaceEOSTracker(boolean z) {
            this.mCopyTiles = z;
        }

        synchronized void updateInputEOSTime(long j) {
            if (this.mCopyTiles) {
                if (this.mInputEOSTimeNs < 0) {
                    this.mInputEOSTimeNs = j;
                }
            } else if (this.mEncoderEOSTimeUs < 0) {
                this.mEncoderEOSTimeUs = j / 1000;
            }
            updateEOSLocked();
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0015 A[Catch: all -> 0x001e, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0009, B:11:0x0015, B:12:0x0017), top: B:17:0x0001 }] */
        /* Code decompiled incorrectly, please refer to instructions dump */
        synchronized boolean updateLastInputAndEncoderTime(long r5, long r7) {
            /*
                r4 = this;
                monitor-enter(r4)
                long r0 = r4.mInputEOSTimeNs     // Catch: all -> 0x001e
                r2 = 0
                int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r0 < 0) goto L_0x0012
                long r0 = r4.mInputEOSTimeNs     // Catch: all -> 0x001e
                int r0 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
                if (r0 > 0) goto L_0x0010
                goto L_0x0012
            L_0x0010:
                r0 = 0
                goto L_0x0013
            L_0x0012:
                r0 = 1
            L_0x0013:
                if (r0 == 0) goto L_0x0017
                r4.mLastEncoderTimeUs = r7     // Catch: all -> 0x001e
            L_0x0017:
                r4.mLastInputTimeNs = r5     // Catch: all -> 0x001e
                r4.updateEOSLocked()     // Catch: all -> 0x001e
                monitor-exit(r4)
                return r0
            L_0x001e:
                r5 = move-exception
                monitor-exit(r4)
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.heifwriter.HeifEncoder.SurfaceEOSTracker.updateLastInputAndEncoderTime(long, long):boolean");
        }

        synchronized void updateLastOutputTime(long j) {
            this.mLastOutputTimeUs = j;
            updateEOSLocked();
        }

        private void updateEOSLocked() {
            if (!this.mSignaled) {
                if (this.mEncoderEOSTimeUs < 0) {
                    long j = this.mInputEOSTimeNs;
                    if (j >= 0 && this.mLastInputTimeNs >= j) {
                        long j2 = this.mLastEncoderTimeUs;
                        if (j2 < 0) {
                            doSignalEOSLocked();
                            return;
                        }
                        this.mEncoderEOSTimeUs = j2;
                    }
                }
                long j3 = this.mEncoderEOSTimeUs;
                if (j3 >= 0 && j3 <= this.mLastOutputTimeUs) {
                    doSignalEOSLocked();
                }
            }
        }

        private void doSignalEOSLocked() {
            HeifEncoder.this.mHandler.post(new Runnable() { // from class: androidx.heifwriter.HeifEncoder.SurfaceEOSTracker.1
                @Override // java.lang.Runnable
                public void run() {
                    if (HeifEncoder.this.mEncoder != null) {
                        HeifEncoder.this.mEncoder.signalEndOfInputStream();
                    }
                }
            });
            this.mSignaled = true;
        }
    }

    /* loaded from: classes4.dex */
    class EncoderCallback extends MediaCodec.Callback {
        private boolean mOutputEOS;

        EncoderCallback() {
        }

        @Override // android.media.MediaCodec.Callback
        public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
            if (mediaCodec == HeifEncoder.this.mEncoder) {
                if (!"image/vnd.android.heic".equals(mediaFormat.getString("mime"))) {
                    mediaFormat.setString("mime", "image/vnd.android.heic");
                    mediaFormat.setInteger("width", HeifEncoder.this.mWidth);
                    mediaFormat.setInteger("height", HeifEncoder.this.mHeight);
                    if (HeifEncoder.this.mUseGrid) {
                        mediaFormat.setInteger("tile-width", HeifEncoder.this.mGridWidth);
                        mediaFormat.setInteger("tile-height", HeifEncoder.this.mGridHeight);
                        mediaFormat.setInteger("grid-rows", HeifEncoder.this.mGridRows);
                        mediaFormat.setInteger("grid-cols", HeifEncoder.this.mGridCols);
                    }
                }
                HeifEncoder.this.mCallback.onOutputFormatChanged(HeifEncoder.this, mediaFormat);
            }
        }

        @Override // android.media.MediaCodec.Callback
        public void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
            if (mediaCodec == HeifEncoder.this.mEncoder && !HeifEncoder.this.mInputEOS) {
                HeifEncoder.this.mCodecInputBuffers.add(Integer.valueOf(i));
                HeifEncoder.this.maybeCopyOneTileYUV();
            }
        }

        @Override // android.media.MediaCodec.Callback
        public void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
            if (mediaCodec == HeifEncoder.this.mEncoder && !this.mOutputEOS) {
                if (bufferInfo.size > 0 && (bufferInfo.flags & 2) == 0) {
                    ByteBuffer outputBuffer = mediaCodec.getOutputBuffer(i);
                    outputBuffer.position(bufferInfo.offset);
                    outputBuffer.limit(bufferInfo.offset + bufferInfo.size);
                    if (HeifEncoder.this.mEOSTracker != null) {
                        HeifEncoder.this.mEOSTracker.updateLastOutputTime(bufferInfo.presentationTimeUs);
                    }
                    HeifEncoder.this.mCallback.onDrainOutputBuffer(HeifEncoder.this, outputBuffer);
                }
                this.mOutputEOS = ((bufferInfo.flags & 4) != 0) | this.mOutputEOS;
                mediaCodec.releaseOutputBuffer(i, false);
                if (this.mOutputEOS) {
                    stopAndNotify(null);
                }
            }
        }

        @Override // android.media.MediaCodec.Callback
        public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
            if (mediaCodec == HeifEncoder.this.mEncoder) {
                Log.e(HeifEncoder.TAG, "onError: " + codecException);
                stopAndNotify(codecException);
            }
        }

        private void stopAndNotify(MediaCodec.CodecException codecException) {
            HeifEncoder.this.stopInternal();
            if (codecException == null) {
                HeifEncoder.this.mCallback.onComplete(HeifEncoder.this);
            } else {
                HeifEncoder.this.mCallback.onError(HeifEncoder.this, codecException);
            }
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.mEmptyBuffers) {
            this.mInputEOS = true;
            this.mEmptyBuffers.notifyAll();
        }
        this.mHandler.postAtFrontOfQueue(new Runnable() { // from class: androidx.heifwriter.HeifEncoder.2
            @Override // java.lang.Runnable
            public void run() {
                HeifEncoder.this.stopInternal();
            }
        });
    }
}
