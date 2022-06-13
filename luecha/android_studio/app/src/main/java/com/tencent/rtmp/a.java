package com.tencent.rtmp;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Surface;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.common.internal.ImagesContract;
import com.tencent.liteav.audio.TXCAudioEngine;
import com.tencent.liteav.basic.c.b;
import com.tencent.liteav.basic.datareport.TXCDRApi;
import com.tencent.liteav.basic.e.k;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.structs.TXSVideoFrame;
import com.tencent.liteav.basic.util.TXCBuild;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.d;
import com.tencent.liteav.e;
import com.tencent.liteav.j;
import com.tencent.liteav.l;
import com.tencent.rtmp.TXLivePlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.ugc.TXRecordCommon;
import javax.microedition.khronos.egl.EGLContext;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXLivePlayerImpl.java */
/* loaded from: classes5.dex */
public class a implements b {
    private long A;
    private String B;
    private long G;
    private String H;
    private int I;
    private com.tencent.liteav.basic.b.a K;
    private TXLivePlayer.ITXAudioRawDataListener M;
    private TXCloudVideoView a;
    private Surface b;
    private int c;
    private int d;
    private TXLivePlayConfig f;
    private int i;
    private int j;
    private Context s;
    private j u;
    private e y;
    private boolean z;
    private boolean g = true;
    private boolean h = true;
    private String k = "";
    private boolean l = false;
    private int m = 100;
    private int n = 0;
    private TXLivePlayer.ITXVideoRawDataListener o = null;
    private byte[] p = null;
    private Object q = null;
    private TXLivePlayer.ITXLivePlayVideoRenderListener r = null;
    private boolean v = true;
    private float w = 1.0f;
    private boolean x = false;
    private int C = -1;
    private long D = 0;
    private TXLivePlayer.ITXAudioVolumeEvaluationListener E = null;
    private int F = 0;
    private int J = 0;
    private RunnableC0031a L = null;
    private ITXLivePlayListener e = null;
    private Handler t = new Handler(Looper.getMainLooper());

    public a(Context context) {
        this.s = context.getApplicationContext();
        TXCCommonUtil.setAppContext(this.s);
        TXCLog.init();
        TXCCommonUtil.setAppContext(this.s);
        TXCLog.init();
    }

    private void c(String str) {
        if (str == null) {
            str = "";
        }
        TXCLog.i("TXLivePlayer", "[API] TXLivePlayer(" + hashCode() + ") " + str);
    }

    public void a(TXLivePlayConfig tXLivePlayConfig) {
        StringBuilder sb = new StringBuilder();
        sb.append("setConfig");
        sb.append(tXLivePlayConfig != null ? tXLivePlayConfig.toString() : null);
        c(sb.toString());
        this.f = tXLivePlayConfig;
        if (this.f == null) {
            this.f = new TXLivePlayConfig();
        }
        j jVar = this.u;
        if (jVar != null) {
            d w = jVar.w();
            if (w == null) {
                w = new d();
            }
            this.I = (int) (this.f.mMinAutoAdjustCacheTime * 1000.0f);
            w.a = this.f.mCacheTime;
            w.g = this.f.mAutoAdjustCacheTime;
            w.c = this.f.mMinAutoAdjustCacheTime;
            w.b = this.f.mMaxAutoAdjustCacheTime;
            w.d = this.f.mVideoBlockThreshold;
            w.e = this.f.mConnectRetryCount;
            w.f = this.f.mConnectRetryInterval;
            w.i = this.f.mEnableNearestIP;
            w.m = this.f.mRtmpChannelType;
            w.h = this.g;
            w.n = this.f.mCacheFolderPath;
            w.o = this.f.mMaxCacheItems;
            w.j = this.f.mEnableMessage;
            w.k = this.f.mEnableMetaData;
            w.l = this.f.mFlvSessionKey;
            w.q = this.f.mHeaders;
            TXCLog.i("TXLivePlayer", "liteav_api setConfig [cacheTime:" + this.f.mCacheTime + "][autoAdjustCacheTime:" + this.f.mAutoAdjustCacheTime + "][minAutoAdjustCacheTime:" + this.f.mMinAutoAdjustCacheTime + "][maxAutoAdjustCacheTime:" + this.f.mMaxAutoAdjustCacheTime + "][videoBlockThreshold:" + this.f.mVideoBlockThreshold + "][connectRetryCount:" + this.f.mConnectRetryCount + "][connectRetryInterval:" + this.f.mConnectRetryInterval + "][enableHWDec:" + this.g + "][enableMessage:" + this.f.mEnableMessage + "][enableMetaData:" + this.f.mEnableMetaData + "][flvSessionKey:" + this.f.mFlvSessionKey);
            this.u.a(w);
        }
    }

    public void a(ITXLivePlayListener iTXLivePlayListener) {
        c("setPlayListener listener:" + iTXLivePlayListener);
        this.e = iTXLivePlayListener;
    }

    public void a(TXCloudVideoView tXCloudVideoView) {
        c("setPlayerView old:" + this.a + " new:" + tXCloudVideoView);
        this.a = tXCloudVideoView;
        j jVar = this.u;
        if (jVar != null) {
            jVar.a(tXCloudVideoView);
        }
    }

    public int a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            TXCLog.e("TXLivePlayer", "start play error when url is empty " + this);
            return -1;
        }
        if (!TextUtils.isEmpty(this.k)) {
            if (!this.k.equalsIgnoreCase(str) || !a()) {
                TXCLog.w("TXLivePlayer", " stop old play when new url is not the same with old url  " + this);
                j jVar = this.u;
                if (jVar != null) {
                    jVar.a(false);
                }
                this.k = "";
            } else {
                TXCLog.e("TXLivePlayer", "start play error when new url is the same with old url  " + this);
                if (this.z) {
                    onNotifyEvent(2004, new Bundle());
                }
                if (this.z) {
                    return 0;
                }
                return -1;
            }
        }
        TXCDRApi.initCrashReport(this.s);
        TXCLog.i("TXLivePlayer", "===========================================================================================================================================================");
        TXCLog.i("TXLivePlayer", "===========================================================================================================================================================");
        TXCLog.i("TXLivePlayer", "=====  StartPlay url = " + str + " playType = " + i + " DeviceName = " + TXCBuild.Model() + " SDKVersion = " + TXCCommonUtil.getSDKID() + " , " + TXCCommonUtil.getSDKVersionStr() + "    ======");
        TXCLog.i("TXLivePlayer", "===========================================================================================================================================================");
        TXCLog.i("TXLivePlayer", "===========================================================================================================================================================");
        int i2 = this.C;
        if (i2 == -1 || i2 != i) {
            this.u = l.a(this.s, i);
        }
        this.C = i;
        if (this.u == null) {
            TXCLog.i("TXLivePlayer", "liteav_api startPlay create palyer failed" + this);
            return -2;
        }
        this.k = c(str, i);
        c("startPlay url:" + str + " type:" + i);
        a(this.f);
        TXCloudVideoView tXCloudVideoView = this.a;
        if (tXCloudVideoView != null) {
            tXCloudVideoView.clearLog();
            this.a.setVisibility(0);
        }
        this.u.a(this.a);
        this.u.a(this);
        this.u.e(this.v);
        Surface surface = this.b;
        if (surface != null) {
            this.u.a(surface);
            this.u.a(this.c, this.d);
        }
        com.tencent.liteav.basic.b.a aVar = this.K;
        if (aVar == null || !TXCCommonUtil.equalURL(aVar.a(), this.k)) {
            this.u.a(this.k, i);
        } else {
            this.u.a(this.k, i, this.K);
        }
        this.u.b(this.l);
        this.u.c(this.m);
        this.u.d(this.n);
        this.u.b(this.w);
        this.u.b(this.j);
        this.u.a(this.i);
        this.u.a(this.M);
        TXLivePlayer.ITXVideoRawDataListener iTXVideoRawDataListener = this.o;
        if (iTXVideoRawDataListener != null) {
            a(iTXVideoRawDataListener);
        }
        TXLivePlayer.ITXLivePlayVideoRenderListener iTXLivePlayVideoRenderListener = this.r;
        if (iTXLivePlayVideoRenderListener != null) {
            a(iTXLivePlayVideoRenderListener, this.q);
        }
        if (this.u.f()) {
            this.B = this.k;
            e eVar = this.y;
            this.A = eVar != null ? eVar.a() : 0;
            if (this.A > 0) {
                this.u.h();
            }
        }
        if (this.J == 0) {
            TXCDRApi.txReportDAU(this.s.getApplicationContext(), com.tencent.liteav.basic.datareport.a.bv);
        } else {
            TXCDRApi.txReportDAU(this.s.getApplicationContext(), com.tencent.liteav.basic.datareport.a.bI);
        }
        g();
        return 0;
    }

    public int a(boolean z) {
        TXCloudVideoView tXCloudVideoView;
        c("stopPlay need clear:" + z);
        if (z && (tXCloudVideoView = this.a) != null) {
            tXCloudVideoView.setVisibility(8);
        }
        h();
        j jVar = this.u;
        if (jVar != null) {
            jVar.a(z);
        }
        this.k = "";
        this.A = 0;
        this.J = 0;
        this.y = null;
        this.z = false;
        this.K = null;
        return 0;
    }

    public boolean a() {
        j jVar = this.u;
        if (jVar != null) {
            return jVar.c();
        }
        return false;
    }

    public void b() {
        c("pause");
        if (this.u != null) {
            TXCLog.w("TXLivePlayer", "pause play");
            this.u.a();
        }
    }

    public void c() {
        c("resume");
        j jVar = this.u;
        if (jVar != null) {
            jVar.b();
            if (this.u.f()) {
                e eVar = this.y;
                this.A = eVar != null ? eVar.a() : 0;
                if (this.A > 0) {
                    this.u.h();
                }
            }
        }
    }

    public void a(Surface surface) {
        c("setSurface old:" + this.b + " new:" + surface);
        this.b = surface;
        j jVar = this.u;
        if (jVar != null) {
            jVar.a(this.b);
        }
    }

    public void a(int i, int i2) {
        c("setSurfaceSize width:" + i + " height:" + i2);
        this.c = i;
        this.d = i2;
        j jVar = this.u;
        if (jVar != null) {
            jVar.a(i, i2);
        }
    }

    public void a(int i) {
        c("setRenderMode mode:" + i);
        this.i = i;
        j jVar = this.u;
        if (jVar != null) {
            jVar.a(i);
        }
    }

    public void b(int i) {
        c("setRenderRotation rotation:" + i);
        this.j = i;
        j jVar = this.u;
        if (jVar != null) {
            jVar.b(i);
        }
    }

    public boolean b(boolean z) {
        c("enableHardwareDecode enable:" + z);
        if (z) {
            if (TXCBuild.VersionInt() < 18) {
                TXCLog.e("HardwareDecode", "enableHardwareDecode failed, android system build.version = " + TXCBuild.VersionInt() + ", the minimum build.version should be 18(android 4.3 or later)");
                return false;
            } else if (j()) {
                TXCLog.e("HardwareDecode", "enableHardwareDecode failed, MANUFACTURER = " + TXCBuild.Manufacturer() + ", MODEL" + TXCBuild.Model());
                return false;
            }
        }
        this.g = z;
        j jVar = this.u;
        if (jVar == null) {
            return true;
        }
        d w = jVar.w();
        if (w == null) {
            w = new d();
        }
        w.h = this.g;
        this.u.a(w);
        return true;
    }

    public void c(boolean z) {
        c("setMute mute:" + z);
        this.l = z;
        j jVar = this.u;
        if (jVar != null) {
            jVar.b(z);
        }
    }

    public void c(int i) {
        if (i < 0) {
            i = 0;
        }
        if (i > 100) {
            i = 100;
        }
        c("setVolume volume:" + i);
        this.m = i;
        j jVar = this.u;
        if (jVar != null) {
            jVar.c(i);
        }
    }

    public void d(int i) {
        c("setAudioRoute route:" + i);
        TXCAudioEngine.setAudioRoute(i);
    }

    public int a(String str) {
        c("[SwitchStream]switchStream url:" + str);
        if (this.u == null) {
            return -1;
        }
        com.tencent.liteav.basic.b.a aVar = this.K;
        if (aVar == null || TextUtils.isEmpty(aVar.a()) || !str.equals(this.K.a())) {
            return this.u.a(str);
        }
        return this.u.a(str, this.K);
    }

    public void a(TXLivePlayer.ITXAudioVolumeEvaluationListener iTXAudioVolumeEvaluationListener) {
        this.E = iTXAudioVolumeEvaluationListener;
    }

    public void e(int i) {
        c("enableAudioVolumeEvaluation intervalMs:" + i);
        if (i > 0) {
            if (i < 100) {
                i = 100;
            }
            this.F = i;
            g();
            return;
        }
        this.F = 0;
        h();
    }

    public void b(String str) {
        String str2;
        String str3 = "setEncryptionParams";
        if (TextUtils.isEmpty(str) || str.contains(str3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("callExperimentalAPI json:");
            if (TextUtils.isEmpty(str)) {
                str2 = "";
            } else {
                str2 = str3;
            }
            sb.append(str2);
            TXCLog.i("TXLivePlayer", sb.toString());
        } else {
            TXCLog.i("TXLivePlayer", "callExperimentalAPI json:" + str);
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has("api")) {
                TXCLog.e("TXLivePlayer", "callExperimentalAPI[lack api or illegal type]: " + str);
                return;
            }
            String string = jSONObject.getString("api");
            JSONObject jSONObject2 = null;
            if (jSONObject.has("params")) {
                jSONObject2 = jSONObject.getJSONObject("params");
            }
            if (string.equals("muteRemoteAudioInSpeaker")) {
                if (jSONObject2 == null) {
                    TXCLog.e("TXLivePlayer", "muteRemoteAudioInSpeaker[lack parameter]");
                } else if (!jSONObject2.has("enable")) {
                    TXCLog.e("TXLivePlayer", "muteRemoteAudioInSpeaker[lack parameter]: enable");
                } else {
                    int i = jSONObject2.getInt("enable");
                    if (this.u != null) {
                        j jVar = this.u;
                        boolean z = true;
                        if (i != 1) {
                            z = false;
                        }
                        jVar.c(z);
                    }
                }
            } else if (string.equals("setInterfaceType")) {
                if (jSONObject2 == null) {
                    TXCLog.e("TXLivePlayer", "setInterfaceType[lack parameter]");
                } else if (!jSONObject2.has("type")) {
                    TXCLog.e("TXLivePlayer", "setInterfaceType[lack parameter]: type");
                } else {
                    this.J = jSONObject2.optInt("type", 0);
                }
            } else if (string.equals("setSEIPayloadType")) {
                if (jSONObject2 != null && jSONObject2.has("payloadType")) {
                    int i2 = jSONObject2.getInt("payloadType");
                    if (i2 == 5 || i2 == 242 || i2 == 100 || i2 == 243) {
                        this.n = i2;
                        if (this.u != null) {
                            this.u.d(this.n);
                            return;
                        }
                        return;
                    }
                    TXCLog.e("TXLivePlayer", "callExperimentalAPI[invalid param]: payloadType[" + i2 + "]");
                    return;
                }
                TXCLog.e("TXLivePlayer", "callExperimentalAPI[lack parameter or illegal type]: payloadType");
            } else if (!string.equals(str3)) {
            } else {
                if (jSONObject2 == null) {
                    TXCLog.e("TXLivePlayer", "setEncryptionParams[lack parameter]");
                } else if (!jSONObject2.has(ImagesContract.URL)) {
                    TXCLog.e("TXLivePlayer", "setEncryptionParams[lack parameter]: url");
                } else if (!jSONObject2.has("encMode")) {
                    TXCLog.e("TXLivePlayer", "setEncryptionParams[lack parameter]: encMode");
                } else if (!jSONObject2.has("encKey")) {
                    TXCLog.e("TXLivePlayer", "setEncryptionParams[lack parameter]: encKey");
                } else if (!jSONObject2.has("encIV")) {
                    TXCLog.e("TXLivePlayer", "setEncryptionParams[lack parameter]: encIV");
                } else {
                    this.K = new com.tencent.liteav.basic.b.a();
                    this.K.a(jSONObject2.getString(ImagesContract.URL));
                    this.K.a(jSONObject2.getInt("encMode"));
                    this.K.b(jSONObject2.getString("encKey"));
                    this.K.c(jSONObject2.getString("encIV"));
                }
            }
        } catch (Exception unused) {
            if (TextUtils.isEmpty(str) || str.contains(str3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("callExperimentalAPI[failed]:");
                if (TextUtils.isEmpty(str)) {
                    str3 = "";
                }
                sb2.append(str3);
                TXCLog.e("TXLivePlayer", sb2.toString());
                return;
            }
            TXCLog.e("TXLivePlayer", "callExperimentalAPI[failed]: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: TXLivePlayerImpl.java */
    /* renamed from: com.tencent.rtmp.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0031a implements Runnable {
        private int b;

        private RunnableC0031a() {
            this.b = 300;
        }

        public void a(int i) {
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.u != null && a.this.u.c()) {
                int j = a.this.u.j();
                if (a.this.E != null) {
                    a.this.E.onAudioVolumeEvaluationNotify(j);
                }
            }
            if (a.this.t != null && this.b > 0) {
                a.this.t.postDelayed(a.this.L, (long) this.b);
            }
        }
    }

    private void g() {
        j jVar = this.u;
        if (jVar != null) {
            jVar.a(this.F > 0, this.F);
            if (this.F > 0) {
                if (this.L == null) {
                    this.L = new RunnableC0031a();
                }
                this.L.a(this.F);
                Handler handler = this.t;
                if (handler != null) {
                    handler.removeCallbacks(this.L);
                    this.t.postDelayed(this.L, (long) this.F);
                }
            }
        }
    }

    private void h() {
        j jVar = this.u;
        if (jVar != null) {
            jVar.a(false, 0);
        }
        Handler handler = this.t;
        if (handler != null) {
            handler.removeCallbacks(this.L);
        }
        this.L = null;
        this.F = 0;
    }

    public void a(TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener) {
        c("setVideoRecordListener listener:" + iTXVideoRecordListener);
        j jVar = this.u;
        if (jVar != null) {
            jVar.a(iTXVideoRecordListener);
        }
    }

    public int f(int i) {
        c("startRecord type:" + i);
        if (TXCBuild.VersionInt() < 18) {
            TXCLog.e("TXLivePlayer", "API levl is too low (record need 18, current is" + TXCBuild.VersionInt() + ")");
            return -3;
        } else if (!a()) {
            TXCLog.e("TXLivePlayer", "startRecord: there is no playing stream");
            return -1;
        } else {
            j jVar = this.u;
            if (jVar != null) {
                return jVar.e(i);
            }
            return -1;
        }
    }

    public int d() {
        c("stopRecord");
        j jVar = this.u;
        if (jVar != null) {
            return jVar.e();
        }
        return -1;
    }

    public void a(final TXLivePlayer.ITXSnapshotListener iTXSnapshotListener) {
        c("snapshot listener:" + iTXSnapshotListener);
        if (!this.x && iTXSnapshotListener != null) {
            this.x = true;
            j jVar = this.u;
            if (jVar != null) {
                jVar.a(new k() { // from class: com.tencent.rtmp.a.1
                    @Override // com.tencent.liteav.basic.e.k
                    public void a(Bitmap bitmap) {
                        a.this.a(iTXSnapshotListener, bitmap);
                    }
                });
            } else {
                this.x = false;
            }
        }
    }

    public boolean a(byte[] bArr) {
        String str = this.k;
        if (str == null || str.isEmpty()) {
            return false;
        }
        if (this.g) {
            TXLog.e("TXLivePlayer", "can not addVideoRawData because of hw decode has set!");
            return false;
        } else if (this.u == null) {
            TXCLog.e("TXLivePlayer", "player hasn't created or not instanceof live player");
            return false;
        } else {
            this.p = bArr;
            return true;
        }
    }

    public int a(TXLivePlayer.ITXLivePlayVideoRenderListener iTXLivePlayVideoRenderListener, Object obj) {
        c("setVideoRenderListener listener:" + iTXLivePlayVideoRenderListener + " context:" + obj);
        if (obj != null) {
            if (TXCBuild.VersionInt() >= 17) {
                if (!(obj instanceof EGLContext) && !(obj instanceof android.opengl.EGLContext)) {
                    TXCLog.w("TXLivePlayer", "setVideoRenderListener error when glContext error " + obj);
                    return -1;
                }
            } else if (!(obj instanceof EGLContext)) {
                TXCLog.w("TXLivePlayer", "setVideoRenderListener error when glContext error " + obj);
                return -1;
            }
        }
        this.q = obj;
        this.r = iTXLivePlayVideoRenderListener;
        j jVar = this.u;
        if (jVar == null) {
            return 0;
        }
        if (iTXLivePlayVideoRenderListener != null) {
            jVar.a(new com.tencent.liteav.k() { // from class: com.tencent.rtmp.a.2
                @Override // com.tencent.liteav.k
                public void a(String str, int i, TXSVideoFrame tXSVideoFrame) {
                    TXLivePlayer.ITXLivePlayVideoRenderListener iTXLivePlayVideoRenderListener2;
                    if (tXSVideoFrame != null && tXSVideoFrame.width > 0 && tXSVideoFrame.height > 0 && (iTXLivePlayVideoRenderListener2 = a.this.r) != null) {
                        TXLivePlayer.TXLiteAVTexture tXLiteAVTexture = new TXLivePlayer.TXLiteAVTexture();
                        tXLiteAVTexture.textureId = tXSVideoFrame.textureId;
                        tXLiteAVTexture.width = tXSVideoFrame.width;
                        tXLiteAVTexture.height = tXSVideoFrame.height;
                        tXLiteAVTexture.eglContext = tXSVideoFrame.eglContext;
                        iTXLivePlayVideoRenderListener2.onRenderVideoFrame(tXLiteAVTexture);
                    }
                }
            }, com.tencent.liteav.basic.enums.b.TEXTURE_2D, obj);
            return 0;
        }
        jVar.a((com.tencent.liteav.k) null, com.tencent.liteav.basic.enums.b.UNKNOWN, (Object) null);
        return 0;
    }

    public void a(TXLivePlayer.ITXVideoRawDataListener iTXVideoRawDataListener) {
        c("setVideoRawDataListener listener:" + iTXVideoRawDataListener);
        this.o = iTXVideoRawDataListener;
        j jVar = this.u;
        if (jVar != null) {
            if (iTXVideoRawDataListener != null) {
                jVar.a(new com.tencent.liteav.k() { // from class: com.tencent.rtmp.a.3
                    @Override // com.tencent.liteav.k
                    public void a(String str, int i, TXSVideoFrame tXSVideoFrame) {
                        if (tXSVideoFrame != null && tXSVideoFrame.width > 0 && tXSVideoFrame.height > 0) {
                            byte[] bArr = a.this.p;
                            a.this.p = null;
                            TXLivePlayer.ITXVideoRawDataListener iTXVideoRawDataListener2 = a.this.o;
                            if (iTXVideoRawDataListener2 != null && bArr != null) {
                                if (bArr.length >= ((tXSVideoFrame.width * tXSVideoFrame.height) * 3) / 2) {
                                    tXSVideoFrame.loadYUVArray(bArr);
                                    iTXVideoRawDataListener2.onVideoRawDataAvailable(bArr, tXSVideoFrame.width, tXSVideoFrame.height, (int) tXSVideoFrame.pts);
                                    tXSVideoFrame.release();
                                    return;
                                }
                                TXCLog.e("TXLivePlayer", "raw data buffer length is too large");
                            }
                        }
                    }
                }, com.tencent.liteav.basic.enums.b.I420, (Object) null);
            } else {
                jVar.a((com.tencent.liteav.k) null, com.tencent.liteav.basic.enums.b.UNKNOWN, (Object) null);
            }
        }
    }

    public void a(TXLivePlayer.ITXAudioRawDataListener iTXAudioRawDataListener) {
        c("setAudioRawDataListener listener:" + iTXAudioRawDataListener);
        this.M = iTXAudioRawDataListener;
        j jVar = this.u;
        if (jVar != null) {
            jVar.a(iTXAudioRawDataListener);
        }
    }

    public int b(String str, int i) {
        c("prepareLiveSeek domain:" + str + " bizid:" + i);
        if (this.y == null) {
            this.y = new e();
        }
        e eVar = this.y;
        if (eVar != null) {
            return eVar.a(this.k, str, i, new e.a() { // from class: com.tencent.rtmp.a.4
                @Override // com.tencent.liteav.e.a
                public void a(long j) {
                    a.this.A = j;
                    if (a.this.u != null) {
                        a.this.u.h();
                    }
                }
            });
        }
        return -1;
    }

    public void g(int i) {
        c("seek time:" + i);
        j jVar = this.u;
        if (jVar == null) {
            return;
        }
        if (jVar.f() || this.z) {
            e eVar = this.y;
            String a = eVar != null ? eVar.a((long) i) : "";
            if (!TextUtils.isEmpty(a)) {
                this.z = a(a, 3) == 0;
                if (this.z) {
                    this.A = (long) (i * 1000);
                    return;
                }
                return;
            }
            ITXLivePlayListener iTXLivePlayListener = this.e;
            if (iTXLivePlayListener != null) {
                iTXLivePlayListener.onPlayEvent(-2301, new Bundle());
                return;
            }
            return;
        }
        this.u.f(i);
    }

    public int e() {
        c("resumeLive");
        if (!this.z) {
            return -1;
        }
        this.z = false;
        return a(this.B, 1);
    }

    public long f() {
        j jVar = this.u;
        if (jVar != null) {
            return jVar.g();
        }
        return 0;
    }

    @Deprecated
    public void d(boolean z) {
        TXCLog.i("TXLivePlayer", "setAutoPlay " + z);
        this.v = z;
    }

    @Deprecated
    public void a(float f) {
        TXCLog.i("TXLivePlayer", "setRate " + f);
        this.w = f;
        j jVar = this.u;
        if (jVar != null) {
            jVar.b(f);
        }
    }

    @Override // com.tencent.liteav.basic.c.b
    public void onNotifyEvent(int i, Bundle bundle) {
        a(i, bundle);
        if (i == 15001) {
            TXCloudVideoView tXCloudVideoView = this.a;
            if (tXCloudVideoView != null) {
                tXCloudVideoView.setLogText(bundle, null, 0);
            }
            ITXLivePlayListener iTXLivePlayListener = this.e;
            if (iTXLivePlayListener != null) {
                iTXLivePlayListener.onNetStatus(bundle);
            }
        } else if (i == 2005) {
            long j = ((long) bundle.getInt("EVT_PLAY_PROGRESS_MS")) + this.A;
            if (j > 0) {
                bundle.putInt("EVT_PLAY_PROGRESS", (int) (j / 1000));
                bundle.putInt("EVT_PLAY_PROGRESS_MS", (int) j);
                ITXLivePlayListener iTXLivePlayListener2 = this.e;
                if (iTXLivePlayListener2 != null) {
                    iTXLivePlayListener2.onPlayEvent(i, bundle);
                }
            }
        } else {
            i = 3002;
            if (i != -2302) {
                if (i != -2301) {
                    if (i == 2012) {
                        i = 2012;
                    } else if (i != 2013) {
                        if (!(i == 2021 || i == 2022)) {
                            if (i != 2105) {
                                if (i == 2106) {
                                    i = 2106;
                                } else if (i == 3006 || i == 3007) {
                                    i = 3005;
                                } else if (i != 3009 && i != 3010) {
                                    switch (i) {
                                        case -2309:
                                            break;
                                        case -2307:
                                            i = -2307;
                                            break;
                                        case -2304:
                                            i = -2304;
                                            break;
                                        case 1205:
                                            i = 1205;
                                            break;
                                        case 2015:
                                            i = 2015;
                                            break;
                                        case 2026:
                                            i = 2026;
                                            break;
                                        case 2028:
                                            i = 2028;
                                            break;
                                        case 2031:
                                            i = 2031;
                                            break;
                                        case 2101:
                                            i = 2101;
                                            break;
                                        case 2103:
                                            i = 2103;
                                            break;
                                        case 2109:
                                            return;
                                        case 3003:
                                            i = 3003;
                                            break;
                                        default:
                                            switch (i) {
                                                case 2001:
                                                    i = 2001;
                                                    break;
                                                case 2002:
                                                    i = 2002;
                                                    break;
                                                case 2003:
                                                    break;
                                                case 2004:
                                                    i = 2004;
                                                    break;
                                                case 2005:
                                                    i = 2005;
                                                    break;
                                                default:
                                                    switch (i) {
                                                        case 2007:
                                                            i = 2007;
                                                            break;
                                                        case 2008:
                                                            break;
                                                        case 2009:
                                                            i = 2009;
                                                            break;
                                                        default:
                                                            return;
                                                    }
                                            }
                                    }
                                }
                            }
                        }
                        i = 2008;
                    } else {
                        i = 2013;
                    }
                }
                i = -2301;
            } else {
                i = -2302;
            }
            TXCloudVideoView tXCloudVideoView2 = this.a;
            if (tXCloudVideoView2 != null) {
                tXCloudVideoView2.setLogText(null, bundle, i);
            }
            ITXLivePlayListener iTXLivePlayListener3 = this.e;
            if (iTXLivePlayListener3 != null) {
                iTXLivePlayListener3.onPlayEvent(i, bundle);
            }
        }
    }

    private void a(int i, Bundle bundle) {
        if (i == 15001 && bundle != null) {
            String str = this.k;
            if (str != null) {
                boolean startsWith = str.startsWith("room://");
                this.H = a(bundle);
                int i2 = bundle.getInt("AUDIO_CACHE", 0);
                int i3 = bundle.getInt("NET_SPEED", 0);
                int i4 = bundle.getInt("VIDEO_FPS", 0);
                int i5 = bundle.getInt("AV_RECV_INTERVAL");
                int i6 = bundle.getInt("AV_PLAY_INTERVAL");
                if ((!startsWith && this.I > i2) || i3 < 10 || ((i4 != 0 && i4 < 5) || Math.abs(i5) > 5000 || Math.abs(i6) > 5000)) {
                    i();
                }
            }
        } else if (i == 2007 || i == 2105) {
            TXCLog.i("TXLivePlayer", "[Event]code:" + i + " param:" + bundle);
            i();
        }
    }

    private void i() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.G > 3000) {
            this.G = currentTimeMillis;
            c("[Statistics] logStatisticsStr statistics:" + this.H);
        }
    }

    private String a(Bundle bundle) {
        return " IP:" + bundle.getString("SERVER_IP") + " RES:" + bundle.getInt("VIDEO_WIDTH") + ProxyConfig.MATCH_ALL_SCHEMES + bundle.getInt("VIDEO_HEIGHT") + " FPS:" + bundle.getInt("VIDEO_FPS") + " GOP:" + bundle.getInt("VIDEO_GOP") + "s Speed:" + bundle.getInt("NET_SPEED") + "Kbps AudioSpeed:" + bundle.getInt("AUDIO_BITRATE") + "Kbps VideoSpeed:" + bundle.getInt("VIDEO_BITRATE") + "Kbps AudioCache:" + bundle.getInt("AUDIO_CACHE") + " VideoCache:" + bundle.getInt("VIDEO_CACHE") + " VideoCacheFrameCount:" + bundle.getInt("V_SUM_CACHE_SIZE") + " VideoDecoderCacheFrameCount:" + bundle.getInt("V_DEC_CACHE_SIZE") + " AVJitterSync:" + bundle.getInt("AV_RECV_INTERVAL") + " AVPlaySync:" + bundle.getInt("AV_PLAY_INTERVAL") + " AudioParamsInfo:" + bundle.getString("AUDIO_PLAY_INFO");
    }

    private boolean j() {
        return TXCBuild.Manufacturer().equalsIgnoreCase("HUAWEI") && TXCBuild.Model().equalsIgnoreCase("Che2-TL00");
    }

    private String c(String str, int i) {
        if (i != 6) {
            str = TXCCommonUtil.tryEncodeUrl(str);
        }
        return str.trim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final TXLivePlayer.ITXSnapshotListener iTXSnapshotListener, final Bitmap bitmap) {
        if (iTXSnapshotListener != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.rtmp.a.5
                @Override // java.lang.Runnable
                public void run() {
                    TXLivePlayer.ITXSnapshotListener iTXSnapshotListener2 = iTXSnapshotListener;
                    if (iTXSnapshotListener2 != null) {
                        iTXSnapshotListener2.onSnapshot(bitmap);
                    }
                    a.this.x = false;
                }
            });
        }
    }
}
