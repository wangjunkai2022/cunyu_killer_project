package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.GoogleApiManager;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class zabk implements Runnable {
    private final /* synthetic */ GoogleApiManager.zaa zaix;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabk(GoogleApiManager.zaa zaa) {
        this.zaix = zaa;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zaix.zabh();
    }
}
