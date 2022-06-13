package com.appinstall.sdk;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;

/* loaded from: classes4.dex */
public abstract class ar extends a {
    private Runnable a = null;
    private final Handler b = new Handler(Looper.getMainLooper());
    private volatile boolean c;
    private volatile boolean d;

    public ar() {
        this.c = false;
        this.d = true;
        this.c = true;
        this.d = false;
    }

    public abstract void a(long j);

    public abstract void b(long j);

    @Override // com.appinstall.sdk.a, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        super.onActivityPaused(activity);
        this.d = true;
        Runnable runnable = this.a;
        if (runnable != null) {
            this.b.removeCallbacks(runnable);
        }
        this.a = new as(this);
        this.b.postDelayed(this.a, 500);
    }

    @Override // com.appinstall.sdk.a, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        super.onActivityResumed(activity);
        boolean z = !this.c;
        this.c = true;
        this.d = false;
        Runnable runnable = this.a;
        if (runnable != null) {
            this.b.removeCallbacks(runnable);
            this.a = null;
        }
        if (z) {
            a(System.currentTimeMillis());
        }
    }
}
