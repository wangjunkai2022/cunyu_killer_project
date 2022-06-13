package com.google.android.gms.common.api;

import com.google.android.gms.common.api.PendingResult;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class zaa implements PendingResult.StatusListener {
    private final /* synthetic */ Batch zabd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaa(Batch batch) {
        this.zabd = batch;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        Status status2;
        synchronized (this.zabd.mLock) {
            if (!this.zabd.isCanceled()) {
                if (status.isCanceled()) {
                    this.zabd.zabb = true;
                } else if (!status.isSuccess()) {
                    this.zabd.zaba = true;
                }
                Batch.zab(this.zabd);
                if (this.zabd.zaaz == 0) {
                    if (this.zabd.zabb) {
                        zaa.super.cancel();
                    } else {
                        if (this.zabd.zaba) {
                            status2 = new Status(13);
                        } else {
                            status2 = Status.RESULT_SUCCESS;
                        }
                        this.zabd.setResult(new BatchResult(status2, this.zabd.zabc));
                    }
                }
            }
        }
    }
}
