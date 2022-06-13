package org.apache.commons.io.input;

import java.io.InputStream;

/* loaded from: classes2.dex */
public class InfiniteCircularInputStream extends InputStream {
    private int position = -1;
    private final byte[] repeatedContent;

    public InfiniteCircularInputStream(byte[] bArr) {
        this.repeatedContent = bArr;
    }

    @Override // java.io.InputStream
    public int read() {
        byte[] bArr = this.repeatedContent;
        this.position = (this.position + 1) % bArr.length;
        return bArr[this.position] & 255;
    }
}
