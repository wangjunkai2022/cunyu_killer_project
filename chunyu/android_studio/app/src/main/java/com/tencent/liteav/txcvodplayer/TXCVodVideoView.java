package com.tencent.liteav.txcvodplayer;

import android.content.Context;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
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
import com.tencent.liteav.TXLiteAVCode;
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
import com.tencent.rtmp.TXLiveConstants;
import java.io.File;
import java.io.FileNotFoundException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes2.dex */
public class TXCVodVideoView extends FrameLayout {
    private String A;
    private long C;
    private boolean J;
    private int M;
    private e V;
    private Handler W;
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
    private int F = 100;
    private boolean G = false;
    private int H = -1000;
    private int I = -1;
    ITXVCubePlayer.l d = new ITXVCubePlayer.l() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.8
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.l
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
                if (TXCVodVideoView.this.W != null) {
                    TXCVodVideoView.this.W.sendMessage(message);
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
                if (TXCVodVideoView.this.W != null) {
                    TXCVodVideoView.this.W.sendMessage(message2);
                }
            }
        }
    };
    ITXVCubePlayer.h e = new ITXVCubePlayer.h() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.9
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.h
        public void a(ITXVCubePlayer iTXVCubePlayer) {
            if (RenderProcessService.getInstance().setSurfaceBufferSize(iTXVCubePlayer)) {
                TXCLog.i("TXCVodVideoView", "setSurfaceBufferSize succeed");
            }
            if (TXCVodVideoView.this.g == 1) {
                TXCVodVideoView.this.a(2013, "VOD ready", "prepared");
                if (!TXCVodVideoView.this.w.n()) {
                    TXCVodVideoView.this.h = 4;
                } else if (TXCVodVideoView.this.h != 4) {
                    TXCVodVideoView.this.h = 3;
                }
                TXCVodVideoView.this.g = 2;
            }
            TXCVodVideoView.this.s = 0;
            if (TXCVodVideoView.this.g == -1) {
                TXCVodVideoView.this.g = 3;
                TXCVodVideoView.this.h = 3;
            }
            if (TXCVodVideoView.this.W != null) {
                TXCVodVideoView.this.W.sendEmptyMessage(100);
                TXCVodVideoView.this.W.sendEmptyMessage(103);
            }
            TXCVodVideoView.this.k = iTXVCubePlayer.getVideoWidth();
            TXCVodVideoView.this.l = iTXVCubePlayer.getVideoHeight();
            if (!(TXCVodVideoView.this.k == 0 || TXCVodVideoView.this.l == 0 || TXCVodVideoView.this.x == null)) {
                TXCVodVideoView.this.x.setVideoSize(TXCVodVideoView.this.k, TXCVodVideoView.this.l);
                TXCVodVideoView.this.x.setVideoSampleAspectRatio(TXCVodVideoView.this.y, TXCVodVideoView.this.z);
            }
            if (TXCVodVideoView.this.h == 3) {
                TXCVodVideoView.this.b();
            }
        }
    };
    private ITXVCubePlayer.c K = new ITXVCubePlayer.c() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.10
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.c
        public void a(ITXVCubePlayer iTXVCubePlayer) {
            TXCVodVideoView.this.g = 5;
            TXCVodVideoView.this.h = 5;
            TXCVodVideoView.this.a(2006, "Playback completed", "play end");
        }
    };
    private ITXVCubePlayer.g L = new ITXVCubePlayer.g() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.11
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00e1, code lost:
            if (r4.endsWith("m3u8") != false) goto L_0x01e8;
         */
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.g
        /* Code decompiled incorrectly, please refer to instructions dump */
        public boolean a(com.tencent.liteav.txcplayer.ITXVCubePlayer r4, int r5, int r6, int r7, java.lang.Object r8) {
            /*
            // Method dump skipped, instructions count: 500
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.txcvodplayer.TXCVodVideoView.AnonymousClass11.a(com.tencent.liteav.txcplayer.ITXVCubePlayer, int, int, int, java.lang.Object):boolean");
        }
    };
    private ITXVCubePlayer.d N = new ITXVCubePlayer.d() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.12
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.d
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
                TXCVodVideoView.this.M = 0;
            }
            TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
            tXCVodVideoView.C = tXCVodVideoView.getCurrentPosition();
            if (((float) TXCVodVideoView.p(TXCVodVideoView.this)) >= TXCVodVideoView.this.w.a()) {
                TXCVodVideoView.this.a(-2301, "Disconnected from the network. Playback error", "disconnect");
                TXCVodVideoView.this.c();
            } else if (TXCVodVideoView.this.W != null) {
                TXCVodVideoView.this.W.sendEmptyMessageDelayed(102, (long) (TXCVodVideoView.this.w.b() * 1000.0f));
            }
            return true;
        }
    };
    private ITXVCubePlayer.f O = new ITXVCubePlayer.f() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.13
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.f
        public void a(ITXVCubePlayer iTXVCubePlayer) {
            Log.d("TXCVodVideoView", "onHevcVideoDecoderError");
            TXCVodVideoView.this.a(-2304, "Vod H265 decoding failed", "hevc decode fail");
        }
    };
    private ITXVCubePlayer.k P = new ITXVCubePlayer.k() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.14
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.k
        public void a(ITXVCubePlayer iTXVCubePlayer) {
            Log.d("TXCVodVideoView", "onVideoDecoderError");
            if (TXCVodVideoView.this.g != 4) {
                TXCVodVideoView.this.a(2106, "VOD decoding failed", "decode fail");
            }
            if (!TXCVodVideoView.this.J && TXCVodVideoView.this.w.d() && Math.min(TXCVodVideoView.this.l, TXCVodVideoView.this.k) < 1080 && TXCVodVideoView.this.w.d()) {
                TXCVodVideoView.this.w.a(false);
                TXCVodVideoView.this.i();
            }
        }
    };
    private ITXVCubePlayer.b Q = new ITXVCubePlayer.b() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.2
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.b
        public void a(ITXVCubePlayer iTXVCubePlayer, int i) {
            TXCVodVideoView.this.q = i;
            if (TXCVodVideoView.this.g == 3) {
                TXCVodVideoView.this.r = i;
            }
        }
    };
    private ITXVCubePlayer.i R = new ITXVCubePlayer.i() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.3
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.i
        public void a(ITXVCubePlayer iTXVCubePlayer) {
            TXCLog.v("TXCVodVideoView", "seek complete");
            TXCVodVideoView.this.D = false;
            TXCVodVideoView.this.a((int) TXLiteAVCode.EVT_VOD_PLAY_SEEK_COMPLETE, "seek完成", (String) null);
        }
    };
    private ITXVCubePlayer.j S = new ITXVCubePlayer.j() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.4
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.j
        public void a(ITXVCubePlayer iTXVCubePlayer, j jVar) {
        }
    };
    private ITXVCubePlayer.e T = new ITXVCubePlayer.e() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.5
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.e
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
    a.AbstractC0029a f = new a.AbstractC0029a() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.6
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
    private int U = 0;
    private boolean aa = false;

    public int getPlayerType() {
        return 2;
    }

    public void setPlayerType(int i) {
    }

    static /* synthetic */ int p(TXCVodVideoView tXCVodVideoView) {
        int i = tXCVodVideoView.M;
        tXCVodVideoView.M = i + 1;
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
            this.W = new a(this, mainLooper);
        } else {
            this.W = null;
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
            aVar.setAspectRatio(this.U);
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
                textureRenderView.setAspectRatio(this.U);
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
            textureRenderView.setAspectRatio(this.U);
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
        this.M = 0;
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
            if (this.I >= 0) {
                this.w.e(this.I);
            }
            if (this.H == -1) {
                this.w.e(true);
            } else {
                this.w.e(false);
            }
            if (this.H == -1) {
                this.j.enableAdaptiveBitrate();
            } else if (this.H != -1000) {
                this.j.setBitrateIndex(this.H);
            }
            this.j.setConfig(this.w);
            if (this.w.h() != null) {
                this.j.setDataSource(this.v, Uri.parse(o), this.w.h());
            } else {
                this.j.setDataSource(o);
            }
            this.j.setOnPreparedListener(this.e);
            this.j.setOnVideoSizeChangedListener(this.d);
            this.j.setOnCompletionListener(this.K);
            this.j.setOnErrorListener(this.N);
            this.j.setOnInfoListener(this.L);
            this.j.setOnBufferingUpdateListener(this.Q);
            this.j.setOnSeekCompleteListener(this.R);
            this.j.setOnTimedTextListener(this.S);
            this.j.setOnHLSKeyErrorListener(this.T);
            this.j.setOnHevcVideoDecoderErrorListener(this.O);
            this.j.setOnVideoDecoderErrorListener(this.P);
            this.j.setOnGetTXCVodVideoViewTargetState(new ITXVCubePlayer.a() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.7
                @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.a
                public int a() {
                    return TXCVodVideoView.this.h;
                }
            });
            this.q = 0;
            a(this.j, this.i);
            this.j.setAudioStreamType(3);
            this.j.setScreenOnWhilePlaying(true);
            this.j.prepareAsync();
            this.j.setAudioVolume(this.F);
            setMute(this.G);
            this.g = 1;
        } catch (FileNotFoundException unused) {
            this.g = -1;
            this.h = -1;
            this.N.a(this.j, ITXVCubePlayer.MEDIA_ERROR_IO, -2303);
        } catch (Exception e) {
            TXCLog.w("TXCVodVideoView", e.toString());
            this.g = -1;
            this.h = -1;
            this.N.a(this.j, 1, 0);
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
            l();
            this.j = null;
            this.g = 0;
            this.D = false;
            this.E = -1;
            if (z) {
                this.h = 0;
                this.k = 0;
                this.l = 0;
                this.B = 1.0f;
                this.J = false;
                this.H = -1000;
            }
            if (this.b && Build.VERSION.SDK_INT >= 8) {
                ((AudioManager) this.v.getSystemService("audio")).abandonAudioFocus(null);
            }
        }
    }

    public void b() {
        TXCLog.i("TXCVodVideoView", "start vod=" + hashCode());
        if (j()) {
            try {
                if (this.g != 3 && !this.D) {
                    this.g = 3;
                    a(2004, "Playback started", "playing");
                    if (this.W != null) {
                        this.W.sendEmptyMessage(100);
                        this.W.sendEmptyMessage(103);
                    }
                }
                this.j.start();
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
        Handler handler = this.W;
        if (handler != null) {
            handler.removeMessages(102);
            this.W.removeMessages(100);
            this.W.removeMessages(103);
        }
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null) {
            try {
                iTXVCubePlayer.stop();
                a(true);
            } catch (Exception e) {
                TXCLog.e("TXCVodVideoView", "stop exception: " + e.getMessage());
            }
        }
        TXCLog.i("TXCVodVideoView", "stop vod=" + hashCode());
    }

    public void d() {
        this.h = 4;
        TXCLog.i("TXCVodVideoView", "pause vod=" + hashCode());
        if (j()) {
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
            if (this.w.i()) {
                return j;
            }
            int i = this.E;
            return j < ((long) i) ? (long) i : j;
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
        this.G = z;
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null) {
            if (z) {
                iTXVCubePlayer.setAudioVolume(0);
            } else {
                iTXVCubePlayer.setAudioVolume(this.F);
            }
        }
    }

    public void setAudioPlayoutVolume(int i) {
        if (i > 0) {
            this.F = i;
        }
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
        this.U = i;
        a aVar = this.x;
        if (aVar != null) {
            aVar.setAspectRatio(this.U);
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
            aVar2.setAspectRatio(this.U);
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
    /* loaded from: classes2.dex */
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
            if (tXCVodVideoView != null && tXCVodVideoView.V != null) {
                switch (message.what) {
                    case 100:
                        float f = 0.0f;
                        if (tXCVodVideoView.j != null) {
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
                                Bundle bundle = new Bundle();
                                bundle.putFloat("fps", propertyLong);
                                bundle.putFloat("dps", f);
                                bundle.putLong("cachedBytes", propertyLong3);
                                bundle.putLong("bitRate", propertyLong4);
                                bundle.putLong("tcpSpeed", propertyLong5);
                                tXCVodVideoView.V.a(bundle);
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
                        tXCVodVideoView.V.a(i, message.getData());
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
                        bundle2.putInt(TXLiveConstants.EVT_PLAY_PROGRESS, (int) (currentPosition2 / 1000));
                        bundle2.putInt(TXLiveConstants.EVT_PLAY_DURATION, (int) (duration / 1000));
                        bundle2.putInt("EVT_PLAYABLE_DURATION", (int) (bufferDuration / 1000));
                        bundle2.putInt(TXLiveConstants.EVT_PLAY_PROGRESS_MS, (int) currentPosition2);
                        bundle2.putInt(TXLiveConstants.EVT_PLAY_DURATION_MS, (int) duration);
                        bundle2.putInt(TXLiveConstants.EVT_PLAYABLE_DURATION_MS, (int) bufferDuration);
                        if (tXCVodVideoView.j != null) {
                            bundle2.putFloat(TXLiveConstants.EVT_PLAYABLE_RATE, tXCVodVideoView.j.getRate());
                        }
                        tXCVodVideoView.V.a(2005, bundle2);
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
        if ((i != -2304 && i != 2106) || !this.aa) {
            Message message = new Message();
            message.what = 101;
            Bundle bundle = new Bundle();
            message.arg1 = i;
            bundle.putString("description", str);
            message.setData(bundle);
            Handler handler = this.W;
            if (handler != null) {
                handler.sendMessage(message);
            }
            if (!(i == 2018 || i == 2016)) {
                TXCLog.i("TXCVodVideoView", "sendSimpleEvent " + i + " " + str2 + " vod=" + hashCode());
            }
            this.aa = i == -2304 || i == 2106;
        }
    }

    public void setListener(e eVar) {
        this.V = eVar;
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
        int i = this.H;
        if (i == -1) {
            return i;
        }
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null) {
            this.H = iTXVCubePlayer.getBitrateIndex();
        }
        return this.H;
    }

    public void setBitrateIndex(int i) {
        TXCLog.i("TXCVodVideoView", "setBitrateIndex " + i + " vod=" + hashCode());
        if (getBitrateIndex() != i && i != -1000) {
            this.H = i;
            if (this.g != 5) {
                try {
                    ArrayList<b> supportedBitrates = getSupportedBitrates();
                    if (supportedBitrates != null && supportedBitrates.size() > 0 && i != -1) {
                        Iterator<b> it = supportedBitrates.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                b next = it.next();
                                if (next != null && next.a == i) {
                                    this.I = next.d;
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
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public ArrayList<b> getSupportedBitrates() {
        try {
            if (this.j != null) {
                return this.j.getSupportedBitrates();
            }
            return new ArrayList<>();
        } catch (Throwable th) {
            th.printStackTrace();
            return new ArrayList<>();
        }
    }

    public f getMediaInfo() {
        try {
            if (this.j == null) {
                return null;
            }
            return this.j.getMediaInfo();
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
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

    private void l() {
        ITXVCubePlayer iTXVCubePlayer = this.j;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.setOnPreparedListener(null);
            this.j.setOnVideoSizeChangedListener(null);
            this.j.setOnCompletionListener(null);
            this.j.setOnErrorListener(null);
            this.j.setOnInfoListener(null);
            this.j.setOnBufferingUpdateListener(null);
            this.j.setOnSeekCompleteListener(null);
            this.j.setOnTimedTextListener(null);
            this.j.setOnHLSKeyErrorListener(null);
            this.j.setOnHevcVideoDecoderErrorListener(null);
            this.j.setOnVideoDecoderErrorListener(null);
            this.j.setOnGetTXCVodVideoViewTargetState(null);
        }
    }
}
