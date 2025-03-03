package com.tencent.liteav.basic.e;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.util.Log;
import android.view.Surface;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.e;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: EGL14Helper.java */
/* loaded from: classes5.dex */
public class b {
    private static int a = 2;
    private static final String b = b.class.getSimpleName();
    private static int[] k;
    private static int[] l;
    private boolean h;
    private EGLSurface i;
    private EGLDisplay c = EGL14.EGL_NO_DISPLAY;
    private EGLContext d = EGL14.EGL_NO_CONTEXT;
    private EGLConfig e = null;
    private int f = 0;
    private int g = 0;
    private int j = -1;

    public static b a(EGLConfig eGLConfig, EGLContext eGLContext, Surface surface, int i, int i2) {
        b bVar = new b();
        bVar.f = i;
        bVar.g = i2;
        if (bVar.a(eGLConfig, eGLContext, surface)) {
            return bVar;
        }
        return null;
    }

    public void a() {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError != 12288) {
            String str = b;
            TXCLog.e(str, "EGL error:" + eglGetError);
        }
    }

    public void b() {
        if (this.c == EGL14.EGL_NO_DISPLAY) {
            Log.d(b, "NOTE: makeCurrent w/o display");
        }
        EGLDisplay eGLDisplay = this.c;
        EGLSurface eGLSurface = this.i;
        if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.d)) {
            TXCLog.e(b, "eglMakeCurrent failed");
        }
    }

    public e c() {
        int[] iArr = new int[2];
        boolean eglQuerySurface = EGL14.eglQuerySurface(this.c, this.i, 12375, iArr, 0);
        boolean eglQuerySurface2 = EGL14.eglQuerySurface(this.c, this.i, 12374, iArr, 1);
        if (!eglQuerySurface || !eglQuerySurface2) {
            return new e(0, 0);
        }
        return new e(iArr[0], iArr[1]);
    }

    public void d() {
        if (this.c != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglMakeCurrent(this.c, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroySurface(this.c, this.i);
            EGL14.eglDestroyContext(this.c, this.d);
            this.d = EGL14.EGL_NO_CONTEXT;
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.c);
        }
        this.c = EGL14.EGL_NO_DISPLAY;
    }

    public boolean e() {
        return EGL14.eglSwapBuffers(this.c, this.i);
    }

    private boolean a(EGLConfig eGLConfig, EGLContext eGLContext, Surface surface) {
        EGLContext eGLContext2;
        this.c = EGL14.eglGetDisplay(0);
        if (this.c == EGL14.EGL_NO_DISPLAY) {
            TXCLog.e(b, "unable to get EGL14 display");
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(this.c, iArr, 0, iArr, 1)) {
            this.c = null;
            TXCLog.e(b, "unable to initialize EGL14");
        }
        if (eGLConfig != null) {
            this.e = eGLConfig;
        } else {
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            if (!EGL14.eglChooseConfig(this.c, surface == null ? l : k, 0, eGLConfigArr, 0, eGLConfigArr.length, new int[1], 0)) {
                return false;
            }
            this.e = eGLConfigArr[0];
        }
        if (eGLContext != null) {
            this.h = true;
            eGLContext2 = eGLContext;
        } else {
            eGLContext2 = EGL14.EGL_NO_CONTEXT;
        }
        try {
            this.d = a(this.c, this.e, 2, eGLContext2);
        } catch (c unused) {
            TXCLog.i(b, "failed to create EGLContext of OpenGL ES 2.0, try 3.0");
            try {
                this.d = a(this.c, this.e, 3, eGLContext2);
            } catch (c e) {
                String str = b;
                TXCLog.e(str, "failed to create EGLContext of 3.0. " + e);
                return false;
            }
        }
        int[] iArr2 = {12344};
        if (surface == null) {
            this.i = EGL14.eglCreatePbufferSurface(this.c, this.e, new int[]{12375, this.f, 12374, this.g, 12344}, 0);
        } else {
            this.i = EGL14.eglCreateWindowSurface(this.c, this.e, surface, iArr2, 0);
        }
        a();
        EGLDisplay eGLDisplay = this.c;
        EGLSurface eGLSurface = this.i;
        if (EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.d)) {
            return true;
        }
        a();
        return false;
    }

    private static EGLContext a(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i, EGLContext eGLContext) throws c {
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, new int[]{12440, i, 12344}, 0);
        g();
        return eglCreateContext;
    }

    private static void g() throws c {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError != 12288) {
            throw new c(eglGetError);
        }
    }

    public void a(long j) {
        EGLExt.eglPresentationTimeANDROID(this.c, this.i, j);
    }

    public EGLContext f() {
        return this.d;
    }

    static {
        int[] iArr = new int[17];
        iArr[0] = 12324;
        iArr[1] = 8;
        iArr[2] = 12323;
        iArr[3] = 8;
        int i = 4;
        iArr[4] = 12322;
        iArr[5] = 8;
        iArr[6] = 12321;
        iArr[7] = 8;
        iArr[8] = 12325;
        iArr[9] = 0;
        iArr[10] = 12326;
        iArr[11] = 0;
        iArr[12] = 12352;
        iArr[13] = a == 2 ? 4 : 68;
        iArr[14] = 12610;
        iArr[15] = 1;
        iArr[16] = 12344;
        k = iArr;
        int[] iArr2 = new int[19];
        iArr2[0] = 12339;
        iArr2[1] = 1;
        iArr2[2] = 12324;
        iArr2[3] = 8;
        iArr2[4] = 12323;
        iArr2[5] = 8;
        iArr2[6] = 12322;
        iArr2[7] = 8;
        iArr2[8] = 12321;
        iArr2[9] = 8;
        iArr2[10] = 12325;
        iArr2[11] = 0;
        iArr2[12] = 12326;
        iArr2[13] = 0;
        iArr2[14] = 12352;
        if (a != 2) {
            i = 68;
        }
        iArr2[15] = i;
        iArr2[16] = 12610;
        iArr2[17] = 1;
        iArr2[18] = 12344;
        l = iArr2;
    }
}
