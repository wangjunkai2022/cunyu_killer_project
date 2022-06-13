package com.google.common.collect;

import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public abstract class AbstractSequentialIterator<T> extends UnmodifiableIterator<T> {
    @NullableDecl
    private T nextOrNull;

    @NullableDecl
    protected abstract T computeNext(T t);

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractSequentialIterator(@NullableDecl T t) {
        this.nextOrNull = t;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.nextOrNull != null;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            try {
                return this.nextOrNull;
            } finally {
                this.nextOrNull = computeNext(this.nextOrNull);
            }
        } else {
            throw new NoSuchElementException();
        }
    }
}
