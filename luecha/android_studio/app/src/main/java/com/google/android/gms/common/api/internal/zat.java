package com.google.android.gms.common.api.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zat implements Runnable {
    private final /* synthetic */ zas zaep;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zat(zas zas) {
        this.zaep = zas;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zaep.zaen.lock();
        try {
            this.zaep.zax();
        } finally {
            this.zaep.zaen.unlock();
        }
    }
}
