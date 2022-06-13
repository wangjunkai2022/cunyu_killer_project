package com.tencent.liteav.renderer;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import com.tencent.liteav.basic.e.a;
import com.tencent.liteav.basic.e.g;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.e;
import java.lang.ref.WeakReference;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import javax.microedition.khronos.egl.EGLContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCGLRenderThread.java */
/* loaded from: classes5.dex */
public class b extends Thread {
    private WeakReference<a> a;
    private volatile boolean b = false;
    private int c = 1280;
    private int d = 720;
    private final Semaphore e = new Semaphore(0);
    private com.tencent.liteav.basic.e.b f = null;
    private a g = null;
    private Object h = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(WeakReference<a> weakReference) {
        this.a = weakReference;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        setName("VRender-" + getId());
        try {
            this.b = true;
            k();
            g();
            i();
            while (this.b) {
                e f = f();
                if (a(f.a, f.b)) {
                    a aVar = this.a == null ? null : this.a.get();
                    if (!(aVar == null || aVar.c() == null)) {
                        d();
                    }
                }
                while (this.b && !this.e.tryAcquire(500, TimeUnit.MILLISECONDS)) {
                }
            }
            j();
            h();
            l();
        } catch (Exception e) {
            TXCLog.e("TXCVideoRenderThread", "render failed.", e);
        }
    }

    private e f() {
        a aVar = this.g;
        if (aVar != null) {
            return aVar.f();
        }
        com.tencent.liteav.basic.e.b bVar = this.f;
        if (bVar != null) {
            return bVar.c();
        }
        g.a("getSurfaceSize");
        return new e(0, 0);
    }

    public void a(Object obj) {
        this.h = obj;
    }

    public Object a() {
        a aVar = this.g;
        if (aVar != null) {
            return aVar.d();
        }
        com.tencent.liteav.basic.e.b bVar = this.f;
        if (bVar != null) {
            return bVar.f();
        }
        return null;
    }

    public void b() {
        this.b = false;
        c();
    }

    public void c() {
        this.e.release();
    }

    public void d() {
        a aVar = this.g;
        if (aVar != null) {
            aVar.a();
        }
        com.tencent.liteav.basic.e.b bVar = this.f;
        if (bVar != null) {
            bVar.e();
        }
    }

    public void e() {
        a aVar = this.g;
        if (aVar != null) {
            aVar.b();
        }
        com.tencent.liteav.basic.e.b bVar = this.f;
        if (bVar != null) {
            bVar.b();
        }
    }

    private void g() {
        try {
            a aVar = this.a.get();
            if (aVar != null) {
                aVar.a(this);
            }
        } catch (Exception e) {
            TXCLog.e("TXCVideoRenderThread", "init texture render failed.", e);
        }
    }

    private void h() {
        try {
            a aVar = this.a.get();
            if (aVar != null) {
                aVar.b(this);
            }
        } catch (Exception e) {
            TXCLog.e("TXCVideoRenderThread", "destroy texture render failed", e);
        }
    }

    private boolean a(int i, int i2) {
        a aVar;
        try {
            if (this.a == null || (aVar = this.a.get()) == null) {
                return false;
            }
            return aVar.b(i, i2);
        } catch (Exception e) {
            TXCLog.e("TXCVideoRenderThread", "drawFrame failed." + e.getMessage());
            return false;
        }
    }

    private void i() {
        a aVar;
        WeakReference<a> weakReference = this.a;
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            aVar.j();
        }
    }

    private void j() {
        a aVar;
        WeakReference<a> weakReference = this.a;
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            aVar.k();
        }
    }

    private void k() {
        a aVar = this.a.get();
        if (aVar != null) {
            SurfaceTexture c = aVar.c();
            Surface surface = c != null ? new Surface(c) : null;
            Object obj = this.h;
            if (obj == null || (obj instanceof EGLContext)) {
                this.g = a.a(null, (EGLContext) this.h, surface, this.c, this.d);
            } else {
                this.f = com.tencent.liteav.basic.e.b.a(null, (android.opengl.EGLContext) obj, surface, this.c, this.d);
            }
            TXCLog.w("TXCVideoRenderThread", "vrender: init egl share context " + this.h + ", create context" + a());
            e();
        }
    }

    private void l() {
        TXCLog.w("TXCVideoRenderThread", "vrender: uninit egl " + a());
        a aVar = this.g;
        if (aVar != null) {
            aVar.c();
            this.g = null;
        }
        com.tencent.liteav.basic.e.b bVar = this.f;
        if (bVar != null) {
            bVar.d();
            this.f = null;
        }
    }
}
