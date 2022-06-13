package com.google.android.gms.common.api.internal;

/* loaded from: classes2.dex */
final class zabn implements Runnable {
    private final /* synthetic */ zabm zaiz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zabn(zabm zabm) {
        this.zaiz = zabm;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zaiz.zaix.zain.disconnect();
    }
}
