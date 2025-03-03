package com.facebook.imagepipeline.memory;

import java.io.Closeable;

/* loaded from: classes2.dex */
public interface PooledByteBuffer extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    long getNativePtr();

    boolean isClosed();

    byte read(int i);

    void read(int i, byte[] bArr, int i2, int i3);

    int size();

    /* loaded from: classes2.dex */
    public static class ClosedException extends RuntimeException {
        public ClosedException() {
            super("Invalid bytebuf. Already closed");
        }
    }
}
