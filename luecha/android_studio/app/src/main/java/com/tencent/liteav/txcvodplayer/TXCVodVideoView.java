package com.tencent.liteav.txcvodplayer;

import android.content.Context;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.View;
import android.widget.FrameLayout;
import androidx.webkit.ProxyConfig;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.liteav.txcplayer.b;
import com.tencent.liteav.txcplayer.e;
import com.tencent.liteav.txcplayer.ext.service.RenderProcessService;
import com.tencent.liteav.txcplayer.f;
import com.tencent.liteav.txcplayer.h;
import com.tencent.liteav.txcplayer.i;
import com.tencent.liteav.txcplayer.j;
import com.tencent.liteav.txcvodplayer.a;
import java.io.File;
import java.io.FileNotFoundException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXCVodVideoView extends FrameLayout {
    private String A;
    private long C;
    private boolean K;
    private int N;
    private e W;
    private Handler aa;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private long s;
    private int t;
    private Context v;
    private h w;
    private a x;
    private int y;
    private int z;
    private int g = 0;
    private int h = 0;
    private a.b i = null;
    private ITXVCubePlayer j = null;
    protected boolean a = true;
    private boolean u = false;
    private float B = 1.0f;
    protected boolean b = true;
    protected final int c = 2;
    private volatile boolean D = false;
    private int E = -1;
    private float F = 1.0f;
    private float G = 1.0f;
    private boolean H = false;
    private int I = -1000;
    private int J = -1;
    ITXVCubePlayer.k d = new ITXVCubePlayer.k() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.6
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.k
        public void a(ITXVCubePlayer iTXVCubePlayer, int i, int i2, int i3, int i4, String str) {
            boolean z = (TXCVodVideoView.this.l != i2 && Math.abs(TXCVodVideoView.this.l - i2) > 16) || (TXCVodVideoView.this.k != i && Math.abs(TXCVodVideoView.this.k - i) > 16);
            TXCVodVideoView.this.k = iTXVCubePlayer.getVideoWidth();
            TXCVodVideoView.this.l = iTXVCubePlayer.getVideoHeight();
            TXCVodVideoView.this.y = iTXVCubePlayer.getVideoSarNum();
            TXCVodVideoView.this.z = iTXVCubePlayer.getVideoSarDen();
            TXCLog.i("TXCVodVideoView", "OnVideoSizeChangedListener width:" + TXCVodVideoView.this.k + ":height:" + TXCVodVideoView.this.l + ":SarNum:" + TXCVodVideoView.this.y + ":SarDen:" + TXCVodVideoView.this.z);
            if (!(TXCVodVideoView.this.k == 0 || TXCVodVideoView.this.l == 0)) {
                if (TXCVodVideoView.this.x != null) {
                    TXCVodVideoView.this.x.setVideoSize(TXCVodVideoView.this.k, TXCVodVideoView.this.l);
                    TXCVodVideoView.this.x.setVideoSampleAspectRatio(TXCVodVideoView.this.y, TXCVodVideoView.this.z);
                }
                TXCVodVideoView.this.requestLayout();
            }
            if (z) {
                Message message = new Message();
                message.what = 101;
                message.arg1 = 2009;
                Bundle bundle = new Bundle();
                bundle.putInt("EVT_PARAM1", TXCVodVideoView.this.k);
                bundle.putInt("EVT_PARAM2", TXCVodVideoView.this.l);
                if (TXCVodVideoView.this.u || str == null) {
                    bundle.putString("description", "Resolution change:" + TXCVodVideoView.this.k + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.l);
                } else if (str != null) {
                    String str2 = i + "," + i2 + "," + str;
                    bundle.putString("description", "Resolution change:" + TXCVodVideoView.this.k + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.l + " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):(" + str2 + ")");
                    bundle.putString("EVT_PARAM3", str2);
                }
                message.setData(bundle);
                if (TXCVodVideoView.this.aa != null) {
                    TXCVodVideoView.this.aa.sendMessage(message);
                }
            } else if (!TXCVodVideoView.this.u && str != null) {
                Message message2 = new Message();
                message2.what = 101;
                message2.arg1 = 2009;
                Bundle bundle2 = new Bundle();
                String str3 = i + "," + i2 + "," + str;
                bundle2.putString("description", "Resolution change:" + TXCVodVideoView.this.k + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.l + " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):(" + str3 + ")");
                bundle2.putInt("EVT_PARAM1", TXCVodVideoView.this.k);
                bundle2.putInt("EVT_PARAM2", TXCVodVideoView.this.l);
                bundle2.putString("EVT_PARAM3", str3);
                message2.setData(bundle2);
                if (TXCVodVideoView.this.aa != null) {
                    TXCVodVideoView.this.aa.sendMessage(message2);
                }
            }
        }
    };
    ITXVCubePlayer.g e = new ITXVCubePlayer.g() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.7
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.g
        public void a(ITXVCubePlayer iTXVCubePlayer) {
            if (RenderProcessService.getInstance().setSurfaceBufferSize(iTXVCubePlayer)) {
                TXCLog.i("TXCVodVideoView", "setSurfaceBufferSize succeed");
            }
            if (TXCVodVideoView.this.g == 1) {
                TXCVodVideoView.this.a(2013, "VOD ready", "prepared");
                if (!TXCVodVideoView.this.w.n()) {
                    TXCVodVideoView.this.h = 4;
                } else {
                    TXCVodVideoView.this.h = 3;
                }
                TXCVodVideoView.this.g = 2;
            }
            TXCVodVideoView.this.s = 0;
            if (TXCVodVideoView.this.g == -1) {
                TXCVodVideoView.this.g = 3;
                TXCVodVideoView.this.h = 3;
            }
            if (TXCVodVideoView.this.aa != null) {
                TXCVodVideoView.this.aa.sendEmptyMessage(100);
                TXCVodVideoView.this.aa.sendEmptyMessage(103);
            }
            TXCVodVideoView.this.k = iTXVCubePlayer.getVideoWidth();
            TXCVodVideoView.this.l = iTXVCubePlayer.getVideoHeight();
            if (TXCVodVideoView.this.k == 0 || TXCVodVideoView.this.l == 0) {
                if (TXCVodVideoView.this.h == 3) {
                    TXCVodVideoView.this.b();
                }
            } else if (TXCVodVideoView.this.x != null) {
                TXCVodVideoView.this.x.setVideoSize(TXCVodVideoView.this.k, TXCVodVideoView.this.l);
                TXCVodVideoView.this.x.setVideoSampleAspectRatio(TXCVodVideoView.this.y, TXCVodVideoView.this.z);
                if ((!TXCVodVideoView.this.x.shouldWaitForResize() || (TXCVodVideoView.this.m == TXCVodVideoView.this.k && TXCVodVideoView.this.n == TXCVodVideoView.this.l)) && TXCVodVideoView.this.h == 3) {
                    TXCVodVideoView.this.b();
                }
            }
        }
    };
    private ITXVCubePlayer.b L = new ITXVCubePlayer.b() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.8
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.b
        public void a(ITXVCubePlayer iTXVCubePlayer) {
            TXCVodVideoView.this.g = 5;
            TXCVodVideoView.this.h = 5;
            TXCVodVideoView.this.a(2006, "Playback completed", "play end");
        }
    };
    private ITXVCubePlayer.f M = new ITXVCubePlayer.f() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.9
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00dd, code lost:
            if (r4.endsWith("m3u8") != false) goto L_0x01b8;
         */
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.f
        /* Code decompiled incorrectly, please refer to instructions dump */
        public boolean a(com.tencent.liteav.txcplayer.ITXVCubePlayer r4, int r5, int r6, int r7, java.lang.Object r8) {
            /*
            // Method dump skipped, instructions count: 452
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.txcvodplayer.TXCVodVideoView.AnonymousClass9.a(com.tencent.liteav.txcplayer.ITXVCubePlayer, int, int, int, java.lang.Object):boolean");
        }
    };
    private ITXVCubePlayer.c O = new ITXVCubePlayer.c() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.10
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.c
        public boolean a(ITXVCubePlayer iTXVCubePlayer, int i, int i2) {
            TXCLog.e("TXCVodVideoView", "onError: " + i + "," + i2);
            TXCVodVideoView.this.g = -1;
            TXCVodVideoView.this.h = -1;
            if (i == -1010 || i == -1007 || i == -1004 || i == 200) {
                if (i2 == -2303) {
                    TXCVodVideoView.this.a(i2, "The file does not exist", "file not exist");
                } else {
                    TXCVodVideoView.this.a(-2301, "Disconnected from the network. Playback error", "disconnect");
                }
                TXCVodVideoView.this.c();
                return true;
            }
            if (TXCVodVideoView.this.C != TXCVodVideoView.this.getCurrentPosition()) {
                TXCVodVideoView.this.N = 0;
            }
            TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
            tXCVodVideoView.C = tXCVodVideoView.getCurrentPosition();
            if (((float) TXCVodVideoView.r(TXCVodVideoView.this)) >= TXCVodVideoView.this.w.a()) {
                TXCVodVideoView.this.a(-2301, "Disconnected from the network. Playback error", "disconnect");
                TXCVodVideoView.this.c();
            } else if (TXCVodVideoView.this.aa != null) {
                TXCVodVideoView.this.aa.sendEmptyMessageDelayed(102, (long) (TXCVodVideoView.this.w.b() * 1000.0f));
            }
            return true;
        }
    };
    private ITXVCubePlayer.e P = new ITXVCubePlayer.e() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.11
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.e
        public void a(ITXVCubePlayer iTXVCubePlayer) {
            Log.d("TXCVodVideoView", "onHevcVideoDecoderError");
            TXCVodVideoView.this.a(-2304, "Vod H265 decoding failed", "hevc decode fail");
        }
    };
    private ITXVCubePlayer.j Q = new ITXVCubePlayer.j() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.12
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.j
        public void a(ITXVCubePlayer iTXVCubePlayer) {
            Log.d("TXCVodVideoView", "onVideoDecoderError");
            if (TXCVodVideoView.this.g != 4) {
                TXCVodVideoView.this.a(2106, "VOD decoding failed", "decode fail");
            }
            if (!TXCVodVideoView.this.K && TXCVodVideoView.this.w.d() && Math.min(TXCVodVideoView.this.l, TXCVodVideoView.this.k) < 1080 && TXCVodVideoView.this.w.d()) {
                TXCVodVideoView.this.w.a(false);
                TXCVodVideoView.this.i();
            }
        }
    };
    private ITXVCubePlayer.a R = new ITXVCubePlayer.a() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.13
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.a
        public void a(ITXVCubePlayer iTXVCubePlayer, int i) {
            TXCVodVideoView.this.q = i;
            if (TXCVodVideoView.this.g == 3) {
                TXCVodVideoView.this.r = i;
            }
        }
    };
    private ITXVCubePlayer.h S = new ITXVCubePlayer.h() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.2
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.h
        public void a(ITXVCubePlayer iTXVCubePlayer) {
            TXCLog.v("TXCVodVideoView", "seek complete");
            TXCVodVideoView.this.D = false;
            TXCVodVideoView.this.a(2019, "seek完成", (String) null);
        }
    };
    private ITXVCubePlayer.i T = new ITXVCubePlayer.i() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.3
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.i
        public void a(ITXVCubePlayer iTXVCubePlayer, j jVar) {
        }
    };
    private ITXVCubePlayer.d U = new ITXVCubePlayer.d() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.4
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.d
        public void a(ITXVCubePlayer iTXVCubePlayer) {
            Log.e("TXCVodVideoView", "onHLSKeyError");
            TXCVodVideoView.this.a(-2305, "HLS decypt key get failed", "hls key error");
            if (TXCVodVideoView.this.j != null) {
                try {
                    TXCVodVideoView.this.j.stop();
                } catch (Exception e) {
                    TXCLog.e("TXCVodVideoView", "onHLSKeyError stop Exception: " + e.getMessage());
                }
                TXCVodVideoView.this.j.release();
                TXCVodVideoView.this.j = null;
            }
            TXCVodVideoView.this.g = -1;
            TXCVodVideoView.this.h = -1;
        }
    };
    a.AbstractC0029a f = new a.AbstractC0029a() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.5
        @Override // com.tencent.liteav.txcvodplayer.a.AbstractC0029a
        public void a(a.b bVar, int i, int i2, int i3) {
            if (bVar.a() != TXCVodVideoView.this.x) {
                TXCLog.e("TXCVodVideoView", "onSurfaceChanged: unmatched render callback\n");
                return;
            }
            TXCLog.i("TXCVodVideoView", "onSurfaceChanged");
            TXCVodVideoView.this.m = i2;
            TXCVodVideoView.this.n = i3;
            boolean z = true;
            boolean z2 = TXCVodVideoView.this.h == 3;
            if (TXCVodVideoView.this.x.shouldWaitForResize() && !(TXCVodVideoView.this.k == i2 && TXCVodVideoView.this.l == i3)) {
                z = false;
            }
            if (TXCVodVideoView.this.j != null && z2 && z && TXCVodVideoView.this.h == 3) {
                TXCVodVideoView.this.b();
            }
        }

        @Override // com.tencent.liteav.txcvodplayer.a.AbstractC0029a
        public void a(a.b bVar, int i, int i2) {
            if (bVar.a() != TXCVodVideoView.this.x) {
                TXCLog.e("TXCVodVideoView", "onSurfaceCreated: unmatched render callback\n");
                return;
            }
            TXCLog.i("TXCVodVideoView", "onSurfaceCreated");
            TXCVodVideoView.this.u = true;
            TXCVodVideoView.this.i = bVar;
            if (TXCVodVideoView.this.j != null) {
                TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                tXCVodVideoView.a(tXCVodVideoView.j, bVar);
                return;
            }
            TXCVodVideoView.this.h();
        }

        @Override // com.tencent.liteav.txcvodplayer.a.AbstractC0029a
        public void a(a.b bVar) {
            if (bVar.a() != TXCVodVideoView.this.x) {
                TXCLog.e("TXCVodVideoView", "onSurfaceDestroyed: unmatched render callback\n");
                return;
            }
            TXCLog.i("TXCVodVideoView", "onSurfaceDestroyed");
            TXCVodVideoView.this.u = false;
            TXCVodVideoView.this.i = null;
            if (TXCVodVideoView.this.j != null) {
                TXCVodVideoView.this.j.setSurface(null);
            }
            TXCVodVideoView.this.a();
        }
    };
    private int V = 0;
    private boolean ab = false;

    public int getPlayerType() {
        return 2;
    }

    public void setPlayerType(int i) {
    }

    static /* synthetic */ int r(TXCVodVideoView tXCVodVideoView) {
        int i = tXCVodVideoView.N;
        tXCVodVideoView.N = i + 1;
        return i;
    }

    public int getMetaRotationDegree() {
        return this.p;
    }

    public TXCVodVideoView(Context context) {
        super(context);
        a(context);
    }

    public TXCVodVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public TXCVodVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        this.v = context.getApplicationContext();
        this.w = new h();
        k();
        this.k = 0;
        this.l = 0;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.g = 0;
        this.h = 0;
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            this.aa = new a(this, mainLooper);
        } else {
            this.aa = null;
        }
    }

    public void setRenderView(a aVar) {
        int i;
        int i2;
        TXCLog.i("TXCVodVideoView", "setRenderView " + aVar);
        if (this.x != null) {
            ITXVCubePlayer iTXVCubePlayer = this.j;
            if (iTXVCubePlayer != null) {
                iTXVCubePlayer.setDisplay(null);
            }
            View view = this.x.getView();
            this.x.removeRenderCallback(this.f);
            this.x = null;
            if (view.getParent() == this) {
                removeView(view);
            }
        }
        if (aVar != null) {
            this.x = aVar;
            aVar.setAspectRatio(this.V);
            int i3 = this.k;
            if (i3 > 0 && (i2 = this.l) > 0) {
                aVar.setVideoSize(i3, i2);
            }
            int i4 = this.y;
            if (i4 > 0 && (i = this.z) > 0) {
                aVar.setVideoSampleAspectRatio(i4, i);
            }
            View view2 = this.x.getView();
            view2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            if (view2.getParent() == null) {
                addView(view2);
            }
            this.x.addRenderCallback(this.f);
            this.x.setVideoRotation(this.o);
        }
    }

    public void setRender(int i) {
        if (i == 0) {
            setRenderView(null);
        } else if (i == 1) {
            setRenderView(new SurfaceRenderView(this.v));
        } else if (i != 2) {
            TXCLog.e("TXCVodVideoView", String.format(Locale.getDefault(), "invalid render %d\n", Integer.valueOf(i)));
        } else {
            TextureRenderView textureRenderView = new TextureRenderView(this.v);
            if (this.j != null) {
                textureRenderView.getSurfaceHolder().a(this.j);
                textureRenderView.setVideoSize(this.j.getVideoWidth(), this.j.getVideoHeight());
                textureRenderView.setVideoSampleAspectRatio(this.j.getVideoSarNum(), this.j.getVideoSarDen());
                textureRenderView.setAspectRatio(this.V);
            }
            setRenderView(textureRenderView);
        }
    }

    public void setTextureRenderView(TextureRenderView textureRenderView) {
        TXCLog.i("TXCVodVideoView", "setTextureRenderView " + textureRenderView);
        if (this.j != null) {
            textureRenderView.getSurfaceHolder().a(this.j);
            textureRenderView.setVideoSize(this.j.getVideoWidth(), this.j.getVideoHeight());
            textureRenderView.setVideoSampleAspectRatio(this.j.getVideoSarNum(), this.j.getVideoSarDen());
            textureRenderView.setAspectRatio(this.V);
        }
        setRenderView(textureRenderView);
    }

    public void setRenderSurface(final Surface surface) {
        this.i = new a.b() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.1
            @Override // com.tencent.liteav.txcvodplayer.a.b
            public Surface b() {
                return null;
            }

            @Override // com.tencent.liteav.txcvodplayer.a.b
            public void a(ITXVCubePlayer iTXVCubePlayer) {
                iTXVCubePlayer.setSurface(surface);
            }

            @Override // com.tencent.liteav.txcvodplayer.a.b
            public a a() {
                return TXCVodVideoView.this.x;
            }

            @Override // com.tencent.liteav.txcvodplayer.a.b
            public Surface c() {
                return surface;
            }
        };
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null) {
            a(iTXVCubePlayer, this.i);
        }
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoURI(Uri uri) {
        if (uri != null) {
            this.w.c(uri.toString());
        }
        this.t = 0;
        this.E = -1;
        this.N = 0;
        this.A = null;
        TXCLog.i("TXCVodVideoView", "setVideoURI " + uri);
        h();
        requestLayout();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        TXCLog.i("TXCVodVideoView", "openVideo vod=" + hashCode());
        if (TextUtils.isEmpty(this.w.o())) {
            return false;
        }
        if (this.i == null && this.w.n() && this.w.d() && this.x != null) {
            return false;
        }
        a(false);
        if (this.b) {
            ((AudioManager) this.v.getSystemService("audio")).requestAudioFocus(null, 3, 2);
        }
        try {
            this.j = i.a(this.v, 2);
            String o = this.w.o();
            if (o.startsWith("/")) {
                if (!new File(o.contains(".hls") ? o.substring(0, o.indexOf(".hls") + 4) : o).exists()) {
                    throw new FileNotFoundException();
                }
            }
            this.w.a(this.s);
            if (this.J >= 0) {
                this.w.e(this.J);
            }
            if (this.I == -1) {
                this.w.e(true);
            } else {
                this.w.e(false);
            }
            if (this.I == -1 || this.I == -1000) {
                this.j.enableAdaptiveBitrate();
            } else {
                this.j.setBitrateIndex(this.I);
            }
            this.j.setConfig(this.w);
            if (this.w.h() != null) {
                this.j.setDataSource(this.v, Uri.parse(o), this.w.h());
            } else {
                this.j.setDataSource(o);
            }
            this.j.setOnPreparedListener(this.e);
            this.j.setOnVideoSizeChangedListener(this.d);
            this.j.setOnCompletionListener(this.L);
            this.j.setOnErrorListener(this.O);
            this.j.setOnInfoListener(this.M);
            this.j.setOnBufferingUpdateListener(this.R);
            this.j.setOnSeekCompleteListener(this.S);
            this.j.setOnTimedTextListener(this.T);
            this.j.setOnHLSKeyErrorListener(this.U);
            this.j.setOnHevcVideoDecoderErrorListener(this.P);
            this.j.setOnVideoDecoderErrorListener(this.Q);
            this.q = 0;
            a(this.j, this.i);
            this.j.setAudioStreamType(3);
            this.j.setScreenOnWhilePlaying(true);
            this.j.prepareAsync();
            this.j.setVolume(this.F, this.G);
            setMute(this.H);
            this.g = 1;
        } catch (FileNotFoundException unused) {
            this.g = -1;
            this.h = -1;
            this.O.a(this.j, -1004, -2303);
        } catch (Exception e) {
            TXCLog.w("TXCVodVideoView", e.toString());
            this.g = -1;
            this.h = -1;
            this.O.a(this.j, 1, 0);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ITXVCubePlayer iTXVCubePlayer, a.b bVar) {
        if (iTXVCubePlayer != null) {
            if (bVar == null) {
                iTXVCubePlayer.setDisplay(null);
                return;
            }
            TXCLog.i("TXCVodVideoView", "bindSurfaceHolder");
            Surface c = bVar.c();
            if (c == null) {
                c = bVar.b();
            }
            if (!RenderProcessService.getInstance().connectPlayer(iTXVCubePlayer, c)) {
                bVar.a(iTXVCubePlayer);
            }
        }
    }

    void a() {
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.setDisplay(null);
        }
    }

    void a(boolean z) {
        if (this.j != null) {
            TXCLog.i("TXCVodVideoView", "release player " + this.j);
            a(this.j);
            this.j.release();
            this.j = null;
            this.g = 0;
            if (z) {
                this.h = 0;
                this.k = 0;
                this.l = 0;
            }
            if (this.b) {
                ((AudioManager) this.v.getSystemService("audio")).abandonAudioFocus(null);
            }
            this.D = false;
            this.E = -1;
        }
    }

    public void b() {
        TXCLog.i("TXCVodVideoView", "start vod=" + hashCode());
        if (j()) {
            try {
                this.j.start();
                if (this.g != 3 && !this.D) {
                    this.g = 3;
                    a(2004, "Playback started", "playing");
                    if (this.aa != null) {
                        this.aa.sendEmptyMessage(100);
                        this.aa.sendEmptyMessage(103);
                    }
                }
            } catch (Exception e) {
                TXCLog.e("TXCVodVideoView", "start exception: " + e.getMessage());
            }
        }
        this.h = 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        c(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z) {
        ITXVCubePlayer iTXVCubePlayer;
        int i;
        TXCLog.i("TXCVodVideoView", "replay, isFromErrorState = " + z + " vod=" + hashCode());
        if (z && (i = this.r) > 0) {
            this.s = (long) ((i * getDuration()) / 100);
        } else if (this.s == 0 && (iTXVCubePlayer = this.j) != null && this.t > 0) {
            this.s = (long) ((int) iTXVCubePlayer.getCurrentPosition());
            long j = this.s;
            int i2 = this.E;
            if (j < ((long) i2)) {
                this.s = (long) i2;
            }
        }
        if (!h()) {
            a(false);
        }
    }

    public void c() {
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null) {
            try {
                iTXVCubePlayer.stop();
                a(this.j);
            } catch (Exception e) {
                TXCLog.e("TXCVodVideoView", "stop exception: " + e.getMessage());
            }
            this.j.release();
            this.j = null;
            this.k = 0;
            this.l = 0;
            this.B = 1.0f;
            this.D = false;
            this.g = 0;
            this.h = 0;
            this.K = false;
            this.I = -1000;
            this.t = 0;
            this.E = -1;
            if (this.b) {
                ((AudioManager) this.v.getSystemService("audio")).abandonAudioFocus(null);
            }
        }
        Handler handler = this.aa;
        if (handler != null) {
            handler.removeMessages(102);
            this.aa.removeMessages(100);
            this.aa.removeMessages(103);
        }
        TXCLog.i("TXCVodVideoView", "stop vod=" + hashCode());
    }

    public void d() {
        this.h = 4;
        TXCLog.i("TXCVodVideoView", "pause vod=" + hashCode());
        if (j() && this.j.isPlaying()) {
            try {
                this.j.pause();
            } catch (Exception e) {
                TXCLog.e("TXCVodVideoView", "pause exception: " + e.getMessage());
            }
            this.g = 4;
        }
    }

    public int getDuration() {
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null && this.t < 1) {
            this.t = (int) iTXVCubePlayer.getDuration();
        }
        return this.t;
    }

    public long getCurrentPosition() {
        if (!this.D || this.E < 0) {
            long j = this.s;
            if (j <= 0) {
                ITXVCubePlayer iTXVCubePlayer = this.j;
                j = iTXVCubePlayer != null ? iTXVCubePlayer.getCurrentPosition() : 0;
            }
            if (!this.w.i()) {
                int i = this.E;
                if (j < ((long) i)) {
                    j = (long) i;
                }
            }
            TXCLog.i("TXCVodVideoView", "getCurrentPosition pos: " + j);
            return j;
        }
        TXCLog.i("TXCVodVideoView", "getCurrentPosition IsSeeking: " + this.E);
        return (long) this.E;
    }

    public void a(int i) {
        TXCLog.i("TXCVodVideoView", "seek to " + i + "vod=" + hashCode());
        if (getUrlPathExtention().equals("m3u8")) {
            i = Math.min(i, getDuration() - 1000);
        }
        if (i >= 0 && j()) {
            if (i > getDuration()) {
                i = getDuration();
            }
            if (!this.D) {
                try {
                    this.E = i;
                    this.j.seekTo((long) i);
                    this.D = true;
                    if (this.g == 5) {
                        this.h = 3;
                    }
                } catch (Exception e) {
                    TXCLog.e("TXCVodVideoView", "seekTo Exception : " + e.getMessage());
                }
            }
        }
    }

    public void setMute(boolean z) {
        this.H = z;
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null) {
            if (z) {
                iTXVCubePlayer.setVolume(0.0f, 0.0f);
            } else {
                iTXVCubePlayer.setVolume(this.F, this.G);
            }
        }
    }

    public void setVolume(int i) {
        float f = ((float) i) / 100.0f;
        this.F = f;
        this.G = f;
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.setVolume(this.F, this.G);
        }
    }

    public void setAudioPlayoutVolume(int i) {
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.setAudioVolume(i);
        }
    }

    public boolean e() {
        return j() && this.j.isPlaying() && this.g != 4;
    }

    public long getBufferDuration() {
        if (this.j == null) {
            return 0;
        }
        long duration = (long) ((this.q * getDuration()) / 100);
        if (duration < getCurrentPosition()) {
            duration = getCurrentPosition();
        }
        return Math.abs(((long) getDuration()) - duration) < 1000 ? (long) getDuration() : duration;
    }

    private boolean j() {
        int i;
        return (this.j == null || (i = this.g) == -1 || i == 0 || i == 1) ? false : true;
    }

    public void setConfig(h hVar) {
        if (hVar != null) {
            this.w = hVar;
        }
    }

    public void setRenderMode(int i) {
        this.V = i;
        a aVar = this.x;
        if (aVar != null) {
            aVar.setAspectRatio(this.V);
        }
        a aVar2 = this.x;
        if (aVar2 != null) {
            aVar2.setVideoRotation(this.o);
        }
    }

    public void setVideoRotationDegree(int i) {
        if (!(i == 0 || i == 90 || i == 180 || i == 270)) {
            if (i != 360) {
                TXCLog.e("TXCVodVideoView", "not support degree " + i);
                return;
            }
            i = 0;
        }
        this.o = i;
        a aVar = this.x;
        if (aVar != null) {
            aVar.setVideoRotation(this.o);
        }
        a aVar2 = this.x;
        if (aVar2 != null) {
            aVar2.setAspectRatio(this.V);
        }
    }

    public int getVideoRotationDegree() {
        return this.o;
    }

    private void k() {
        setRender(0);
    }

    public boolean b(boolean z) {
        if (this.g != 0) {
            return false;
        }
        this.b = z;
        return true;
    }

    public void setAutoPlay(boolean z) {
        this.w.d(z);
    }

    public void setRate(float f) {
        TXCLog.i("TXCVodVideoView", "setRate " + f);
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.setRate(f);
        }
        this.B = f;
    }

    public void setStartTime(float f) {
        this.s = (long) (f * 1000.0f);
    }

    public void setAutoRotate(boolean z) {
        this.a = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class a extends Handler {
        private final WeakReference<TXCVodVideoView> a;
        private final int b = 500;
        private final String c = "TXCVodeVideoView_Eventhandler";

        public a(TXCVodVideoView tXCVodVideoView, Looper looper) {
            super(looper);
            this.a = new WeakReference<>(tXCVodVideoView);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            TXCVodVideoView tXCVodVideoView = this.a.get();
            if (tXCVodVideoView != null && tXCVodVideoView.W != null) {
                switch (message.what) {
                    case 100:
                        float f = 0.0f;
                        if (tXCVodVideoView != null) {
                            try {
                                float propertyLong = (float) tXCVodVideoView.j.getPropertyLong(206);
                                long currentPosition = tXCVodVideoView.j.getCurrentPosition();
                                long propertyLong2 = tXCVodVideoView.j.getPropertyLong(208);
                                if (currentPosition > 0) {
                                    f = (float) ((propertyLong2 * 1000) / currentPosition);
                                }
                                long propertyLong3 = tXCVodVideoView.j.getPropertyLong(302);
                                long propertyLong4 = tXCVodVideoView.j.getPropertyLong(301);
                                long propertyLong5 = tXCVodVideoView.j.getPropertyLong(303);
                                TXCLog.i("TXCVodeVideoView_Eventhandler", "TXCVodVideoView handleMessage:MSG_UPDATE_NET_STATUS:fps" + propertyLong + ":dps:" + f + ":cachedBytes:" + propertyLong3 + ":bitRate:" + propertyLong4 + ":tcpSpeed:" + propertyLong5);
                                Bundle bundle = new Bundle();
                                bundle.putFloat("fps", propertyLong);
                                bundle.putFloat("dps", f);
                                bundle.putLong("cachedBytes", propertyLong3);
                                bundle.putLong("bitRate", propertyLong4);
                                bundle.putLong("tcpSpeed", propertyLong5);
                                tXCVodVideoView.W.a(bundle);
                                sendEmptyMessageDelayed(100, 500);
                                return;
                            } catch (Exception e) {
                                TXCLog.e("TXCVodeVideoView_Eventhandler", "MSG_UPDATE_NET_STATUS exception : " + e.getMessage());
                                return;
                            }
                        } else {
                            return;
                        }
                    case 101:
                        int i = message.arg1;
                        if (i == 2013) {
                            TXCLog.i("TXCVodeVideoView_Eventhandler", "TXCVodVideoView handleMessage:MSG_PLAY_EVENT:EVT_VOD_PLAY_PREPARED");
                        }
                        tXCVodVideoView.W.a(i, message.getData());
                        return;
                    case 102:
                        tXCVodVideoView.c(true);
                        tXCVodVideoView.a(2103, "VOD network reconnected", "reconnect");
                        return;
                    case 103:
                        long currentPosition2 = tXCVodVideoView.getCurrentPosition();
                        Bundle bundle2 = new Bundle();
                        long bufferDuration = tXCVodVideoView.getBufferDuration();
                        long duration = (long) tXCVodVideoView.getDuration();
                        bundle2.putInt("EVT_PLAY_PROGRESS", (int) (currentPosition2 / 1000));
                        bundle2.putInt("EVT_PLAY_DURATION", (int) (duration / 1000));
                        bundle2.putInt("EVT_PLAYABLE_DURATION", (int) (bufferDuration / 1000));
                        bundle2.putInt("EVT_PLAY_PROGRESS_MS", (int) currentPosition2);
                        bundle2.putInt("EVT_PLAY_DURATION_MS", (int) duration);
                        bundle2.putInt("EVT_PLAYABLE_DURATION_MS", (int) bufferDuration);
                        if (tXCVodVideoView.j != null) {
                            bundle2.putFloat("EVT_PLAYABLE_RATE", tXCVodVideoView.j.getRate());
                        }
                        tXCVodVideoView.W.a(2005, bundle2);
                        if (tXCVodVideoView.j != null) {
                            if (tXCVodVideoView.w.k() <= 0) {
                                tXCVodVideoView.w.c(500);
                            }
                            sendEmptyMessageDelayed(103, (long) tXCVodVideoView.w.k());
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str, String str2) {
        if ((i != -2304 && i != 2106) || !this.ab) {
            Message message = new Message();
            message.what = 101;
            Bundle bundle = new Bundle();
            message.arg1 = i;
            bundle.putString("description", str);
            message.setData(bundle);
            Handler handler = this.aa;
            if (handler != null) {
                handler.sendMessage(message);
            }
            if (!(i == 2018 || i == 2016)) {
                TXCLog.i("TXCVodVideoView", "sendSimpleEvent " + i + " " + str2 + " vod=" + hashCode());
            }
            this.ab = i == -2304 || i == 2106;
        }
    }

    public void setListener(e eVar) {
        this.W = eVar;
    }

    public int getVideoWidth() {
        return this.k;
    }

    public int getVideoHeight() {
        return this.l;
    }

    public String getServerIp() {
        return this.A;
    }

    String getUrlPathExtention() {
        String o = this.w.o();
        return !TextUtils.isEmpty(o) ? o.substring(o.lastIndexOf(".") + 1, o.length()) : "";
    }

    public int getBitrateIndex() {
        int i = this.I;
        if (i == -1) {
            return i;
        }
        ITXVCubePlayer iTXVCubePlayer = this.j;
        return iTXVCubePlayer != null ? iTXVCubePlayer.getBitrateIndex() : i;
    }

    public void setBitrateIndex(int i) {
        TXCLog.i("TXCVodVideoView", "setBitrateIndex " + i + " vod=" + hashCode());
        if (this.I != i && i != -1000) {
            this.I = i;
            if (this.g != 5) {
                ArrayList<b> supportedBitrates = getSupportedBitrates();
                if (supportedBitrates != null && supportedBitrates.size() > 0 && i != -1) {
                    Iterator<b> it = supportedBitrates.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            b next = it.next();
                            if (next != null && next.a == i) {
                                this.J = next.d;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                if (this.j == null) {
                    return;
                }
                if (!this.w.j() || i == -1 || this.j.getBitrateIndex() == -1) {
                    i();
                } else {
                    this.j.setBitrateIndex(i);
                }
            }
        }
    }

    public ArrayList<b> getSupportedBitrates() {
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null) {
            return iTXVCubePlayer.getSupportedBitrates();
        }
        return new ArrayList<>();
    }

    public f getMediaInfo() {
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer == null) {
            return null;
        }
        return iTXVCubePlayer.getMediaInfo();
    }

    public void f() {
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.publishAudioToNetwork();
        }
    }

    public void g() {
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.unpublishAudioToNetwork();
        }
    }

    public void a(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && TextUtils.equals(str, "PARAM_SUPER_RESOLUTION_TYPE") && (obj instanceof Integer)) {
            RenderProcessService.getInstance().updateRenderProcessMode(this.j, ((Integer) obj).intValue());
        }
    }

    private void a(ITXVCubePlayer iTXVCubePlayer) {
        if (iTXVCubePlayer != null) {
            RenderProcessService.getInstance().stopRenderProcess(iTXVCubePlayer);
        }
    }
}
