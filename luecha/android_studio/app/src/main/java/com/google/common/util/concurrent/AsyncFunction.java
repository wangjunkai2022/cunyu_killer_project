package com.google.common.util.concurrent;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface AsyncFunction<I, O> {
    ListenableFuture<O> apply(@NullableDecl I i) throws Exception;
}
