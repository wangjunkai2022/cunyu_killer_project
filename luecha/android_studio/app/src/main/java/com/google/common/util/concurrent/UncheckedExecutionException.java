package com.google.common.util.concurrent;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class UncheckedExecutionException extends RuntimeException {
    private static final long serialVersionUID = 0;

    protected UncheckedExecutionException() {
    }

    protected UncheckedExecutionException(@NullableDecl String str) {
        super(str);
    }

    public UncheckedExecutionException(@NullableDecl String str, @NullableDecl Throwable th) {
        super(str, th);
    }

    public UncheckedExecutionException(@NullableDecl Throwable th) {
        super(th);
    }
}
