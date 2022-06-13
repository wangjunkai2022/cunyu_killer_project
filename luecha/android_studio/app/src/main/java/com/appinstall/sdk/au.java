package com.appinstall.sdk;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
public class au {
    private final LinkedBlockingQueue a = new LinkedBlockingQueue(1);
    private final cg b = cg.a("ECl");
    private volatile boolean c = true;
    private final Thread d = new Thread(new av(this));
    private final Application e;
    private Application.ActivityLifecycleCallbacks f;
    private final aj g;

    public au(Context context, aj ajVar) {
        this.e = (Application) context.getApplicationContext();
        this.d.setName("EVENT-L");
        this.g = ajVar;
        b();
    }

    private void b() {
        this.c = true;
        this.d.start();
        c();
    }

    private void c() {
        this.f = new aw(this);
        this.e.registerActivityLifecycleCallbacks(this.f);
    }

    public void a() {
        aq a = aq.a();
        a.a(true);
        this.g.a(a);
    }

    public void a(long j) {
        if (j >= 1) {
            this.g.a(aq.a(j));
        }
    }

    public void a(String str, long j) {
        if (!TextUtils.isEmpty(str)) {
            this.g.a(aq.a(str, j));
        }
    }
}
