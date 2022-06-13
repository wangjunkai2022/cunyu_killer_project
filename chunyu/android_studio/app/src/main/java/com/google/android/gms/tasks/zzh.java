package com.google.android.gms.tasks;

/* loaded from: classes4.dex */
final class zzh implements Runnable {
    private final /* synthetic */ zzg zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(zzg zzg) {
        this.zzk = zzg;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzk.mLock) {
            if (this.zzk.zzj != null) {
                this.zzk.zzj.onCanceled();
            }
        }
    }
}
