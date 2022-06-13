package com.tencent.liteav;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Surface;
import android.view.TextureView;
import com.tencent.liteav.basic.c.b;
import com.tencent.liteav.basic.datareport.TXCDRApi;
import com.tencent.liteav.basic.e.k;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import com.tencent.liteav.renderer.a;
import com.tencent.liteav.renderer.f;
import com.tencent.liteav.txcplayer.e;
import com.tencent.liteav.txcplayer.ext.service.RenderProcessService;
import com.tencent.liteav.txcvodplayer.TXCVodVideoView;
import com.tencent.liteav.txcvodplayer.TextureRenderView;
import com.tencent.liteav.txcvodplayer.hlsencoder.TXCHLSEncoder;
import com.tencent.rtmp.TXBitrateItem;
import com.tencent.rtmp.TXLiveConstants;
import com.tencent.rtmp.TXVodPlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import javax.microedition.khronos.egl.EGLContext;

/* compiled from: TXCVodPlayer.java */
/* loaded from: classes2.dex */
public class h extends j implements a.AbstractC0026a, f {
    protected boolean a;
    private TXCVodVideoView f;
    private com.tencent.liteav.txcplayer.h g;
    private boolean i;
    private Surface n;
    private com.tencent.liteav.renderer.a o;
    private Object p;
    private a q;
    private boolean r;
    private boolean s;
    private f h = null;
    private boolean j = true;
    private boolean k = true;
    private boolean l = true;
    private float m = 1.0f;
    private e t = new e() { // from class: com.tencent.liteav.h.1
        @Override // com.tencent.liteav.txcplayer.e
        public void a(int i, Bundle bundle) {
            b bVar;
            int i2;
            Bundle bundle2 = new Bundle(bundle);
            int i3 = -2305;
            if (i == -2301) {
                h.this.h.a(-2301, "network disconnect, has retry reconnect, but still failed!");
                i3 = -2301;
            } else if (i == 2011) {
                bundle2.putInt("EVT_PARAM1", h.this.f.getMetaRotationDegree());
                i3 = 2011;
            } else if (i == 2026) {
                i3 = 2026;
            } else if (i == 2103) {
                i3 = 2103;
            } else if (i == 2106) {
                if (!h.this.i) {
                    h.this.g.a(false);
                }
                i3 = 2106;
            } else if (i == 2013) {
                TXCLog.i(TXVodPlayer.TAG, "vod onPlayEvent EVT_VOD_PLAY_PREPARED");
                i3 = 2013;
            } else if (i != 2014) {
                switch (i) {
                    case -2305:
                        h.this.h.a(-2305, "HLS decrypt key error");
                        break;
                    case -2304:
                        i3 = -2304;
                        h.this.h.a(-2304, "h265 decode failed");
                        if (!h.this.i) {
                            h.this.g.a(false);
                            break;
                        }
                        break;
                    case -2303:
                        i3 = -2303;
                        h.this.h.a(-2303, "file not found");
                        break;
                    default:
                        int i4 = 1;
                        switch (i) {
                            case 2003:
                                TXCLog.i(TXVodPlayer.TAG, "vod onPlayEvent EVT_RENDER_FIRST_I_FRAME");
                                h.this.h.h();
                                if (!h.this.i) {
                                    h.this.i = true;
                                    i2 = 2003;
                                    h.this.h.g();
                                    Bundle bundle3 = new Bundle();
                                    bundle3.putInt("EVT_ID", 2008);
                                    bundle3.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
                                    bundle3.putLong(TXLiveConstants.EVT_UTC_TIME, TXCTimeUtil.getUtcTimeTick());
                                    com.tencent.liteav.txcplayer.f mediaInfo = h.this.f.getMediaInfo();
                                    int i5 = (mediaInfo == null || mediaInfo.c == null || !mediaInfo.c.contains("hevc")) ? 0 : 1;
                                    if (h.this.f.getPlayerType() == 1) {
                                        if (i5 == 0) {
                                            bundle3.putCharSequence("description", h.this.g.d() ? "Enables hardware decoding" : "Enables software decoding");
                                        } else {
                                            bundle3.putCharSequence("description", h.this.g.d() ? "Enables hardware decoding H265" : "Enables software decoding h265");
                                        }
                                        bundle3.putInt("EVT_PARAM1", h.this.g.d() ? 1 : 2);
                                        bundle3.putInt("hevc", i5);
                                    } else {
                                        bundle3.putCharSequence("description", "Enables hardware decoding");
                                        bundle3.putInt("EVT_PARAM1", 2);
                                    }
                                    if (!h.this.g.d()) {
                                        i4 = i5 == 0 ? 0 : 2;
                                    } else if (i5 != 0) {
                                        i4 = 3;
                                    }
                                    h.this.h.b(i4);
                                    a(2008, bundle3);
                                    i3 = i2;
                                    break;
                                } else {
                                    return;
                                }
                                break;
                            case 2004:
                                TXCLog.i(TXVodPlayer.TAG, "vod onPlayEvent PLAY_EVT_PLAY_BEGIN");
                                i3 = 2004;
                                break;
                            case 2005:
                                i3 = 2005;
                                h.this.h.a(bundle.getInt(TXLiveConstants.EVT_PLAY_DURATION, 0), bundle.getInt(TXLiveConstants.EVT_PLAY_PROGRESS, 0));
                                break;
                            case 2006:
                                h.this.h.c();
                                i2 = 2006;
                                if (h.this.a) {
                                    h.this.f.b();
                                    h.this.h.a(true);
                                    TXCLog.d(TXVodPlayer.TAG, "loop play");
                                    return;
                                }
                                i3 = i2;
                                break;
                            case 2007:
                                i3 = 2007;
                                h.this.h.l();
                                break;
                            case 2008:
                                i3 = 2008;
                                break;
                            case 2009:
                                i3 = 2009;
                                if (h.this.o != null) {
                                    h.this.o.c(h.this.f.getVideoWidth(), h.this.f.getVideoHeight());
                                    break;
                                }
                                break;
                            default:
                                switch (i) {
                                    case TXLiteAVCode.EVT_VOD_PLAY_TCP_CONNECT_SUCC /* 2016 */:
                                        TXCLog.i(TXVodPlayer.TAG, "vod play tcp connect success");
                                        h.this.h.i();
                                        return;
                                    case TXLiteAVCode.EVT_VOD_PLAY_FIRST_VIDEO_PACKET /* 2017 */:
                                        TXCLog.i(TXVodPlayer.TAG, "vod play first video packet");
                                        h.this.h.k();
                                        return;
                                    case TXLiteAVCode.EVT_VOD_PLAY_DNS_RESOLVED /* 2018 */:
                                        TXCLog.i(TXVodPlayer.TAG, "vod play dns resolved");
                                        h.this.h.j();
                                        return;
                                    case TXLiteAVCode.EVT_VOD_PLAY_SEEK_COMPLETE /* 2019 */:
                                        return;
                                    default:
                                        TXCLog.d(TXVodPlayer.TAG, "miss match event " + i);
                                        return;
                                }
                        }
                }
            } else {
                h.this.h.f();
                h.this.h.h();
                i3 = 2014;
            }
            bundle2.putString(TXLiveConstants.EVT_DESCRIPTION, bundle.getString("description", ""));
            if (h.this.e != null && (bVar = (b) h.this.e.get()) != null) {
                bVar.onNotifyEvent(i3, bundle2);
            }
        }

        @Override // com.tencent.liteav.txcplayer.e
        public void a(Bundle bundle) {
            b bVar;
            Bundle bundle2 = new Bundle();
            int[] a2 = com.tencent.liteav.basic.util.h.a();
            bundle2.putCharSequence(TXLiveConstants.NET_STATUS_CPU_USAGE, (Integer.valueOf(a2[0]).intValue() / 10) + "/" + (Integer.valueOf(a2[1]).intValue() / 10) + "%");
            bundle2.putInt(TXLiveConstants.NET_STATUS_VIDEO_FPS, (int) bundle.getFloat("fps"));
            bundle2.putInt(TXLiveConstants.NET_STATUS_VIDEO_DPS, (int) bundle.getFloat("dps"));
            bundle2.putInt(TXLiveConstants.NET_STATUS_NET_SPEED, ((int) bundle.getLong("tcpSpeed")) / 1000);
            bundle2.putInt(TXLiveConstants.NET_STATUS_VIDEO_CACHE, ((int) bundle.getLong("cachedBytes")) / 1000);
            bundle2.putInt(TXLiveConstants.NET_STATUS_VIDEO_WIDTH, h.this.f.getVideoWidth());
            bundle2.putInt(TXLiveConstants.NET_STATUS_VIDEO_HEIGHT, h.this.f.getVideoHeight());
            bundle2.putString(TXLiveConstants.NET_STATUS_SERVER_IP, h.this.f.getServerIp());
            h.this.h.e(h.this.f.getServerIp());
            if (h.this.e != null && (bVar = (b) h.this.e.get()) != null) {
                bVar.onNotifyEvent(15001, bundle2);
            }
        }
    };

    @Override // com.tencent.liteav.j
    public void a(k kVar) {
    }

    @Override // com.tencent.liteav.j
    public void a(boolean z, int i) {
    }

    @Override // com.tencent.liteav.j
    public void c(boolean z) {
    }

    @Override // com.tencent.liteav.j
    public void d(int i) {
    }

    @Override // com.tencent.liteav.j
    public int e() {
        return 0;
    }

    @Override // com.tencent.liteav.j
    public int e(int i) {
        return 0;
    }

    @Override // com.tencent.liteav.j
    public int j() {
        return 0;
    }

    public h(Context context) {
        super(context);
        RenderProcessService.getInstance().checkInit(context.getApplicationContext());
        this.f = new TXCVodVideoView(context);
        this.f.setListener(this.t);
    }

    @Override // com.tencent.liteav.j
    public void a(d dVar) {
        super.a(dVar);
        if (this.g == null) {
            this.g = new com.tencent.liteav.txcplayer.h();
        }
        this.g.a((float) this.b.e);
        this.g.b((float) this.b.f);
        this.g.c((float) this.b.r);
        this.g.a(this.b.h);
        this.g.a(this.b.n);
        this.g.a(this.b.o);
        this.g.b(this.b.p);
        this.g.a(this.b.q);
        this.g.b(this.b.s);
        this.g.c(this.b.u);
        this.g.b(this.b.v);
        this.g.c(this.b.w);
        this.g.d(this.b.x);
        this.g.h(this.b.y);
        this.g.f(this.b.z);
        this.g.g(this.b.A);
        this.g.d(this.b.C);
        this.g.e(this.b.D);
        this.g.b(this.b.E);
        this.g.f(this.b.F);
        this.g.b(this.b.G);
        this.f.setConfig(this.g);
        this.l = dVar.t;
        RenderProcessService.getInstance().setEnableRenderProcess(this.g.s());
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00c2  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private java.lang.String c(java.lang.String r20) {
        /*
        // Method dump skipped, instructions count: 329
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.h.c(java.lang.String):java.lang.String");
    }

    private String d(String str) {
        String[] split;
        if (!str.contains("&oversign=")) {
            return str;
        }
        int indexOf = str.indexOf("&oversign=");
        int lastIndexOf = str.lastIndexOf("&oversign=");
        String substring = str.substring(indexOf + 1, lastIndexOf);
        if (!TextUtils.isEmpty(substring) && (split = substring.split("&")) != null && split.length == 6 && !TextUtils.isEmpty(split[4].split("=")[1]) && !TextUtils.isEmpty(split[5].split("=")[1])) {
            String a2 = TXCHLSEncoder.a(Integer.valueOf(split[0].split("=")[1]).intValue(), split[1].split("=")[1], split[2].split("=")[1], Integer.valueOf(split[3].split("=")[1]).intValue());
            if (this.g == null) {
                this.g = new com.tencent.liteav.txcplayer.h();
            }
            this.g.d(TXCHLSEncoder.b(a2, split[4].split("=")[1]));
            this.g.e(TXCHLSEncoder.b(a2, split[5].split("=")[1]));
            this.f.setConfig(this.g);
        }
        if (indexOf <= 0 || indexOf >= lastIndexOf) {
            return str;
        }
        return str.substring(0, indexOf) + str.substring(lastIndexOf + 10);
    }

    @Override // com.tencent.liteav.j
    public int a(String str, int i) {
        return a(str, i, (com.tencent.liteav.basic.b.a) null);
    }

    @Override // com.tencent.liteav.j
    public int a(String str, int i, com.tencent.liteav.basic.b.a aVar) {
        TXCCommonUtil.setGlobalEnv("default", TXCCommonUtil.ENV_PRIORITY_FUNCTION);
        if (this.d != null) {
            this.d.setVisibility(0);
            if (this.d.getVideoView() == null) {
                TextureRenderView textureRenderView = new TextureRenderView(this.d.getContext());
                this.d.addVideoView(textureRenderView);
                this.f.setTextureRenderView(textureRenderView);
            }
            this.d.getVideoView().setVisibility(0);
        } else {
            Surface surface = this.n;
            if (surface != null) {
                this.f.setRenderSurface(surface);
            }
        }
        com.tencent.liteav.renderer.a aVar2 = this.o;
        if (aVar2 != null) {
            aVar2.e();
        }
        this.h = new f(this.c);
        String c = c(str);
        this.h.a(c);
        this.h.a(this.k);
        this.i = false;
        this.f.setPlayerType(this.g.g());
        this.f.b(this.j);
        this.f.setVideoPath(c);
        this.f.setAutoPlay(this.k);
        this.f.setRate(this.m);
        this.f.setAutoRotate(this.l);
        this.f.b();
        this.h.a(this.f.getPlayerType());
        if (this.r) {
            s();
        }
        if (this.s) {
            u();
        }
        TXCLog.d(TXVodPlayer.TAG, "startPlay " + c);
        TXCDRApi.txReportDAU(this.c, com.tencent.liteav.basic.datareport.a.bu);
        this.h.b();
        try {
            if (Class.forName("com.tencent.liteav.demo.play.SuperPlayerView") != null) {
                TXCDRApi.txReportDAU(this.c, com.tencent.liteav.basic.datareport.a.bF);
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    @Override // com.tencent.liteav.j
    public int a(boolean z) {
        this.f.c();
        com.tencent.liteav.renderer.a aVar = this.o;
        if (aVar != null) {
            aVar.a(true);
        }
        if (!(this.d == null || this.d.getVideoView() == null || !z)) {
            this.d.getVideoView().setVisibility(8);
        }
        f fVar = this.h;
        if (fVar == null) {
            return 0;
        }
        fVar.c();
        return 0;
    }

    @Override // com.tencent.liteav.j
    public void a(Surface surface) {
        this.n = surface;
        TXCVodVideoView tXCVodVideoView = this.f;
        if (tXCVodVideoView != null) {
            tXCVodVideoView.setRenderSurface(this.n);
        }
    }

    @Override // com.tencent.liteav.j
    public void a() {
        this.f.d();
        f fVar = this.h;
        if (fVar != null) {
            fVar.d();
        }
    }

    @Override // com.tencent.liteav.j
    public void b() {
        this.f.b();
        this.f.setAutoPlay(true);
        f fVar = this.h;
        if (fVar != null) {
            fVar.e();
        }
    }

    @Override // com.tencent.liteav.j
    public void f(int i) {
        f fVar;
        this.f.a(i * 1000);
        if (this.i && (fVar = this.h) != null) {
            fVar.m();
        }
    }

    public void a(float f) {
        f fVar;
        this.f.a((int) (f * 1000.0f));
        if (this.i && (fVar = this.h) != null) {
            fVar.m();
        }
    }

    public float i() {
        TXCVodVideoView tXCVodVideoView = this.f;
        if (tXCVodVideoView != null) {
            return ((float) tXCVodVideoView.getCurrentPosition()) / 1000.0f;
        }
        return 0.0f;
    }

    public float k() {
        TXCVodVideoView tXCVodVideoView = this.f;
        if (tXCVodVideoView != null) {
            return ((float) tXCVodVideoView.getBufferDuration()) / 1000.0f;
        }
        return 0.0f;
    }

    public float l() {
        TXCVodVideoView tXCVodVideoView = this.f;
        if (tXCVodVideoView != null) {
            return ((float) tXCVodVideoView.getDuration()) / 1000.0f;
        }
        return 0.0f;
    }

    public float m() {
        TXCVodVideoView tXCVodVideoView = this.f;
        if (tXCVodVideoView != null) {
            return ((float) tXCVodVideoView.getBufferDuration()) / 1000.0f;
        }
        return 0.0f;
    }

    public int n() {
        TXCVodVideoView tXCVodVideoView = this.f;
        if (tXCVodVideoView != null) {
            return tXCVodVideoView.getVideoWidth();
        }
        return 0;
    }

    public int o() {
        TXCVodVideoView tXCVodVideoView = this.f;
        if (tXCVodVideoView != null) {
            return tXCVodVideoView.getVideoHeight();
        }
        return 0;
    }

    @Override // com.tencent.liteav.j
    public void b(boolean z) {
        this.f.setMute(z);
    }

    @Override // com.tencent.liteav.j
    public void c(int i) {
        this.f.setAudioPlayoutVolume(i);
    }

    public void g(int i) {
        this.f.setAudioPlayoutVolume(i);
    }

    @Override // com.tencent.liteav.j
    public void a(int i) {
        if (i == 1) {
            this.f.setRenderMode(0);
        } else {
            this.f.setRenderMode(1);
        }
        com.tencent.liteav.renderer.a aVar = this.o;
        if (aVar != null) {
            aVar.c(i);
        }
    }

    @Override // com.tencent.liteav.j
    public void b(int i) {
        this.f.setVideoRotationDegree(360 - i);
        com.tencent.liteav.renderer.a aVar = this.o;
        if (aVar != null) {
            aVar.e(i);
        }
    }

    @Override // com.tencent.liteav.j
    public void a(TXCloudVideoView tXCloudVideoView) {
        if (tXCloudVideoView != this.d) {
            if (this.d != null) {
                this.d.removeVideoView();
            }
            if (tXCloudVideoView != 0) {
                tXCloudVideoView.removeVideoView();
            }
        }
        if (tXCloudVideoView != null) {
            tXCloudVideoView.setVisibility(0);
            if (this.o == null || this.p == null) {
                if (tXCloudVideoView.getVideoView() == null) {
                    TextureRenderView textureRenderView = new TextureRenderView(tXCloudVideoView.getContext());
                    tXCloudVideoView.addVideoView(textureRenderView);
                    this.f.setTextureRenderView(textureRenderView);
                }
            } else if (tXCloudVideoView.getVideoView() == null) {
                TextureView textureView = new TextureView(tXCloudVideoView.getContext());
                tXCloudVideoView.addVideoView(textureView);
                this.o.a((f) this);
                this.o.a(textureView);
            }
            tXCloudVideoView.getVideoView().setVisibility(0);
        }
        super.a(tXCloudVideoView);
    }

    public void a(TextureRenderView textureRenderView) {
        TXCVodVideoView tXCVodVideoView = this.f;
        if (tXCVodVideoView != null) {
            tXCVodVideoView.setRenderView(textureRenderView);
        }
    }

    @Override // com.tencent.liteav.j
    public TextureView d() {
        if (this.d != null) {
            return this.d.getVideoView();
        }
        return null;
    }

    @Override // com.tencent.liteav.j
    public boolean c() {
        return this.f.e();
    }

    @Override // com.tencent.liteav.j
    public boolean d(boolean z) {
        this.j = z;
        TXCVodVideoView tXCVodVideoView = this.f;
        if (tXCVodVideoView != null) {
            return tXCVodVideoView.b(z);
        }
        return true;
    }

    @Override // com.tencent.liteav.j
    public void e(boolean z) {
        this.k = z;
        TXCVodVideoView tXCVodVideoView = this.f;
        if (tXCVodVideoView != null) {
            tXCVodVideoView.setAutoPlay(z);
        }
    }

    @Override // com.tencent.liteav.j
    public void b(float f) {
        this.m = f;
        TXCVodVideoView tXCVodVideoView = this.f;
        if (tXCVodVideoView != null) {
            tXCVodVideoView.setRate(f);
        }
        f fVar = this.h;
        if (fVar != null) {
            fVar.a(f);
        }
    }

    public void c(float f) {
        TXCVodVideoView tXCVodVideoView = this.f;
        if (tXCVodVideoView != null) {
            tXCVodVideoView.setStartTime(f);
        }
    }

    public int p() {
        TXCVodVideoView tXCVodVideoView = this.f;
        if (tXCVodVideoView != null) {
            return tXCVodVideoView.getBitrateIndex();
        }
        return 0;
    }

    public void h(int i) {
        f fVar;
        TXCVodVideoView tXCVodVideoView = this.f;
        if (tXCVodVideoView != null) {
            tXCVodVideoView.setBitrateIndex(i);
        }
        if (i != -1 && this.i && (fVar = this.h) != null) {
            fVar.c(this.g.j());
        }
    }

    public ArrayList<TXBitrateItem> q() {
        ArrayList<com.tencent.liteav.txcplayer.b> supportedBitrates;
        ArrayList<TXBitrateItem> arrayList = new ArrayList<>();
        TXCVodVideoView tXCVodVideoView = this.f;
        if (!(tXCVodVideoView == null || (supportedBitrates = tXCVodVideoView.getSupportedBitrates()) == null)) {
            Iterator<com.tencent.liteav.txcplayer.b> it = supportedBitrates.iterator();
            while (it.hasNext()) {
                com.tencent.liteav.txcplayer.b next = it.next();
                TXBitrateItem tXBitrateItem = new TXBitrateItem();
                tXBitrateItem.index = next.a;
                tXBitrateItem.width = next.b;
                tXBitrateItem.height = next.c;
                tXBitrateItem.bitrate = next.d;
                arrayList.add(tXBitrateItem);
            }
        }
        return arrayList;
    }

    public void f(boolean z) {
        this.a = z;
    }

    public void g(boolean z) {
        TextureView d = d();
        if (d != null) {
            float f = -1.0f;
            if (!this.b.t || !(this.f.getMetaRotationDegree() == 90 || this.f.getMetaRotationDegree() == 270)) {
                if (!z) {
                    f = 1.0f;
                }
                d.setScaleX(f);
            } else {
                if (!z) {
                    f = 1.0f;
                }
                d.setScaleY(f);
            }
        }
        f fVar = this.h;
        if (fVar != null) {
            fVar.b(z);
        }
    }

    public void a(Object obj) {
        this.p = obj;
    }

    public void r() {
        this.p = null;
        v();
        t();
    }

    public void s() {
        com.tencent.liteav.renderer.a aVar = this.o;
        if (aVar != null) {
            aVar.b((a.AbstractC0026a) this);
        }
        h(true);
    }

    public void t() {
        com.tencent.liteav.renderer.a aVar = this.o;
        if (aVar != null) {
            aVar.b((a.AbstractC0026a) null);
        }
        h(false);
    }

    private void h(boolean z) {
        this.r = z;
        try {
            Object obj = this.p;
            if (obj != null) {
                obj.getClass().getDeclaredMethod("enableCustomVideoCapture", Integer.TYPE, Boolean.TYPE).invoke(obj, 2, Boolean.valueOf(this.r));
            }
        } catch (Exception e) {
            TXCLog.e(TXVodPlayer.TAG, "setTRTCCustomVideoCapture error ", e);
        }
    }

    public void u() {
        this.s = true;
        this.f.f();
    }

    public void v() {
        this.s = false;
        this.f.g();
    }

    @Override // com.tencent.liteav.renderer.f
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture) {
        this.n = new Surface(surfaceTexture);
        this.f.setRenderSurface(this.n);
    }

    @Override // com.tencent.liteav.renderer.f
    public void onSurfaceTextureDestroy(SurfaceTexture surfaceTexture) {
        this.n = null;
        this.f.setRenderSurface(null);
    }

    @Override // com.tencent.liteav.renderer.a.AbstractC0026a
    public void onTextureProcess(int i, int i2, int i3, int i4) {
        try {
            if (this.q == null && this.p != null) {
                this.q = new a(this.p);
            }
            if (this.q != null) {
                this.q.a(this.p, this.o, i, i2, i3);
            }
        } catch (Exception e) {
            TXCLog.e(TXVodPlayer.TAG, "get enableCustomVideoCapture method error ", e);
        }
    }

    public static String b(String str) {
        return TXCHLSEncoder.a(str);
    }

    /* compiled from: TXCVodPlayer.java */
    /* loaded from: classes2.dex */
    private static class a {
        private Class a;
        private Class b;
        private Class c;
        private Field d;
        private Field e;
        private Field f;
        private Field g;
        private Field h;
        private Field i;
        private Field j;
        private Field k;
        private Field l;

        public a(Object obj) {
            try {
                this.a = obj.getClass();
                this.b = Class.forName("com.tencent.trtc.TRTCCloudDef$TRTCTexture");
                this.c = Class.forName("com.tencent.trtc.TRTCCloudDef$TRTCVideoFrame");
                this.d = this.b.getDeclaredField("textureId");
                this.e = this.b.getDeclaredField("eglContext10");
                this.g = this.c.getDeclaredField("texture");
                this.h = this.c.getDeclaredField("width");
                this.i = this.c.getDeclaredField("height");
                this.j = this.c.getDeclaredField("pixelFormat");
                this.k = this.c.getDeclaredField("bufferType");
                this.l = this.c.getDeclaredField("timestamp");
                if (TXCBuild.VersionInt() >= 17) {
                    this.f = this.b.getDeclaredField("eglContext14");
                }
            } catch (Exception e) {
                TXCLog.e(TXVodPlayer.TAG, "init TRTCCloudClassInvokeWrapper error ", e);
            }
        }

        public void a(Object obj, com.tencent.liteav.renderer.a aVar, int i, int i2, int i3) {
            try {
                Object newInstance = this.b.newInstance();
                this.d.set(newInstance, Integer.valueOf(i));
                if (aVar.b() instanceof EGLContext) {
                    this.e.set(newInstance, aVar.b());
                } else {
                    this.f.set(newInstance, aVar.b());
                }
                Object newInstance2 = this.c.newInstance();
                this.g.set(newInstance2, newInstance);
                this.h.set(newInstance2, Integer.valueOf(i2));
                this.i.set(newInstance2, Integer.valueOf(i3));
                this.j.set(newInstance2, 2);
                this.k.set(newInstance2, 3);
                this.l.set(newInstance2, 0);
                this.a.getDeclaredMethod("sendCustomVideoData", Integer.TYPE, newInstance2.getClass()).invoke(obj, 2, newInstance2);
            } catch (Exception e) {
                TXCLog.e(TXVodPlayer.TAG, "sendCustomVideoData method error ", e);
            }
        }
    }

    public void a(String str, Object obj) {
        this.f.a(str, obj);
    }
}
