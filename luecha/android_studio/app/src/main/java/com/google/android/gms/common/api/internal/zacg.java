package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.zaj;

/* loaded from: classes2.dex */
final class zacg implements Runnable {
    private final /* synthetic */ zaj zagq;
    private final /* synthetic */ zace zakj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zacg(zace zace, zaj zaj) {
        this.zakj = zace;
        this.zagq = zaj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zakj.zac(this.zagq);
    }
}
