package com.google.common.util.concurrent;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
final class Platform {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isInstanceOfThrowableClass(@NullableDecl Throwable th, Class<? extends Throwable> cls) {
        return cls.isInstance(th);
    }

    private Platform() {
    }
}
