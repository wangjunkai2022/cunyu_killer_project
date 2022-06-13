package com.appinstall.sdk;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class s implements ThreadFactory {
    final AtomicInteger a = new AtomicInteger(1);
    final /* synthetic */ m b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(m mVar) {
        this.b = mVar;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setName("TASK-T-" + this.a.getAndIncrement());
        return thread;
    }
}
