package org.junit.internal;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class Classes {
    public static Class<?> getClass(String str) throws ClassNotFoundException {
        return Class.forName(str, true, Thread.currentThread().getContextClassLoader());
    }
}
