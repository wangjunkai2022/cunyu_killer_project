package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
final class zaam implements BaseGmsClient.ConnectionProgressReportCallbacks {
    private final Api<?> mApi;
    private final boolean zaeb;
    private final WeakReference<zaak> zagj;

    public zaam(zaak zaak, Api<?> api, boolean z) {
        this.zagj = new WeakReference<>(zaak);
        this.mApi = api;
        this.zaeb = z;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void onReportServiceBinding(ConnectionResult connectionResult) {
        zaak zaak = this.zagj.get();
        if (zaak != null) {
            Preconditions.checkState(Looper.myLooper() == zaak.zafs.zaed.getLooper(), "onReportServiceBinding must be called on the GoogleApiClient handler thread");
            zaak.zaen.lock();
            try {
                if (zaak.zac(0)) {
                    if (!connectionResult.isSuccess()) {
                        zaak.zab(connectionResult, this.mApi, this.zaeb);
                    }
                    if (zaak.zaao()) {
                        zaak.zaap();
                    }
                }
            } finally {
                zaak.zaen.unlock();
            }
        }
    }
}
