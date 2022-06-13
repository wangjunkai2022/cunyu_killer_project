package com.google.android.gms.dynamic;

import android.os.Bundle;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;

/* loaded from: classes2.dex */
final class zac implements DeferredLifecycleHelper.zaa {
    private final /* synthetic */ DeferredLifecycleHelper zari;
    private final /* synthetic */ Bundle zark;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zac(DeferredLifecycleHelper deferredLifecycleHelper, Bundle bundle) {
        this.zari = deferredLifecycleHelper;
        this.zark = bundle;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.zaa
    public final int getState() {
        return 1;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.zaa
    public final void zaa(LifecycleDelegate lifecycleDelegate) {
        DeferredLifecycleHelper.zab(this.zari).onCreate(this.zark);
    }
}
