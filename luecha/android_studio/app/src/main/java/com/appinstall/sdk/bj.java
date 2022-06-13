package com.appinstall.sdk;

import android.app.Activity;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class bj extends a {
    final /* synthetic */ bi a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bj(bi biVar) {
        this.a = biVar;
    }

    @Override // com.appinstall.sdk.a, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        activity.getWindow().getDecorView().post(this.a.j);
        this.a.g = new WeakReference(activity);
        bi biVar = this.a;
        biVar.a(biVar.g);
    }
}
