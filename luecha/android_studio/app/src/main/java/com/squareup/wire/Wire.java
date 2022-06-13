package com.squareup.wire;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class Wire {
    public static <T> T get(T t, T t2) {
        return t != null ? t : t2;
    }

    private Wire() {
    }
}
