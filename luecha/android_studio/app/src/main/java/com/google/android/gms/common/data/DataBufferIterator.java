package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public class DataBufferIterator<T> implements Iterator<T> {
    protected final DataBuffer<T> zalj;
    protected int zalk = -1;

    public DataBufferIterator(DataBuffer<T> dataBuffer) {
        this.zalj = (DataBuffer) Preconditions.checkNotNull(dataBuffer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.zalk < this.zalj.getCount() - 1;
    }

    @Override // java.util.Iterator
    public T next() {
        if (hasNext()) {
            DataBuffer<T> dataBuffer = this.zalj;
            int i = this.zalk + 1;
            this.zalk = i;
            return dataBuffer.get(i);
        }
        int i2 = this.zalk;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Cannot advance the iterator beyond ");
        sb.append(i2);
        throw new NoSuchElementException(sb.toString());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
