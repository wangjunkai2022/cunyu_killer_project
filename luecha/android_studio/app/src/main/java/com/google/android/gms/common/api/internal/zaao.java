package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes2.dex */
final class zaao extends zabf {
    private final /* synthetic */ ConnectionResult zagl;
    private final /* synthetic */ zaan zagm;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaao(zaan zaan, zabd zabd, ConnectionResult connectionResult) {
        super(zabd);
        this.zagm = zaan;
        this.zagl = connectionResult;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zaan() {
        this.zagm.zagi.zae(this.zagl);
    }
}
