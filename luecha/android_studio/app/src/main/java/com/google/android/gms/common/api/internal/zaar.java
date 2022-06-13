package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zac;
import com.google.android.gms.signin.internal.zaj;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
final class zaar extends zac {
    private final WeakReference<zaak> zagj;

    public zaar(zaak zaak) {
        this.zagj = new WeakReference<>(zaak);
    }

    @Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zad
    public final void zab(zaj zaj) {
        zaak zaak = this.zagj.get();
        if (zaak != null) {
            zaak.zafs.zaa(new zaas(this, zaak, zaak, zaj));
        }
    }
}
