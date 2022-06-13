package com.appinstall.sdk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.HandlerThread;
import com.appinstall.api.Configuration;
import com.appinstall.api.listener.AppInstallListener;
import com.appinstall.api.listener.AppWakeUpListener;
import com.appinstall.api.listener.GetUpdateApkListener;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class b {
    private static volatile b b;
    private final cg a = cg.a("ab");
    private final Context c;
    private final m d;
    private final aj e;
    private final au f;
    private final f g;
    private final String h;

    private b(Context context, String str, Configuration configuration) {
        this.c = context;
        this.h = str;
        d dVar = new d();
        g gVar = new g();
        this.g = new f(new h().a(context, "FM_config", null));
        HandlerThread handlerThread = new HandlerThread("CoreHandler");
        handlerThread.start();
        this.d = new m(context, handlerThread.getLooper(), dVar, this.g, this.h, gVar, configuration);
        HandlerThread handlerThread2 = new HandlerThread("EventHandler");
        handlerThread2.start();
        this.e = new aj(context, handlerThread2.getLooper(), dVar, this.g, this.h, gVar, configuration);
        this.f = new au(context, this.e);
    }

    public static b a(Context context, String str, Configuration configuration) {
        if (b == null) {
            synchronized (b.class) {
                if (b == null) {
                    b = new b(context, str, configuration);
                }
            }
        }
        return b;
    }

    private void a(Uri uri, AppWakeUpListener appWakeUpListener) {
        if (cf.a) {
            cf.a("decodeWakeUp", new Object[0]);
        }
        this.d.a(uri, appWakeUpListener);
    }

    public void a() {
        if (cf.a) {
            cf.a("reportRegister", new Object[0]);
        }
        this.f.a();
    }

    public void a(Intent intent, AppWakeUpListener appWakeUpListener) {
        a(intent.getData(), appWakeUpListener);
    }

    public void a(AppWakeUpListener appWakeUpListener) {
        a((Uri) null, appWakeUpListener);
    }

    public void a(GetUpdateApkListener getUpdateApkListener) {
        if (cf.a) {
            cf.a("getOriginalApk", new Object[0]);
        }
        this.d.a(getUpdateApkListener);
    }

    public void a(Boolean bool, int i, AppInstallListener appInstallListener) {
        if (cf.a) {
            cf.a("getInstallData", new Object[0]);
        }
        this.d.a(bool, i, appInstallListener);
    }

    public void a(String str, long j) {
        if (cf.a) {
            cf.a("reportEffectPoint", new Object[0]);
        }
        this.f.a(str, j);
    }

    public void a(boolean z, WeakReference weakReference) {
        bl blVar;
        this.d.b(z);
        this.e.b(z);
        System.currentTimeMillis();
        e a = this.g.a(this.h);
        if (a == e.a || a == e.c || a == e.e) {
            bi a2 = bi.a(this.c);
            a2.a(weakReference);
            blVar = a2.a();
            System.currentTimeMillis();
        } else {
            blVar = null;
        }
        this.d.a(blVar);
    }
}
