package com.google.common.collect;

import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
final class UsingToStringOrdering extends Ordering<Object> implements Serializable {
    static final UsingToStringOrdering INSTANCE = new UsingToStringOrdering();
    private static final long serialVersionUID = 0;

    @Override // java.lang.Object
    public String toString() {
        return "Ordering.usingToString()";
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return obj.toString().compareTo(obj2.toString());
    }

    private Object readResolve() {
        return INSTANCE;
    }

    private UsingToStringOrdering() {
    }
}
