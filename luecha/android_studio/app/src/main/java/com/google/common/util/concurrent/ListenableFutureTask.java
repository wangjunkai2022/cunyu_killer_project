package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ListenableFutureTask<V> extends FutureTask<V> implements ListenableFuture<V> {
    private final ExecutionList executionList = new ExecutionList();

    public static <V> ListenableFutureTask<V> create(Callable<V> callable) {
        return new ListenableFutureTask<>(callable);
    }

    public static <V> ListenableFutureTask<V> create(Runnable runnable, @NullableDecl V v) {
        return new ListenableFutureTask<>(runnable, v);
    }

    ListenableFutureTask(Callable<V> callable) {
        super(callable);
    }

    ListenableFutureTask(Runnable runnable, @NullableDecl V v) {
        super(runnable, v);
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        this.executionList.add(runnable, executor);
    }

    @Override // java.util.concurrent.FutureTask
    protected void done() {
        this.executionList.execute();
    }
}
