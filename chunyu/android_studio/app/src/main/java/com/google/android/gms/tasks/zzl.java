package com.google.android.gms.tasks;

/* loaded from: classes4.dex */
final class zzl implements Runnable {
    private final /* synthetic */ Task zzg;
    private final /* synthetic */ zzk zzo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(zzk zzk, Task task) {
        this.zzo = zzk;
        this.zzg = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzo.mLock) {
            if (this.zzo.zzn != null) {
                this.zzo.zzn.onFailure(this.zzg.getException());
            }
        }
    }
}
