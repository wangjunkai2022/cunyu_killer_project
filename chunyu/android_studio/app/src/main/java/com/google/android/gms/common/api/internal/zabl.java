package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.GoogleApiManager;

/* loaded from: classes4.dex */
final class zabl implements Runnable {
    private final /* synthetic */ GoogleApiManager.zaa zaix;
    private final /* synthetic */ ConnectionResult zaiy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabl(GoogleApiManager.zaa zaa, ConnectionResult connectionResult) {
        this.zaix = zaa;
        this.zaiy = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zaix.onConnectionFailed(this.zaiy);
    }
}
