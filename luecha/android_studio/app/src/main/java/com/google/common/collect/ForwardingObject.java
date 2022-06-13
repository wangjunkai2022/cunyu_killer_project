package com.google.common.collect;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public abstract class ForwardingObject {
    protected abstract Object delegate();

    @Override // java.lang.Object
    public String toString() {
        return delegate().toString();
    }
}
