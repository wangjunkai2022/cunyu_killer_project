package com.google.android.gms.dynamic;

import com.google.android.gms.dynamic.DeferredLifecycleHelper;

/* loaded from: classes2.dex */
final class zag implements DeferredLifecycleHelper.zaa {
    private final /* synthetic */ DeferredLifecycleHelper zari;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zag(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.zari = deferredLifecycleHelper;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.zaa
    public final int getState() {
        return 5;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.zaa
    public final void zaa(LifecycleDelegate lifecycleDelegate) {
        this.zari.zare.onResume();
    }
}
