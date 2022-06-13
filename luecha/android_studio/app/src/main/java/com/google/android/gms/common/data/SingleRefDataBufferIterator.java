package com.google.android.gms.common.data;

import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public class SingleRefDataBufferIterator<T> extends DataBufferIterator<T> {
    private T zamf;

    public SingleRefDataBufferIterator(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.google.android.gms.common.data.DataBufferIterator, java.util.Iterator
    public T next() {
        if (hasNext()) {
            this.zalk++;
            if (this.zalk == 0) {
                this.zamf = (T) this.zalj.get(0);
                T t = this.zamf;
                if (!(t instanceof DataBufferRef)) {
                    String valueOf = String.valueOf(t.getClass());
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 44);
                    sb.append("DataBuffer reference of type ");
                    sb.append(valueOf);
                    sb.append(" is not movable");
                    throw new IllegalStateException(sb.toString());
                }
            } else {
                ((DataBufferRef) this.zamf).zag(this.zalk);
            }
            return this.zamf;
        }
        int i = this.zalk;
        StringBuilder sb2 = new StringBuilder(46);
        sb2.append("Cannot advance the iterator beyond ");
        sb2.append(i);
        throw new NoSuchElementException(sb2.toString());
    }
}
