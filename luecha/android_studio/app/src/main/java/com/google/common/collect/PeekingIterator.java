package com.google.common.collect;

import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface PeekingIterator<E> extends Iterator<E> {
    @Override // java.util.Iterator
    E next();

    E peek();

    @Override // java.util.Iterator
    void remove();
}
