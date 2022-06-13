package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ListenableFuture<V> extends Future<V> {
    void addListener(Runnable runnable, Executor executor);
}
