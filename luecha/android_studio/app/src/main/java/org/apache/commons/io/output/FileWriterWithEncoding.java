package org.apache.commons.io.output;

import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class FileWriterWithEncoding extends Writer {
    private final Writer out;

    public FileWriterWithEncoding(String str, String str2) throws IOException {
        this(new File(str), str2, false);
    }

    public FileWriterWithEncoding(String str, String str2, boolean z) throws IOException {
        this(new File(str), str2, z);
    }

    public FileWriterWithEncoding(String str, Charset charset) throws IOException {
        this(new File(str), charset, false);
    }

    public FileWriterWithEncoding(String str, Charset charset, boolean z) throws IOException {
        this(new File(str), charset, z);
    }

    public FileWriterWithEncoding(String str, CharsetEncoder charsetEncoder) throws IOException {
        this(new File(str), charsetEncoder, false);
    }

    public FileWriterWithEncoding(String str, CharsetEncoder charsetEncoder, boolean z) throws IOException {
        this(new File(str), charsetEncoder, z);
    }

    public FileWriterWithEncoding(File file, String str) throws IOException {
        this(file, str, false);
    }

    public FileWriterWithEncoding(File file, String str, boolean z) throws IOException {
        this.out = initWriter(file, str, z);
    }

    public FileWriterWithEncoding(File file, Charset charset) throws IOException {
        this(file, charset, false);
    }

    public FileWriterWithEncoding(File file, Charset charset, boolean z) throws IOException {
        this.out = initWriter(file, charset, z);
    }

    public FileWriterWithEncoding(File file, CharsetEncoder charsetEncoder) throws IOException {
        this(file, charsetEncoder, false);
    }

    public FileWriterWithEncoding(File file, CharsetEncoder charsetEncoder, boolean z) throws IOException {
        this.out = initWriter(file, charsetEncoder, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private static java.io.Writer initWriter(java.io.File r3, java.lang.Object r4, boolean r5) throws java.io.IOException {
        /*
            if (r3 == 0) goto L_0x004e
            if (r4 == 0) goto L_0x0046
            r0 = 0
            boolean r1 = r3.exists()
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: IOException -> 0x0034, RuntimeException -> 0x0032
            r2.<init>(r3, r5)     // Catch: IOException -> 0x0034, RuntimeException -> 0x0032
            boolean r5 = r4 instanceof java.nio.charset.Charset     // Catch: IOException -> 0x0030, RuntimeException -> 0x002e
            if (r5 == 0) goto L_0x001a
            java.io.OutputStreamWriter r5 = new java.io.OutputStreamWriter     // Catch: IOException -> 0x0030, RuntimeException -> 0x002e
            java.nio.charset.Charset r4 = (java.nio.charset.Charset) r4     // Catch: IOException -> 0x0030, RuntimeException -> 0x002e
            r5.<init>(r2, r4)     // Catch: IOException -> 0x0030, RuntimeException -> 0x002e
            return r5
        L_0x001a:
            boolean r5 = r4 instanceof java.nio.charset.CharsetEncoder     // Catch: IOException -> 0x0030, RuntimeException -> 0x002e
            if (r5 == 0) goto L_0x0026
            java.io.OutputStreamWriter r5 = new java.io.OutputStreamWriter     // Catch: IOException -> 0x0030, RuntimeException -> 0x002e
            java.nio.charset.CharsetEncoder r4 = (java.nio.charset.CharsetEncoder) r4     // Catch: IOException -> 0x0030, RuntimeException -> 0x002e
            r5.<init>(r2, r4)     // Catch: IOException -> 0x0030, RuntimeException -> 0x002e
            return r5
        L_0x0026:
            java.io.OutputStreamWriter r5 = new java.io.OutputStreamWriter     // Catch: IOException -> 0x0030, RuntimeException -> 0x002e
            java.lang.String r4 = (java.lang.String) r4     // Catch: IOException -> 0x0030, RuntimeException -> 0x002e
            r5.<init>(r2, r4)     // Catch: IOException -> 0x0030, RuntimeException -> 0x002e
            return r5
        L_0x002e:
            r4 = move-exception
            goto L_0x0036
        L_0x0030:
            r4 = move-exception
            goto L_0x0036
        L_0x0032:
            r4 = move-exception
            goto L_0x0035
        L_0x0034:
            r4 = move-exception
        L_0x0035:
            r2 = r0
        L_0x0036:
            if (r2 == 0) goto L_0x0040
            r2.close()     // Catch: IOException -> 0x003c
            goto L_0x0040
        L_0x003c:
            r5 = move-exception
            r4.addSuppressed(r5)
        L_0x0040:
            if (r1 != 0) goto L_0x0045
            org.apache.commons.io.FileUtils.deleteQuietly(r3)
        L_0x0045:
            throw r4
        L_0x0046:
            java.lang.NullPointerException r3 = new java.lang.NullPointerException
            java.lang.String r4 = "Encoding is missing"
            r3.<init>(r4)
            throw r3
        L_0x004e:
            java.lang.NullPointerException r3 = new java.lang.NullPointerException
            java.lang.String r4 = "File is missing"
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.output.FileWriterWithEncoding.initWriter(java.io.File, java.lang.Object, boolean):java.io.Writer");
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        this.out.write(i);
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        this.out.write(cArr);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        this.out.write(cArr, i, i2);
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        this.out.write(str);
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        this.out.write(str, i, i2);
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
    }
}
