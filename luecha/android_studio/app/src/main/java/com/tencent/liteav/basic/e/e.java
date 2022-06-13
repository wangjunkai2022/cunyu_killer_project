package com.tencent.liteav.basic.e;

import android.opengl.EGLContext;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;
import com.tencent.liteav.basic.util.f;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCGLThreadHandler.java */
/* loaded from: classes5.dex */
public class e extends f {
    public int a = 720;
    public int b = 1280;
    public Surface c = null;
    private a i = null;
    public boolean d = false;
    public b e = null;
    public EGLContext f = null;
    public a g = null;
    public javax.microedition.khronos.egl.EGLContext h = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: TXCGLThreadHandler.java */
    /* loaded from: classes5.dex */
    public interface a {
        void c();

        void d();

        void e();
    }

    public static void a(final Handler handler, final HandlerThread handlerThread) {
        if (handler != null && handlerThread != null) {
            Message message = new Message();
            message.what = 101;
            message.obj = new Runnable() { // from class: com.tencent.liteav.basic.e.e.1
                @Override // java.lang.Runnable
                public void run() {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.liteav.basic.e.e.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (handler != null) {
                                handler.removeCallbacksAndMessages(null);
                            }
                            if (handlerThread == null) {
                                return;
                            }
                            if (TXCBuild.VersionInt() >= 18) {
                                handlerThread.quitSafely();
                            } else {
                                handlerThread.quit();
                            }
                        }
                    });
                }
            };
            handler.sendMessage(message);
        }
    }

    public e(Looper looper) {
        super(looper);
    }

    public void a(a aVar) {
        this.i = aVar;
    }

    public Surface a() {
        return this.c;
    }

    public void b() {
        a aVar = this.g;
        if (aVar != null) {
            aVar.a();
        }
        b bVar = this.e;
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message != null) {
            switch (message.what) {
                case 100:
                    a(message);
                    break;
                case 101:
                    b(message);
                    break;
                case 102:
                    c(message);
                    break;
            }
            if (message != null && message.obj != null) {
                ((Runnable) message.obj).run();
            }
        }
    }

    private void a(Message message) {
        try {
            c();
        } catch (Exception unused) {
            TXCLog.e("TXGLThreadHandler", "surface-render: init egl context exception " + this.c);
            this.c = null;
        }
    }

    private void b(Message message) {
        d();
    }

    private void c(Message message) {
        try {
            if (this.i != null) {
                this.i.d();
            }
        } catch (Exception e) {
            TXCLog.e("TXGLThreadHandler", "onMsgRend Exception " + e.getMessage());
        }
    }

    private boolean c() {
        TXCLog.i("TXGLThreadHandler", String.format("init egl size[%d/%d]", Integer.valueOf(this.a), Integer.valueOf(this.b)));
        if (!this.d) {
            this.g = a.a(null, this.h, this.c, this.a, this.b);
        } else {
            this.e = b.a(null, this.f, this.c, this.a, this.b);
        }
        if (this.g == null && this.e == null) {
            return false;
        }
        TXCLog.w("TXGLThreadHandler", "surface-render: create egl context " + this.c);
        a aVar = this.i;
        if (aVar != null) {
            aVar.c();
        }
        return true;
    }

    private void d() {
        TXCLog.w("TXGLThreadHandler", "surface-render: destroy egl context " + this.c);
        this.d = false;
        a aVar = this.i;
        if (aVar != null) {
            aVar.e();
        }
        a aVar2 = this.g;
        if (aVar2 != null) {
            aVar2.c();
            this.g = null;
        }
        b bVar = this.e;
        if (bVar != null) {
            bVar.d();
            this.e = null;
        }
        this.c = null;
    }
}
