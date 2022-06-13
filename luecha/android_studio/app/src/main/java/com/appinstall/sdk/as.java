package com.appinstall.sdk;

/* loaded from: classes2.dex */
class as implements Runnable {
    final /* synthetic */ ar a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(ar arVar) {
        this.a = arVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if ((this.a.c) && (this.a.d)) {
            this.a.c = false;
            this.a.b(System.currentTimeMillis());
        }
    }
}
