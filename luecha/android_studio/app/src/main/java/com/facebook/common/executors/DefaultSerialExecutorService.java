package com.facebook.common.executors;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
public class DefaultSerialExecutorService extends ConstrainedExecutorService implements SerialExecutorService {
    public DefaultSerialExecutorService(Executor executor) {
        super("SerialExecutor", 1, executor, new LinkedBlockingQueue());
    }

    @Override // com.facebook.common.executors.ConstrainedExecutorService, java.util.concurrent.Executor
    public synchronized void execute(Runnable runnable) {
        super.execute(runnable);
    }
}
