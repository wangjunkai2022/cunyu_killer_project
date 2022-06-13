package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zacf implements Runnable {
    private final /* synthetic */ zace zakj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zacf(zace zace) {
        this.zakj = zace;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zakj.zaki.zag(new ConnectionResult(4));
    }
}
