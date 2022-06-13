package com.google.android.gms.common.internal.service;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes4.dex */
final class zae extends zah {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zae(zad zad, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void doExecute(zai zai) throws RemoteException {
        ((zal) zai.getService()).zaa(new zaf(this));
    }
}
