package com.google.android.gms.common.api.internal;

import android.app.Activity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.CancellationException;

/* loaded from: classes4.dex */
public class zabu extends zal {
    private TaskCompletionSource<Void> zajo = new TaskCompletionSource<>();

    public static zabu zac(Activity activity) {
        LifecycleFragment fragment = getFragment(activity);
        zabu zabu = (zabu) fragment.getCallbackOrNull("GmsAvailabilityHelper", zabu.class);
        if (zabu == null) {
            return new zabu(fragment);
        }
        if (zabu.zajo.getTask().isComplete()) {
            zabu.zajo = new TaskCompletionSource<>();
        }
        return zabu;
    }

    private zabu(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.mLifecycleFragment.addCallback("GmsAvailabilityHelper", this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zal
    public final void zaa(ConnectionResult connectionResult, int i) {
        this.zajo.setException(ApiExceptionUtil.fromStatus(new Status(connectionResult.getErrorCode(), connectionResult.getErrorMessage(), connectionResult.getResolution())));
    }

    @Override // com.google.android.gms.common.api.internal.zal
    protected final void zao() {
        int isGooglePlayServicesAvailable = this.zacc.isGooglePlayServicesAvailable(this.mLifecycleFragment.getLifecycleActivity());
        if (isGooglePlayServicesAvailable == 0) {
            this.zajo.setResult(null);
        } else if (!this.zajo.getTask().isComplete()) {
            zab(new ConnectionResult(isGooglePlayServicesAvailable, null), 0);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onDestroy() {
        super.onDestroy();
        this.zajo.trySetException(new CancellationException("Host activity was destroyed before Google Play services could be made available."));
    }

    public final Task<Void> getTask() {
        return this.zajo.getTask();
    }
}
