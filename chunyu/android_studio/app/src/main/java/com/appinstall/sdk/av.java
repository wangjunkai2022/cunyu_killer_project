package com.appinstall.sdk;

import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class av implements Runnable {
    final /* synthetic */ au a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public av(au auVar) {
        this.a = auVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.a.c) {
            try {
                this.a.a.poll(10, TimeUnit.SECONDS);
                this.a.g.b();
            } catch (InterruptedException unused) {
            }
        }
    }
}
