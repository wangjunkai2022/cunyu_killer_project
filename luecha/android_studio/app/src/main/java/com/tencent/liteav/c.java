package com.tencent.liteav;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.Matrix;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.exoplayer2.PlaybackException;
import com.tencent.liteav.TXCRenderAndDec;
import com.tencent.liteav.a.a;
import com.tencent.liteav.audio.TXCAudioEngine;
import com.tencent.liteav.audio.e;
import com.tencent.liteav.basic.c.b;
import com.tencent.liteav.basic.datareport.TXCDRApi;
import com.tencent.liteav.basic.e.k;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.module.TXCStatus;
import com.tencent.liteav.basic.structs.TXSNALPacket;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import com.tencent.liteav.network.TXCStreamDownloader;
import com.tencent.liteav.network.l;
import com.tencent.liteav.renderer.a;
import com.tencent.liteav.renderer.g;
import com.tencent.liteav.renderer.h;
import com.tencent.rtmp.TXLivePlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.ugc.TXRecordCommon;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCLivePlayer.java */
/* loaded from: classes5.dex */
public class c extends j implements TXCRenderAndDec.a, TXCRenderAndDec.b, com.tencent.liteav.audio.c, e, b, l, a.AbstractC0026a, g {
    private b A;
    private int I;
    private TXLivePlayer.ITXAudioRawDataListener N;
    private a S;
    private com.tencent.liteav.renderer.a f;
    private Handler i;
    private TextureView j;
    private Surface q;
    private com.tencent.liteav.a.a y;
    private TXRecordCommon.ITXVideoRecordListener z;
    private TXCRenderAndDec a = null;
    private TXCStreamDownloader g = null;
    private int h = 0;
    private boolean k = false;
    private boolean l = false;
    private int m = 100;
    private int n = 0;
    private int o = 0;
    private boolean p = false;
    private int r = 2;
    private int s = 48000;
    private int t = 16;
    private boolean u = false;
    private boolean v = false;
    private boolean w = false;
    private int x = 0;
    private int B = 0;
    private int C = 0;
    private h D = null;
    private h E = null;
    private float[] F = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f};
    private float[] G = new float[16];
    private String H = "";
    private boolean J = false;
    private com.tencent.liteav.basic.enums.b K = com.tencent.liteav.basic.enums.b.UNKNOWN;
    private Object L = null;
    private com.tencent.liteav.basic.c.a M = new com.tencent.liteav.basic.c.a() { // from class: com.tencent.liteav.c.1
        @Override // com.tencent.liteav.basic.c.a
        public void a(String str, int i, String str2, String str3) {
            TXCLog.i("TXCLivePlayer", "onEvent => id:" + str + " code:" + i + " msg:" + str2 + " params:" + str3);
            d(str, i, str2, str3);
        }

        @Override // com.tencent.liteav.basic.c.a
        public void b(String str, int i, String str2, String str3) {
            TXCLog.i("TXCLivePlayer", "onWarning => id:" + str + " code:" + i + " msg:" + str2 + " params:" + str3);
            d(str, i, str2, str3);
        }

        @Override // com.tencent.liteav.basic.c.a
        public void c(String str, int i, String str2, String str3) {
            TXCLog.e("TXCLivePlayer", "onError => id:" + str + " code:" + i + " msg:" + str2 + " params:" + str3);
            d(str, i, str2, str3);
        }

        void d(String str, int i, String str2, String str3) {
            b bVar;
            WeakReference weakReference = c.this.e;
            if (weakReference == null) {
                bVar = null;
            } else {
                bVar = (b) weakReference.get();
            }
            if (bVar != null) {
                if (i == 10048 || i == 10049 || i == 10053) {
                    i = 1205;
                }
                Bundle bundle = new Bundle();
                bundle.putInt("EVT_ID", i);
                bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
                bundle.putLong("EVT_UTC_TIME", TXCTimeUtil.getUtcTimeTick());
                if (str2 != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str2);
                    if (str3 == null) {
                        str3 = "";
                    }
                    sb.append(str3);
                    bundle.putCharSequence("EVT_MSG", sb.toString());
                }
                c.this.onNotifyEvent(i, bundle);
            }
        }
    };
    private String O = "";
    private boolean P = false;
    private long Q = 0;
    private long R = 0;

    @Override // com.tencent.liteav.j
    public boolean f() {
        return true;
    }

    @Override // com.tencent.liteav.network.l
    public void onPullAudio(com.tencent.liteav.basic.structs.a aVar) {
    }

    public c(Context context) {
        super(context);
        this.f = null;
        boolean z = false;
        this.S = null;
        com.tencent.liteav.basic.f.c.a().a(context);
        TXCAudioEngine.CreateInstance(context, com.tencent.liteav.basic.f.c.a().b(), AudioServerConfig.loadFromSharedPreferences(context).isAudioDeviceDSPEnabled());
        TXCAudioEngine.getInstance().addEventCallback(new WeakReference<>(this.M));
        long a2 = com.tencent.liteav.basic.f.c.a().a("Audio", "EnableAutoRestartDevice");
        TXCAudioEngine.getInstance().enableAutoRestartDevice((a2 == 1 || a2 == -1) ? true : z);
        this.i = new Handler(Looper.getMainLooper());
        this.f = new com.tencent.liteav.renderer.a();
        this.f.a((b) this);
        this.S = new a(this);
        TXCLog.i("TXCLivePlayer", "[FirstFramePath] TXCLivePlayer: create player success. instance:" + hashCode());
    }

    @Override // com.tencent.liteav.j
    public void a(TXCloudVideoView tXCloudVideoView) {
        TextureView videoView;
        if (!(this.d == null || this.d == tXCloudVideoView || (videoView = this.d.getVideoView()) == null)) {
            this.d.removeView(videoView);
        }
        super.a(tXCloudVideoView);
        if (this.d != null) {
            this.j = this.d.getVideoView();
            if (this.j == null) {
                this.j = new TextureView(this.d.getContext());
            }
            this.d.addVideoView(this.j);
        }
        com.tencent.liteav.renderer.a aVar = this.f;
        if (aVar != null) {
            aVar.a(this.j);
        }
    }

    @Override // com.tencent.liteav.j
    public void a(Surface surface) {
        this.q = surface;
        com.tencent.liteav.renderer.a aVar = this.f;
        if (aVar != null) {
            aVar.a(surface);
        }
    }

    @Override // com.tencent.liteav.j
    public void a(int i, int i2) {
        com.tencent.liteav.renderer.a aVar = this.f;
        if (aVar != null) {
            aVar.d(i, i2);
        }
    }

    @Override // com.tencent.liteav.j
    public void a(d dVar) {
        super.a(dVar);
        TXCRenderAndDec tXCRenderAndDec = this.a;
        if (tXCRenderAndDec != null) {
            tXCRenderAndDec.setConfig(dVar);
        }
    }

    @Override // com.tencent.liteav.j
    public int a(String str, int i) {
        return a(str, i, (com.tencent.liteav.basic.b.a) null);
    }

    @Override // com.tencent.liteav.j
    public int a(String str, int i, com.tencent.liteav.basic.b.a aVar) {
        com.tencent.liteav.renderer.a aVar2;
        TXCCommonUtil.setGlobalEnv("default", TXCCommonUtil.ENV_PRIORITY_FUNCTION);
        if (c()) {
            TXCLog.w("TXCLivePlayer", "play: ignore start play when is playing");
            return -2;
        } else if (this.b == null || this.b.c <= this.b.b) {
            if (this.b.a > this.b.b || this.b.a < this.b.c) {
                TXCLog.w("TXCLivePlayer", "play: invalid cacheTime " + this.b.a + ", need between minAutoAdjustCacheTime " + this.b.c + " and maxAutoAdjustCacheTime " + this.b.b + " , fix to maxAutoAdjustCacheTime");
                this.b.a = this.b.b;
            }
            TXCLog.i("TXCLivePlayer", "[FirstFramePath] TXCLivePlayer: start play. instance: " + hashCode());
            this.H = str;
            this.I = i;
            b(str);
            this.p = true;
            this.x = 0;
            this.v = true;
            g(i);
            o();
            int b = b(str, i, aVar);
            if (b != 0) {
                this.p = false;
                q();
                n();
                p();
                TextureView textureView = this.j;
                if (textureView != null) {
                    textureView.setVisibility(8);
                }
            } else {
                a(this.q);
                r();
                v();
                if (this.K == com.tencent.liteav.basic.enums.b.TEXTURE_2D && this.j == null && (aVar2 = this.f) != null) {
                    aVar2.c(this.L);
                }
                com.tencent.liteav.renderer.a aVar3 = this.f;
                if (aVar3 != null) {
                    aVar3.b(true);
                }
                try {
                    if (Class.forName("com.tencent.liteav.demo.play.SuperPlayerView") != null) {
                        TXCDRApi.txReportDAU(this.c, com.tencent.liteav.basic.datareport.a.bG);
                    }
                } catch (Exception unused) {
                }
            }
            return b;
        } else {
            TXCLog.e("TXCLivePlayer", "play: can not start play while invalid cache config [minAutoAdjustCacheTime(" + this.b.c + ") > maxAutoAdjustCacheTime(" + this.b.b + ")]!!!!!!");
            return -1;
        }
    }

    @Override // com.tencent.liteav.j
    public int a(boolean z) {
        com.tencent.liteav.renderer.a aVar;
        if (!c()) {
            TXCLog.w("TXCLivePlayer", "play: ignore stop play when not started");
            return -2;
        }
        TXCLog.v("TXCLivePlayer", "play: stop");
        this.p = false;
        q();
        com.tencent.liteav.renderer.a aVar2 = this.f;
        if (aVar2 != null) {
            aVar2.b(!z);
        }
        n();
        TextureView textureView = this.j;
        if (textureView != null && z) {
            textureView.setVisibility(8);
        }
        com.tencent.liteav.renderer.a aVar3 = this.f;
        if (aVar3 != null) {
            aVar3.a((Surface) null);
        }
        if (this.j == null && (aVar = this.f) != null) {
            aVar.d();
        }
        p();
        s();
        x();
        t();
        return 0;
    }

    @Override // com.tencent.liteav.j
    public int a(String str) {
        return a(str, (com.tencent.liteav.basic.b.a) null);
    }

    @Override // com.tencent.liteav.j
    public int a(String str, com.tencent.liteav.basic.b.a aVar) {
        if (!c() || this.g == null) {
            return -1;
        }
        if (this.I == 5) {
            this.g.setRetryTimes(5);
            this.g.setRetryInterval(1);
        } else {
            this.g.setRetryTimes(this.b.e);
            this.g.setRetryInterval(this.b.f);
        }
        boolean switchStream = this.g.switchStream(str, aVar);
        long j = 0;
        long c = (long) TXCStatus.c(this.O, 2007);
        TXCRenderAndDec tXCRenderAndDec = this.a;
        if (tXCRenderAndDec != null) {
            j = tXCRenderAndDec.getVideoCacheDuration();
        }
        TXCLog.i("TXCLivePlayer", "[SwitchStream] current jitter size when start switch stream. video:" + j + " audio:" + c);
        if (!switchStream) {
            return -2;
        }
        this.H = str;
        return 0;
    }

    @Override // com.tencent.liteav.j
    public void a() {
        a(false);
    }

    @Override // com.tencent.liteav.j
    public void b() {
        a(this.H, this.I);
    }

    @Override // com.tencent.liteav.j
    public boolean c() {
        return this.p;
    }

    @Override // com.tencent.liteav.j
    public void a(int i) {
        this.o = i;
        TXCRenderAndDec tXCRenderAndDec = this.a;
        if (tXCRenderAndDec != null) {
            tXCRenderAndDec.setRenderMode(i);
        }
    }

    @Override // com.tencent.liteav.j
    public void b(int i) {
        this.n = i;
        TXCRenderAndDec tXCRenderAndDec = this.a;
        if (tXCRenderAndDec != null) {
            tXCRenderAndDec.setRenderRotation(i);
        }
    }

    @Override // com.tencent.liteav.j
    public void b(boolean z) {
        this.k = z;
        TXCAudioEngine.getInstance().muteRemoteAudio(this.O, this.k);
    }

    @Override // com.tencent.liteav.j
    public void c(boolean z) {
        this.l = z;
        TXCAudioEngine.getInstance().muteRemoteAudioInSpeaker(this.O, z);
    }

    @Override // com.tencent.liteav.j
    public void c(int i) {
        this.m = i;
        TXCAudioEngine.getInstance().setRemotePlayoutVolume(this.O, this.m);
    }

    @Override // com.tencent.liteav.j
    public void d(int i) {
        this.h = i;
        TXCStreamDownloader tXCStreamDownloader = this.g;
        if (tXCStreamDownloader != null) {
            tXCStreamDownloader.setPayloadType(i);
        }
    }

    @Override // com.tencent.liteav.j
    public void a(TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener) {
        this.z = iTXVideoRecordListener;
    }

    @Override // com.tencent.liteav.j
    public int e(int i) {
        if (this.u) {
            TXCLog.e("TXCLivePlayer", "startRecord: there is existing uncompleted record task");
            return -1;
        }
        this.u = true;
        this.f.a((g) this);
        this.f.a((a.AbstractC0026a) this);
        z();
        TXCDRApi.txReportDAU(this.c, com.tencent.liteav.basic.datareport.a.ax);
        return 0;
    }

    @Override // com.tencent.liteav.j
    public TextureView d() {
        return this.j;
    }

    @Override // com.tencent.liteav.j
    public void a(TXLivePlayer.ITXAudioRawDataListener iTXAudioRawDataListener) {
        this.N = iTXAudioRawDataListener;
        z();
    }

    @Override // com.tencent.liteav.j
    public int e() {
        if (!this.u) {
            TXCLog.w("TXCLivePlayer", "stopRecord: no recording task exist");
            return -1;
        }
        this.u = false;
        z();
        com.tencent.liteav.a.a aVar = this.y;
        if (aVar != null) {
            aVar.a();
            this.y = null;
        }
        return 0;
    }

    @Override // com.tencent.liteav.j
    public void a(k kVar, com.tencent.liteav.basic.enums.b bVar, Object obj) {
        com.tencent.liteav.renderer.a aVar;
        this.K = bVar;
        this.L = obj;
        if (c() && this.K == com.tencent.liteav.basic.enums.b.TEXTURE_2D && this.j == null && kVar != null && (aVar = this.f) != null) {
            aVar.c(this.L);
        }
        TXCRenderAndDec tXCRenderAndDec = this.a;
        if (tXCRenderAndDec != null) {
            tXCRenderAndDec.setVideoFrameListener(kVar, bVar);
        } else {
            TXCLog.w("TXCLivePlayer", "setVideoFrameListener->enter with renderAndDec is empty");
        }
    }

    @Override // com.tencent.liteav.j
    public void a(k kVar) {
        com.tencent.liteav.renderer.a aVar = this.f;
        if (aVar != null) {
            aVar.a(kVar);
        }
    }

    @Override // com.tencent.liteav.j
    public long g() {
        TXCRenderAndDec tXCRenderAndDec = this.a;
        if (tXCRenderAndDec != null) {
            return tXCRenderAndDec.getCurrentRenderPts();
        }
        return 0;
    }

    private void k() {
        if (this.y == null) {
            this.B = this.f.h();
            this.C = this.f.i();
            a.C0020a m = m();
            this.y = new com.tencent.liteav.a.a(this.c);
            this.y.a(m);
            this.y.a(new a.b() { // from class: com.tencent.liteav.c.2
                @Override // com.tencent.liteav.a.a.b
                public void a(int i, String str, String str2, String str3) {
                    if (c.this.z != null) {
                        TXRecordCommon.TXRecordResult tXRecordResult = new TXRecordCommon.TXRecordResult();
                        if (i == 0) {
                            tXRecordResult.retCode = 0;
                        } else {
                            tXRecordResult.retCode = -1;
                        }
                        tXRecordResult.descMsg = str;
                        tXRecordResult.videoPath = str2;
                        tXRecordResult.coverPath = str3;
                        c.this.z.onRecordComplete(tXRecordResult);
                    }
                    c.this.f.a((g) null);
                    c.this.f.a((a.AbstractC0026a) null);
                }

                @Override // com.tencent.liteav.a.a.b
                public void a(long j) {
                    if (c.this.z != null) {
                        c.this.z.onRecordProgress(j);
                    }
                }
            });
        }
        if (this.D == null) {
            this.D = new h(true);
            this.D.b();
            this.D.b(this.B, this.C);
            this.D.a(this.B, this.C);
        }
        if (this.E == null) {
            this.E = new h(false);
            this.E.b();
            this.E.b(this.f.f(), this.f.g());
            this.E.a(this.f.f(), this.f.g());
            Matrix.setIdentityM(this.G, 0);
        }
    }

    private void l() {
        h hVar = this.D;
        if (hVar != null) {
            hVar.c();
            this.D = null;
        }
        h hVar2 = this.E;
        if (hVar2 != null) {
            hVar2.c();
            this.E = null;
        }
    }

    private a.C0020a m() {
        int i;
        int i2 = this.B;
        if (i2 <= 0 || (i = this.C) <= 0) {
            i2 = 480;
            i = 640;
        }
        a.C0020a aVar = new a.C0020a();
        aVar.a = i2;
        aVar.b = i;
        aVar.c = 20;
        aVar.d = (int) (Math.sqrt((((double) (i2 * i2)) * 1.0d) + ((double) (i * i))) * 1.2d);
        aVar.h = this.r;
        aVar.i = this.s;
        aVar.j = this.t;
        aVar.f = com.tencent.liteav.a.a.a(this.c, ".mp4");
        aVar.g = com.tencent.liteav.a.a.a(this.c, ".jpg");
        aVar.e = this.f.b();
        TXCLog.d("TXCLivePlayer", "record config: " + aVar);
        return aVar;
    }

    private void g(int i) {
        TextureView textureView = this.j;
        boolean z = false;
        if (textureView != null) {
            textureView.setVisibility(0);
        }
        this.a = new TXCRenderAndDec(this.c);
        this.a.setNotifyListener(this);
        this.a.setVideoRender(this.f);
        this.a.setDecListener(this);
        this.a.setRenderAndDecDelegate(this);
        this.a.setConfig(this.b);
        this.a.setID(this.O);
        TXCRenderAndDec tXCRenderAndDec = this.a;
        if (i == 5) {
            z = true;
        }
        tXCRenderAndDec.start(z);
        this.a.setRenderMode(this.o);
        this.a.setRenderRotation(this.n);
    }

    private void n() {
        TXCRenderAndDec tXCRenderAndDec = this.a;
        if (tXCRenderAndDec != null) {
            tXCRenderAndDec.stop();
            this.a.setVideoRender(null);
            this.a.setDecListener(null);
            this.a.setNotifyListener(null);
            this.a = null;
        }
    }

    private void o() {
        boolean z = true;
        if (this.I != 5) {
            z = false;
        }
        TXCAudioEngine.getInstance();
        TXCAudioEngine.enableAudioVolumeEvaluation(this.J, 300);
        a(this.N);
        if (this.I == 5) {
            TXCAudioEngine.getInstance().setRemoteAudioCacheParams(this.O, !this.b.g, (int) (com.tencent.liteav.basic.enums.a.b * 1000.0f), (int) (com.tencent.liteav.basic.enums.a.b * 1000.0f), (int) (com.tencent.liteav.basic.enums.a.c * 1000.0f));
        } else {
            TXCAudioEngine.getInstance().setRemoteAudioCacheParams(this.O, !this.b.g, (int) (this.b.a * 1000.0f), (int) (this.b.c * 1000.0f), (int) (this.b.b * 1000.0f));
        }
        TXCAudioEngine.getInstance().muteRemoteAudio(this.O, this.k);
        TXCAudioEngine.getInstance().muteRemoteAudioInSpeaker(this.O, this.l);
        TXCAudioEngine.getInstance().setRemotePlayoutVolume(this.O, this.m);
        TXCAudioEngine.getInstance().setRemoteAudioStreamEventListener(this.O, this);
        z();
        TXCAudioEngine.getInstance().startRemoteAudio(this.O, z);
    }

    private void p() {
        TXCAudioEngine.getInstance().setRemoteAudioStreamEventListener(this.O, null);
        TXCAudioEngine.getInstance().setSetAudioEngineRemoteStreamDataListener(this.O, null);
        TXCAudioEngine.getInstance().stopRemoteAudio(this.O);
    }

    private int b(String str, int i, com.tencent.liteav.basic.b.a aVar) {
        boolean z = false;
        if (i == 0) {
            this.g = new TXCStreamDownloader(this.c, 1);
        } else if (i == 5) {
            this.g = new TXCStreamDownloader(this.c, 4);
        } else {
            this.g = new TXCStreamDownloader(this.c, 0);
            if (!TextUtils.isEmpty(this.b.l)) {
                this.g.setFlvSessionKey(this.b.l);
            }
        }
        this.g.setID(this.O);
        this.g.setListener(this);
        this.g.setNotifyListener(this);
        this.g.setHeaders(this.b.q);
        this.g.setPayloadType(this.h);
        if (i == 5) {
            z = true;
        }
        if (z) {
            this.g.setRetryTimes(5);
            this.g.setRetryInterval(1);
        } else {
            this.g.setRetryTimes(this.b.e);
            this.g.setRetryInterval(this.b.f);
        }
        return this.g.start(str, this.b.i, this.b.m, this.b.j, this.b.k, aVar);
    }

    private void q() {
        TXCStreamDownloader tXCStreamDownloader = this.g;
        if (tXCStreamDownloader != null) {
            tXCStreamDownloader.setListener(null);
            this.g.setNotifyListener(null);
            this.g.stop();
            this.g = null;
        }
    }

    private void r() {
        this.A = new b(this.c);
        this.A.a(this.H);
        this.A.a(this.I == 5);
        this.A.d(this.O);
        this.A.e(this.g.getRTMPProxyUserId());
        this.A.a();
    }

    private void s() {
        b bVar = this.A;
        if (bVar != null) {
            bVar.b();
            this.A = null;
        }
    }

    private void b(String str) {
        this.O = String.format("%s-%d", str, Long.valueOf(TXCTimeUtil.getTimeTick() % 10000));
        TXCRenderAndDec tXCRenderAndDec = this.a;
        if (tXCRenderAndDec != null) {
            tXCRenderAndDec.setID(this.O);
        }
        com.tencent.liteav.renderer.a aVar = this.f;
        if (aVar != null) {
            aVar.setID(this.O);
        }
        TXCStreamDownloader tXCStreamDownloader = this.g;
        if (tXCStreamDownloader != null) {
            tXCStreamDownloader.setID(this.O);
        }
        b bVar = this.A;
        if (bVar != null) {
            bVar.d(this.O);
        }
    }

    @Override // com.tencent.liteav.j
    public void h() {
        this.R = 0;
        if (!this.P) {
            this.P = true;
            z();
            Handler handler = this.i;
            if (handler != null) {
                handler.postDelayed(new Runnable() { // from class: com.tencent.liteav.c.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (c.this.P) {
                            c.this.u();
                        }
                    }
                }, 1000);
            }
        }
    }

    private void t() {
        this.P = false;
        z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        if (this.Q > 0) {
            Bundle bundle = new Bundle();
            bundle.putInt("EVT_PLAY_PROGRESS", (int) (this.Q / 1000));
            bundle.putInt("EVT_PLAY_PROGRESS_MS", (int) this.Q);
            onNotifyEvent(2005, bundle);
        }
        Handler handler = this.i;
        if (handler != null && this.P) {
            handler.postDelayed(new Runnable() { // from class: com.tencent.liteav.c.4
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.P) {
                        c.this.u();
                    }
                }
            }, 1000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        Handler handler = this.i;
        if (handler != null) {
            handler.postDelayed(this.S, 2000);
        }
    }

    private void x() {
        Handler handler = this.i;
        if (handler != null) {
            handler.removeCallbacks(this.S);
        }
    }

    public void i() {
        y();
        int[] a2 = com.tencent.liteav.basic.util.h.a();
        String str = (a2[0] / 10) + "/" + (a2[1] / 10) + "%";
        int c = TXCStatus.c(this.O, 7102);
        int c2 = TXCStatus.c(this.O, 7101);
        String b = TXCStatus.b(this.O, 7110);
        int d = (int) TXCStatus.d(this.O, PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED);
        Bundle bundle = new Bundle();
        com.tencent.liteav.renderer.a aVar = this.f;
        if (aVar != null) {
            bundle.putInt("VIDEO_WIDTH", aVar.h());
            bundle.putInt("VIDEO_HEIGHT", this.f.i());
        }
        TXCRenderAndDec tXCRenderAndDec = this.a;
        if (tXCRenderAndDec != null) {
            bundle.putInt("VIDEO_CACHE", (int) tXCRenderAndDec.getVideoCacheDuration());
            bundle.putInt("V_SUM_CACHE_SIZE", (int) this.a.getVideoCacheFrameCount());
            bundle.putInt("V_DEC_CACHE_SIZE", this.a.getVideoDecCacheFrameCount());
            bundle.putInt("AV_PLAY_INTERVAL", (int) this.a.getAVPlayInterval());
            bundle.putInt("AV_RECV_INTERVAL", (int) this.a.getAVNetRecvInterval());
            bundle.putInt("VIDEO_GOP", (int) (((double) (((float) ((TXCStatus.c(this.O, 7120) * 10) / (d == 0 ? 15 : d))) / 10.0f)) + 0.5d));
        }
        bundle.putString("AUDIO_PLAY_INFO", TXCAudioEngine.getInstance().getPlayAECType() + " | " + TXCStatus.c(this.O, 2019) + "," + TXCStatus.c(this.O, 2020) + " | " + TXCAudioEngine.getInstance().getPlaySampleRate() + "," + TXCAudioEngine.getInstance().getPlayChannels());
        bundle.putInt("AUDIO_CACHE", TXCStatus.c(this.O, 2007));
        bundle.putInt("NET_JITTER", TXCStatus.c(this.O, 2018));
        bundle.putFloat("AUDIO_CACHE_THRESHOLD", ((float) TXCStatus.c(this.O, 2021)) / 1000.0f);
        bundle.putInt("AUDIO_BLOCK_TIME", TXCStatus.c(this.O, 2036));
        bundle.putInt("NET_SPEED", c2 + c);
        bundle.putInt("VIDEO_FPS", d);
        bundle.putInt("VIDEO_BITRATE", c2);
        bundle.putInt("AUDIO_BITRATE", c);
        bundle.putCharSequence("SERVER_IP", b);
        bundle.putCharSequence("CPU_USAGE", str);
        this.x++;
        if (this.x == 5) {
            if (this.w) {
                TXCStatus.a(this.O, 6013, (Object) 0L);
            } else {
                TXCStatus.a(this.O, 6013, (Object) 1L);
            }
        }
        com.tencent.liteav.basic.util.h.a(this.e, 15001, bundle);
        TXCRenderAndDec tXCRenderAndDec2 = this.a;
        if (tXCRenderAndDec2 != null) {
            tXCRenderAndDec2.updateLoadInfo();
        }
        b bVar = this.A;
        if (bVar != null) {
            bVar.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: TXCLivePlayer.java */
    /* loaded from: classes5.dex */
    public static class a implements Runnable {
        private WeakReference<c> a;

        a(c cVar) {
            this.a = new WeakReference<>(cVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar = this.a.get();
            if (cVar != null && cVar.c()) {
                cVar.i();
                cVar.v();
            }
        }
    }

    private void y() {
        ArrayList arrayList = new ArrayList();
        String str = this.O;
        if (str != null) {
            arrayList.add(str);
        }
        a.a("18446744073709551615", arrayList);
    }

    private void a(final int i, String str) {
        if (this.e != null) {
            final Bundle bundle = new Bundle();
            bundle.putInt("EVT_ID", i);
            bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
            bundle.putLong("EVT_UTC_TIME", TXCTimeUtil.getUtcTimeTick());
            if (str != null) {
                bundle.putCharSequence("EVT_MSG", str);
            }
            Handler handler = this.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.tencent.liteav.c.5
                    @Override // java.lang.Runnable
                    public void run() {
                        com.tencent.liteav.basic.util.h.a(c.this.e, i, bundle);
                    }
                });
            }
        }
    }

    private void z() {
        if (this.u || this.N != null || this.P) {
            TXCAudioEngine.getInstance().setSetAudioEngineRemoteStreamDataListener(this.O, this);
        }
        if (!this.u && this.N == null && !this.P) {
            TXCAudioEngine.getInstance().setSetAudioEngineRemoteStreamDataListener(this.O, null);
        }
    }

    @Override // com.tencent.liteav.network.l
    public void onPullNAL(TXSNALPacket tXSNALPacket) {
        if (this.p) {
            try {
                if (this.a != null) {
                    this.a.decVideo(tXSNALPacket);
                }
            } catch (Exception e) {
                TXCLog.e("TXCLivePlayer", "decode video failed." + e.getMessage());
            }
        }
    }

    @Override // com.tencent.liteav.basic.c.b
    public void onNotifyEvent(final int i, final Bundle bundle) {
        if (2003 == i && !this.w) {
            this.w = true;
        }
        if (2003 == i || 2026 == i) {
            if (this.v) {
                a(2004, "Video play started");
                this.v = false;
            }
            if (2026 == i) {
                a(2026, "Audio play started");
                TXCStatus.a(this.O, 2033, Long.valueOf(TXCTimeUtil.getTimeTick()));
                return;
            }
        }
        if (2025 == i) {
            a(2004, "Video play started");
        } else if (2023 == i || 2024 == i) {
            a(2007, "Video play loading");
        } else {
            Handler handler = this.i;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.tencent.liteav.c.6
                    @Override // java.lang.Runnable
                    public void run() {
                        com.tencent.liteav.basic.util.h.a(c.this.e, i, bundle);
                        if (i == 2103 && c.this.a != null) {
                            c.this.a.restartDecoder();
                        }
                    }
                });
            }
        }
    }

    @Override // com.tencent.liteav.renderer.g
    public int a(int i, float[] fArr) {
        h hVar;
        com.tencent.liteav.a.a aVar = this.y;
        if (!(!this.u || aVar == null || (hVar = this.D) == null)) {
            int d = hVar.d(i);
            aVar.a(d, TXCTimeUtil.getTimeTick());
            this.f.a(d, this.B, this.C, false, 0);
        }
        if (this.u) {
            k();
        } else {
            l();
        }
        return i;
    }

    @Override // com.tencent.liteav.renderer.a.AbstractC0026a
    public void onTextureProcess(int i, int i2, int i3, int i4) {
        h hVar;
        com.tencent.liteav.a.a aVar = this.y;
        if (!(!this.u || aVar == null || (hVar = this.E) == null)) {
            hVar.a(this.F);
            aVar.a(this.E.d(i), TXCTimeUtil.getTimeTick());
            this.E.a(this.G);
            this.E.c(i);
        }
        if (this.u) {
            k();
        } else {
            l();
        }
    }

    @Override // com.tencent.liteav.TXCRenderAndDec.a
    public void a(SurfaceTexture surfaceTexture) {
        l();
        e();
    }

    @Override // com.tencent.liteav.audio.e
    public void a(String str, byte[] bArr, long j, int i, int i2, byte[] bArr2) {
        TXLivePlayer.ITXAudioRawDataListener iTXAudioRawDataListener;
        this.s = i;
        this.r = i2;
        if (this.y != null) {
            if (j <= 0) {
                j = TXCTimeUtil.getTimeTick();
            }
            this.y.a(bArr, j);
        }
        if (this.R <= 0 && (iTXAudioRawDataListener = this.N) != null) {
            iTXAudioRawDataListener.onAudioInfoChanged(i, i2, 16);
        }
        TXLivePlayer.ITXAudioRawDataListener iTXAudioRawDataListener2 = this.N;
        if (iTXAudioRawDataListener2 != null) {
            iTXAudioRawDataListener2.onPcmDataAvailable(bArr, j);
        }
        long j2 = this.R;
        if (j2 <= 0) {
            this.R = j;
        } else {
            this.Q = j - j2;
        }
    }

    @Override // com.tencent.liteav.audio.c
    public void a(String str, int i, String str2) {
        onNotifyEvent(i, null);
    }

    @Override // com.tencent.liteav.j
    public void a(boolean z, int i) {
        this.J = z;
        TXCAudioEngine.getInstance();
        TXCAudioEngine.enableAudioVolumeEvaluation(z, i);
    }

    @Override // com.tencent.liteav.j
    public int j() {
        return TXCAudioEngine.getInstance().getRemotePlayoutVolumeLevel(this.O);
    }

    @Override // com.tencent.liteav.TXCRenderAndDec.b
    public void b(String str, int i) {
        TXCStreamDownloader tXCStreamDownloader;
        if (this.p && (tXCStreamDownloader = this.g) != null) {
            tXCStreamDownloader.requestKeyFrame(this.H);
        }
    }
}
