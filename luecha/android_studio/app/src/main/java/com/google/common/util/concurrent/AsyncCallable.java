package com.google.common.util.concurrent;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface AsyncCallable<V> {
    ListenableFuture<V> call() throws Exception;
}
