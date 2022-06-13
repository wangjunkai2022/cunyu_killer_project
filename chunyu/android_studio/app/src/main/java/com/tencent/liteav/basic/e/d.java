package com.tencent.liteav.basic.e;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.opengl.GLES20;
import android.os.HandlerThread;
import android.view.Surface;
import com.tencent.liteav.basic.e.e;
import com.tencent.liteav.basic.log.TXCLog;
import java.nio.ByteBuffer;
import javax.microedition.khronos.egl.EGLContext;

/* compiled from: TXCGLSurfaceRenderThread.java */
/* loaded from: classes2.dex */
public class d implements e.a {
    private volatile HandlerThread a = null;
    private volatile e b = null;
    private f c = null;
    private int d = 0;
    private boolean e = false;
    private float f = 1.0f;
    private float g = 1.0f;
    private int h = 0;
    private int i = 0;
    private int j = 0;
    private int k = 0;
    private boolean l = false;
    private k m = null;
    private boolean n = false;

    @Override // com.tencent.liteav.basic.e.e.a
    public void d() {
    }

    public void a(Object obj, Surface surface) {
        TXCLog.i("TXGLSurfaceRenderThread", "surface-render: surface render start " + surface + ", " + this);
        b(obj, surface);
    }

    public void a() {
        TXCLog.i("TXGLSurfaceRenderThread", "surface-render: surface render stop " + this);
        f();
    }

    public Surface b() {
        Surface a;
        synchronized (this) {
            a = this.b != null ? this.b.a() : null;
        }
        return a;
    }

    public void a(Runnable runnable) {
        synchronized (this) {
            if (this.b != null) {
                this.b.post(runnable);
            }
        }
    }

    public void a(final int i, final boolean z, final int i2, final int i3, final int i4, final int i5, final int i6, final boolean z2, final boolean z3) {
        GLES20.glFinish();
        synchronized (this) {
            if (this.b != null) {
                this.b.post(new Runnable() { // from class: com.tencent.liteav.basic.e.d.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            d.this.b(i, z, i2, i3, i4, i5, i6, z2, z3);
                        } catch (Exception e) {
                            TXCLog.e("TXGLSurfaceRenderThread", "surface-render: render texture error occurred!" + e.getMessage());
                        }
                    }
                });
            }
        }
    }

    public void a(k kVar) {
        this.m = kVar;
        this.l = true;
    }

    @Override // com.tencent.liteav.basic.e.e.a
    public void c() {
        this.c = new f();
        if (this.c.a()) {
            this.c.a(i.e, i.a(h.NORMAL, false, false));
        }
    }

    @Override // com.tencent.liteav.basic.e.e.a
    public void e() {
        f fVar = this.c;
        if (fVar != null) {
            fVar.d();
            this.c = null;
        }
    }

    private void b(Object obj, Surface surface) {
        f();
        synchronized (this) {
            this.a = new HandlerThread("TXGLSurfaceRenderThread");
            this.a.start();
            this.b = new e(this.a.getLooper());
            this.b.a(this);
            if (obj != null && !(obj instanceof EGLContext)) {
                this.b.d = true;
                this.b.f = (android.opengl.EGLContext) obj;
                this.b.c = surface;
                TXCLog.w("TXGLSurfaceRenderThread", "surface-render: create gl thread " + this.a.getName());
            }
            this.b.d = false;
            this.b.h = (EGLContext) obj;
            this.b.c = surface;
            TXCLog.w("TXGLSurfaceRenderThread", "surface-render: create gl thread " + this.a.getName());
        }
        a(100);
    }

    private void f() {
        synchronized (this) {
            if (this.b != null) {
                e.a(this.b, this.a);
                TXCLog.w("TXGLSurfaceRenderThread", "surface-render: destroy gl thread");
            }
            this.b = null;
            this.a = null;
        }
    }

    private void a(int i) {
        synchronized (this) {
            if (this.b != null) {
                this.b.sendEmptyMessage(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, boolean z, int i2, int i3, int i4, int i5, int i6, boolean z2, boolean z3) {
        int i7;
        int i8;
        int i9;
        if (i5 != 0 && i6 != 0 && this.c != null) {
            if (this.n) {
                this.n = false;
                return;
            }
            if (z2) {
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
                GLES20.glClear(16640);
                GLES20.glBindFramebuffer(36160, 0);
                if (this.b != null) {
                    this.b.b();
                }
                this.n = true;
            }
            int i10 = i3 != 0 ? i3 : i5;
            int i11 = i4 != 0 ? i4 : i6;
            int i12 = this.h;
            if (i12 != 0 && i12 == 1) {
                int i13 = (720 - i2) % 360;
                boolean z4 = i13 == 90 || i13 == 270;
                int[] a = a(i10, i11, z4 ? i6 : i5, z4 ? i5 : i6);
                int i14 = a[0];
                int i15 = a[1];
                i7 = a[2];
                i8 = a[3];
                i10 = i14;
                i11 = i15;
            } else {
                i8 = 0;
                i7 = 0;
            }
            this.j = i10;
            this.k = i11;
            GLES20.glViewport(i7, i8, i10, i11);
            int i16 = this.i;
            boolean z5 = (i16 != 1 ? i16 != 2 || !z3 : z3) ? z : !z;
            float f = i11 != 0 ? ((float) i10) / ((float) i11) : 1.0f;
            float f2 = i6 != 0 ? ((float) i5) / ((float) i6) : 1.0f;
            if (this.e == z5 && this.d == i2 && this.f == f && this.g == f2) {
                i9 = i8;
            } else {
                this.e = z5;
                this.d = i2;
                this.f = f;
                this.g = f2;
                int i17 = (720 - this.d) % 360;
                boolean z6 = i17 == 90 || i17 == 270;
                int i18 = z6 ? i11 : i10;
                if (z6) {
                    i11 = i10;
                }
                i9 = i8;
                this.c.a(i5, i6, i17, i.a(h.NORMAL, false, true), ((float) i18) / ((float) i11), z6 ? false : this.e, z6 ? this.e : false);
                if (z6) {
                    this.c.g();
                } else {
                    this.c.h();
                }
            }
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
            GLES20.glClear(16640);
            GLES20.glBindFramebuffer(36160, 0);
            this.c.a(i);
            a(i7, i9);
            if (this.b != null) {
                this.b.b();
            }
        }
    }

    private int[] a(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int[] iArr = new int[4];
        float f = (float) i2;
        float f2 = (float) i;
        float f3 = ((float) i4) / ((float) i3);
        if (f / f2 > f3) {
            int i7 = (int) (f2 * f3);
            i5 = (i2 - i7) / 2;
            i2 = i7;
            i6 = 0;
        } else {
            int i8 = (int) (f / f3);
            i6 = (i - i8) / 2;
            i5 = 0;
            i = i8;
        }
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = i6;
        iArr[3] = i5;
        return iArr;
    }

    private void a(int i, int i2) {
        int i3;
        if (this.l) {
            int i4 = this.j;
            if (!(i4 == 0 || (i3 = this.k) == 0)) {
                boolean z = i4 <= i3;
                final int i5 = this.k;
                int i6 = this.j;
                if (i5 < i6) {
                    i5 = i6;
                }
                final int i7 = this.k;
                int i8 = this.j;
                if (i7 >= i8) {
                    i7 = i8;
                }
                if (z) {
                    i7 = i5;
                    i5 = i7;
                }
                final ByteBuffer allocate = ByteBuffer.allocate(i5 * i7 * 4);
                final Bitmap createBitmap = Bitmap.createBitmap(i5, i7, Bitmap.Config.ARGB_8888);
                allocate.position(0);
                GLES20.glReadPixels(i, i2, i5, i7, 6408, 5121, allocate);
                final k kVar = this.m;
                if (kVar != null) {
                    new Thread(new Runnable() { // from class: com.tencent.liteav.basic.e.d.2
                        @Override // java.lang.Runnable
                        public void run() {
                            allocate.position(0);
                            createBitmap.copyPixelsFromBuffer(allocate);
                            Matrix matrix = new Matrix();
                            matrix.setScale(1.0f, -1.0f);
                            kVar.a(Bitmap.createBitmap(createBitmap, 0, 0, i5, i7, matrix, false));
                            createBitmap.recycle();
                        }
                    }).start();
                }
            }
            this.m = null;
            this.l = false;
        }
    }
}
