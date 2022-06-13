package com.google.common.collect;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public enum BoundType {
    OPEN(false),
    CLOSED(true);
    
    final boolean inclusive;

    BoundType(boolean z) {
        this.inclusive = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BoundType forBoolean(boolean z) {
        return z ? CLOSED : OPEN;
    }

    BoundType flip() {
        return forBoolean(!this.inclusive);
    }
}
