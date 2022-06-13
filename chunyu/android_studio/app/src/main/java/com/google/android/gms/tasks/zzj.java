package com.google.android.gms.tasks;

/* loaded from: classes4.dex */
final class zzj implements Runnable {
    private final /* synthetic */ Task zzg;
    private final /* synthetic */ zzi zzm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(zzi zzi, Task task) {
        this.zzm = zzi;
        this.zzg = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzm.mLock) {
            if (this.zzm.zzl != null) {
                this.zzm.zzl.onComplete(this.zzg);
            }
        }
    }
}
