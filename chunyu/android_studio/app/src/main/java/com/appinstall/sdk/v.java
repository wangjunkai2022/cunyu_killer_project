package com.appinstall.sdk;

import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class v implements RejectedExecutionHandler {
    final /* synthetic */ m a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(m mVar) {
        this.a = mVar;
    }

    @Override // java.util.concurrent.RejectedExecutionHandler
    public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
    }
}
