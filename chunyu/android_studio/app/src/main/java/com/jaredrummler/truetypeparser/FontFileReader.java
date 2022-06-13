package com.jaredrummler.truetypeparser;

import com.google.android.exoplayer2.C;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class FontFileReader {
    private int current;
    private byte[] file;
    private int fsize;

    public FontFileReader(InputStream inputStream) throws IOException {
        init(inputStream);
    }

    public FontFileReader(String str) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(new File(str));
        try {
            init(fileInputStream);
        } finally {
            fileInputStream.close();
        }
    }

    public byte[] getAllBytes() {
        return this.file;
    }

    public int getCurrentPos() {
        return this.current;
    }

    public int getFileSize() {
        return this.fsize;
    }

    private void init(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                this.file = byteArrayOutputStream.toByteArray();
                this.fsize = this.file.length;
                this.current = 0;
                return;
            }
        }
    }

    private byte read() throws IOException {
        int i = this.current;
        if (i < this.fsize) {
            byte[] bArr = this.file;
            this.current = i + 1;
            return bArr[i];
        }
        throw new EOFException("Reached EOF, file size=" + this.fsize);
    }

    public byte readTTFByte() throws IOException {
        return read();
    }

    public int readTTFLong() throws IOException {
        return (int) ((((((((long) readTTFUByte()) << 8) + ((long) readTTFUByte())) << 8) + ((long) readTTFUByte())) << 8) + ((long) readTTFUByte()));
    }

    public String readTTFString(int i) throws IOException {
        int i2 = this.current;
        if (i + i2 <= this.fsize) {
            byte[] bArr = new byte[i];
            System.arraycopy(this.file, i2, bArr, 0, i);
            this.current += i;
            return new String(bArr, (bArr.length <= 0 || bArr[0] != 0) ? C.ISO88591_NAME : "UTF-16BE");
        }
        throw new EOFException("Reached EOF, file size=" + this.fsize);
    }

    public String readTTFString(int i, int i2) throws IOException {
        int i3 = this.current;
        if (i + i3 <= this.fsize) {
            byte[] bArr = new byte[i];
            System.arraycopy(this.file, i3, bArr, 0, i);
            this.current += i;
            return new String(bArr, "UTF-16BE");
        }
        throw new EOFException("Reached EOF, file size=" + this.fsize);
    }

    public int readTTFUByte() throws IOException {
        byte read = read();
        return read < 0 ? read + 256 : read;
    }

    public long readTTFULong() throws IOException {
        return (((((((long) readTTFUByte()) << 8) + ((long) readTTFUByte())) << 8) + ((long) readTTFUByte())) << 8) + ((long) readTTFUByte());
    }

    public int readTTFUShort() throws IOException {
        return (readTTFUByte() << 8) + readTTFUByte();
    }

    public void seekSet(long j) throws IOException {
        if (j > ((long) this.fsize) || j < 0) {
            throw new EOFException("Reached EOF, file size=" + this.fsize + " offset=" + j);
        }
        this.current = (int) j;
    }

    public void skip(long j) throws IOException {
        seekSet(((long) this.current) + j);
    }
}
