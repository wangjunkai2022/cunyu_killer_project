package com.google.android.gms.tasks;

/* loaded from: classes4.dex */
final class zzf implements Runnable {
    private final /* synthetic */ Task zzg;
    private final /* synthetic */ zze zzi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(zze zze, Task task) {
        this.zzi = zze;
        this.zzg = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Task task = (Task) this.zzi.zze.then(this.zzg);
            if (task == null) {
                this.zzi.onFailure(new NullPointerException("Continuation returned null"));
                return;
            }
            task.addOnSuccessListener(TaskExecutors.zzw, this.zzi);
            task.addOnFailureListener(TaskExecutors.zzw, this.zzi);
            task.addOnCanceledListener(TaskExecutors.zzw, this.zzi);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.zzi.zzf.setException((Exception) e.getCause());
            } else {
                this.zzi.zzf.setException(e);
            }
        } catch (Exception e2) {
            this.zzi.zzf.setException(e2);
        }
    }
}
