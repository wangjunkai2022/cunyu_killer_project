package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public abstract class zal extends LifecycleCallback implements DialogInterface.OnCancelListener {
    protected volatile boolean mStarted;
    protected final GoogleApiAvailability zacc;
    protected final AtomicReference<zam> zade;
    private final Handler zadf;

    public zal(LifecycleFragment lifecycleFragment) {
        this(lifecycleFragment, GoogleApiAvailability.getInstance());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zaa(ConnectionResult connectionResult, int i);

    protected abstract void zao();

    private zal(LifecycleFragment lifecycleFragment, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment);
        this.zade = new AtomicReference<>(null);
        this.zadf = new com.google.android.gms.internal.base.zal(Looper.getMainLooper());
        this.zacc = googleApiAvailability;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        zaa(new ConnectionResult(13, null), zaa(this.zade.get()));
        zaq();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.zade.set(bundle.getBoolean("resolving_error", false) ? new zam(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        zam zam = this.zade.get();
        if (zam != null) {
            bundle.putBoolean("resolving_error", true);
            bundle.putInt("failed_client_id", zam.zar());
            bundle.putInt("failed_status", zam.getConnectionResult().getErrorCode());
            bundle.putParcelable("failed_resolution", zam.getConnectionResult().getResolution());
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStart() {
        super.onStart();
        this.mStarted = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void onActivityResult(int r4, int r5, android.content.Intent r6) {
        /*
            r3 = this;
            java.util.concurrent.atomic.AtomicReference<com.google.android.gms.common.api.internal.zam> r0 = r3.zade
            java.lang.Object r0 = r0.get()
            com.google.android.gms.common.api.internal.zam r0 = (com.google.android.gms.common.api.internal.zam) r0
            r1 = 1
            r2 = 0
            if (r4 == r1) goto L_0x0030
            r5 = 2
            if (r4 == r5) goto L_0x0010
            goto L_0x0055
        L_0x0010:
            com.google.android.gms.common.GoogleApiAvailability r4 = r3.zacc
            android.app.Activity r5 = r3.getActivity()
            int r4 = r4.isGooglePlayServicesAvailable(r5)
            if (r4 != 0) goto L_0x001d
            goto L_0x001e
        L_0x001d:
            r1 = r2
        L_0x001e:
            if (r0 != 0) goto L_0x0021
            return
        L_0x0021:
            com.google.android.gms.common.ConnectionResult r5 = r0.getConnectionResult()
            int r5 = r5.getErrorCode()
            r6 = 18
            if (r5 != r6) goto L_0x0056
            if (r4 != r6) goto L_0x0056
            return
        L_0x0030:
            r4 = -1
            if (r5 != r4) goto L_0x0034
            goto L_0x0056
        L_0x0034:
            if (r5 != 0) goto L_0x0055
            r4 = 13
            if (r6 == 0) goto L_0x0040
            java.lang.String r5 = "<<ResolutionFailureErrorDetail>>"
            int r4 = r6.getIntExtra(r5, r4)
        L_0x0040:
            com.google.android.gms.common.api.internal.zam r5 = new com.google.android.gms.common.api.internal.zam
            com.google.android.gms.common.ConnectionResult r6 = new com.google.android.gms.common.ConnectionResult
            r1 = 0
            r6.<init>(r4, r1)
            int r4 = zaa(r0)
            r5.<init>(r6, r4)
            java.util.concurrent.atomic.AtomicReference<com.google.android.gms.common.api.internal.zam> r4 = r3.zade
            r4.set(r5)
            r0 = r5
        L_0x0055:
            r1 = r2
        L_0x0056:
            if (r1 == 0) goto L_0x005c
            r3.zaq()
            return
        L_0x005c:
            if (r0 == 0) goto L_0x0069
            com.google.android.gms.common.ConnectionResult r4 = r0.getConnectionResult()
            int r5 = r0.zar()
            r3.zaa(r4, r5)
        L_0x0069:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zal.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStop() {
        super.onStop();
        this.mStarted = false;
    }

    public final void zaq() {
        this.zade.set(null);
        zao();
    }

    public final void zab(ConnectionResult connectionResult, int i) {
        zam zam = new zam(connectionResult, i);
        if (this.zade.compareAndSet(null, zam)) {
            this.zadf.post(new zan(this, zam));
        }
    }

    private static int zaa(zam zam) {
        if (zam == null) {
            return -1;
        }
        return zam.zar();
    }
}
