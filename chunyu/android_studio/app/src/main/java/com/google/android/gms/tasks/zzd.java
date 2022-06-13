package com.google.android.gms.tasks;

/* loaded from: classes4.dex */
final class zzd implements Runnable {
    private final /* synthetic */ Task zzg;
    private final /* synthetic */ zzc zzh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(zzc zzc, Task task) {
        this.zzh = zzc;
        this.zzg = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzg.isCanceled()) {
            this.zzh.zzf.zza();
            return;
        }
        try {
            this.zzh.zzf.setResult(this.zzh.zze.then(this.zzg));
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.zzh.zzf.setException((Exception) e.getCause());
            } else {
                this.zzh.zzf.setException(e);
            }
        } catch (Exception e2) {
            this.zzh.zzf.setException(e2);
        }
    }
}
