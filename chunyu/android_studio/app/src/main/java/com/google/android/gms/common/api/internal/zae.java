package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl;
import com.google.android.gms.common.api.internal.GoogleApiManager;

/* loaded from: classes4.dex */
public final class zae<A extends BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient>> extends zab {
    private final A zacn;

    public zae(int i, A a) {
        super(i);
        this.zacn = a;
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public final void zaa(GoogleApiManager.zaa<?> zaa) throws DeadObjectException {
        try {
            this.zacn.run(zaa.zaab());
        } catch (RuntimeException e) {
            zaa(e);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public final void zaa(Status status) {
        this.zacn.setFailedResult(status);
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public final void zaa(RuntimeException runtimeException) {
        String simpleName = runtimeException.getClass().getSimpleName();
        String localizedMessage = runtimeException.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        this.zacn.setFailedResult(new Status(10, sb.toString()));
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public final void zaa(zaab zaab, boolean z) {
        zaab.zaa(this.zacn, z);
    }
}
