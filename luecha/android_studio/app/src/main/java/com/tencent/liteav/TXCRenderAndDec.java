package com.tencent.liteav;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Bundle;
import android.view.Surface;
import com.google.android.exoplayer2.PlaybackException;
import com.tencent.liteav.basic.f.c;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.module.TXCEventRecorderProxy;
import com.tencent.liteav.basic.module.TXCKeyPointReportProxy;
import com.tencent.liteav.basic.structs.TXSNALPacket;
import com.tencent.liteav.basic.structs.TXSVideoFrame;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import com.tencent.liteav.basic.util.h;
import com.tencent.liteav.renderer.a;
import com.tencent.liteav.renderer.e;
import com.tencent.liteav.renderer.f;
import com.tencent.liteav.videodecoder.TXCVideoDecoder;
import com.tencent.liteav.videodecoder.g;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXCRenderAndDec extends com.tencent.liteav.basic.module.a implements com.tencent.liteav.basic.c.b, a.AbstractC0026a, f, g {
    public static final String TAG = "TXCRenderAndDec";
    private Context mContext;
    private WeakReference<com.tencent.liteav.basic.c.b> mNotifyListener;
    private WeakReference<b> mRenderAndDecDelegate;
    private k mVideoFrameListener;
    private d mConfig = null;
    private boolean mEnableLimitHWDecCache = false;
    private TXCVideoDecoder mVideoDecoder = null;
    private boolean mEnableDecoderChange = false;
    private boolean mEnableRestartDecoder = false;
    private e mVideoRender = null;
    private com.tencent.liteav.basic.e.f mRGBA2YUVFilter = null;
    private int mCustomRenderFrameBufferId = -1;
    private com.tencent.liteav.basic.enums.b mVideoFrameFormat = com.tencent.liteav.basic.enums.b.UNKNOWN;
    private boolean mRealTime = false;
    private boolean mIsRendering = false;
    private int mStreamType = 0;
    private long mFrameDecErrCnt = 0;
    private long mLastReqKeyFrameTS = 0;
    private boolean mFirstRender = false;
    private int mRenderMode = 0;
    private int mRenderRotation = 0;
    private long mLastRenderCalculateTS = 0;
    private long mRenderFrameCount = 0;
    private long mLastRenderFrameCount = 0;
    private long mCurrentRenderPts = 0;
    private a mDecListener = null;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface a {
        void a(SurfaceTexture surfaceTexture);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface b {
        void b(String str, int i);
    }

    public void decVideo(TXSNALPacket tXSNALPacket) {
    }

    @Override // com.tencent.liteav.videodecoder.g
    public void onDecoderChange(String str, boolean z) {
    }

    public TXCRenderAndDec(Context context) {
        this.mContext = null;
        this.mContext = context;
        c.a().a(this.mContext);
    }

    public void setVideoRender(e eVar) {
        TXCLog.i("TXCRenderAndDec", "set video render " + eVar + " id " + getID() + ", " + this.mStreamType);
        this.mVideoRender = eVar;
        e eVar2 = this.mVideoRender;
        if (eVar2 != null) {
            eVar2.setID(getID());
            this.mVideoRender.a(this.mStreamType);
            this.mVideoRender.a((com.tencent.liteav.basic.c.b) this);
            this.mVideoRender.c(this.mRenderMode);
            this.mVideoRender.e(this.mRenderRotation);
            if (this.mVideoFrameListener != null) {
                e eVar3 = this.mVideoRender;
                if (eVar3 instanceof com.tencent.liteav.renderer.a) {
                    ((com.tencent.liteav.renderer.a) eVar3).b((a.AbstractC0026a) this);
                }
            }
            d dVar = this.mConfig;
            if (dVar != null) {
                this.mVideoRender.b(dVar.d);
            }
        }
    }

    public void setNotifyListener(com.tencent.liteav.basic.c.b bVar) {
        this.mNotifyListener = new WeakReference<>(bVar);
    }

    public void setRenderAndDecDelegate(b bVar) {
        this.mRenderAndDecDelegate = new WeakReference<>(bVar);
    }

    public void setVideoFrameListener(k kVar, com.tencent.liteav.basic.enums.b bVar) {
        this.mVideoFrameListener = kVar;
        this.mVideoFrameFormat = bVar;
        TXCLog.i("TXCRenderAndDec", "setVideoFrameListener->enter listener: " + kVar + ", format: " + bVar);
        e eVar = this.mVideoRender;
        if (eVar != null && (eVar instanceof com.tencent.liteav.renderer.a)) {
            if (kVar == null) {
                TXCLog.i("TXCRenderAndDec", "setCustomRenderListener-> clean listener.");
                ((com.tencent.liteav.renderer.a) this.mVideoRender).b((a.AbstractC0026a) null);
                return;
            }
            TXCLog.i("TXCRenderAndDec", "setCustomRenderListener-> set listener.");
            ((com.tencent.liteav.renderer.a) this.mVideoRender).b((a.AbstractC0026a) this);
        }
    }

    public void setConfig(d dVar) {
        this.mConfig = dVar;
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.b(this.mConfig.d);
        }
    }

    public d getConfig() {
        return this.mConfig;
    }

    @Override // com.tencent.liteav.basic.module.a
    public void setID(String str) {
        super.setID(str);
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.setID(getID());
        }
        TXCVideoDecoder tXCVideoDecoder = this.mVideoDecoder;
        if (tXCVideoDecoder != null) {
            tXCVideoDecoder.setUserId(str);
        }
    }

    public void setDecListener(a aVar) {
        this.mDecListener = aVar;
    }

    public void enableDecoderChange(boolean z) {
        this.mEnableDecoderChange = z;
    }

    public void enableRestartDecoder(boolean z) {
        this.mEnableRestartDecoder = z;
    }

    public void start(boolean z) {
        TXCLog.i("TXCRenderAndDec", "start render dec " + getID() + ", " + this.mStreamType);
        this.mRealTime = z;
        this.mFrameDecErrCnt = 0;
        this.mLastReqKeyFrameTS = 0;
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.a((f) this);
            this.mVideoRender.e();
            this.mVideoRender.setID(getID());
        }
        this.mVideoDecoder = new TXCVideoDecoder();
        this.mVideoDecoder.setUserId(getID());
        this.mVideoDecoder.setStreamType(this.mStreamType);
        this.mVideoDecoder.setListener(this);
        this.mVideoDecoder.setNotifyListener(this);
        this.mVideoDecoder.enableChange(this.mEnableDecoderChange);
        this.mVideoDecoder.enableLimitDecCache(this.mEnableLimitHWDecCache);
        this.mVideoDecoder.enableRestart(this.mEnableRestartDecoder);
        startDecode();
        this.mIsRendering = true;
    }

    public void startVideo() {
        stopVideo();
        this.mRealTime = true;
        this.mFrameDecErrCnt = 0;
        this.mLastReqKeyFrameTS = 0;
        this.mCurrentRenderPts = 0;
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.a((f) this);
            this.mVideoRender.e();
            this.mVideoRender.setID(getID());
        }
        TXCLog.i("TXCRenderAndDec", "start video dec " + getID() + ", " + this.mStreamType);
        this.mVideoDecoder = new TXCVideoDecoder();
        this.mVideoDecoder.setUserId(getID());
        this.mVideoDecoder.setStreamType(this.mStreamType);
        this.mVideoDecoder.setListener(this);
        this.mVideoDecoder.setNotifyListener(this);
        this.mVideoDecoder.enableChange(this.mEnableDecoderChange);
        this.mVideoDecoder.enableRestart(this.mEnableRestartDecoder);
        this.mVideoDecoder.enableLimitDecCache(this.mEnableLimitHWDecCache);
        startDecode();
        this.mIsRendering = true;
    }

    public void stopVideo() {
        this.mIsRendering = false;
        if (this.mVideoDecoder != null) {
            TXCLog.i("TXCRenderAndDec", "stop video dec " + getID() + ", " + this.mStreamType);
            this.mVideoDecoder.setListener(null);
            this.mVideoDecoder.setNotifyListener(null);
            this.mVideoDecoder.stop();
        }
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.a(false);
            this.mVideoRender.a((f) null);
        }
    }

    public void stop() {
        TXCLog.i("TXCRenderAndDec", "stop video render dec " + getID() + ", " + this.mStreamType);
        this.mIsRendering = false;
        this.mRealTime = false;
        TXCVideoDecoder tXCVideoDecoder = this.mVideoDecoder;
        if (tXCVideoDecoder != null) {
            tXCVideoDecoder.setListener(null);
            this.mVideoDecoder.setNotifyListener(null);
            this.mVideoDecoder.stop();
        }
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.a(true);
            this.mVideoRender.a((f) null);
        }
    }

    public void enableReport(boolean z) {
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.c(z);
        }
    }

    public void resetPeriodStatistics() {
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.m();
        }
    }

    public void resetPeriodFeelingStatistics() {
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.n();
        }
    }

    public boolean isRendering() {
        return this.mIsRendering;
    }

    public void setRenderMode(int i) {
        this.mRenderMode = i;
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.c(i);
        }
    }

    public void setRenderRotation(int i) {
        TXCLog.i("TXCRenderAndDec", "vrotation setRenderRotation " + i);
        this.mRenderRotation = i;
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.e(i);
        }
    }

    public void setRenderMirrorType(int i) {
        TXCLog.i("TXCRenderAndDec", "setRenderMirrorType " + i);
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.d(i);
        }
    }

    public void setBlockInterval(int i) {
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.f(i);
        }
    }

    public long getVideoCacheDuration() {
        return (long) getIntValue(6104, 2);
    }

    public long getVideoCacheFrameCount() {
        return (long) getIntValue(6105, 2);
    }

    public int getVideoDecCacheFrameCount() {
        return getIntValue(6106, 2);
    }

    public long getAVPlayInterval() {
        return getLongValue(6107, 2);
    }

    public long getAVNetRecvInterval() {
        return getLongValue(6108, 2);
    }

    public int getVideoGop() {
        return getIntValue(7120);
    }

    public long getCurrentRenderPts() {
        return this.mCurrentRenderPts;
    }

    public void updateLoadInfo() {
        TXCVideoDecoder tXCVideoDecoder = this.mVideoDecoder;
        if (tXCVideoDecoder != null) {
            setStatusValue(5002, this.mStreamType, Long.valueOf(tXCVideoDecoder.isHardwareDecode() ? 1 : 0));
        }
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.o();
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.mLastRenderCalculateTS;
        if (j >= 1000) {
            long j2 = this.mRenderFrameCount;
            this.mLastRenderFrameCount = j2;
            this.mLastRenderCalculateTS = currentTimeMillis;
            setStatusValue(PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED, this.mStreamType, Double.valueOf((((double) (j2 - this.mLastRenderFrameCount)) * 1000.0d) / ((double) j)));
        }
    }

    public e getVideoRender() {
        return this.mVideoRender;
    }

    public void setStreamType(int i) {
        this.mStreamType = i;
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.a(this.mStreamType);
        }
        TXCVideoDecoder tXCVideoDecoder = this.mVideoDecoder;
        if (tXCVideoDecoder != null) {
            tXCVideoDecoder.setStreamType(this.mStreamType);
        }
    }

    public int getStreamType() {
        return this.mStreamType;
    }

    public void enableLimitDecCache(boolean z) {
        this.mEnableLimitHWDecCache = z;
        TXCVideoDecoder tXCVideoDecoder = this.mVideoDecoder;
        if (tXCVideoDecoder != null) {
            tXCVideoDecoder.enableLimitDecCache(z);
        }
    }

    private void startDecode(SurfaceTexture surfaceTexture) {
        TXCVideoDecoder tXCVideoDecoder = this.mVideoDecoder;
        if (tXCVideoDecoder != null) {
            tXCVideoDecoder.stop();
            tXCVideoDecoder.enableHWDec(this.mConfig.h);
            tXCVideoDecoder.config(this.mConfig.B);
            TXCLog.i("TXCRenderAndDec", "trtc_ start decode " + surfaceTexture + ", hw: " + this.mConfig.h + ", id " + getID() + "_" + this.mStreamType);
            if (surfaceTexture != null) {
                tXCVideoDecoder.setup(surfaceTexture, (ByteBuffer) null, (ByteBuffer) null, !this.mRealTime);
                tXCVideoDecoder.setUserId(getID());
                tXCVideoDecoder.start();
            } else if (!this.mConfig.h) {
                tXCVideoDecoder.setup((Surface) null, (ByteBuffer) null, (ByteBuffer) null, !this.mRealTime);
                tXCVideoDecoder.setUserId(getID());
                tXCVideoDecoder.start();
            }
        }
    }

    private void startDecode() {
        e eVar = this.mVideoRender;
        startDecode(eVar != null ? eVar.a() : null);
    }

    private void notifyEvent(int i, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("EVT_USERID", getID());
        bundle.putInt("EVT_ID", i);
        bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
        if (str != null) {
            bundle.putCharSequence("EVT_MSG", str);
        }
        bundle.putInt("EVT_STREAM_TYPE", this.mStreamType);
        h.a(this.mNotifyListener, i, bundle);
    }

    public void restartDecoder() {
        TXCVideoDecoder tXCVideoDecoder = this.mVideoDecoder;
        if (tXCVideoDecoder != null && tXCVideoDecoder.isH265()) {
            tXCVideoDecoder.restart(true);
        }
    }

    @Override // com.tencent.liteav.basic.c.b
    public void onNotifyEvent(int i, Bundle bundle) {
        if (i == 2106) {
            d dVar = this.mConfig;
            dVar.h = false;
            TXCVideoDecoder tXCVideoDecoder = this.mVideoDecoder;
            if (tXCVideoDecoder != null) {
                tXCVideoDecoder.restart(dVar.h);
            }
        } else if (i == -2304) {
            if (com.tencent.liteav.basic.a.a()) {
                this.mConfig.h = false;
                TXCVideoDecoder tXCVideoDecoder2 = this.mVideoDecoder;
                if (tXCVideoDecoder2 != null) {
                    tXCVideoDecoder2.restart(false);
                    return;
                }
                return;
            }
        } else if (i == 2020) {
            TXCLog.e("TXCRenderAndDec", "decoding too many frame(>40) without output! request key frame now.");
            requestKeyFrame();
            return;
        }
        bundle.putInt("EVT_STREAM_TYPE", this.mStreamType);
        h.a(this.mNotifyListener, i, bundle);
    }

    @Override // com.tencent.liteav.renderer.f
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture) {
        TXCLog.w("TXCRenderAndDec", "play decode when surface texture create hw " + this.mConfig.h);
        TXCVideoDecoder tXCVideoDecoder = this.mVideoDecoder;
        if (tXCVideoDecoder != null) {
            tXCVideoDecoder.setup(surfaceTexture, (ByteBuffer) null, (ByteBuffer) null, !this.mRealTime);
        }
        if (this.mConfig.h) {
            startDecode(surfaceTexture);
        }
        resetPeriodStatistics();
        enableReport(true);
    }

    @Override // com.tencent.liteav.renderer.f
    public void onSurfaceTextureDestroy(SurfaceTexture surfaceTexture) {
        try {
            TXCLog.w("TXCRenderAndDec", "play:stop decode when surface texture release");
            if (this.mConfig.h && this.mVideoDecoder != null) {
                this.mVideoDecoder.stop();
            }
            if (this.mCustomRenderFrameBufferId != -1) {
                com.tencent.liteav.basic.e.g.a(this.mCustomRenderFrameBufferId);
                this.mCustomRenderFrameBufferId = -1;
            }
            if (this.mRGBA2YUVFilter != null) {
                this.mRGBA2YUVFilter.d();
                this.mRGBA2YUVFilter = null;
            }
            if (this.mDecListener != null) {
                this.mDecListener.a(surfaceTexture);
            }
            resetPeriodStatistics();
            enableReport(false);
        } catch (Exception e) {
            TXCLog.e("TXCRenderAndDec", "onSurfaceTextureDestroy failed.", e);
        }
    }

    @Override // com.tencent.liteav.videodecoder.g
    public void onDecodeFrame(TXSVideoFrame tXSVideoFrame, int i, int i2, long j, long j2, int i3) {
        int i4 = i3;
        this.mCurrentRenderPts = j;
        if (i4 == 0 || i4 == 1 || i4 == 2 || i4 == 3) {
            i4 = 360 - (i4 * 90);
        }
        k kVar = this.mVideoFrameListener;
        if (!(kVar == null || tXSVideoFrame == null || (this.mVideoFrameFormat != com.tencent.liteav.basic.enums.b.I420 && this.mVideoFrameFormat != com.tencent.liteav.basic.enums.b.NV21))) {
            TXSVideoFrame clone = this.mVideoRender != null ? tXSVideoFrame.clone() : tXSVideoFrame;
            clone.rotation = (this.mRenderRotation + i4) % 360;
            if (this.mVideoFrameFormat == com.tencent.liteav.basic.enums.b.NV21) {
                clone.loadNV21BufferFromI420Buffer();
            }
            kVar.a(getID(), this.mStreamType, clone);
        }
        if (!this.mFirstRender) {
            this.mFirstRender = true;
            TXCEventRecorderProxy.a(getID(), 5007, -1, -1, "", this.mStreamType);
            if (this.mVideoRender == null) {
                TXCKeyPointReportProxy.a(getID(), 40022, 0, this.mStreamType);
            }
            if (this.mVideoDecoder != null) {
                TXCKeyPointReportProxy.a(getID(), 40029, this.mVideoDecoder.GetDecodeFirstFrameTS(), this.mStreamType);
            }
            if (this.mStreamType == 2) {
                TXCKeyPointReportProxy.a(getID(), 32004);
            }
        }
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.a(tXSVideoFrame, i, i2, i4);
        } else if (this.mLastRenderCalculateTS == 0) {
            this.mLastRenderCalculateTS = System.currentTimeMillis();
            this.mLastRenderFrameCount = 0;
            this.mRenderFrameCount = 0;
        } else {
            this.mRenderFrameCount++;
        }
    }

    @Override // com.tencent.liteav.videodecoder.g
    public void onVideoSizeChange(int i, int i2) {
        e eVar = this.mVideoRender;
        if (eVar != null) {
            eVar.c(i, i2);
        }
        Bundle bundle = new Bundle();
        bundle.putCharSequence("EVT_MSG", "Resolution changed to" + i + "x" + i2);
        bundle.putInt("EVT_PARAM1", i);
        bundle.putInt("EVT_PARAM2", i2);
        bundle.putString("EVT_USERID", getID());
        bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
        bundle.putLong("EVT_UTC_TIME", TXCTimeUtil.getUtcTimeTick());
        onNotifyEvent(2009, bundle);
        setStatusValue(5003, this.mStreamType, Integer.valueOf((i << 16) | i2));
        long j = (long) i;
        long j2 = (long) i2;
        TXCEventRecorderProxy.a(getID(), PlaybackException.ERROR_CODE_DECODING_FAILED, j, j2, "", this.mStreamType);
        TXCKeyPointReportProxy.a(getID(), 40002, j, this.mStreamType);
        TXCKeyPointReportProxy.a(getID(), 40003, j2, this.mStreamType);
    }

    @Override // com.tencent.liteav.videodecoder.g
    public void onDecodeFailed(int i) {
        TXCVideoDecoder tXCVideoDecoder;
        TXCLog.e("TXCRenderAndDec", "video decode failed " + i);
        if (i == -2) {
            TXCLog.w("TXCRenderAndDec", "use h265 softdecoder but not set h265 softdecoder to sdk, isH265SoftDecodeExist= " + com.tencent.liteav.basic.a.a());
            if (!com.tencent.liteav.basic.a.a() && (tXCVideoDecoder = this.mVideoDecoder) != null && tXCVideoDecoder.isH265()) {
                this.mConfig.h = true;
                tXCVideoDecoder.restart(true);
            }
        } else if (-4 == i) {
            notifyEvent(-2312, "h265 softdecoder start fail.");
        } else {
            requestKeyFrame();
            int i2 = this.mStreamType;
            long j = this.mFrameDecErrCnt + 1;
            this.mFrameDecErrCnt = j;
            setStatusValue(17014, i2, Long.valueOf(j));
        }
    }

    @Override // com.tencent.liteav.renderer.a.AbstractC0026a
    public void onTextureProcess(int i, int i2, int i3, int i4) {
        k kVar = this.mVideoFrameListener;
        if (kVar != null) {
            TXSVideoFrame tXSVideoFrame = new TXSVideoFrame();
            tXSVideoFrame.width = i2;
            tXSVideoFrame.height = i3;
            tXSVideoFrame.pts = TXCTimeUtil.getTimeTick();
            tXSVideoFrame.rotation = (i4 + this.mRenderRotation) % 360;
            if (this.mVideoFrameFormat == com.tencent.liteav.basic.enums.b.RGBA) {
                tXSVideoFrame.textureId = i;
                tXSVideoFrame.eglContext = com.tencent.liteav.basic.e.g.d();
                if (this.mCustomRenderFrameBufferId == -1) {
                    this.mCustomRenderFrameBufferId = com.tencent.liteav.basic.e.g.c();
                }
                com.tencent.liteav.basic.e.g.a(i, this.mCustomRenderFrameBufferId);
                GLES20.glBindFramebuffer(36160, this.mCustomRenderFrameBufferId);
                this.mVideoFrameListener.a(getID(), this.mStreamType, tXSVideoFrame);
                com.tencent.liteav.basic.e.g.b(this.mCustomRenderFrameBufferId);
            } else if (this.mVideoFrameFormat == com.tencent.liteav.basic.enums.b.TEXTURE_2D) {
                tXSVideoFrame.textureId = i;
                e eVar = this.mVideoRender;
                if (eVar instanceof com.tencent.liteav.renderer.a) {
                    tXSVideoFrame.eglContext = ((com.tencent.liteav.renderer.a) eVar).b();
                }
                kVar.a(getID(), this.mStreamType, tXSVideoFrame);
            } else {
                TXCVideoDecoder tXCVideoDecoder = this.mVideoDecoder;
                if (tXCVideoDecoder == null || tXCVideoDecoder.isHardwareDecode()) {
                    if (this.mRGBA2YUVFilter == null) {
                        if (this.mVideoFrameFormat == com.tencent.liteav.basic.enums.b.NV21) {
                            this.mRGBA2YUVFilter = new com.tencent.liteav.beauty.a.a(3);
                        } else {
                            this.mRGBA2YUVFilter = new com.tencent.liteav.beauty.a.a(1);
                        }
                        this.mRGBA2YUVFilter.a(true);
                        if (this.mRGBA2YUVFilter.a()) {
                            this.mRGBA2YUVFilter.a(i2, i3);
                        } else {
                            TXCLog.i("TXCRenderAndDec", "throwVideoFrame->release mVideoFrameFilter");
                            this.mRGBA2YUVFilter = null;
                        }
                    }
                    if (this.mRGBA2YUVFilter != null) {
                        GLES20.glViewport(0, 0, i2, i3);
                        this.mRGBA2YUVFilter.a(i2, i3);
                        this.mRGBA2YUVFilter.b(i);
                        GLES20.glBindFramebuffer(36160, this.mRGBA2YUVFilter.m());
                        kVar.a(getID(), this.mStreamType, tXSVideoFrame);
                        GLES20.glBindFramebuffer(36160, 0);
                    }
                }
            }
        }
    }

    private void requestKeyFrame() {
        b bVar;
        long timeTick = TXCTimeUtil.getTimeTick();
        if (timeTick > this.mLastReqKeyFrameTS + 3000) {
            this.mLastReqKeyFrameTS = timeTick;
            TXCLog.e("TXCRenderAndDec", "requestKeyFrame: " + getID());
            WeakReference<b> weakReference = this.mRenderAndDecDelegate;
            if (weakReference != null && (bVar = weakReference.get()) != null) {
                bVar.b(getID(), this.mStreamType);
            }
        }
    }
}
