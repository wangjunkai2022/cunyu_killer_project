package com.tencent.liteav.renderer;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.os.AsyncTask;
import android.view.Surface;
import android.view.TextureView;
import androidx.webkit.ProxyConfig;
import com.google.android.exoplayer2.PlaybackException;
import com.tencent.liteav.basic.c.b;
import com.tencent.liteav.basic.e.d;
import com.tencent.liteav.basic.e.k;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.module.Monitor;
import com.tencent.liteav.basic.module.TXCKeyPointReportProxy;
import com.tencent.liteav.basic.structs.TXSVideoFrame;
import com.tencent.liteav.basic.util.TXCBuild;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCVideoRender.java */
/* loaded from: classes5.dex */
public class e extends com.tencent.liteav.basic.module.a implements TextureView.SurfaceTextureListener {
    private static final float[] a = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f};
    private boolean G;
    private SurfaceTexture b;
    protected TextureView d;
    protected d e;
    protected f o;
    WeakReference<b> p;
    private d q;
    private h r;
    private Surface s;
    private int u;
    protected int f = 0;
    protected int g = 0;
    protected int h = 0;
    protected int i = 0;
    protected int j = 0;
    private int c = 800;
    private int t = 0;
    protected int k = 0;
    private int v = 2;
    protected volatile int l = -1;
    protected int m = 0;
    protected int n = 0;
    private int[] w = new int[5];
    private int x = 500;
    private long y = 0;
    private long z = 0;
    private long A = 0;
    private long B = 0;
    private long C = 0;
    private boolean D = false;
    private boolean E = false;
    private a H = new a();
    private boolean F = false;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: TXCVideoRender.java */
    /* loaded from: classes5.dex */
    public static class a {
        public long a;
        public long b;
        public long c;
        public long d;
        public long e;
        public long f;
        public long g;
        public long h;
        public long i;
        public long j;
        public long k;
        public int l;
        public int m;
        public long n;
        public boolean o = true;
    }

    public SurfaceTexture a() {
        return null;
    }

    public void c(Object obj) {
    }

    public void d() {
    }

    protected void j() {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void a(int i) {
        this.j = i;
    }

    private Bitmap a(Bitmap bitmap, int i, int i2) {
        float f;
        float f2 = (float) i2;
        float f3 = (float) i;
        if (f2 / f3 > ((float) bitmap.getHeight()) / ((float) bitmap.getWidth())) {
            f = f3 / ((float) bitmap.getWidth());
        } else {
            f = f2 / ((float) bitmap.getHeight());
        }
        Matrix matrix = new Matrix();
        matrix.preScale(f, f);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
        bitmap.recycle();
        return createBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap a(Matrix matrix, Bitmap bitmap, int i, int i2) {
        Bitmap bitmap2;
        Bitmap a2;
        int i3 = 360 - ((this.t + this.k) % 360);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        bitmap.recycle();
        if (i3 != 0) {
            Matrix matrix2 = new Matrix();
            matrix2.setRotate((float) i3);
            bitmap2 = Bitmap.createBitmap(createBitmap, 0, 0, createBitmap.getWidth(), createBitmap.getHeight(), matrix2, false);
            createBitmap.recycle();
        } else {
            bitmap2 = createBitmap;
        }
        if (this.u != 0) {
            return (i == bitmap2.getWidth() || i2 == bitmap2.getHeight()) ? bitmap2 : a(bitmap2, i, i2);
        }
        int width = bitmap2.getWidth();
        int height = bitmap2.getHeight();
        boolean z = true;
        boolean z2 = i < i2;
        if (width >= height) {
            z = false;
        }
        if (z2 != z) {
            if (z2) {
                float f = (float) i;
                float f2 = (((float) height) * f) / ((float) i2);
                Matrix matrix3 = new Matrix();
                float f3 = f / f2;
                matrix3.preScale(f3, f3);
                a2 = Bitmap.createBitmap(bitmap2, (int) ((((float) width) - f2) * 0.5f), 0, (int) f2, height, matrix3, false);
                bitmap2.recycle();
            } else {
                float f4 = (float) i2;
                float f5 = (((float) width) / ((float) i)) * f4;
                Matrix matrix4 = new Matrix();
                float f6 = f4 / f5;
                matrix4.preScale(f6, f6);
                Bitmap createBitmap2 = Bitmap.createBitmap(bitmap2, 0, (int) ((((float) height) - f5) * 0.5f), width, (int) f5, (Matrix) null, false);
                Bitmap createBitmap3 = Bitmap.createBitmap(createBitmap2, 0, 0, createBitmap2.getWidth(), createBitmap2.getHeight(), matrix4, false);
                createBitmap2.recycle();
                return createBitmap3;
            }
        } else if (i == bitmap2.getWidth() || i2 == bitmap2.getHeight()) {
            return bitmap2;
        } else {
            a2 = a(bitmap2, i, i2);
        }
        return a2;
    }

    public void a(final k kVar) {
        final Bitmap bitmap;
        final TextureView textureView = this.d;
        if (textureView != null) {
            try {
                bitmap = textureView.getBitmap();
            } catch (OutOfMemoryError unused) {
                bitmap = null;
            }
            if (bitmap != null) {
                final Matrix transform = textureView.getTransform(null);
                AsyncTask.execute(new Runnable() { // from class: com.tencent.liteav.renderer.e.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Bitmap bitmap2 = null;
                        try {
                            bitmap2 = e.this.a(transform, bitmap, textureView.getWidth(), textureView.getHeight());
                        } catch (Error e) {
                            TXCLog.w("TXCVideoRender", "takePhoto error " + e);
                        } catch (Exception e2) {
                            TXCLog.w("TXCVideoRender", "takePhoto error " + e2);
                        }
                        k kVar2 = kVar;
                        if (kVar2 != null) {
                            kVar2.a(bitmap2);
                        }
                    }
                });
                return;
            }
            return;
        }
        d dVar = this.q;
        if (dVar != null) {
            dVar.a(new Runnable() { // from class: com.tencent.liteav.renderer.e.2
                @Override // java.lang.Runnable
                public void run() {
                    if (e.this.q != null) {
                        e.this.q.a(kVar);
                    }
                }
            });
        } else if (kVar != null) {
            kVar.a(null);
        }
    }

    public void b(int i) {
        if (i > 0) {
            this.c = i;
        }
    }

    public e() {
        boolean z = false;
        this.G = false;
        this.G = TXCBuild.VersionInt() >= 21 ? true : z;
    }

    public void a(f fVar) {
        this.o = fVar;
    }

    public void a(b bVar) {
        this.p = new WeakReference<>(bVar);
    }

    public void a(TextureView textureView) {
        b(textureView);
    }

    public void a(Surface surface) {
        b(surface);
    }

    public void a(TXSVideoFrame tXSVideoFrame, int i, int i2, int i3) {
        if (i3 != this.k) {
            this.k = i3;
            e(this.t);
        }
        a(i, i2);
        b();
    }

    public void a(int i, int i2, int i3, boolean z, int i4) {
        a(i2, i3);
    }

    public void e() {
        Monitor.a(2, String.format("Remote-VideoRender[%d]: Start [tinyID:%s] [streamType:%d]", Integer.valueOf(hashCode()), getID(), Integer.valueOf(this.j)), "streamType: 2-big, 3-small, 7-sub", 0);
        this.E = true;
        this.F = false;
        l();
    }

    public void a(boolean z) {
        l();
        if (this.E) {
            Object[] objArr = new Object[4];
            objArr[0] = Integer.valueOf(hashCode());
            objArr[1] = getID();
            objArr[2] = Integer.valueOf(this.j);
            objArr[3] = z ? "true" : "false";
            Monitor.a(2, String.format("Remote-VideoRender[%d]: Stop [tinyID:%s][streamType:%d][stopRendThread:%s]", objArr), "streamType: 2-big, 3-small, 7-sub", 0);
        }
        this.E = false;
        this.F = false;
        if (z && this.l == 1) {
            this.l = -1;
            TXCLog.w("TXCVideoRender", "play:vrender: quit render thread when stop");
            d();
            synchronized (this) {
                if (this.q != null) {
                    TXCLog.i("TXCVideoRender", "surface-render:stop render thread " + this.q);
                    this.q.a();
                    this.q = null;
                }
            }
        }
    }

    public void b(boolean z) {
        this.G = z;
    }

    public void c(int i, int i2) {
        a(i, i2);
    }

    public void c(int i) {
        this.u = i;
        d dVar = this.e;
        if (dVar != null) {
            dVar.a(i);
        }
    }

    public void d(int i) {
        this.v = i;
        d dVar = this.e;
        if (dVar == null) {
            return;
        }
        if (i == 2) {
            dVar.a(false);
        } else {
            dVar.a(true);
        }
    }

    public void e(int i) {
        this.t = i;
        d dVar = this.e;
        if (dVar != null) {
            dVar.c((i + this.k) % 360);
        }
    }

    public int f() {
        TextureView textureView = this.d;
        if (textureView != null) {
            return textureView.getWidth();
        }
        if (this.s != null) {
            return this.m;
        }
        return 0;
    }

    public int g() {
        TextureView textureView = this.d;
        if (textureView != null) {
            return textureView.getHeight();
        }
        if (this.s != null) {
            return this.n;
        }
        return 0;
    }

    public int h() {
        return this.h;
    }

    public int i() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(SurfaceTexture surfaceTexture) {
        this.D = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(SurfaceTexture surfaceTexture) {
        this.D = false;
    }

    public void f(int i) {
        this.x = i;
    }

    private void b(TextureView textureView) {
        TextureView textureView2;
        boolean z = false;
        if (textureView != null) {
            this.l = 0;
        }
        if ((this.d == null && textureView != null) || ((textureView2 = this.d) != null && !textureView2.equals(textureView))) {
            z = true;
        }
        TXCLog.w("TXCVideoRender", "play:vrender: set video view @old=" + this.d + ",new=" + textureView + "id " + getID() + "_" + this.j);
        if (z) {
            TextureView textureView3 = this.d;
            if (textureView3 != null && this.b == null) {
                b(textureView3.getSurfaceTexture());
                this.d.setSurfaceTextureListener(null);
            }
            this.d = textureView;
            TextureView textureView4 = this.d;
            if (textureView4 != null) {
                if (textureView4.getWidth() != 0) {
                    this.f = this.d.getWidth();
                }
                if (this.d.getHeight() != 0) {
                    this.g = this.d.getHeight();
                }
                this.e = new d(this.d);
                this.e.b(this.h, this.i);
                this.e.a(this.f, this.g);
                this.e.a(this.u);
                this.e.c((this.t + this.k) % 360);
                d(this.v);
                this.d.setSurfaceTextureListener(this);
                if (this.b != null) {
                    if (TXCBuild.VersionInt() < 16 || this.d.getSurfaceTexture() == this.b) {
                        TXCLog.w("TXCVideoRender", "play:vrender: not setSurfaceTexture old surfaceTexture " + this.d.getSurfaceTexture() + ", new surfaceTexture " + this.b);
                        return;
                    }
                    TXCLog.w("TXCVideoRender", "play:vrender: setSurfaceTexture " + this.d + ", surfaceTexture " + this.b);
                    try {
                        this.d.setSurfaceTexture(this.b);
                    } catch (Exception e) {
                        TXCLog.e("TXCVideoRender", "setSurfaceTexture error " + e);
                    }
                } else if (this.d.isAvailable()) {
                    a(this.d.getSurfaceTexture());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i, int i2) {
        if (this.h != i || this.i != i2) {
            if (this.h != i || this.i != i2) {
                this.h = i;
                this.i = i2;
                d dVar = this.e;
                if (dVar != null) {
                    dVar.b(this.h, this.i);
                }
            }
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        TXCLog.w("TXCVideoRender", "play:vrender: texture available @" + surfaceTexture + "id " + getID() + "_" + this.j);
        this.f = i;
        this.g = i2;
        if (surfaceTexture != null) {
            surfaceTexture.setDefaultBufferSize(i, i2);
        }
        d dVar = this.e;
        if (dVar != null) {
            dVar.a(this.f, this.g);
        }
        if (this.b != null) {
            try {
                if (TXCBuild.VersionInt() >= 16 && this.d.getSurfaceTexture() != this.b) {
                    this.d.setSurfaceTexture(this.b);
                }
            } catch (Exception e) {
                TXCLog.e("TXCVideoRender", "setSurfaceTexture failed.", e);
                a(surfaceTexture);
            }
            this.b = null;
        } else {
            a(surfaceTexture);
        }
        this.D = true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        TXCLog.w("TXCVideoRender", "play:vrender: texture size change new:" + i + "," + i2 + " old:" + this.f + "," + this.g);
        if (!this.D) {
            TXCLog.w("TXCVideoRender", "play:vrender: onSurfaceCreate on onSurfaceTextureSizeChanged when onSurfaceTextureAvailable is not trigger");
            this.D = true;
            surfaceTexture.setDefaultBufferSize(i, i2);
            a(surfaceTexture);
        }
        this.f = i;
        this.g = i2;
        d dVar = this.e;
        if (dVar != null) {
            dVar.a(this.f, this.g);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        try {
            this.D = false;
            TXCLog.w("TXCVideoRender", "play:vrender:  onSurfaceTextureDestroyed when need save texture : " + this.G + "id " + getID() + "_" + this.j);
            if (this.G) {
                this.b = surfaceTexture;
            } else {
                this.H.a = 0;
                b(surfaceTexture);
                if (surfaceTexture == this.b) {
                    this.b = null;
                }
            }
        } catch (Exception e) {
            TXCLog.e("TXCVideoRender", "onSurfaceTextureDestroyed failed.", e);
        }
        if (this.b == null) {
            return true;
        }
        return false;
    }

    private void b(Surface surface) {
        TXCLog.i("TXCVideoRender", "surface-render: set surface " + surface);
        if (this.s == surface) {
            TXCLog.i("TXCVideoRender", "surface-render: set the same surface, ignore ");
            return;
        }
        this.s = surface;
        this.l = 1;
        if (surface != null) {
            TXCLog.i("TXCVideoRender", "surface-render: set surface start render thread " + surface);
            c((Object) null);
            return;
        }
        synchronized (this) {
            if (this.q != null) {
                TXCLog.i("TXCVideoRender", "surface-render: set surface stop render thread " + this.q);
                this.q.a();
                this.q = null;
            }
        }
    }

    protected void k() {
        synchronized (this) {
            if (this.q != null) {
                TXCLog.i("TXCVideoRender", "surface-render: onRenderThreadEGLDestroy stop render thread " + this.q);
                this.q.a();
                this.q = null;
            }
        }
        h hVar = this.r;
        if (hVar != null) {
            hVar.c();
            this.r = null;
        }
    }

    protected void a(Object obj, int i, float[] fArr, boolean z) {
        Surface b;
        if (this.l == 1) {
            int[] a2 = a(i, this.h, this.i, fArr, z);
            int i2 = a2[0];
            int i3 = a2[1];
            int i4 = a2[2];
            System.arraycopy(a2, 0, this.w, 0, 3);
            if (z) {
                int[] iArr = this.w;
                iArr[3] = 1;
                iArr[4] = 180;
            } else {
                int[] iArr2 = this.w;
                iArr2[3] = 0;
                iArr2[4] = 0;
            }
            synchronized (this) {
                Surface surface = this.s;
                if (surface != null) {
                    if (this.q != null && ((b = this.q.b()) != surface || (b != null && !b.isValid()))) {
                        TXCLog.i("TXCVideoRender", "surface-render: onDrawTextureToSurface surface change stop render thread " + this.q + ", " + b + ", " + surface);
                        this.q.a();
                        this.q = null;
                    }
                    if (this.q == null && this.l == 1 && surface.isValid()) {
                        this.q = new d();
                        TXCLog.i("TXCVideoRender", "surface-render: onDrawTextureToSurface start render thread " + this.q + "," + surface);
                        this.q.a(obj, surface);
                    }
                    if (this.q != null && this.l == 1) {
                        if (z) {
                            this.q.a(i2, true, 180, this.m, this.n, i3, i4, false, false);
                        } else {
                            this.q.a(i2, false, 0, this.m, this.n, i3, i4, false, false);
                        }
                    }
                } else if (this.q != null) {
                    TXCLog.i("TXCVideoRender", "surface-render: onDrawTextureToSurface stop render thread " + this.q);
                    this.q.a();
                    this.q = null;
                }
            }
        }
    }

    private int[] a(int i, int i2, int i3, float[] fArr, boolean z) {
        h hVar = this.r;
        if (!(hVar == null || hVar.a() == z)) {
            this.r.c();
            this.r = null;
        }
        if (this.r == null) {
            this.r = new h(Boolean.valueOf(z));
            this.r.b();
        }
        if (fArr != null) {
            this.r.a(fArr);
        } else {
            this.r.a(a);
        }
        int i4 = this.m;
        int i5 = this.n;
        if (this.u == 0) {
            this.r.a(h.a);
        } else {
            this.r.a(h.b);
        }
        if (this.v == 1) {
            this.r.a(true);
        } else {
            this.r.a(false);
        }
        int i6 = this.t;
        int i7 = (this.k + i6) % 360;
        if (z && (i6 == 90 || i6 == 270)) {
            i7 = ((this.t + this.k) + 180) % 360;
        }
        this.r.b(i7);
        this.r.b(i2, i3);
        this.r.a(i4, i5);
        return new int[]{this.r.d(i), i4, i5};
    }

    public void d(final int i, final int i2) {
        TXCLog.i("TXCVideoRender", "surface-render: set setSurfaceSize " + i + ProxyConfig.MATCH_ALL_SCHEMES + i2);
        if (i != this.m || i2 != this.n) {
            if (this.q == null || this.l != 1 || this.w == null) {
                this.m = i;
                this.n = i2;
                return;
            }
            this.q.a(new Runnable() { // from class: com.tencent.liteav.renderer.e.3
                @Override // java.lang.Runnable
                public void run() {
                    e eVar = e.this;
                    eVar.m = i;
                    eVar.n = i2;
                    if (eVar.q != null) {
                        e.this.q.a(e.this.w[0], e.this.w[3] == 1, e.this.w[4], e.this.m, e.this.n, e.this.w[1], e.this.w[2], true, false);
                    }
                }
            });
        }
    }

    public void l() {
        m();
        a aVar = this.H;
        aVar.b = 0;
        aVar.c = 0;
        aVar.e = 0;
        aVar.f = 0;
        aVar.g = 0;
        aVar.h = 0;
        aVar.i = 0;
        aVar.k = 0;
        this.C = 0;
        setStatusValue(6001, this.j, 0L);
        setStatusValue(PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR, this.j, 0L);
        setStatusValue(PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION, this.j, 0L);
        setStatusValue(PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR, this.j, 0L);
        setStatusValue(PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED, this.j, 0L);
        setStatusValue(6012, this.j, 0L);
    }

    public void m() {
        n();
        a aVar = this.H;
        aVar.a = 0;
        aVar.d = 0;
        aVar.j = 0;
        this.z = 0;
    }

    public void n() {
        a aVar = this.H;
        aVar.n = 0;
        this.B = 0;
        this.A = 0;
        aVar.l = 0;
        aVar.m = 0;
        setStatusValue(PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED, this.j, Double.valueOf(0.0d));
    }

    public void c(boolean z) {
        this.H.o = z;
    }

    private long a(long j) {
        long timeTick = TXCTimeUtil.getTimeTick();
        if (j > timeTick) {
            return 0;
        }
        return timeTick - j;
    }

    public void o() {
        if (this.H.a == 0) {
            this.H.a = TXCTimeUtil.getTimeTick();
            return;
        }
        long timeTick = TXCTimeUtil.getTimeTick() - this.H.a;
        if (timeTick >= 950) {
            double doubleValue = Double.valueOf((((double) (this.H.c - this.H.b)) * 1000.0d) / ((double) timeTick)).doubleValue();
            setStatusValue(PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED, this.j, Double.valueOf(doubleValue));
            TXCKeyPointReportProxy.a(getID(), 40001, (long) ((int) doubleValue), this.j);
            a aVar = this.H;
            aVar.b = aVar.c;
            this.H.a += timeTick;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0319  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private void b() {
        /*
        // Method dump skipped, instructions count: 810
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.renderer.e.b():void");
    }
}
