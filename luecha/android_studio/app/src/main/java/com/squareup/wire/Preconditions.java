package com.squareup.wire;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
final class Preconditions {
    private Preconditions() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkNotNull(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }
}
