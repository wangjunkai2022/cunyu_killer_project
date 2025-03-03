package org.hamcrest.internal;

import java.lang.reflect.Array;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class ArrayIterator implements Iterator<Object> {
    private final Object array;
    private int currentIndex = 0;

    public ArrayIterator(Object obj) {
        if (obj.getClass().isArray()) {
            this.array = obj;
            return;
        }
        throw new IllegalArgumentException("not an array");
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.currentIndex < Array.getLength(this.array);
    }

    @Override // java.util.Iterator
    public Object next() {
        Object obj = this.array;
        int i = this.currentIndex;
        this.currentIndex = i + 1;
        return Array.get(obj, i);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("cannot remove items from an array");
    }
}
