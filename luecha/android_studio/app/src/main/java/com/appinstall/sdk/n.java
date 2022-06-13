package com.appinstall.sdk;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class n implements ThreadFactory {
    final /* synthetic */ m a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(m mVar) {
        this.a = mVar;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setName("INIT-T-");
        return thread;
    }
}
