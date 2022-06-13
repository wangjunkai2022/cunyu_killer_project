package com.appinstall.sdk;

import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes2.dex */
class t implements RejectedExecutionHandler {
    final /* synthetic */ m a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(m mVar) {
        this.a = mVar;
    }

    @Override // java.util.concurrent.RejectedExecutionHandler
    public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
    }
}
