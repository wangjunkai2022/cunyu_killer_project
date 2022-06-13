package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.GoogleApiManager;

/* loaded from: classes4.dex */
final class zabj implements Runnable {
    private final /* synthetic */ GoogleApiManager.zaa zaix;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabj(GoogleApiManager.zaa zaa) {
        this.zaix = zaa;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GoogleApiManager.zaa.zae(this.zaix);
    }
}
