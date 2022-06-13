package com.tencent.liteav.renderer;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.structs.TXSVideoFrame;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.Queue;

/* compiled from: TXCGLRender.java */
/* loaded from: classes2.dex */
public class a extends e implements SurfaceTexture.OnFrameAvailableListener {
    private c A;
    private TXSVideoFrame B;
    private TXCYuvTextureRender C;
    private h F;
    private TXCYuvTextureRender G;
    g a;
    AbstractC0026a b;
    AbstractC0026a c;
    private b v;
    private SurfaceTexture w;
    private c x;
    private boolean y;
    private final int q = 0;
    private final int r = 0;
    private final int s = 0;
    private final int t = 0;
    private Object u = new Object();
    private Object D = null;
    private Object E = new Object();
    private final Queue<Runnable> H = new LinkedList();
    private float[] z = new float[16];

    /* compiled from: TXCGLRender.java */
    /* renamed from: com.tencent.liteav.renderer.a$a */
    /* loaded from: classes2.dex */
    public interface AbstractC0026a {
        void onTextureProcess(int i, int i2, int i3, int i4);
    }

    @Override // com.tencent.liteav.renderer.e, android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void a(g gVar) {
        this.a = gVar;
    }

    public void a(AbstractC0026a aVar) {
        TXCYuvTextureRender tXCYuvTextureRender;
        this.b = aVar;
        if (aVar != null && (tXCYuvTextureRender = this.C) != null) {
            tXCYuvTextureRender.setHasFrameBuffer(this.h, this.i);
        }
    }

    public void b(AbstractC0026a aVar) {
        TXCYuvTextureRender tXCYuvTextureRender;
        this.c = aVar;
        if (aVar != null && (tXCYuvTextureRender = this.C) != null) {
            tXCYuvTextureRender.setHasFrameBuffer(this.h, this.i);
        }
    }

    @Override // com.tencent.liteav.renderer.e
    public void a(TXSVideoFrame tXSVideoFrame, int i, int i2, int i3) {
        synchronized (this) {
            if (this.B != null) {
                this.B.release();
            }
            this.B = tXSVideoFrame;
        }
        super.a(tXSVideoFrame, i, i2, i3);
        synchronized (this.u) {
            if (this.v != null) {
                this.v.c();
            }
        }
    }

    @Override // com.tencent.liteav.renderer.e
    public void a(int i, int i2, int i3, boolean z, int i4) {
        GLES20.glViewport(0, 0, f(), g());
        c cVar = this.A;
        if (cVar != null) {
            cVar.a(i, z, i4);
        }
        super.a(i, i2, i3, z, i4);
        synchronized (this.u) {
            if (this.v != null) {
                this.v.c();
            }
        }
    }

    @Override // com.tencent.liteav.renderer.e
    public SurfaceTexture a() {
        return this.w;
    }

    public Object b() {
        Object a;
        synchronized (this.u) {
            a = this.v != null ? this.v.a() : null;
        }
        return a;
    }

    @Override // com.tencent.liteav.renderer.e
    public void a(SurfaceTexture surfaceTexture) {
        super.a(surfaceTexture);
        TXCLog.w("TXCVideoRender", "play:vrender: create render thread when onSurfaceCreate");
        c((Object) null);
    }

    @Override // com.tencent.liteav.renderer.e
    public void b(SurfaceTexture surfaceTexture) {
        super.b(surfaceTexture);
        TXCLog.w("TXCVideoRender", "play:vrender: quit render thread when onSurfaceRelease");
        d();
    }

    @Override // com.tencent.liteav.renderer.e
    public void a(int i, int i2) {
        super.a(i, i2);
        TXCYuvTextureRender tXCYuvTextureRender = this.C;
        if (tXCYuvTextureRender != null) {
            tXCYuvTextureRender.setVideoSize(i, i2);
        }
        c cVar = this.x;
        if (cVar != null) {
            cVar.a(i, i2);
        }
        SurfaceTexture surfaceTexture = this.w;
        if (surfaceTexture != null) {
            surfaceTexture.setDefaultBufferSize(i, i2);
        }
    }

    public void a(Object obj) {
        synchronized (this.E) {
            this.D = obj;
            TXCLog.w("TXCVideoRender", "play:vrender: TXCGLRender initTextureRender " + this);
            p();
            if (this.e != null) {
                this.e.a(this.f, this.g);
                this.e.b(this.h, this.i);
            }
            if (this.x != null) {
                this.x.b();
                this.w = new SurfaceTexture(this.x.a());
                this.w.setOnFrameAvailableListener(this);
                this.w.setDefaultBufferSize(this.h, this.i);
            }
            if (this.C != null) {
                this.C.createTexture();
            }
            if (!(this.b == null || this.C == null)) {
                this.C.setHasFrameBuffer(this.h, this.i);
            }
            if (this.A != null) {
                this.A.b();
            }
            if (this.o != null) {
                this.o.onSurfaceTextureAvailable(this.w);
            }
        }
    }

    private void p() {
        this.x = new c(true);
        this.C = new TXCYuvTextureRender();
        this.A = new c(false);
    }

    public void b(Object obj) {
        synchronized (this.E) {
            if (this.D != obj) {
                TXCLog.w("TXCVideoRender", "play:vrender: TXCGLRender destroyTextureRender ignore when not the same gl thread " + this);
                return;
            }
            this.D = null;
            TXCLog.w("TXCVideoRender", "play:vrender: TXCGLRender destroyTextureRender " + this);
            try {
                if (this.o != null) {
                    this.o.onSurfaceTextureDestroy(this.w);
                }
            } catch (Exception e) {
                TXCLog.e("TXCVideoRender", "callback failed.", e);
            }
            if (this.x != null) {
                this.x.c();
                this.x = null;
            }
            if (this.C != null) {
                this.C.onSurfaceDestroy();
                this.C = null;
            }
            if (this.A != null) {
                this.A.c();
                this.A = null;
            }
            this.w = null;
            if (this.F != null) {
                this.F.c();
                this.F = null;
            }
            if (this.G != null) {
                this.G.onSurfaceDestroy();
                this.G = null;
            }
        }
    }

    public boolean b(int i, int i2) {
        do {
        } while (a(this.H));
        return e(i, i2);
    }

    public SurfaceTexture c() {
        if (this.d != null) {
            return this.d.getSurfaceTexture();
        }
        return null;
    }

    @Override // com.tencent.liteav.renderer.e
    public void c(Object obj) {
        synchronized (this.u) {
            if (this.v == null) {
                this.v = new b(new WeakReference(this));
                this.v.a(obj);
                this.v.start();
                this.v.c();
                TXCLog.w("TXCVideoRender", "play:vrender: start render thread id " + getID() + ", glContext " + obj + ", " + this);
            } else {
                TXCLog.w("TXCVideoRender", "play:vrender: start render thread when running " + getID() + ", " + this);
            }
        }
    }

    @Override // com.tencent.liteav.renderer.e
    public void d() {
        synchronized (this.u) {
            if (this.v != null) {
                this.v.b();
                this.v.c();
                this.v = null;
                TXCLog.w("TXCVideoRender", "play:vrender: quit render thread id" + getID() + ", " + this);
            }
        }
    }

    private boolean e(int i, int i2) {
        TXSVideoFrame tXSVideoFrame;
        boolean z;
        TXCYuvTextureRender tXCYuvTextureRender;
        int i3;
        c cVar;
        synchronized (this) {
            if (this.y) {
                z = this.y;
                this.y = false;
                tXSVideoFrame = null;
            } else if (this.B == null) {
                return false;
            } else {
                TXSVideoFrame tXSVideoFrame2 = this.B;
                this.B = null;
                tXSVideoFrame = tXSVideoFrame2;
                z = false;
            }
            if (i <= 0 || i2 <= 0) {
                return false;
            }
            GLES20.glViewport(0, 0, i, i2);
            Object b = this.l == 1 ? b() : null;
            AbstractC0026a aVar = this.c;
            if (z) {
                SurfaceTexture surfaceTexture = this.w;
                if (surfaceTexture != null) {
                    surfaceTexture.updateTexImage();
                    this.w.getTransformMatrix(this.z);
                }
                g gVar = this.a;
                if (gVar != null) {
                    c cVar2 = this.x;
                    if (cVar2 != null) {
                        gVar.a(cVar2.a(), this.z);
                    }
                } else if (this.x != null) {
                    GLES20.glBindFramebuffer(36160, 0);
                    this.x.a(this.w);
                }
                if (aVar != null) {
                    int a = this.x.a();
                    if (this.F == null) {
                        this.F = new h(true);
                        this.F.b();
                        this.F.a(true);
                        this.F.b(180);
                        this.F.a(h.a);
                    }
                    this.F.a(this.z);
                    this.F.b(this.h, this.i);
                    this.F.a(this.h, this.i);
                    aVar.onTextureProcess(this.F.d(a), h(), i(), this.k);
                }
                if (this.l == 1 && (cVar = this.x) != null) {
                    a(b, cVar.a(), this.z, true);
                }
            } else if (!(tXSVideoFrame == null || (tXCYuvTextureRender = this.C) == null)) {
                if (this.b != null) {
                    tXCYuvTextureRender.setHasFrameBuffer(this.h, this.i);
                    i3 = this.C.drawToTexture(tXSVideoFrame);
                    this.b.onTextureProcess(i3, h(), i(), this.k);
                } else {
                    if (this.l == 0) {
                        GLES20.glBindFramebuffer(36160, 0);
                        this.C.drawFrame(tXSVideoFrame);
                    }
                    i3 = -1;
                }
                if (this.l == 1) {
                    if (i3 == -1) {
                        this.C.setHasFrameBuffer(this.h, this.i);
                        i3 = this.C.drawToTexture(tXSVideoFrame);
                    }
                    a(b, i3, (float[]) null, false);
                }
                if (aVar != null) {
                    if (this.G == null) {
                        this.G = new TXCYuvTextureRender();
                        this.G.createTexture();
                        this.G.flipVertical(false);
                    }
                    this.G.setHasFrameBuffer(this.h, this.i);
                    aVar.onTextureProcess(this.G.drawToTexture(tXSVideoFrame), h(), i(), this.k);
                }
            }
            return true;
        }
    }

    private boolean a(Queue<Runnable> queue) {
        synchronized (queue) {
            if (queue.isEmpty()) {
                return false;
            }
            Runnable poll = queue.poll();
            if (poll == null) {
                return false;
            }
            poll.run();
            return true;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        synchronized (this) {
            this.y = true;
        }
        synchronized (this.u) {
            if (this.v != null) {
                this.v.c();
            }
        }
    }

    @Override // com.tencent.liteav.basic.module.a, java.lang.Object
    public void finalize() throws Throwable {
        super.finalize();
        TXCLog.w("TXCVideoRender", "play:vrender: quit render thread when finalize");
        try {
            d();
        } catch (Exception e) {
            TXCLog.e("TXCVideoRender", "quit render thread failed.", e);
        }
    }
}
