package androidx.concurrent.futures;

import java.util.concurrent.Executor;

/* loaded from: classes4.dex */
enum DirectExecutor implements Executor {
    INSTANCE;

    @Override // java.lang.Enum, java.lang.Object
    public String toString() {
        return "DirectExecutor";
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
