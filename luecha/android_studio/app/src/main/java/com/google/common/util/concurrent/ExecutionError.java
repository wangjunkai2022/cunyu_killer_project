package com.google.common.util.concurrent;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ExecutionError extends Error {
    private static final long serialVersionUID = 0;

    protected ExecutionError() {
    }

    protected ExecutionError(@NullableDecl String str) {
        super(str);
    }

    public ExecutionError(@NullableDecl String str, @NullableDecl Error error) {
        super(str, error);
    }

    public ExecutionError(@NullableDecl Error error) {
        super(error);
    }
}
