package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public abstract class TransformedIterator<F, T> implements Iterator<T> {
    final Iterator<? extends F> backingIterator;

    abstract T transform(F f);

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransformedIterator(Iterator<? extends F> it) {
        this.backingIterator = (Iterator) Preconditions.checkNotNull(it);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.backingIterator.hasNext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Iterator
    public final T next() {
        return (T) transform(this.backingIterator.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.backingIterator.remove();
    }
}
