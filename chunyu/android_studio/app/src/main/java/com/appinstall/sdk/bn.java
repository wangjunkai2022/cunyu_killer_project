package com.appinstall.sdk;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class bn implements Runnable {
    final /* synthetic */ bm a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bn(bm bmVar) {
        this.a = bmVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.e.offer("s_l");
    }
}
