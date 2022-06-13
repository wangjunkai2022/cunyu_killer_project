package com.tencent.ugc;

import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXAudioFrame {
    private ByteBuffer mByteBuffer;
    private int mLength;

    public ByteBuffer getByteBuffer() {
        return this.mByteBuffer;
    }

    public void setByteBuffer(ByteBuffer byteBuffer) {
        this.mByteBuffer = byteBuffer;
    }

    public int getLength() {
        return this.mLength;
    }

    public void setLength(int i) {
        this.mLength = i;
    }
}
