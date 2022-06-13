package com.tencent.thumbplayer.h.e.a;

import android.graphics.SurfaceTexture;
import android.util.Log;
import android.view.Surface;
import com.tencent.thumbplayer.h.c.b;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* loaded from: classes2.dex */
public class a implements SurfaceTexture.OnFrameAvailableListener {
    EGL10 a;
    EGLDisplay b;
    EGLContext c;
    EGLSurface d;
    b e;
    Surface f;
    Object g = new Object();
    boolean h;
    b i;

    public a() {
        a();
    }

    public a(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        }
        a(i, i2);
        c();
        a();
    }

    void a() {
        this.i = new b();
        this.i.b();
        this.e = new b(this.i.a());
        this.e.a(new b.a() { // from class: com.tencent.thumbplayer.h.e.a.a.1
            @Override // com.tencent.thumbplayer.h.c.b.a
            public void a() {
                com.tencent.thumbplayer.h.h.b.b("OutputSurface", "mSurfaceTexture:" + a.this.e + " onReleased, release OutputSurface");
                a.this.b();
            }
        });
        this.e.setOnFrameAvailableListener(this);
        this.f = new com.tencent.thumbplayer.h.c.a(this.e);
    }

    void a(int i, int i2) {
        this.a = (EGL10) EGLContext.getEGL();
        this.b = this.a.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        if (this.a.eglInitialize(this.b, null)) {
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            if (this.a.eglChooseConfig(this.b, new int[]{12324, 8, 12323, 8, 12322, 8, 12339, 1, 12352, 4, 12344}, eGLConfigArr, 1, new int[1])) {
                this.c = this.a.eglCreateContext(this.b, eGLConfigArr[0], EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
                a("eglCreateContext");
                if (this.c != null) {
                    this.d = this.a.eglCreatePbufferSurface(this.b, eGLConfigArr[0], new int[]{12375, i, 12374, i2, 12344});
                    a("eglCreatePbufferSurface");
                    if (this.d == null) {
                        throw new RuntimeException("surface was null");
                    }
                    return;
                }
                throw new RuntimeException("null context");
            }
            throw new RuntimeException("unable to find RGB888+pbuffer EGL config");
        }
        throw new RuntimeException("unable to initialize EGL10");
    }

    void a(String str) {
        boolean z = false;
        while (true) {
            int eglGetError = this.a.eglGetError();
            if (eglGetError == 12288) {
                break;
            }
            Log.e("OutputSurface", str + ": EGL error: 0x" + Integer.toHexString(eglGetError));
            z = true;
        }
        if (z) {
            throw new RuntimeException("EGL error encountered (see log)");
        }
    }

    public void b() {
        EGL10 egl10 = this.a;
        if (egl10 != null) {
            if (egl10.eglGetCurrentContext().equals(this.c)) {
                this.a.eglMakeCurrent(this.b, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
            }
            this.a.eglDestroySurface(this.b, this.d);
            this.a.eglDestroyContext(this.b, this.c);
        }
        this.f.release();
        this.b = null;
        this.c = null;
        this.d = null;
        this.a = null;
        this.i = null;
        this.f = null;
        this.e = null;
    }

    public void c() {
        if (this.a != null) {
            a("before makeCurrent");
            EGL10 egl10 = this.a;
            EGLDisplay eGLDisplay = this.b;
            EGLSurface eGLSurface = this.d;
            if (!egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.c)) {
                throw new RuntimeException("eglMakeCurrent failed");
            }
            return;
        }
        throw new RuntimeException("not configured for makeCurrent");
    }

    public Surface d() {
        return this.f;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this.g) {
            if (!this.h) {
                this.h = true;
                this.g.notifyAll();
            } else {
                throw new RuntimeException("mFrameAvailable already set, frame could be dropped");
            }
        }
    }
}
