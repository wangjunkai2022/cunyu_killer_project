package com.google.android.gms.dynamic;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;

/* loaded from: classes2.dex */
final class zab implements DeferredLifecycleHelper.zaa {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ DeferredLifecycleHelper zari;
    private final /* synthetic */ Bundle zarj;
    private final /* synthetic */ Bundle zark;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zab(DeferredLifecycleHelper deferredLifecycleHelper, Activity activity, Bundle bundle, Bundle bundle2) {
        this.zari = deferredLifecycleHelper;
        this.val$activity = activity;
        this.zarj = bundle;
        this.zark = bundle2;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.zaa
    public final int getState() {
        return 0;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.zaa
    public final void zaa(LifecycleDelegate lifecycleDelegate) {
        this.zari.zare.onInflate(this.val$activity, this.zarj, this.zark);
    }
}
