package com.tencent.liteav.renderer;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.AttributeSet;
import com.tencent.liteav.basic.c.b;
import com.tencent.liteav.basic.e.f;
import com.tencent.liteav.basic.e.g;
import com.tencent.liteav.basic.e.h;
import com.tencent.liteav.basic.e.i;
import com.tencent.liteav.basic.e.j;
import com.tencent.liteav.basic.e.k;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import com.tencent.rtmp.TXLiveConstants;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.Queue;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes2.dex */
public class TXCGLSurfaceView extends TXCGLSurfaceViewBase implements SurfaceTexture.OnFrameAvailableListener, GLSurfaceView.Renderer {
    private k A;
    private int B;
    private int C;
    private boolean D;
    private boolean E;
    private j F;
    private long G;
    private byte[] H;
    private long I;
    private int J;
    private int K;
    private final Queue<Runnable> L;
    WeakReference<b> a;
    private SurfaceTexture g;
    private EGLContext h;
    private f i;
    private int[] j;
    private float[] k;
    private int l;
    private boolean m;
    private float n;
    private float o;
    private int p;
    private long q;
    private long r;
    private int s;
    private boolean t;
    private boolean u;
    private Object v;
    private Handler w;
    private int x;
    private int y;
    private boolean z;

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
    }

    public TXCGLSurfaceView(Context context) {
        super(context);
        this.k = new float[16];
        this.l = 0;
        this.m = false;
        this.n = 1.0f;
        this.o = 1.0f;
        this.p = 20;
        this.q = 0;
        this.r = 0;
        this.s = 12288;
        this.t = true;
        this.u = false;
        this.v = new Object();
        this.x = 0;
        this.y = 0;
        this.z = true;
        this.A = null;
        this.B = 0;
        this.C = 0;
        this.D = true;
        this.E = true;
        this.H = null;
        this.I = 0;
        this.J = 0;
        this.K = 0;
        this.L = new LinkedList();
        setEGLContextClientVersion(2);
        a(8, 8, 8, 8, 16, 0);
        setRenderer(this);
    }

    public TXCGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = new float[16];
        this.l = 0;
        this.m = false;
        this.n = 1.0f;
        this.o = 1.0f;
        this.p = 20;
        this.q = 0;
        this.r = 0;
        this.s = 12288;
        this.t = true;
        this.u = false;
        this.v = new Object();
        this.x = 0;
        this.y = 0;
        this.z = true;
        this.A = null;
        this.B = 0;
        this.C = 0;
        this.D = true;
        this.E = true;
        this.H = null;
        this.I = 0;
        this.J = 0;
        this.K = 0;
        this.L = new LinkedList();
        setEGLContextClientVersion(2);
        a(8, 8, 8, 8, 16, 0);
        setRenderer(this);
    }

    public void setFPS(final int i) {
        TXCLog.i("TXCGLSurfaceView", "TXCGLSurfaceView : setFPS ():" + i);
        a(new Runnable() { // from class: com.tencent.liteav.renderer.TXCGLSurfaceView.1
            @Override // java.lang.Runnable
            public void run() {
                TXCGLSurfaceView.this.p = i;
                if (TXCGLSurfaceView.this.p <= 0) {
                    TXCGLSurfaceView.this.p = 1;
                } else if (TXCGLSurfaceView.this.p > 60) {
                    TXCGLSurfaceView.this.p = 60;
                }
                TXCGLSurfaceView.this.r = 0;
                TXCGLSurfaceView.this.q = 0;
            }
        });
    }

    public void setRendMode(final int i) {
        a(new Runnable() { // from class: com.tencent.liteav.renderer.TXCGLSurfaceView.2
            @Override // java.lang.Runnable
            public void run() {
                TXCGLSurfaceView.this.B = i;
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
                GLES20.glClear(16640);
            }
        });
    }

    public void setRendMirror(final int i) {
        a(new Runnable() { // from class: com.tencent.liteav.renderer.TXCGLSurfaceView.3
            @Override // java.lang.Runnable
            public void run() {
                TXCGLSurfaceView.this.C = i;
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
                GLES20.glClear(16640);
            }
        });
    }

    @Override // com.tencent.liteav.renderer.TXCGLSurfaceViewBase
    protected void a() {
        TXCLog.i("TXCGLSurfaceView", "onSurfaceDestroyed-->enter with mSurfaceTextureListener:" + this.F);
        j jVar = this.F;
        if (jVar != null) {
            jVar.b(this.g);
        }
        SurfaceTexture surfaceTexture = this.g;
        if (surfaceTexture != null) {
            surfaceTexture.release();
            this.g = null;
        }
    }

    @Override // com.tencent.liteav.renderer.TXCGLSurfaceViewBase
    protected void setRunInBackground(boolean z) {
        if (z) {
            synchronized (this) {
                TXCLog.i("TXCGLSurfaceView", "background capture enter background");
                this.c = true;
            }
            return;
        }
        a(new Runnable() { // from class: com.tencent.liteav.renderer.TXCGLSurfaceView.4
            @Override // java.lang.Runnable
            public void run() {
                synchronized (this) {
                    TXCLog.i("TXCGLSurfaceView", "background capture exit background");
                    TXCGLSurfaceView.this.c = false;
                }
            }
        });
    }

    public void setNotifyListener(b bVar) {
        this.a = new WeakReference<>(bVar);
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.g;
    }

    public void setSurfaceTextureListener(j jVar) {
        this.F = jVar;
    }

    public EGLContext getGLContext() {
        return this.h;
    }

    @Override // com.tencent.liteav.renderer.TXCGLSurfaceViewBase
    protected int b() {
        if (this.s != 12288) {
            TXCLog.e("TXCGLSurfaceView", "background capture swapbuffer error : " + this.s);
        }
        return this.s;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tencent.liteav.renderer.TXCGLSurfaceViewBase, android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        Handler handler;
        super.onDetachedFromWindow();
        if (TXCBuild.VersionInt() >= 21 && (handler = this.w) != null) {
            handler.getLooper().quitSafely();
            this.w = null;
        }
    }

    public void a(Runnable runnable) {
        synchronized (this.L) {
            this.L.add(runnable);
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

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        this.h = ((EGL10) EGLContext.getEGL()).eglGetCurrentContext();
        this.j = new int[1];
        this.j[0] = g.a();
        int[] iArr = this.j;
        if (iArr[0] <= 0) {
            this.j = null;
            TXCLog.e("TXCGLSurfaceView", "create oes texture error!! at glsurfaceview");
            return;
        }
        this.g = new SurfaceTexture(iArr[0]);
        e();
        this.i = new f();
        if (this.i.a()) {
            this.i.a(i.e, i.a(h.NORMAL, false, false));
            j jVar = this.F;
            if (jVar != null) {
                jVar.a(this.g);
            }
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        long currentTimeMillis;
        long j;
        boolean z;
        byte[] bArr;
        boolean z2;
        boolean z3;
        int c;
        a(this.L);
        boolean z4 = true;
        boolean z5 = true;
        while (true) {
            currentTimeMillis = System.currentTimeMillis();
            long j2 = this.r;
            if (j2 == 0 || currentTimeMillis < j2) {
                this.r = currentTimeMillis;
            }
            j = this.r;
            if (currentTimeMillis - j >= (this.q * 1000) / ((long) this.p)) {
                break;
            }
            a(15);
            z5 = false;
        }
        if (currentTimeMillis - j > 1000) {
            this.q = 1;
            this.r = System.currentTimeMillis();
            z = true;
        } else {
            z = false;
        }
        if (!this.t) {
            try {
                synchronized (this) {
                    bArr = null;
                    if (!this.u) {
                        z2 = z5;
                        z3 = true;
                    } else {
                        if (this.H != null) {
                            byte[] bArr2 = this.H;
                            this.H = null;
                            if (this.g != null) {
                                this.g.updateTexImage();
                                this.g.getTransformMatrix(this.k);
                            }
                            bArr = bArr2;
                        } else if (this.g != null) {
                            this.g.updateTexImage();
                            this.g.getTransformMatrix(this.k);
                        }
                        if (!z) {
                            this.q++;
                        } else {
                            this.q = 1;
                        }
                        this.u = false;
                        z3 = false;
                        z2 = false;
                    }
                }
                if (true != z3) {
                    long currentTimeMillis2 = System.currentTimeMillis();
                    if (((double) currentTimeMillis2) > ((double) this.I) + 1000.0d) {
                        this.J = ((int) ((((double) this.K) * 1000.0d) / ((double) (currentTimeMillis2 - this.I)))) + 1;
                        this.I = currentTimeMillis2;
                        this.K = 0;
                    }
                    this.K++;
                    if (this.F != null) {
                        if (bArr != null) {
                            this.F.a(bArr, this.k);
                        } else {
                            this.F.a(this.j[0], this.k);
                        }
                    }
                    synchronized (this) {
                        if (this.c) {
                            z4 = false;
                        }
                    }
                    if (z4 && (c = c()) != 12288 && System.currentTimeMillis() - this.G > 2000) {
                        TXCLog.w("TXCGLSurfaceView", "background capture swapBuffer error : " + c);
                        this.G = System.currentTimeMillis();
                        Bundle bundle = new Bundle();
                        bundle.putInt("EVT_PARAM1", c);
                        bundle.putInt("EVT_ID", 2110);
                        bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
                        bundle.putLong(TXLiveConstants.EVT_UTC_TIME, TXCTimeUtil.getUtcTimeTick());
                        bundle.putCharSequence(TXLiveConstants.EVT_DESCRIPTION, "Failed to render video");
                        com.tencent.liteav.basic.util.h.a(this.a, 2110, bundle);
                    }
                } else if (true == z2) {
                    a(5);
                }
            } catch (Exception e) {
                TXCLog.e("TXCGLSurfaceView", "onDrawFrame failed", e);
            }
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.t = false;
        synchronized (this) {
            this.u = true;
        }
    }

    private void a(long j) {
        try {
            Thread.sleep(j);
        } catch (Exception unused) {
        }
    }

    private void e() {
        if (!this.E) {
            SurfaceTexture surfaceTexture = this.g;
            if (surfaceTexture != null) {
                surfaceTexture.setOnFrameAvailableListener(null);
            }
        } else if (this.g == null) {
        } else {
            if (TXCBuild.VersionInt() >= 21) {
                if (this.w == null) {
                    HandlerThread handlerThread = new HandlerThread("VideoCaptureThread");
                    handlerThread.start();
                    this.w = new Handler(handlerThread.getLooper());
                }
                this.g.setOnFrameAvailableListener(this, this.w);
                return;
            }
            this.g.setOnFrameAvailableListener(this);
        }
    }
}
