package com.google.android.gms.internal.location;

import android.os.DeadObjectException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class zzl implements zzbj<zzao> {
    private final /* synthetic */ zzk zzcc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(zzk zzk) {
        this.zzcc = zzk;
    }

    @Override // com.google.android.gms.internal.location.zzbj
    public final void checkConnected() {
        this.zzcc.checkConnected();
    }

    @Override // com.google.android.gms.internal.location.zzbj
    public final /* synthetic */ zzao getService() throws DeadObjectException {
        return (zzao) this.zzcc.getService();
    }
}
