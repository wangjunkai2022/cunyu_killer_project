package com.appinstall.sdk;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class bi {
    private static bi b;
    private final boolean c;
    private bm d;
    private Handler e;
    private Application h;
    private Application.ActivityLifecycleCallbacks i;
    private final cg a = cg.a("CU");
    private boolean f = true;
    private WeakReference g = null;
    private final Runnable j = new bk(this);

    private bi(Context context) {
        this.c = ch.c(context);
        if (this.c) {
            this.d = new bm(context);
            HandlerThread handlerThread = new HandlerThread("ClearHandler");
            handlerThread.start();
            this.e = new Handler(handlerThread.getLooper());
            this.h = (Application) context.getApplicationContext();
            this.i = new bj(this);
            this.h.registerActivityLifecycleCallbacks(this.i);
        } else if (cf.a) {
            cf.a("pb disabled", new Object[0]);
        }
    }

    public static bi a(Context context) {
        if (b == null) {
            synchronized (bi.class) {
                if (b == null) {
                    b = new bi(context);
                }
            }
        }
        return b;
    }

    public bl a() {
        return b(false);
    }

    public void a(String str) {
        if (this.f) {
            if (cf.a) {
                cf.a("%s access", str);
            }
            this.d.a();
        }
    }

    public void a(String str, int i) {
        if (this.f) {
            if (cf.a) {
                cf.a("%s release", str);
            }
            this.d.a(i);
        }
    }

    public void a(WeakReference weakReference) {
        if (weakReference != null) {
            this.d.a(weakReference);
        }
    }

    public void a(boolean z) {
        this.f = z;
    }

    public bl b(boolean z) {
        if (!this.c) {
            return null;
        }
        try {
            bl a = this.d.a(z);
            try {
                if (a != null) {
                    if (cf.a) {
                        cf.a("data type is %d", Integer.valueOf(a.c()));
                    }
                    if (!(this.h == null || this.i == null)) {
                        this.h.unregisterActivityLifecycleCallbacks(this.i);
                        this.i = null;
                    }
                    this.e.postDelayed(new bh(this.d, a), 500);
                    return a;
                } else if (!cf.a) {
                    return a;
                } else {
                    cf.a("data is null", new Object[0]);
                    return a;
                }
            } catch (Exception unused) {
                return a;
            }
        } catch (Exception unused2) {
            return null;
        }
    }
}
