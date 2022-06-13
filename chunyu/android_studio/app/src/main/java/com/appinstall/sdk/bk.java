package com.appinstall.sdk;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class bk implements Runnable {
    final /* synthetic */ bi a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bk(bi biVar) {
        this.a = biVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.a("lifecycle");
    }
}
