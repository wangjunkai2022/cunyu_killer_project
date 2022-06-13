package com.jaredrummler.truetypeparser;

import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TTFDirTabEntry {
    private long length;
    private long offset;
    private final byte[] tag;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TTFDirTabEntry() {
        this.tag = new byte[4];
    }

    public TTFDirTabEntry(long j, long j2) {
        this.tag = new byte[4];
        this.offset = j;
        this.length = j2;
    }

    public long getLength() {
        return this.length;
    }

    public long getOffset() {
        return this.offset;
    }

    public byte[] getTag() {
        return this.tag;
    }

    public String getTagString() {
        try {
            return new String(this.tag, C.ISO88591_NAME);
        } catch (UnsupportedEncodingException unused) {
            return toString();
        }
    }

    public String read(FontFileReader fontFileReader) throws IOException {
        this.tag[0] = fontFileReader.readTTFByte();
        this.tag[1] = fontFileReader.readTTFByte();
        this.tag[2] = fontFileReader.readTTFByte();
        this.tag[3] = fontFileReader.readTTFByte();
        fontFileReader.skip(4);
        this.offset = fontFileReader.readTTFULong();
        this.length = fontFileReader.readTTFULong();
        return new String(this.tag, C.ISO88591_NAME);
    }
}
