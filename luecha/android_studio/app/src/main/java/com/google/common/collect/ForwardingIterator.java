package com.google.common.collect;

import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public abstract class ForwardingIterator<T> extends ForwardingObject implements Iterator<T> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingObject
    public abstract Iterator<T> delegate();

    @Override // java.util.Iterator
    public boolean hasNext() {
        return delegate().hasNext();
    }

    @Override // java.util.Iterator
    public T next() {
        return delegate().next();
    }

    @Override // java.util.Iterator
    public void remove() {
        delegate().remove();
    }
}
