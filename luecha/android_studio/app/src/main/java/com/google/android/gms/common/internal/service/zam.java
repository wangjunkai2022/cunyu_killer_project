package com.google.android.gms.common.internal.service;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.base.zaa;
import com.google.android.gms.internal.base.zac;

/* loaded from: classes2.dex */
public final class zam extends zaa implements zal {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zam(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.service.ICommonService");
    }

    @Override // com.google.android.gms.common.internal.service.zal
    public final void zaa(zaj zaj) throws RemoteException {
        Parcel zaa = zaa();
        zac.zaa(zaa, zaj);
        zac(1, zaa);
    }
}
