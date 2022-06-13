package com.google.android.gms.tasks;

import java.util.concurrent.Callable;

/* loaded from: classes4.dex */
final class zzv implements Runnable {
    private final /* synthetic */ Callable val$callable;
    private final /* synthetic */ zzu zzad;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzv(zzu zzu, Callable callable) {
        this.zzad = zzu;
        this.val$callable = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzad.setResult(this.val$callable.call());
        } catch (Exception e) {
            this.zzad.setException(e);
        }
    }
}
