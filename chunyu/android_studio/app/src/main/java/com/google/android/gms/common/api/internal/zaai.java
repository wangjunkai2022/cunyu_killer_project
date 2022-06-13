package com.google.android.gms.common.api.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class zaai extends zabf {
    private final /* synthetic */ zaah zafu;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaai(zaah zaah, zabd zabd) {
        super(zabd);
        this.zafu = zaah;
    }

    @Override // com.google.android.gms.common.api.internal.zabf
    public final void zaan() {
        this.zafu.onConnectionSuspended(1);
    }
}
