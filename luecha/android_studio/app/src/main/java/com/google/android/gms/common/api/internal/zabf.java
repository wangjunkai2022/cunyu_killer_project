package com.google.android.gms.common.api.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zabf {
    private final zabd zaht;

    /* JADX INFO: Access modifiers changed from: protected */
    public zabf(zabd zabd) {
        this.zaht = zabd;
    }

    protected abstract void zaan();

    public final void zac(zabe zabe) {
        zabe.zaen.lock();
        try {
            if (zabe.zahp == this.zaht) {
                zaan();
            }
        } finally {
            zabe.zaen.unlock();
        }
    }
}
