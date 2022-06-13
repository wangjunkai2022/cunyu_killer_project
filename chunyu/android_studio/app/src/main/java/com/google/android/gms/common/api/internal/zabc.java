package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class zabc extends zabr {
    private WeakReference<zaaw> zahl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabc(zaaw zaaw) {
        this.zahl = new WeakReference<>(zaaw);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void zas() {
        zaaw zaaw = this.zahl.get();
        if (zaaw != null) {
            zaaw.resume();
        }
    }
}
