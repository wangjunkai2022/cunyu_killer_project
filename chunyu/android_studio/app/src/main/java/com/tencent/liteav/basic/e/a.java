package com.tencent.liteav.basic.e;

import android.view.Surface;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.e;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* compiled from: EGL10Helper.java */
/* loaded from: classes2.dex */
public class a {
    public static final String a = a.class.getSimpleName();
    private static int[] l = {12339, 1, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12352, 4, 12344};
    private static int[] m = {12339, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12352, 4, 12610, 1, 12344};
    private EGL10 b;
    private EGLDisplay c;
    private EGLConfig d;
    private boolean e;
    private EGLContext f;
    private boolean g;
    private EGLSurface h;
    private int i = 0;
    private int j = 0;
    private int[] k = new int[2];

    private a() {
    }

    public static a a(EGLConfig eGLConfig, EGLContext eGLContext, Surface surface, int i, int i2) {
        a aVar = new a();
        aVar.i = i;
        aVar.j = i2;
        if (aVar.a(eGLConfig, eGLContext, surface)) {
            return aVar;
        }
        return null;
    }

    public boolean a() {
        boolean eglSwapBuffers = this.b.eglSwapBuffers(this.c, this.h);
        e();
        return eglSwapBuffers;
    }

    public void b() {
        EGL10 egl10 = this.b;
        EGLDisplay eGLDisplay = this.c;
        EGLSurface eGLSurface = this.h;
        egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.f);
        e();
    }

    public void c() {
        this.b.eglMakeCurrent(this.c, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
        EGLSurface eGLSurface = this.h;
        if (eGLSurface != null) {
            this.b.eglDestroySurface(this.c, eGLSurface);
        }
        EGLContext eGLContext = this.f;
        if (eGLContext != null) {
            this.b.eglDestroyContext(this.c, eGLContext);
        }
        this.b.eglTerminate(this.c);
        e();
        this.c = null;
        this.h = null;
        this.c = null;
    }

    private boolean a(EGLConfig eGLConfig, EGLContext eGLContext, Surface surface) {
        this.b = (EGL10) EGLContext.getEGL();
        this.c = this.b.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.b.eglInitialize(this.c, this.k);
        if (eGLConfig == null) {
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            this.b.eglChooseConfig(this.c, surface == null ? l : m, eGLConfigArr, 1, new int[1]);
            this.d = eGLConfigArr[0];
            this.e = true;
        } else {
            this.d = eGLConfig;
        }
        if (eGLContext != null) {
            this.g = true;
        }
        try {
            this.f = a(this.c, this.d, 2, eGLContext);
        } catch (c unused) {
            TXCLog.i(a, "failed to create EGLContext of OpenGL ES 2.0, try 3.0");
            try {
                this.f = a(this.c, this.d, 3, eGLContext);
            } catch (c e) {
                String str = a;
                TXCLog.e(str, "failed to create EGLContext of 3.0. " + e);
                return false;
            }
        }
        int[] iArr = {12375, this.i, 12374, this.j, 12344};
        if (surface == null) {
            this.h = this.b.eglCreatePbufferSurface(this.c, this.d, iArr);
        } else {
            this.h = this.b.eglCreateWindowSurface(this.c, this.d, surface, null);
        }
        if (this.h == EGL10.EGL_NO_SURFACE) {
            e();
            return false;
        }
        EGL10 egl10 = this.b;
        EGLDisplay eGLDisplay = this.c;
        EGLSurface eGLSurface = this.h;
        if (egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.f)) {
            return true;
        }
        e();
        return false;
    }

    public EGLContext d() {
        return this.f;
    }

    public void e() {
        int eglGetError = this.b.eglGetError();
        if (eglGetError != 12288) {
            String str = a;
            TXCLog.e(str, "EGL error: 0x" + Integer.toHexString(eglGetError));
        }
    }

    public e f() {
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        boolean eglQuerySurface = this.b.eglQuerySurface(this.c, this.h, 12375, iArr);
        boolean eglQuerySurface2 = this.b.eglQuerySurface(this.c, this.h, 12374, iArr2);
        if (!eglQuerySurface || !eglQuerySurface2) {
            return new e(0, 0);
        }
        return new e(iArr[0], iArr2[0]);
    }

    private EGLContext a(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, EGLContext eGLContext) throws c {
        int[] iArr = {12440, i, 12344};
        if (eGLContext == null) {
            eGLContext = EGL10.EGL_NO_CONTEXT;
        }
        EGLContext eglCreateContext = this.b.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
        g();
        return eglCreateContext;
    }

    private void g() throws c {
        int eglGetError = this.b.eglGetError();
        EGL10 egl10 = this.b;
        if (eglGetError != 12288) {
            throw new c(eglGetError);
        }
    }
}
