package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;

/* loaded from: classes4.dex */
public final class zan implements Runnable {
    private final zam zadi;
    final /* synthetic */ zal zadj;

    public zan(zal zal, zam zam) {
        this.zadj = zal;
        this.zadi = zam;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zadj.mStarted) {
            ConnectionResult connectionResult = this.zadi.getConnectionResult();
            if (connectionResult.hasResolution()) {
                this.zadj.mLifecycleFragment.startActivityForResult(GoogleApiActivity.zaa(this.zadj.getActivity(), connectionResult.getResolution(), this.zadi.zar(), false), 1);
            } else if (this.zadj.zacc.isUserResolvableError(connectionResult.getErrorCode())) {
                this.zadj.zacc.zaa(this.zadj.getActivity(), this.zadj.mLifecycleFragment, connectionResult.getErrorCode(), 2, this.zadj);
            } else if (connectionResult.getErrorCode() == 18) {
                this.zadj.zacc.zaa(this.zadj.getActivity().getApplicationContext(), new zao(this, GoogleApiAvailability.zaa(this.zadj.getActivity(), this.zadj)));
            } else {
                this.zadj.zaa(connectionResult, this.zadi.zar());
            }
        }
    }
}
