package com.tencent.liteav.renderer;

import android.content.Context;
import android.opengl.GLDebugHelper;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.tencent.liteav.basic.log.TXCLog;
import java.io.Writer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXCGLSurfaceViewBase extends SurfaceView implements SurfaceHolder.Callback {
    private static final j a = new j();
    protected boolean b = false;
    protected boolean c = false;
    protected final WeakReference<TXCGLSurfaceViewBase> d = new WeakReference<>(this);
    protected boolean e;
    protected boolean f;
    private i g;
    private GLSurfaceView.Renderer h;
    private boolean i;
    private e j;
    private f k;
    private g l;
    private k m;
    private int n;
    private int o;
    private boolean p;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface e {
        EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface f {
        EGLContext a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig);

        void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface g {
        EGLSurface a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj);

        void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface k {
        GL a(GL gl);
    }

    protected void a() {
    }

    protected int b() {
        return 0;
    }

    public TXCGLSurfaceViewBase(Context context) {
        super(context);
        e();
    }

    public TXCGLSurfaceViewBase(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        e();
    }

    @Override // java.lang.Object
    protected void finalize() throws Throwable {
        try {
            if (this.g != null) {
                this.g.g();
            }
        } finally {
            super.finalize();
        }
    }

    private void e() {
        getHolder().addCallback(this);
    }

    public void setGLWrapper(k kVar) {
        this.m = kVar;
    }

    public void setDebugFlags(int i2) {
        this.n = i2;
    }

    public int getDebugFlags() {
        return this.n;
    }

    public void setPreserveEGLContextOnPause(boolean z) {
        this.p = z;
    }

    public boolean getPreserveEGLContextOnPause() {
        return this.p;
    }

    public void setRenderer(GLSurfaceView.Renderer renderer) {
        f();
        if (this.j == null) {
            this.j = new m(true);
        }
        if (this.k == null) {
            this.k = new c();
        }
        if (this.l == null) {
            this.l = new d();
        }
        this.h = renderer;
        this.g = new i(this.d);
        this.g.start();
        TXCLog.i("TXCGLSurfaceViewBase", "setRenderer-->mGLThread.start");
    }

    public void setEGLContextFactory(f fVar) {
        f();
        this.k = fVar;
    }

    public void setEGLWindowSurfaceFactory(g gVar) {
        f();
        this.l = gVar;
    }

    public void setEGLConfigChooser(e eVar) {
        f();
        this.j = eVar;
    }

    public void setEGLConfigChooser(boolean z) {
        setEGLConfigChooser(new m(z));
    }

    public void a(int i2, int i3, int i4, int i5, int i6, int i7) {
        setEGLConfigChooser(new b(i2, i3, i4, i5, i6, i7));
    }

    public void setEGLContextClientVersion(int i2) {
        f();
        this.o = i2;
    }

    public void setRenderMode(int i2) {
        this.g.a(i2);
    }

    public int getRenderMode() {
        return this.g.d();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.g.e();
        setRunInBackground(false);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        setRunInBackground(true);
        if (!this.b) {
            this.g.a(new Runnable() { // from class: com.tencent.liteav.renderer.TXCGLSurfaceViewBase.1
                @Override // java.lang.Runnable
                public void run() {
                    TXCGLSurfaceViewBase.this.a();
                }
            });
            this.g.f();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
        this.g.a(i3, i4);
    }

    protected void setRunInBackground(boolean z) {
        this.c = z;
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.i && this.h != null) {
            i iVar = this.g;
            int d2 = iVar != null ? iVar.d() : 1;
            this.g = new i(this.d);
            if (d2 != 1) {
                this.g.a(d2);
            }
            this.g.start();
        }
        this.i = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        if (this.b && this.g != null) {
            TXCLog.w("TXCGLSurfaceViewBase", "background capture destroy surface when onDetachedFromWindow");
            this.g.a(new Runnable() { // from class: com.tencent.liteav.renderer.TXCGLSurfaceViewBase.2
                @Override // java.lang.Runnable
                public void run() {
                    TXCGLSurfaceViewBase.this.a();
                }
            });
            this.g.f();
        }
        i iVar = this.g;
        if (iVar != null) {
            iVar.g();
        }
        this.i = true;
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class i extends Thread {
        private boolean a;
        private boolean b;
        private boolean c;
        private boolean d;
        private boolean e;
        private boolean f;
        private boolean g;
        private boolean h;
        private boolean i;
        private boolean j;
        private boolean k;
        private boolean p;
        private h s;
        private WeakReference<TXCGLSurfaceViewBase> t;
        private ArrayList<Runnable> q = new ArrayList<>();
        private boolean r = true;
        private int l = 0;
        private int m = 0;
        private boolean o = true;
        private int n = 1;

        i(WeakReference<TXCGLSurfaceViewBase> weakReference) {
            this.t = weakReference;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            setName("GLThread " + getId());
            try {
                i();
            } catch (InterruptedException unused) {
            } catch (Throwable th) {
                TXCGLSurfaceViewBase.a.a(this);
                throw th;
            }
            TXCGLSurfaceViewBase.a.a(this);
        }

        public int a() {
            return this.s.c();
        }

        public h b() {
            return this.s;
        }

        private void i() throws InterruptedException {
            boolean z;
            boolean z2;
            int i;
            boolean z3;
            boolean z4;
            boolean z5;
            boolean z6;
            this.s = new h(this.t);
            this.h = false;
            this.i = false;
            boolean z7 = false;
            boolean z8 = false;
            boolean z9 = false;
            int i2 = 0;
            int i3 = 0;
            boolean z10 = false;
            boolean z11 = false;
            boolean z12 = false;
            boolean z13 = false;
            boolean z14 = false;
            GL10 gl10 = null;
            Runnable runnable = null;
            while (true) {
                try {
                    synchronized (TXCGLSurfaceViewBase.a) {
                        while (!this.a) {
                            if (!this.q.isEmpty()) {
                                runnable = this.q.remove(0);
                                z = z11;
                                z2 = false;
                            } else {
                                if (this.d != this.c) {
                                    z4 = this.c;
                                    this.d = this.c;
                                    TXCGLSurfaceViewBase.a.notifyAll();
                                } else {
                                    z4 = false;
                                }
                                if (this.k) {
                                    j();
                                    k();
                                    this.k = false;
                                    z9 = true;
                                }
                                if (z7) {
                                    j();
                                    k();
                                    z5 = false;
                                } else {
                                    z5 = z7;
                                }
                                if (z4 && this.i) {
                                    j();
                                }
                                if (z4 && this.h) {
                                    TXCGLSurfaceViewBase tXCGLSurfaceViewBase = this.t.get();
                                    if (tXCGLSurfaceViewBase == null) {
                                        z6 = false;
                                    } else {
                                        z6 = tXCGLSurfaceViewBase.p;
                                    }
                                    if (!z6 || TXCGLSurfaceViewBase.a.a()) {
                                        k();
                                    }
                                }
                                if (z4 && TXCGLSurfaceViewBase.a.b()) {
                                    this.s.g();
                                }
                                if (!this.e && !this.g) {
                                    if (this.i) {
                                        j();
                                    }
                                    this.g = true;
                                    this.f = false;
                                    TXCGLSurfaceViewBase.a.notifyAll();
                                }
                                if (this.e && this.g) {
                                    this.g = false;
                                    TXCGLSurfaceViewBase.a.notifyAll();
                                }
                                if (z8) {
                                    this.p = true;
                                    TXCGLSurfaceViewBase.a.notifyAll();
                                    z8 = false;
                                    z14 = false;
                                }
                                if (l()) {
                                    if (!this.h) {
                                        if (z9) {
                                            z9 = false;
                                        } else if (TXCGLSurfaceViewBase.a.b(this)) {
                                            try {
                                                this.s.a();
                                            } catch (RuntimeException e) {
                                                TXCGLSurfaceViewBase.a.c(this);
                                                TXCLog.e("TXCGLSurfaceViewBase", "egl start error ", e);
                                            }
                                            this.h = true;
                                            TXCGLSurfaceViewBase.a.notifyAll();
                                            z10 = true;
                                        }
                                    }
                                    if (!this.h || this.i) {
                                        z = z11;
                                    } else {
                                        this.i = true;
                                        z = true;
                                        z12 = true;
                                        z13 = true;
                                    }
                                    if (this.i) {
                                        if (this.r) {
                                            i2 = this.l;
                                            i3 = this.m;
                                            z2 = false;
                                            this.r = false;
                                            z = true;
                                            z13 = true;
                                            z14 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        this.o = z2;
                                        TXCGLSurfaceViewBase.a.notifyAll();
                                        z7 = z5;
                                    } else {
                                        z11 = z;
                                    }
                                }
                                TXCGLSurfaceViewBase.a.wait();
                                z7 = z5;
                            }
                        }
                        synchronized (TXCGLSurfaceViewBase.a) {
                            try {
                                j();
                                k();
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        return;
                    }
                    if (runnable != null) {
                        runnable.run();
                        runnable = null;
                    } else {
                        if (z) {
                            if (this.s.b()) {
                                synchronized (TXCGLSurfaceViewBase.a) {
                                    this.j = true;
                                    TXCGLSurfaceViewBase.a.notifyAll();
                                }
                                z = z2;
                            } else {
                                synchronized (TXCGLSurfaceViewBase.a) {
                                    this.j = true;
                                    this.f = true;
                                    TXCGLSurfaceViewBase.a.notifyAll();
                                }
                            }
                        }
                        if (z12) {
                            GL10 gl102 = (GL10) this.s.d();
                            TXCGLSurfaceViewBase.a.a(gl102);
                            gl10 = gl102;
                            z12 = z2;
                        }
                        if (z10) {
                            TXCGLSurfaceViewBase tXCGLSurfaceViewBase2 = this.t.get();
                            if (tXCGLSurfaceViewBase2 != null) {
                                tXCGLSurfaceViewBase2.h.onSurfaceCreated(gl10, this.s.d);
                            }
                            z10 = z2;
                        }
                        if (z13) {
                            TXCGLSurfaceViewBase tXCGLSurfaceViewBase3 = this.t.get();
                            if (tXCGLSurfaceViewBase3 != null) {
                                tXCGLSurfaceViewBase3.h.onSurfaceChanged(gl10, i2, i3);
                            }
                            z13 = z2;
                        }
                        TXCGLSurfaceViewBase tXCGLSurfaceViewBase4 = this.t.get();
                        if (tXCGLSurfaceViewBase4 != null) {
                            tXCGLSurfaceViewBase4.h.onDrawFrame(gl10);
                            i = tXCGLSurfaceViewBase4.b();
                        } else {
                            i = 12288;
                        }
                        if (i == 12288) {
                            z3 = true;
                        } else if (i != 12302) {
                            h.a("GLThread", "eglSwapBuffers", i);
                            synchronized (TXCGLSurfaceViewBase.a) {
                                z3 = true;
                                this.f = true;
                                TXCGLSurfaceViewBase.a.notifyAll();
                            }
                        } else {
                            z3 = true;
                            z7 = true;
                        }
                        if (z14) {
                            z8 = z3;
                        }
                        z11 = z;
                    }
                    z11 = z;
                } catch (Throwable th2) {
                    synchronized (TXCGLSurfaceViewBase.a) {
                        try {
                            j();
                            k();
                            throw th2;
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
            }
        }

        private void j() {
            if (this.i) {
                this.i = false;
                this.s.f();
            }
        }

        private void k() {
            if (this.h) {
                this.s.g();
                this.h = false;
                TXCGLSurfaceViewBase tXCGLSurfaceViewBase = this.t.get();
                if (tXCGLSurfaceViewBase != null) {
                    tXCGLSurfaceViewBase.f = false;
                }
                TXCGLSurfaceViewBase.a.c(this);
            }
        }

        public boolean c() {
            return this.h && this.i && l();
        }

        private boolean l() {
            return !this.d && this.e && !this.f && this.l > 0 && this.m > 0 && (this.o || this.n == 1);
        }

        public void a(int i) {
            if (i < 0 || i > 1) {
                throw new IllegalArgumentException("renderMode");
            }
            synchronized (TXCGLSurfaceViewBase.a) {
                this.n = i;
                TXCGLSurfaceViewBase.a.notifyAll();
            }
        }

        public int d() {
            int i;
            synchronized (TXCGLSurfaceViewBase.a) {
                i = this.n;
            }
            return i;
        }

        public void e() {
            synchronized (TXCGLSurfaceViewBase.a) {
                this.e = true;
                this.j = false;
                TXCGLSurfaceViewBase.a.notifyAll();
                while (this.g && !this.j && !this.b) {
                    try {
                        TXCGLSurfaceViewBase.a.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void f() {
            synchronized (TXCGLSurfaceViewBase.a) {
                this.e = false;
                TXCGLSurfaceViewBase.a.notifyAll();
                while (!this.g && !this.b) {
                    try {
                        TXCGLSurfaceViewBase.a.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void a(int i, int i2) {
            synchronized (TXCGLSurfaceViewBase.a) {
                this.l = i;
                this.m = i2;
                this.r = true;
                this.o = true;
                this.p = false;
                TXCGLSurfaceViewBase.a.notifyAll();
                while (!this.b && !this.d && !this.p && c()) {
                    try {
                        TXCGLSurfaceViewBase.a.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void g() {
            synchronized (TXCGLSurfaceViewBase.a) {
                this.a = true;
                TXCGLSurfaceViewBase.a.notifyAll();
                while (!this.b) {
                    try {
                        TXCGLSurfaceViewBase.a.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void h() {
            this.k = true;
            TXCGLSurfaceViewBase.a.notifyAll();
        }

        public void a(Runnable runnable) {
            if (runnable != null) {
                synchronized (TXCGLSurfaceViewBase.a) {
                    this.q.add(runnable);
                    TXCGLSurfaceViewBase.a.notifyAll();
                }
                return;
            }
            throw new IllegalArgumentException("r must not be null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class l extends Writer {
        private StringBuilder a = new StringBuilder();

        l() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            a();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            a();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                char c = cArr[i + i3];
                if (c == '\n') {
                    a();
                } else {
                    this.a.append(c);
                }
            }
        }

        private void a() {
            if (this.a.length() > 0) {
                TXCLog.v("TXCGLSurfaceViewBase", this.a.toString());
                StringBuilder sb = this.a;
                sb.delete(0, sb.length());
            }
        }
    }

    private void f() {
        if (this.g != null) {
            throw new IllegalStateException("setRenderer has already been called for this instance.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class j {
        private static String a = "GLThreadManager";
        private boolean b;
        private int c;
        private boolean d;
        private boolean e;
        private boolean f;
        private i g;

        private j() {
        }

        public synchronized void a(i iVar) {
            iVar.b = true;
            if (this.g == iVar) {
                this.g = null;
            }
            notifyAll();
        }

        public boolean b(i iVar) {
            i iVar2 = this.g;
            if (iVar2 == iVar || iVar2 == null) {
                this.g = iVar;
                notifyAll();
                return true;
            }
            c();
            if (this.e) {
                return true;
            }
            i iVar3 = this.g;
            if (iVar3 == null) {
                return false;
            }
            iVar3.h();
            return false;
        }

        public void c(i iVar) {
            if (this.g == iVar) {
                this.g = null;
            }
            notifyAll();
        }

        public synchronized boolean a() {
            return this.f;
        }

        public synchronized boolean b() {
            c();
            return !this.e;
        }

        public synchronized void a(GL10 gl10) {
            if (!this.d) {
                c();
                String glGetString = gl10.glGetString(7937);
                boolean z = false;
                if (this.c < 131072) {
                    this.e = !glGetString.startsWith("Q3Dimension MSM7500 ");
                    notifyAll();
                }
                if (!this.e) {
                    z = true;
                }
                this.f = z;
                this.d = true;
            }
        }

        private void c() {
            this.c = 131072;
            this.e = true;
            this.b = true;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class h {
        EGL10 a;
        EGLDisplay b;
        EGLSurface c;
        EGLConfig d;
        EGLContext e;
        private WeakReference<TXCGLSurfaceViewBase> f;

        public h(WeakReference<TXCGLSurfaceViewBase> weakReference) {
            this.f = weakReference;
        }

        public void a() {
            this.a = (EGL10) EGLContext.getEGL();
            this.b = this.a.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            if (this.b != EGL10.EGL_NO_DISPLAY) {
                if (this.a.eglInitialize(this.b, new int[2])) {
                    TXCGLSurfaceViewBase tXCGLSurfaceViewBase = this.f.get();
                    if (tXCGLSurfaceViewBase == null) {
                        this.d = null;
                        this.e = null;
                        TXCLog.w("TXCGLSurfaceViewBase", "start() error when view is null ");
                    } else {
                        this.d = tXCGLSurfaceViewBase.j.a(this.a, this.b);
                        this.e = tXCGLSurfaceViewBase.k.a(this.a, this.b, this.d);
                    }
                    EGLContext eGLContext = this.e;
                    if (eGLContext == null || eGLContext == EGL10.EGL_NO_CONTEXT) {
                        this.e = null;
                        a("createContext");
                    }
                    if (tXCGLSurfaceViewBase != null) {
                        tXCGLSurfaceViewBase.f = true;
                    }
                    this.c = null;
                    return;
                }
                throw new RuntimeException("eglInitialize failed");
            }
            throw new RuntimeException("eglGetDisplay failed");
        }

        public boolean b() {
            if (this.a == null) {
                throw new RuntimeException("egl not initialized");
            } else if (this.b == null) {
                throw new RuntimeException("eglDisplay not initialized");
            } else if (this.d != null) {
                h();
                TXCGLSurfaceViewBase tXCGLSurfaceViewBase = this.f.get();
                if (tXCGLSurfaceViewBase != null) {
                    this.c = tXCGLSurfaceViewBase.l.a(this.a, this.b, this.d, tXCGLSurfaceViewBase.getHolder());
                } else {
                    this.c = null;
                }
                EGLSurface eGLSurface = this.c;
                if (eGLSurface == null || eGLSurface == EGL10.EGL_NO_SURFACE) {
                    if (this.a.eglGetError() == 12299) {
                        TXCLog.e("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
                    }
                    return false;
                }
                EGL10 egl10 = this.a;
                EGLDisplay eGLDisplay = this.b;
                EGLSurface eGLSurface2 = this.c;
                if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface2, eGLSurface2, this.e)) {
                    a("EGLHelper", "eglMakeCurrent", this.a.eglGetError());
                    return false;
                }
                if (tXCGLSurfaceViewBase != null) {
                    tXCGLSurfaceViewBase.e = true;
                }
                return true;
            } else {
                throw new RuntimeException("mEglConfig not initialized");
            }
        }

        public int c() {
            return e();
        }

        GL d() {
            GL gl = this.e.getGL();
            TXCGLSurfaceViewBase tXCGLSurfaceViewBase = this.f.get();
            if (tXCGLSurfaceViewBase == null) {
                return gl;
            }
            if (tXCGLSurfaceViewBase.m != null) {
                gl = tXCGLSurfaceViewBase.m.a(gl);
            }
            if ((tXCGLSurfaceViewBase.n & 3) == 0) {
                return gl;
            }
            int i = 0;
            l lVar = null;
            if ((tXCGLSurfaceViewBase.n & 1) != 0) {
                i = 1;
            }
            if ((tXCGLSurfaceViewBase.n & 2) != 0) {
                lVar = new l();
            }
            return GLDebugHelper.wrap(gl, i, lVar);
        }

        public int e() {
            if (!this.a.eglSwapBuffers(this.b, this.c)) {
                return this.a.eglGetError();
            }
            return 12288;
        }

        public void f() {
            h();
        }

        private void h() {
            EGLSurface eGLSurface = this.c;
            if (eGLSurface != null && eGLSurface != EGL10.EGL_NO_SURFACE) {
                this.a.eglMakeCurrent(this.b, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
                TXCGLSurfaceViewBase tXCGLSurfaceViewBase = this.f.get();
                if (tXCGLSurfaceViewBase != null) {
                    tXCGLSurfaceViewBase.l.a(this.a, this.b, this.c);
                    tXCGLSurfaceViewBase.e = false;
                }
                this.c = null;
            }
        }

        public void g() {
            if (this.e != null) {
                TXCGLSurfaceViewBase tXCGLSurfaceViewBase = this.f.get();
                if (tXCGLSurfaceViewBase != null) {
                    tXCGLSurfaceViewBase.k.a(this.a, this.b, this.e);
                }
                this.e = null;
            }
            EGLDisplay eGLDisplay = this.b;
            if (eGLDisplay != null) {
                this.a.eglTerminate(eGLDisplay);
                this.b = null;
            }
        }

        private void a(String str) {
            a(str, this.a.eglGetError());
        }

        public static void a(String str, int i) {
            throw new RuntimeException(b(str, i));
        }

        public static void a(String str, String str2, int i) {
            TXCLog.w(str, b(str2, i));
        }

        public static String b(String str, int i) {
            return str + " failed: " + i;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private class b extends a {
        protected int c;
        protected int d;
        protected int e;
        protected int f;
        protected int g;
        protected int h;
        private int[] j = new int[1];

        public b(int i, int i2, int i3, int i4, int i5, int i6) {
            super(new int[]{12324, i, 12323, i2, 12322, i3, 12321, i4, 12325, i5, 12326, i6, 12344});
            this.c = i;
            this.d = i2;
            this.e = i3;
            this.f = i4;
            this.g = i5;
            this.h = i6;
        }

        @Override // com.tencent.liteav.renderer.TXCGLSurfaceViewBase.a
        public EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
            for (EGLConfig eGLConfig : eGLConfigArr) {
                int a = a(egl10, eGLDisplay, eGLConfig, 12325, 0);
                int a2 = a(egl10, eGLDisplay, eGLConfig, 12326, 0);
                if (a >= this.g && a2 >= this.h) {
                    int a3 = a(egl10, eGLDisplay, eGLConfig, 12324, 0);
                    int a4 = a(egl10, eGLDisplay, eGLConfig, 12323, 0);
                    int a5 = a(egl10, eGLDisplay, eGLConfig, 12322, 0);
                    int a6 = a(egl10, eGLDisplay, eGLConfig, 12321, 0);
                    if (a3 == this.c && a4 == this.d && a5 == this.e && a6 == this.f) {
                        return eGLConfig;
                    }
                }
            }
            return null;
        }

        private int a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, int i2) {
            return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i, this.j) ? this.j[0] : i2;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private class m extends b {
        public m(boolean z) {
            super(8, 8, 8, 0, z ? 16 : 0, 0);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private class c implements f {
        private int b;

        private c() {
            this.b = 12440;
        }

        @Override // com.tencent.liteav.renderer.TXCGLSurfaceViewBase.f
        public EGLContext a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            int[] iArr = {this.b, TXCGLSurfaceViewBase.this.o, 12344};
            EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
            if (TXCGLSurfaceViewBase.this.o == 0) {
                iArr = null;
            }
            return egl10.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
        }

        @Override // com.tencent.liteav.renderer.TXCGLSurfaceViewBase.f
        public void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            if (!egl10.eglDestroyContext(eGLDisplay, eGLContext)) {
                TXCLog.e("DefaultContextFactory", "display:" + eGLDisplay + " context: " + eGLContext);
                h.a("eglDestroyContex", egl10.eglGetError());
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static class d implements g {
        private d() {
        }

        @Override // com.tencent.liteav.renderer.TXCGLSurfaceViewBase.g
        public EGLSurface a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj) {
            try {
                return egl10.eglCreateWindowSurface(eGLDisplay, eGLConfig, obj, null);
            } catch (IllegalArgumentException e) {
                TXCLog.e("TXCGLSurfaceViewBase", "eglCreateWindowSurface");
                TXCLog.e("TXCGLSurfaceViewBase", e.toString());
                return null;
            }
        }

        @Override // com.tencent.liteav.renderer.TXCGLSurfaceViewBase.g
        public void a(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface) {
            egl10.eglDestroySurface(eGLDisplay, eGLSurface);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private abstract class a implements e {
        protected int[] a;

        abstract EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr);

        public a(int[] iArr) {
            this.a = a(iArr);
        }

        @Override // com.tencent.liteav.renderer.TXCGLSurfaceViewBase.e
        public EGLConfig a(EGL10 egl10, EGLDisplay eGLDisplay) {
            int[] iArr = new int[1];
            if (egl10.eglChooseConfig(eGLDisplay, this.a, null, 0, iArr)) {
                int i = iArr[0];
                if (i > 0) {
                    EGLConfig[] eGLConfigArr = new EGLConfig[i];
                    if (egl10.eglChooseConfig(eGLDisplay, this.a, eGLConfigArr, i, iArr)) {
                        EGLConfig a = a(egl10, eGLDisplay, eGLConfigArr);
                        if (a != null) {
                            return a;
                        }
                        throw new IllegalArgumentException("No config chosen");
                    }
                    throw new IllegalArgumentException("eglChooseConfig#2 failed");
                }
                throw new IllegalArgumentException("No configs match configSpec");
            }
            throw new IllegalArgumentException("eglChooseConfig failed");
        }

        private int[] a(int[] iArr) {
            if (TXCGLSurfaceViewBase.this.o != 2) {
                return iArr;
            }
            int length = iArr.length;
            int[] iArr2 = new int[length + 2];
            int i = length - 1;
            System.arraycopy(iArr, 0, iArr2, 0, i);
            iArr2[i] = 12352;
            iArr2[length] = 4;
            iArr2[length + 1] = 12344;
            return iArr2;
        }
    }

    public int c() {
        return this.g.a();
    }

    public h getEGLHelper() {
        return this.g.b();
    }
}
