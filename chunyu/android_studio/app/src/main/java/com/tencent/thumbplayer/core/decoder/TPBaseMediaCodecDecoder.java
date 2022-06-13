package com.tencent.thumbplayer.core.decoder;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import com.google.android.exoplayer2.util.MimeTypes;
import com.tencent.thumbplayer.core.common.TPCodecUtils;
import com.tencent.thumbplayer.core.common.TPNativeLog;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.h.b;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
public abstract class TPBaseMediaCodecDecoder implements ITPMediaCodecDecoder {
    private static final int DUMP_BYTE_BUFFER_BYTES = 100;
    private static final int DUMP_ONE_LINE_BYTES = 20;
    private static final int MEDIA_CODEC_ERROR_INDEX = -1000;
    private static long MEDIA_CODEC_INPUT_TIMEOUT_US = 2000;
    private static long MEDIA_CODEC_OUTPUT_TIMEOUT_US = 2000;
    private static final int MSG_FLUSH = 1002;
    private static final int MSG_RELEASE = 1003;
    private static final int MSG_RELEASE_OUTPUT_BUFFER = 1000;
    private static final int MSG_SET_OUTPUT_SURFACE = 1001;
    protected int mCodecId;
    private b mCodec = null;
    protected Surface mSurface = null;
    protected boolean mStarted = false;
    private TPFrameInfo mFrameInfo = new TPFrameInfo();
    private boolean mEnableSetOutputSurfaceApi = false;
    private MediaCodec.CryptoInfo mCryptoInfo = null;
    protected MediaCrypto mMediaCrypto = null;
    protected boolean mEnableAsyncMode = false;
    private HandlerThread mDecodeThread = null;
    private AsyncDecodeHandler mDecoderHandler = null;
    private BlockingQueue<Integer> mInputQueue = new LinkedBlockingQueue();
    private BlockingQueue<TPFrameInfo> mOutputQueue = new LinkedBlockingQueue();
    private boolean mRestartCodecOnException = false;
    protected int mDrmType = -1;
    private boolean mEnableAudioPassThrough = false;
    protected boolean mEnableMediaCodecReuse = false;
    protected int mDolbyVisionProfile = 0;
    protected int mDolbyVisionLevel = 0;
    private final Object mThreadLock = new Object();
    private int mHandlerResult = 0;

    /* loaded from: classes2.dex */
    public class AsyncDecodeHandler extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AsyncDecodeHandler(Looper looper) {
            super(looper);
            TPBaseMediaCodecDecoder.this = r1;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (TPBaseMediaCodecDecoder.this.mThreadLock) {
                boolean z = false;
                int i = 0;
                switch (message.what) {
                    case 1000:
                        TPBaseMediaCodecDecoder tPBaseMediaCodecDecoder = TPBaseMediaCodecDecoder.this;
                        int i2 = message.arg1;
                        if (message.arg2 == 1) {
                            z = true;
                        }
                        i = tPBaseMediaCodecDecoder.onReleaseOutputBuffer(i2, z);
                        break;
                    case 1001:
                        i = TPBaseMediaCodecDecoder.this.onSetOutputSurface((Surface) message.obj);
                        break;
                    case 1002:
                        i = TPBaseMediaCodecDecoder.this.onFlush();
                        break;
                    case 1003:
                        i = TPBaseMediaCodecDecoder.this.onRelease();
                        break;
                }
                TPBaseMediaCodecDecoder.this.handleMessageComplete(i);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class BufferCallback extends b.a {
        private BufferCallback() {
            TPBaseMediaCodecDecoder.this = r1;
        }

        @Override // com.tencent.thumbplayer.h.b.a
        public void onError(b bVar, MediaCodec.CodecException codecException) {
            String logTag = TPBaseMediaCodecDecoder.this.getLogTag();
            TPNativeLog.printLog(4, logTag, "onError: " + TPBaseMediaCodecDecoder.this.getStackTrace(codecException));
            TPBaseMediaCodecDecoder.this.handleRelease();
        }

        @Override // com.tencent.thumbplayer.h.b.a
        public void onInputBufferAvailable(b bVar, int i) {
            try {
                TPBaseMediaCodecDecoder.this.mInputQueue.put(Integer.valueOf(i));
            } catch (Exception e) {
                TPNativeLog.printLog(3, TPBaseMediaCodecDecoder.this.getLogTag(), TPBaseMediaCodecDecoder.this.getStackTrace(e));
            }
        }

        @Override // com.tencent.thumbplayer.h.b.a
        public void onOutputBufferAvailable(b bVar, int i, MediaCodec.BufferInfo bufferInfo) {
            try {
                TPFrameInfo tPFrameInfo = new TPFrameInfo();
                tPFrameInfo.errCode = 0;
                tPFrameInfo.bufferIndex = i;
                tPFrameInfo.ptsUs = bufferInfo.presentationTimeUs;
                TPBaseMediaCodecDecoder.this.processOutputBuffer(bVar, i, bufferInfo, tPFrameInfo);
                TPBaseMediaCodecDecoder.this.mOutputQueue.put(tPFrameInfo);
            } catch (Exception e) {
                TPNativeLog.printLog(3, TPBaseMediaCodecDecoder.this.getLogTag(), TPBaseMediaCodecDecoder.this.getStackTrace(e));
            }
        }

        @Override // com.tencent.thumbplayer.h.b.a
        public void onOutputFormatChanged(b bVar, MediaFormat mediaFormat) {
            TPBaseMediaCodecDecoder.this.processOutputFormatChanged(mediaFormat);
        }
    }

    public TPBaseMediaCodecDecoder(int i) {
        this.mCodecId = i;
    }

    private void bufferSizeCheck(ByteBuffer byteBuffer, byte[] bArr) {
        if (byteBuffer.remaining() < bArr.length) {
            String logTag = getLogTag();
            TPNativeLog.printLog(4, logTag, "decodeAsync, not enough space, byteBuffer.remaining:" + byteBuffer.remaining() + ", buffer size:" + bArr.length);
            try {
                dumpByteArray(bArr, 0, 100, 20);
            } catch (Exception e) {
                TPNativeLog.printLog(4, getLogTag(), e.toString());
            }
        }
    }

    private int decodeAsync(byte[] bArr, boolean z, long j, boolean z2) {
        Integer poll = this.mInputQueue.poll();
        if (poll == null) {
            return 1;
        }
        try {
            ByteBuffer c = this.mCodec.c(poll.intValue());
            if (c != null) {
                bufferSizeCheck(c, bArr);
                c.put(bArr);
            }
            if (!z2 || this.mCryptoInfo == null) {
                this.mCodec.a(poll.intValue(), 0, bArr.length, j, z ? 1 : 0);
            } else {
                this.mCodec.a(poll.intValue(), 0, this.mCryptoInfo, j, z ? 1 : 0);
            }
            return 0;
        } catch (Exception e) {
            return onMediaCodecException(e);
        }
    }

    private TPFrameInfo dequeueOutputBufferAsync() {
        this.mFrameInfo.errCode = 1;
        TPFrameInfo poll = this.mOutputQueue.poll();
        return poll == null ? this.mFrameInfo : poll;
    }

    private void dumpByteArray(byte[] bArr, int i, int i2, int i3) {
        if (bArr == null || i < 0 || i2 <= 0 || i >= bArr.length || i >= i2 || i3 <= 0) {
            throw new IllegalArgumentException();
        }
        if (bArr.length <= i2) {
            i2 = bArr.length;
        }
        int min = Math.min(i2 - i, 100) + i;
        StringBuilder sb = new StringBuilder();
        TPNativeLog.printLog(2, getLogTag(), "dumpByteArray begin:");
        int i4 = 0;
        while (i < min) {
            String hexString = Integer.toHexString(bArr[i] & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            sb.append(hexString.toUpperCase());
            i4++;
            if (i4 % i3 == 0) {
                TPNativeLog.printLog(2, getLogTag(), sb.toString());
                sb.setLength(0);
            } else {
                sb.append(" ");
            }
            i++;
        }
        TPNativeLog.printLog(2, getLogTag(), "dumpByteArray end.");
    }

    private void exitDecodeThread() {
        if (this.mDecodeThread != null) {
            if (Build.VERSION.SDK_INT >= 18) {
                this.mDecodeThread.quitSafely();
            } else {
                this.mDecodeThread.quit();
            }
            try {
                this.mDecodeThread.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    private int flushAsync() {
        TPNativeLog.printLog(2, getLogTag(), "flushAsync: ");
        Message obtainMessage = this.mDecoderHandler.obtainMessage();
        obtainMessage.what = 1002;
        return waitingForHandleMessage(obtainMessage);
    }

    private int handleFlush() {
        TPNativeLog.printLog(2, getLogTag(), "handleFlush: ");
        b bVar = this.mCodec;
        if (bVar == null) {
            return 104;
        }
        try {
            bVar.h();
            return 0;
        } catch (Exception e) {
            return onMediaCodecException(e);
        }
    }

    public void handleMessageComplete(int i) {
        this.mHandlerResult = i;
        this.mThreadLock.notify();
    }

    public int handleRelease() {
        b bVar;
        b bVar2 = this.mCodec;
        if (bVar2 == null) {
            return 101;
        }
        try {
            this.mStarted = false;
            bVar2.f();
            return 0;
        } catch (Exception e) {
            String logTag = getLogTag();
            TPNativeLog.printLog(4, logTag, "stop: failed!" + getStackTrace(e));
            return 3;
        } finally {
            this.mCodec.g();
            this.mCodec = null;
        }
    }

    private int handleReleaseOutputBuffer(int i, boolean z) {
        b bVar = this.mCodec;
        if (bVar == null || i < 0) {
            return 3;
        }
        try {
            bVar.a(i, z);
            return 0;
        } catch (Exception e) {
            return onMediaCodecException(e);
        }
    }

    private int handleSetOutputSurface(Surface surface) {
        String logTag = getLogTag();
        TPNativeLog.printLog(2, logTag, "setOutputSurface: " + surface);
        Surface surface2 = this.mSurface;
        if (surface2 == surface) {
            TPNativeLog.printLog(3, getLogTag(), "setOutputSurface: set the same surface.");
            return 0;
        }
        this.mSurface = surface;
        if (this.mCodec == null) {
            return 0;
        }
        if (!(surface2 == null || surface == null)) {
            try {
                if (surface.isValid() && Build.VERSION.SDK_INT >= 23 && this.mEnableSetOutputSurfaceApi) {
                    this.mCodec.a(surface);
                    return 0;
                }
            } catch (Exception e) {
                String logTag2 = getLogTag();
                TPNativeLog.printLog(4, logTag2, "setOutputSurface onMediaCodecException:\n" + getStackTrace(e));
                return 3;
            }
        }
        return 3;
    }

    private int handleSignalEndOfStream(int i) {
        try {
            this.mCodec.a(i, 0, 0, 0, 4);
            return 0;
        } catch (Exception e) {
            String logTag = getLogTag();
            TPNativeLog.printLog(4, logTag, "handleSignalEndOfStream: failed!" + getStackTrace(e));
            return 3;
        }
    }

    private boolean initMediaCodecInternal() {
        try {
            if (getMimeType().equals(MimeTypes.AUDIO_DTS)) {
                String logTag = getLogTag();
                TPNativeLog.printLog(2, logTag, "initMediaCodec current mime type:" + getMimeType() + " is audio dts, need set input timeout to 0!");
                MEDIA_CODEC_INPUT_TIMEOUT_US = 0;
                MEDIA_CODEC_OUTPUT_TIMEOUT_US = 0;
            }
            String logTag2 = getLogTag();
            TPNativeLog.printLog(2, logTag2, "initMediaCodec mime:" + getMimeType() + " profile:" + this.mDolbyVisionProfile + " level:" + this.mDolbyVisionLevel + " mDrmType:" + this.mDrmType);
            boolean requiresSecureDecoderComponent = this.mMediaCrypto != null ? this.mMediaCrypto.requiresSecureDecoderComponent(getMimeType()) : false;
            if (requiresSecureDecoderComponent && TPCodecUtils.isInDRMLevel1Blacklist(this.mDrmType)) {
                String logTag3 = getLogTag();
                TPNativeLog.printLog(2, logTag3, "Device " + TPSystemInfo.getDeviceName() + " DrmType " + this.mDrmType + " fallback to L3.");
                requiresSecureDecoderComponent = false;
            }
            String dolbyVisionDecoderName = this.mDolbyVisionProfile > 0 ? TPCodecUtils.getDolbyVisionDecoderName(getMimeType(), this.mDolbyVisionProfile, this.mDolbyVisionLevel, requiresSecureDecoderComponent) : TPCodecUtils.getDecoderName(getMimeType(), requiresSecureDecoderComponent);
            String logTag4 = getLogTag();
            TPNativeLog.printLog(2, logTag4, "initMediaCodec codecName:" + dolbyVisionDecoderName + " secureComponent " + requiresSecureDecoderComponent);
            if (dolbyVisionDecoderName == null) {
                TPNativeLog.printLog(4, getLogTag(), "initMediaCodec failed, codecName is null.");
                return false;
            }
            this.mCodec = b.a(dolbyVisionDecoderName);
            this.mCodec.a(this.mEnableMediaCodecReuse && !this.mEnableAsyncMode);
            this.mCodec.a(new com.tencent.thumbplayer.h.a.b() { // from class: com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder.1
                @Override // com.tencent.thumbplayer.h.a.b, com.tencent.thumbplayer.h.a.a
                public void onReuseCodecAPIException(String str, Throwable th) {
                    super.onReuseCodecAPIException(str, th);
                    TPMediaCodecManager.onMediaCodecException(TPBaseMediaCodecDecoder.this.mCodecId, str);
                }

                @Override // com.tencent.thumbplayer.h.a.b, com.tencent.thumbplayer.h.a.a
                public void onStarted(Boolean bool, String str) {
                    super.onStarted(bool, str);
                    TPMediaCodecManager.onMediaCodecReady(TPBaseMediaCodecDecoder.this.mCodecId, str);
                }
            });
            String logTag5 = getLogTag();
            TPNativeLog.printLog(2, logTag5, "initMediaCodec codec name: " + dolbyVisionDecoderName);
            if (this.mEnableAsyncMode && Build.VERSION.SDK_INT >= 23) {
                TPNativeLog.printLog(2, getLogTag(), "MediaCodec EnableAsyncMode！");
                this.mDecodeThread = new HandlerThread("MediaCodecThread");
                this.mDecodeThread.start();
                this.mDecoderHandler = new AsyncDecodeHandler(this.mDecodeThread.getLooper());
                this.mCodec.a(new BufferCallback(), this.mDecoderHandler);
            }
            configCodec(this.mCodec);
            this.mCodec.e();
            this.mStarted = true;
            if (this.mDrmType != -1) {
                boolean z = TPCodecUtils.getDecoderName(getMimeType(), true) != null;
                TPMediaDrmInfo tPMediaDrmInfo = new TPMediaDrmInfo();
                tPMediaDrmInfo.supportSecureDecoder = z;
                tPMediaDrmInfo.supportSecureDecrypt = requiresSecureDecoderComponent;
                tPMediaDrmInfo.componentName = dolbyVisionDecoderName;
                tPMediaDrmInfo.drmType = this.mDrmType;
                String logTag6 = getLogTag();
                TPNativeLog.printLog(2, logTag6, "DRM Info: supportSecureDecoder: " + tPMediaDrmInfo.supportSecureDecoder + " supportSecureDecrypt:" + tPMediaDrmInfo.supportSecureDecrypt + " componentName: " + tPMediaDrmInfo.componentName + " drmType: " + tPMediaDrmInfo.drmType);
                TPMediaCodecManager.onMediaDrmInfo(this.mCodecId, tPMediaDrmInfo);
            }
            return true;
        } catch (Exception e) {
            TPNativeLog.printLog(4, getLogTag(), getStackTrace(e));
            return false;
        }
    }

    public int onFlush() {
        this.mInputQueue.clear();
        this.mOutputQueue.clear();
        int handleFlush = handleFlush();
        this.mCodec.e();
        return handleFlush;
    }

    private int onMediaCodecException(Exception exc) {
        String logTag = getLogTag();
        TPNativeLog.printLog(4, logTag, "onMediaCodecException!\n" + getStackTrace(exc));
        resetFrameInfo();
        processMediaCodecException(exc);
        if (this.mRestartCodecOnException) {
            initMediaCodecInternal();
            return 4;
        }
        handleRelease();
        return 103;
    }

    public int onRelease() {
        this.mInputQueue.clear();
        this.mOutputQueue.clear();
        return handleRelease();
    }

    public int onReleaseOutputBuffer(int i, boolean z) {
        return handleReleaseOutputBuffer(i, z);
    }

    public int onSetOutputSurface(Surface surface) {
        return handleSetOutputSurface(surface);
    }

    private int queueInputBuffer(byte[] bArr, long j, boolean z) {
        try {
            ByteBuffer[] j2 = this.mCodec.j();
            int a = this.mCodec.a(MEDIA_CODEC_INPUT_TIMEOUT_US);
            if (a < 0) {
                return a == -1 ? 1 : 103;
            }
            ByteBuffer byteBuffer = j2[a];
            bufferSizeCheck(byteBuffer, bArr);
            byteBuffer.put(bArr);
            if (!z || this.mCryptoInfo == null) {
                this.mCodec.a(a, 0, bArr.length, j, 0);
            } else {
                this.mCodec.a(a, 0, this.mCryptoInfo, j, 0);
            }
            return 0;
        } catch (Exception e) {
            return onMediaCodecException(e);
        }
    }

    private int releaseAsync() {
        TPNativeLog.printLog(2, getLogTag(), "releaseAsync: ");
        Message obtainMessage = this.mDecoderHandler.obtainMessage();
        obtainMessage.what = 1003;
        int waitingForHandleMessage = waitingForHandleMessage(obtainMessage);
        exitDecodeThread();
        return waitingForHandleMessage;
    }

    private int releaseOutputBufferAsync(int i, boolean z) {
        Message obtainMessage = this.mDecoderHandler.obtainMessage();
        obtainMessage.what = 1000;
        obtainMessage.arg1 = i;
        obtainMessage.arg2 = z ? 1 : 0;
        return waitingForHandleMessage(obtainMessage);
    }

    private void resetFrameInfo() {
        TPFrameInfo tPFrameInfo = this.mFrameInfo;
        tPFrameInfo.bufferIndex = -1000;
        tPFrameInfo.ptsUs = -1;
        tPFrameInfo.data = null;
        tPFrameInfo.errCode = 103;
    }

    private MediaCodecInfo selectCodec(String str) {
        int codecCount = MediaCodecList.getCodecCount();
        for (int i = 0; i < codecCount; i++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (!codecInfoAt.isEncoder()) {
                for (String str2 : codecInfoAt.getSupportedTypes()) {
                    if (str2.equalsIgnoreCase(str)) {
                        return codecInfoAt;
                    }
                }
                continue;
            }
        }
        return null;
    }

    private int setOutputSurfaceAsync(Surface surface) {
        String logTag = getLogTag();
        TPNativeLog.printLog(2, logTag, "setOutputSurfaceAsync: " + surface);
        Message obtainMessage = this.mDecoderHandler.obtainMessage();
        obtainMessage.what = 1001;
        obtainMessage.obj = surface;
        return waitingForHandleMessage(obtainMessage);
    }

    private int signalEndOfStreamAsync() {
        Integer poll = this.mInputQueue.poll();
        if (poll == null) {
            return 1;
        }
        return handleSignalEndOfStream(poll.intValue());
    }

    private int waitingForHandleMessage(Message message) {
        synchronized (this.mThreadLock) {
            message.sendToTarget();
            try {
                this.mThreadLock.wait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return this.mHandlerResult;
    }

    abstract void configCodec(b bVar);

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int decode(byte[] bArr, boolean z, long j, boolean z2) {
        if (!this.mStarted || this.mCodec == null) {
            return 101;
        }
        return (!this.mEnableAsyncMode || Build.VERSION.SDK_INT < 23) ? queueInputBuffer(bArr, j, z2) : decodeAsync(bArr, z, j, z2);
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public TPFrameInfo dequeueOutputBuffer() {
        String logTag;
        String str;
        if (this.mCodec == null) {
            return this.mFrameInfo;
        }
        resetFrameInfo();
        if (this.mEnableAsyncMode) {
            return dequeueOutputBufferAsync();
        }
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        try {
            int a = this.mCodec.a(bufferInfo, MEDIA_CODEC_OUTPUT_TIMEOUT_US);
            if (a < 0) {
                if (a == -2) {
                    processOutputFormatChanged(this.mCodec.i());
                } else if (a != -1) {
                    if (a == -3) {
                        TPNativeLog.printLog(2, getLogTag(), "dequeueOutputBuffer: INFO_OUTPUT_BUFFERS_CHANGED!");
                    } else if (bufferInfo.flags == 4) {
                        logTag = getLogTag();
                        str = "dequeueOutputBuffer: BUFFER_FLAG_END_OF_STREAM!";
                        TPNativeLog.printLog(2, logTag, str);
                        this.mFrameInfo.errCode = 2;
                        return this.mFrameInfo;
                    } else {
                        String logTag2 = getLogTag();
                        TPNativeLog.printLog(4, logTag2, "dequeueOutputBuffer: TP_ERROR_DECODE_FAILED! index = " + a);
                        this.mFrameInfo.errCode = 103;
                        return this.mFrameInfo;
                    }
                }
                this.mFrameInfo.errCode = 1;
                return this.mFrameInfo;
            } else if (bufferInfo.flags == 4) {
                logTag = getLogTag();
                str = "dequeueOutputBuffer: BUFFER_FLAG_END_OF_STREAM";
                TPNativeLog.printLog(2, logTag, str);
                this.mFrameInfo.errCode = 2;
                return this.mFrameInfo;
            } else {
                if (bufferInfo.flags != 2 || !this.mEnableAudioPassThrough) {
                    TPFrameInfo tPFrameInfo = this.mFrameInfo;
                    tPFrameInfo.bufferIndex = a;
                    tPFrameInfo.ptsUs = bufferInfo.presentationTimeUs;
                    TPFrameInfo tPFrameInfo2 = this.mFrameInfo;
                    tPFrameInfo2.errCode = 0;
                    processOutputBuffer(this.mCodec, a, bufferInfo, tPFrameInfo2);
                } else {
                    TPNativeLog.printLog(2, getLogTag(), "dequeueOutputBuffer: BUFFER_FLAG_CODEC_CONFIG, AudioPassThrough");
                    TPFrameInfo tPFrameInfo3 = this.mFrameInfo;
                    tPFrameInfo3.bufferIndex = a;
                    tPFrameInfo3.ptsUs = bufferInfo.presentationTimeUs;
                    processOutputConfigData(this.mCodec, a, bufferInfo, this.mFrameInfo);
                }
                return this.mFrameInfo;
            }
        } catch (Exception e) {
            this.mFrameInfo.errCode = onMediaCodecException(e);
            return this.mFrameInfo;
        }
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int flush() {
        TPNativeLog.printLog(2, getLogTag(), "flush: ");
        if (this.mCodec == null) {
            return 104;
        }
        return this.mEnableAsyncMode ? flushAsync() : handleFlush();
    }

    abstract String getLogTag();

    abstract String getMimeType();

    protected String getStackTrace(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    abstract void processMediaCodecException(Exception exc);

    abstract void processOutputBuffer(b bVar, int i, MediaCodec.BufferInfo bufferInfo, TPFrameInfo tPFrameInfo);

    abstract void processOutputConfigData(b bVar, int i, MediaCodec.BufferInfo bufferInfo, TPFrameInfo tPFrameInfo);

    abstract void processOutputFormatChanged(MediaFormat mediaFormat);

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int release() {
        return this.mEnableAsyncMode ? releaseAsync() : handleRelease();
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int releaseOutputBuffer(int i, boolean z) {
        if (this.mCodec == null || i < 0) {
            return 3;
        }
        return this.mEnableAsyncMode ? releaseOutputBufferAsync(i, z) : handleReleaseOutputBuffer(i, z);
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public void setCryptoInfo(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2) {
        if (this.mCryptoInfo == null) {
            this.mCryptoInfo = new MediaCodec.CryptoInfo();
        }
        this.mCryptoInfo.set(i, iArr, iArr2, bArr, bArr2, i2);
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int setOperateRate(float f) {
        if (this.mCodec != null) {
            try {
                if (Build.VERSION.SDK_INT >= 19) {
                    String logTag = getLogTag();
                    TPNativeLog.printLog(2, logTag, "setOperateRate: " + f);
                    Bundle bundle = new Bundle();
                    bundle.putShort("priority", 0);
                    bundle.putFloat("operating-rate", f);
                    this.mCodec.a(bundle);
                }
            } catch (Exception unused) {
                String logTag2 = getLogTag();
                TPNativeLog.printLog(3, logTag2, "setOperateRate: " + f + " failed.");
            }
        }
        return 0;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int setOutputSurface(Surface surface) {
        return this.mEnableAsyncMode ? setOutputSurfaceAsync(surface) : handleSetOutputSurface(surface);
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamBool(int i, boolean z) {
        if (i == 0) {
            this.mEnableSetOutputSurfaceApi = z;
        } else if (i != 1) {
            if (i == 3) {
                this.mEnableAudioPassThrough = z;
                String logTag = getLogTag();
                TPNativeLog.printLog(2, logTag, "BOOL_SET_IS_AUDIO_PASSTHROUGH mEnableAudioPassThrough:" + this.mEnableAudioPassThrough);
            } else if (i != 4) {
                String logTag2 = getLogTag();
                TPNativeLog.printLog(3, logTag2, "Unknown paramKey: " + i);
                return false;
            } else {
                this.mEnableMediaCodecReuse = z;
            }
        } else if (!this.mStarted) {
            this.mEnableAsyncMode = z;
        } else {
            TPNativeLog.printLog(3, getLogTag(), "BOOL_ENABLE_ASYNC_MODE must setup before started!");
        }
        return true;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamBytes(int i, byte[] bArr) {
        return false;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamInt(int i, int i2) {
        return false;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamLong(int i, long j) {
        return false;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamObject(int i, Object obj) {
        if (i != 300) {
            return false;
        }
        this.mMediaCrypto = (MediaCrypto) obj;
        return true;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamString(int i, String str) {
        return false;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int signalEndOfStream() {
        TPNativeLog.printLog(2, getLogTag(), "signalEndOfStream: ");
        b bVar = this.mCodec;
        if (bVar == null) {
            return 3;
        }
        if (this.mEnableAsyncMode) {
            return signalEndOfStreamAsync();
        }
        int a = bVar.a(MEDIA_CODEC_INPUT_TIMEOUT_US);
        return a >= 0 ? handleSignalEndOfStream(a) : a == -1 ? 1 : 3;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean startDecoder() {
        return initMediaCodecInternal();
    }
}
