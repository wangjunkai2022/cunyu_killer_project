package com.google.android.exoplayer2.decoder;

/* loaded from: classes2.dex */
public abstract class OutputBuffer extends Buffer {
    public int skippedOutputBufferCount;
    public long timeUs;

    /* loaded from: classes2.dex */
    public interface Owner<S extends OutputBuffer> {
        void releaseOutputBuffer(S s);
    }

    public abstract void release();
}
