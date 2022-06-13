package com.google.android.gms.tasks;

/* loaded from: classes4.dex */
final class zzn implements Runnable {
    private final /* synthetic */ Task zzg;
    private final /* synthetic */ zzm zzq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(zzm zzm, Task task) {
        this.zzq = zzm;
        this.zzg = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzq.mLock) {
            if (this.zzq.zzp != null) {
                this.zzq.zzp.onSuccess(this.zzg.getResult());
            }
        }
    }
}
