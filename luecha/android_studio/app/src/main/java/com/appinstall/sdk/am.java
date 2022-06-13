package com.appinstall.sdk;

/* loaded from: classes2.dex */
class am implements Runnable {
    final /* synthetic */ by a;
    final /* synthetic */ al b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(al alVar, by byVar) {
        this.b = alVar;
        this.a = byVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.c.a(this.a);
    }
}
