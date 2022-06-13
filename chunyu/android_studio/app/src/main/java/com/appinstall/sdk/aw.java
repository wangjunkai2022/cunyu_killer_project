package com.appinstall.sdk;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class aw extends ar {
    long a = System.currentTimeMillis();
    final /* synthetic */ au b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(au auVar) {
        this.b = auVar;
    }

    @Override // com.appinstall.sdk.ar
    public void a(long j) {
        this.a = j;
    }

    @Override // com.appinstall.sdk.ar
    public void b(long j) {
        this.b.a((j - this.a) / 1000);
    }
}
