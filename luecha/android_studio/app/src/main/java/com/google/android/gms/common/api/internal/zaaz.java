package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

/* loaded from: classes2.dex */
final class zaaz implements GoogleApiClient.OnConnectionFailedListener {
    private final /* synthetic */ StatusPendingResult zahi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaaz(zaaw zaaw, StatusPendingResult statusPendingResult) {
        this.zahi = statusPendingResult;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.zahi.setResult(new Status(8));
    }
}
