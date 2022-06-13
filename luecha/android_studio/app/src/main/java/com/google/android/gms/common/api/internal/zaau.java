package com.google.android.gms.common.api.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zaau implements Runnable {
    private final /* synthetic */ zaak zagi;

    private zaau(zaak zaak) {
        this.zagi = zaak;
    }

    protected abstract void zaan();

    @Override // java.lang.Runnable
    public void run() {
        this.zagi.zaen.lock();
        try {
            if (!Thread.interrupted()) {
                zaan();
            }
        } catch (RuntimeException e) {
            this.zagi.zafs.zab(e);
        } finally {
            this.zagi.zaen.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zaau(zaak zaak, zaal zaal) {
        this(zaak);
    }
}
