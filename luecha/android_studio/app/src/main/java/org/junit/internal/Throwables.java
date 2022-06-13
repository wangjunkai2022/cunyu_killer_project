package org.junit.internal;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class Throwables {
    private Throwables() {
    }

    public static Exception rethrowAsException(Throwable th) throws Exception {
        rethrow(th);
        return null;
    }

    private static <T extends Throwable> void rethrow(Throwable th) throws Throwable {
        throw th;
    }
}
