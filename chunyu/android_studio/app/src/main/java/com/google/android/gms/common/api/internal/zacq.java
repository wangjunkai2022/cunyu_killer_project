package com.google.android.gms.common.api.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class zacq implements zacs {
    private final /* synthetic */ zacp zala;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zacq(zacp zacp) {
        this.zala = zacp;
    }

    @Override // com.google.android.gms.common.api.internal.zacs
    public final void zac(BasePendingResult<?> basePendingResult) {
        this.zala.zaky.remove(basePendingResult);
    }
}
