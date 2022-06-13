package com.google.android.gms.common.api.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class zaal implements Runnable {
    private final /* synthetic */ zaak zagi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaal(zaak zaak) {
        this.zagi = zaak;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zagi.zaex.cancelAvailabilityErrorNotifications(this.zagi.mContext);
    }
}
