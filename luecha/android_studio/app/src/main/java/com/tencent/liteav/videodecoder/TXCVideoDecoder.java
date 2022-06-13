package com.tencent.liteav.videodecoder;

import android.graphics.SurfaceTexture;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import com.google.android.exoplayer2.PlaybackException;
import com.tencent.liteav.basic.c.b;
import com.tencent.liteav.basic.f.c;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.module.TXCEventRecorderProxy;
import com.tencent.liteav.basic.module.TXCKeyPointReportProxy;
import com.tencent.liteav.basic.module.TXCStatus;
import com.tencent.liteav.basic.structs.TXSNALPacket;
import com.tencent.liteav.basic.structs.TXSVideoFrame;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import com.tencent.liteav.basic.util.h;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXCVideoDecoder implements b, g {
    private static final boolean NEW_DECODER = true;
    private static final String TAG = "TXCVideoDecoder";
    private static long mDecodeFirstFrameTS;
    private int mDecoderCacheNum;
    private a mDecoderHandler;
    g mDecoderListener;
    private Handler mDecoderWrapperHandler;
    private long mNativeContext;
    private WeakReference<b> mNotifyListener;
    private ByteBuffer mPps;
    private ByteBuffer mSps;
    Surface mSurface;
    private String mUserId;
    b mVideoDecoder;
    private boolean mRestarting = false;
    private int mStreamType = 0;
    private int mVideoWidth = 0;
    private int mVideoHeight = 0;
    private boolean mEnableDecoderChange = false;
    private boolean mEnableRestartDecoder = false;
    private boolean mEnableLimitDecCache = false;
    private JSONArray mDecFormat = null;
    private ArrayList<TXSNALPacket> mNALList = new ArrayList<>();
    boolean mHWDec = true;
    boolean mH265 = false;
    boolean mNeedSortFrame = true;
    boolean mRecvFirstFrame = false;

    private native long nativeCreateContext(boolean z, Object obj, long j);

    private native void nativeDecCache(long j);

    private native void nativeDecodeFrame(long j, byte[] bArr, int i, long j2, long j3, int i2, int i3);

    private native void nativeDestroyContext(long j);

    private native void nativeEnableDecodeChange(long j, boolean z);

    private native void nativeEnableRestartDecoder(long j, boolean z);

    private native void nativeNotifyHWDecoderError(long j);

    private native void nativeNotifyPts(long j, long j2, int i, int i2);

    private native void nativeReStart(long j, boolean z);

    private native void nativeSetID(long j, String str);

    private native void nativeSetStreamType(long j, int i);

    @Override // com.tencent.liteav.basic.c.b
    public void onNotifyEvent(int i, Bundle bundle) {
        if (i == 2106 || i == -2304) {
            synchronized (this) {
                nativeNotifyHWDecoderError(this.mNativeContext);
            }
        }
        h.a(this.mNotifyListener, this.mUserId, i, bundle);
    }

    public void setUserId(String str) {
        this.mUserId = str;
        synchronized (this) {
            nativeSetID(this.mNativeContext, this.mUserId);
        }
    }

    public void setStreamType(int i) {
        this.mStreamType = i;
        synchronized (this) {
            nativeSetStreamType(this.mNativeContext, this.mStreamType);
        }
    }

    public void enableChange(boolean z) {
        this.mEnableDecoderChange = z;
        synchronized (this) {
            nativeEnableDecodeChange(this.mNativeContext, this.mEnableDecoderChange);
        }
    }

    public void enableLimitDecCache(boolean z) {
        this.mEnableLimitDecCache = z;
        b bVar = this.mVideoDecoder;
        if (bVar != null) {
            bVar.enableLimitDecCache(this.mEnableLimitDecCache);
        }
    }

    public void config(JSONArray jSONArray) {
        this.mDecFormat = jSONArray;
    }

    public void enableRestart(boolean z) {
        this.mEnableRestartDecoder = z;
    }

    public TXCVideoDecoder() {
        mDecodeFirstFrameTS = 0;
    }

    public void setListener(g gVar) {
        this.mDecoderListener = gVar;
    }

    public boolean isHardwareDecode() {
        return this.mVideoDecoder != null;
    }

    public void setNotifyListener(b bVar) {
        this.mNotifyListener = new WeakReference<>(bVar);
    }

    public int setup(SurfaceTexture surfaceTexture, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, boolean z) {
        synchronized (this) {
            if (this.mSurface != null) {
                this.mSurface.release();
                this.mSurface = null;
            }
        }
        return setup(new Surface(surfaceTexture), byteBuffer, byteBuffer2, z);
    }

    public int setup(Surface surface, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, boolean z) {
        synchronized (this) {
            this.mSurface = surface;
        }
        this.mSps = byteBuffer;
        this.mPps = byteBuffer2;
        this.mNeedSortFrame = z;
        return 0;
    }

    public void enableHWDec(boolean z) {
        this.mHWDec = z;
    }

    private void addOneNalToDecoder(TXSNALPacket tXSNALPacket) {
        boolean z = tXSNALPacket.nalType == 0;
        Bundle bundle = new Bundle();
        bundle.putBoolean("iframe", z);
        bundle.putByteArray("nal", tXSNALPacket.nalData);
        bundle.putLong("pts", tXSNALPacket.pts);
        bundle.putLong("dts", tXSNALPacket.dts);
        bundle.putInt("codecId", tXSNALPacket.codecId);
        Message message = new Message();
        message.what = 101;
        message.setData(bundle);
        a aVar = this.mDecoderHandler;
        if (aVar != null) {
            aVar.sendMessage(message);
        }
        this.mDecoderCacheNum++;
    }

    private void decNALByNewWay(TXSNALPacket tXSNALPacket) {
        if (this.mHWDec) {
            decodeFrame(tXSNALPacket.nalData, tXSNALPacket.pts, tXSNALPacket.dts, tXSNALPacket.rotation, tXSNALPacket.codecId, 0, 0, tXSNALPacket.nalType);
            return;
        }
        synchronized (this) {
            nativeDecodeFrame(this.mNativeContext, tXSNALPacket.nalData, tXSNALPacket.nalType, tXSNALPacket.pts, tXSNALPacket.dts, tXSNALPacket.rotation, tXSNALPacket.codecId);
        }
    }

    private void decNALByOldWay(TXSNALPacket tXSNALPacket) {
        try {
            boolean z = tXSNALPacket.nalType == 0;
            if (this.mRecvFirstFrame || z) {
                if (!this.mRecvFirstFrame && z) {
                    TXCLog.w("TXCVideoDecoder", "play:decode: push first i frame");
                    this.mRecvFirstFrame = true;
                }
                if (!this.mRestarting && tXSNALPacket.codecId == 1 && !this.mHWDec) {
                    TXCLog.w("TXCVideoDecoder", "play:decode: hevc decode error  ");
                    h.a(this.mNotifyListener, -2304, "h265 Decoding failed");
                    this.mRestarting = true;
                }
                if (this.mDecoderHandler != null) {
                    if (!this.mNALList.isEmpty()) {
                        Iterator<TXSNALPacket> it = this.mNALList.iterator();
                        while (it.hasNext()) {
                            addOneNalToDecoder(it.next());
                        }
                    }
                    this.mNALList.clear();
                    addOneNalToDecoder(tXSNALPacket);
                    return;
                }
                if (z && !this.mNALList.isEmpty()) {
                    this.mNALList.clear();
                }
                this.mNALList.add(tXSNALPacket);
                if (!this.mRestarting) {
                    start();
                    return;
                }
                return;
            }
            TXCLog.i("TXCVideoDecoder", "play:decode: push nal ignore p frame when not got i frame");
        } catch (Exception e) {
            TXCLog.e("TXCVideoDecoder", "decode NAL By Old way failed.", e);
        }
    }

    public void pushNAL(TXSNALPacket tXSNALPacket) {
        decNALByNewWay(tXSNALPacket);
    }

    private void initializeHWDecoderThread() {
        if (this.mDecoderWrapperHandler == null) {
            HandlerThread handlerThread = new HandlerThread("video_hw_decoder");
            handlerThread.start();
            this.mDecoderWrapperHandler = new Handler(handlerThread.getLooper());
        }
    }

    private void uninitializeHWDecoderThread() {
        final Handler handler = this.mDecoderWrapperHandler;
        this.mDecoderWrapperHandler = null;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.tencent.liteav.videodecoder.TXCVideoDecoder.1
                @Override // java.lang.Runnable
                public void run() {
                    handler.getLooper().quit();
                }
            });
        }
    }

    public synchronized int start() {
        if (this.mHWDec && this.mSurface == null) {
            TXCLog.i("TXCVideoDecoder", "play:decode: start decoder error when not setup surface, id " + this.mUserId + "_" + this.mStreamType);
            return -1;
        } else if (this.mNativeContext != 0) {
            TXCLog.w("TXCVideoDecoder", "play:decode: start decoder error when decoder is started, id " + this.mUserId + "_" + this.mStreamType);
            return -1;
        } else {
            TXCLog.i("TXCVideoDecoder", "[FirstFramePath][Video][Decoder] TXCVideoDecoder: start decode. instance:" + this + " userId:" + this.mUserId + " type:" + this.mStreamType);
            long a2 = c.a().a("Video", "SpsChangeDecoderRestartInterval");
            if (a2 < 0) {
                a2 = 10;
            }
            this.mNativeContext = nativeCreateContext(this.mHWDec, com.tencent.liteav.basic.a.b(), a2);
            nativeSetID(this.mNativeContext, this.mUserId);
            nativeSetStreamType(this.mNativeContext, this.mStreamType);
            nativeEnableDecodeChange(this.mNativeContext, this.mEnableDecoderChange);
            nativeEnableRestartDecoder(this.mNativeContext, this.mEnableRestartDecoder);
            if (this.mHWDec) {
                initializeHWDecoderThread();
            }
            return 0;
        }
    }

    public synchronized void stop() {
        if (this.mNativeContext == 0) {
            TXCLog.w("TXCVideoDecoder", "play:decode: stop decoder ignore when decoder is stopped, id " + this.mUserId + "_" + this.mStreamType);
            return;
        }
        TXCLog.w("TXCVideoDecoder", "play:decode: stop decoder java id " + this.mUserId + "_" + this.mStreamType + " " + hashCode());
        nativeDestroyContext(this.mNativeContext);
        this.mNativeContext = 0;
        this.mNALList.clear();
        this.mRecvFirstFrame = false;
        this.mDecoderCacheNum = 0;
        mDecodeFirstFrameTS = 0;
        synchronized (this) {
            if (this.mVideoDecoder != null) {
                this.mVideoDecoder.stop();
                this.mVideoDecoder.setListener(null);
                this.mVideoDecoder.setNotifyListener(null);
                this.mVideoDecoder = null;
            }
            if (this.mSurface != null) {
                this.mSurface.release();
                this.mSurface = null;
            }
            uninitializeHWDecoderThread();
        }
    }

    public void restart(boolean z) {
        synchronized (this) {
            this.mHWDec = z;
            nativeReStart(this.mNativeContext, this.mHWDec);
        }
    }

    public int getDecoderCacheNum() {
        return this.mDecoderCacheNum + this.mNALList.size();
    }

    @Override // com.tencent.liteav.videodecoder.g
    public void onDecodeFrame(TXSVideoFrame tXSVideoFrame, int i, int i2, long j, long j2, int i3) {
        if (mDecodeFirstFrameTS == 0) {
            mDecodeFirstFrameTS = TXCTimeUtil.getTimeTick();
            TXCLog.i("TXCVideoDecoder", "[FirstFramePath][Video][Decoder] TXCVideoDecoder: decode first frame success. instance:" + hashCode() + " isHWAcc:true isH265:" + this.mH265 + " userId:" + this.mUserId + " type:" + this.mStreamType);
            TXCStatus.a(this.mUserId, 5005, this.mStreamType, Long.valueOf(mDecodeFirstFrameTS));
            TXCStatus.a(this.mUserId, 5004, this.mStreamType, Integer.valueOf(this.mH265 ? 3 : 1));
        }
        g gVar = this.mDecoderListener;
        if (gVar != null) {
            gVar.onDecodeFrame(tXSVideoFrame, i, i2, j, j2, i3);
        }
        int i4 = this.mDecoderCacheNum;
        if (i4 > 0) {
            this.mDecoderCacheNum = i4 - 1;
        }
        if (tXSVideoFrame == null) {
            synchronized (this) {
                nativeNotifyPts(this.mNativeContext, j, i, i2);
            }
        }
        int GetDecodeCost = this.mVideoDecoder.GetDecodeCost();
        if (this.mHWDec) {
            TXCStatus.a(this.mUserId, 8004, this.mStreamType, Integer.valueOf(GetDecodeCost));
        } else {
            TXCStatus.a(this.mUserId, 8003, this.mStreamType, Integer.valueOf(GetDecodeCost));
        }
    }

    @Override // com.tencent.liteav.videodecoder.g
    public void onVideoSizeChange(int i, int i2) {
        g gVar = this.mDecoderListener;
        if (gVar == null) {
            return;
        }
        if (this.mVideoWidth != i || this.mVideoHeight != i2) {
            this.mVideoWidth = i;
            this.mVideoHeight = i2;
            gVar.onVideoSizeChange(this.mVideoWidth, this.mVideoHeight);
        }
    }

    @Override // com.tencent.liteav.videodecoder.g
    public void onDecoderChange(String str, boolean z) {
        this.mH265 = z;
        this.mHWDec = true;
        TXCLog.i("TXCVideoDecoder", "onDecoderChange " + str + " , isH265 = " + z);
        reportDecoderEvent(this.mHWDec, z);
    }

    @Override // com.tencent.liteav.videodecoder.g
    public void onDecodeFailed(int i) {
        TXCStatus.a(this.mUserId, 5006, this.mStreamType, Integer.valueOf(i));
        g gVar = this.mDecoderListener;
        if (gVar != null) {
            gVar.onDecodeFailed(i);
        }
        synchronized (this) {
            nativeDecCache(this.mNativeContext);
        }
    }

    public boolean isH265() {
        return this.mH265;
    }

    public long GetDecodeFirstFrameTS() {
        return mDecodeFirstFrameTS;
    }

    private int startDecodeThread() {
        synchronized (this) {
            if (this.mDecoderHandler != null) {
                TXCLog.e("TXCVideoDecoder", "play:decode: start decoder error when decoder is started");
                return -1;
            }
            this.mDecoderCacheNum = 0;
            this.mRestarting = false;
            HandlerThread handlerThread = new HandlerThread("VDecoder");
            handlerThread.start();
            if (this.mHWDec) {
                handlerThread.setName("VideoWDec" + handlerThread.getId());
            } else {
                handlerThread.setName("VideoSWDec" + handlerThread.getId());
            }
            a aVar = new a(handlerThread.getLooper());
            aVar.a(this.mH265, this.mHWDec, this.mSurface, this.mSps, this.mPps, this, this);
            TXCLog.w("TXCVideoDecoder", "play:decode: start decode thread");
            Message obtain = Message.obtain();
            obtain.what = 100;
            obtain.obj = Boolean.valueOf(this.mNeedSortFrame);
            aVar.sendMessage(obtain);
            this.mDecoderHandler = aVar;
            return 0;
        }
    }

    private void stopDecodeThread() {
        synchronized (this) {
            if (this.mDecoderHandler != null) {
                this.mDecoderHandler.sendEmptyMessage(102);
            }
            this.mDecoderHandler = null;
        }
    }

    private void notifyDecoderStartEvent(boolean z, boolean z2) {
        long j = 1;
        TXCEventRecorderProxy.a(this.mUserId, PlaybackException.ERROR_CODE_DECODING_FORMAT_UNSUPPORTED, z ? 1 : 0, -1, "", this.mStreamType);
        reportDecoderEvent(z, z2);
        String str = this.mUserId;
        if (!z) {
            j = 2;
        }
        TXCKeyPointReportProxy.a(str, 40026, j, this.mStreamType);
    }

    private void reportDecoderEvent(boolean z, boolean z2) {
        Bundle bundle = new Bundle();
        bundle.putInt("EVT_ID", 2008);
        bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
        bundle.putLong("EVT_UTC_TIME", TXCTimeUtil.getUtcTimeTick());
        StringBuilder sb = new StringBuilder("Enables ");
        if (z2) {
            sb.append("H265 ");
        } else {
            sb.append("H264 ");
        }
        if (z) {
            sb.append("hardware ");
        } else {
            sb.append("software ");
        }
        sb.append("decoding");
        bundle.putCharSequence("EVT_MSG", sb.toString());
        bundle.putInt("EVT_PARAM1", z ? 1 : 2);
        h.a(this.mNotifyListener, this.mUserId, 2008, bundle);
        TXCLog.i("TXCVideoDecoder", "start video decoder:" + sb.toString());
    }

    private boolean hasSurface() {
        return this.mSurface != null;
    }

    static {
        h.f();
    }

    private void onDecodeDone(TXSVideoFrame tXSVideoFrame, int i, int i2, long j, long j2, int i3, int i4) {
        if (mDecodeFirstFrameTS == 0) {
            mDecodeFirstFrameTS = TXCTimeUtil.getTimeTick();
            TXCLog.i("TXCVideoDecoder", "[FirstFramePath][Video][Decoder] TXCVideoDecoder: decode first frame success. instance:" + hashCode() + " isHWAcc:false isH265:" + this.mH265 + " userId:" + this.mUserId + " type:" + this.mStreamType);
            TXCStatus.a(this.mUserId, 5005, this.mStreamType, Long.valueOf(mDecodeFirstFrameTS));
            TXCStatus.a(this.mUserId, 5004, this.mStreamType, Integer.valueOf(this.mH265 ? 2 : 0));
        }
        g gVar = this.mDecoderListener;
        if (gVar != null) {
            tXSVideoFrame.width = i;
            tXSVideoFrame.height = i2;
            tXSVideoFrame.rotation = i3;
            tXSVideoFrame.pts = j;
            tXSVideoFrame.frameType = i4;
            gVar.onDecodeFrame(tXSVideoFrame, i, i2, j, j2, i3);
            if (this.mVideoWidth != i || this.mVideoHeight != i2) {
                this.mVideoWidth = i;
                this.mVideoHeight = i2;
                gVar.onVideoSizeChange(this.mVideoWidth, this.mVideoHeight);
            }
        }
    }

    private void decodeFrame(byte[] bArr, long j, long j2, int i, int i2, int i3, int i4, int i5) {
        TXSNALPacket tXSNALPacket = new TXSNALPacket();
        tXSNALPacket.nalData = bArr;
        tXSNALPacket.pts = j;
        tXSNALPacket.dts = j2;
        tXSNALPacket.rotation = i;
        tXSNALPacket.codecId = i2;
        tXSNALPacket.nalType = i5;
        synchronized (this) {
            if (this.mNativeContext != 0 && this.mVideoDecoder == null) {
                if (i2 == 1) {
                    this.mH265 = true;
                } else {
                    this.mH265 = false;
                }
                initializeHWDecoderThread();
                f fVar = new f(this.mDecoderWrapperHandler.getLooper());
                fVar.a(i3, i4);
                fVar.setListener(this);
                fVar.setNotifyListener(new WeakReference<>(this));
                fVar.a(this.mDecFormat);
                fVar.config(this.mSurface);
                fVar.enableLimitDecCache(this.mEnableLimitDecCache);
                fVar.start(this.mSps, this.mPps, this.mNeedSortFrame, this.mH265);
                notifyDecoderStartEvent(true, this.mH265);
                this.mVideoDecoder = fVar;
            }
            if (this.mVideoDecoder != null) {
                this.mVideoDecoder.decode(tXSNALPacket);
            }
        }
    }

    private synchronized void stopHWDecoder() {
        if (this.mVideoDecoder != null) {
            this.mVideoDecoder.stop();
            this.mVideoDecoder.setListener(null);
            this.mVideoDecoder.setNotifyListener(null);
            this.mVideoDecoder = null;
        }
    }

    private void onStartDecoder(boolean z, boolean z2) {
        this.mH265 = z2;
        this.mHWDec = z;
        notifyDecoderStartEvent(z, this.mH265);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class a extends Handler {
        b a;
        g b;
        WeakReference<b> c;
        boolean d;
        boolean e;
        Surface f;
        private ByteBuffer g;
        private ByteBuffer h;

        public a(Looper looper) {
            super(looper);
        }

        public void a(boolean z, boolean z2, Surface surface, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, g gVar, b bVar) {
            this.e = z;
            this.d = z2;
            this.f = surface;
            this.g = byteBuffer;
            this.h = byteBuffer2;
            this.b = gVar;
            this.c = new WeakReference<>(bVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 100:
                    a(((Boolean) message.obj).booleanValue());
                    return;
                case 101:
                    try {
                        Bundle data = message.getData();
                        a(data.getByteArray("nal"), data.getLong("pts"), data.getLong("dts"), data.getInt("codecId"));
                        return;
                    } catch (Exception e) {
                        TXCLog.e("TXCVideoDecoder", "decode frame failed." + e.getMessage());
                        return;
                    }
                case 102:
                    a();
                    return;
                case 103:
                    boolean z = false;
                    boolean z2 = message.arg1 == 1;
                    if (message.arg2 == 1) {
                        z = true;
                    }
                    a(z2, z);
                    return;
                default:
                    return;
            }
        }

        private void a(byte[] bArr, long j, long j2, int i) {
            TXSNALPacket tXSNALPacket = new TXSNALPacket();
            tXSNALPacket.nalData = bArr;
            tXSNALPacket.pts = j;
            tXSNALPacket.dts = j2;
            tXSNALPacket.codecId = i;
            b bVar = this.a;
            if (bVar != null) {
                bVar.decode(tXSNALPacket);
            }
        }

        private void a() {
            b bVar = this.a;
            if (bVar != null) {
                bVar.stop();
                this.a.setListener(null);
                this.a.setNotifyListener(null);
                this.a = null;
            }
            Looper.myLooper().quit();
            TXCLog.w("TXCVideoDecoder", "play:decode: stop decode hwdec: " + this.d);
        }

        private void a(boolean z, boolean z2) {
            this.d = z;
            TXCLog.w("TXCVideoDecoder", "play:decode: restart decode hwdec: " + this.d);
            b bVar = this.a;
            if (bVar != null) {
                bVar.stop();
                this.a.setListener(null);
                this.a.setNotifyListener(null);
                this.a = null;
            }
            a(z2);
        }

        private void a(boolean z) {
            if (this.a != null) {
                TXCLog.i("TXCVideoDecoder", "play:decode: start decode ignore hwdec: " + this.d);
                return;
            }
            if (this.d) {
                this.a = new e();
            } else {
                this.a = new TXCVideoFfmpegDecoder();
            }
            this.a.setListener(this.b);
            this.a.setNotifyListener(this.c);
            this.a.config(this.f);
            this.a.start(this.g, this.h, z, this.e);
            TXCLog.w("TXCVideoDecoder", "play:decode: start decode hwdec: " + this.d + ", h265: " + this.e);
        }
    }
}
