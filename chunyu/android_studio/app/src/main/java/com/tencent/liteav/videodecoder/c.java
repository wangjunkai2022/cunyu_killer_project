package com.tencent.liteav.videodecoder;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: TXCH264SPSModifier.java */
/* loaded from: classes2.dex */
class c {
    int b;
    private InputStream c;
    private int d;
    private int e;
    private final OutputStream f;
    private int h;
    protected a a = new a(50);
    private int[] g = new int[8];

    private void a(String str, String str2) {
    }

    public c(InputStream inputStream, OutputStream outputStream) throws IOException {
        this.c = inputStream;
        this.f = outputStream;
        this.d = inputStream.read();
        this.e = inputStream.read();
    }

    public boolean a(boolean z) throws IOException {
        return b(z) == 1;
    }

    public int b(boolean z) throws IOException {
        if (this.b == 8) {
            d();
            if (this.d == -1) {
                return -1;
            }
        }
        int i = this.d;
        int i2 = this.b;
        int i3 = (i >> (7 - i2)) & 1;
        this.b = i2 + 1;
        if (z && this.f != null) {
            d(i3);
        }
        return i3;
    }

    public long a(int i, boolean z) throws IOException {
        if (i <= 64) {
            long j = 0;
            for (int i2 = 0; i2 < i; i2++) {
                j = (j << 1) | ((long) b(z));
            }
            return j;
        }
        throw new IllegalArgumentException("Can not readByte more then 64 bit");
    }

    public long a(int i) throws IOException {
        if (i <= 64) {
            long j = 0;
            for (int i2 = 0; i2 < i; i2++) {
                j = (j << 1) | ((long) b(true));
            }
            return j;
        }
        throw new IllegalArgumentException("Can not readByte more then 64 bit");
    }

    public void b(int i) throws IOException {
        if (i <= 64) {
            for (int i2 = 0; i2 < i; i2++) {
                b(true);
            }
            return;
        }
        throw new IllegalArgumentException("Can not skip more then 64 bit");
    }

    private void d() throws IOException {
        this.d = this.e;
        this.e = this.c.read();
        this.b = 0;
    }

    public long a(int i, String str) throws IOException {
        long a = a(i);
        a(str, String.valueOf(a));
        return a;
    }

    public void b(int i, String str) throws IOException {
        b(i);
        a(str, "skip NBits");
    }

    public int c(boolean z) throws IOException {
        int i = 0;
        while (b(z) == 0) {
            i++;
        }
        if (i <= 0) {
            return 0;
        }
        return (int) (((long) ((1 << i) - 1)) + a(i, z));
    }

    private int e() throws IOException {
        int i = 0;
        while (b(true) == 0) {
            i++;
        }
        if (i <= 0) {
            return 0;
        }
        return (int) (((long) ((1 << i) - 1)) + a(i));
    }

    private void f() throws IOException {
        int i = 0;
        while (b(true) == 0) {
            i++;
        }
        if (i > 0) {
            b(i);
        }
    }

    public int a(String str) throws IOException {
        int e = e();
        a(str, String.valueOf(e));
        return e;
    }

    public void b(String str) throws IOException {
        f();
        a(str, "skip UE");
    }

    public int c(String str) throws IOException {
        int e = e();
        int i = e & 1;
        int i2 = ((e >> 1) + i) * ((i << 1) - 1);
        a(str, String.valueOf(i2));
        return i2;
    }

    public boolean d(String str) throws IOException {
        boolean a = a(true);
        a(str, a ? "1" : "0");
        return a;
    }

    public boolean e(String str) throws IOException {
        boolean a = a(false);
        a(str, a ? "1" : "0");
        return a;
    }

    public void c(int i) throws IOException {
        int[] iArr = new int[i];
        int i2 = 8;
        int i3 = 8;
        for (int i4 = 0; i4 < i; i4++) {
            if (i2 != 0) {
                i2 = ((c("deltaScale") + i3) + 256) % 256;
            }
            if (i2 != 0) {
                i3 = i2;
            }
            iArr[i4] = i3;
            i3 = iArr[i4];
        }
    }

    public void a() throws IOException {
        for (int i = this.h; i < 8; i++) {
            this.g[i] = 0;
        }
        this.h = 0;
        g();
    }

    private void g() throws IOException {
        int[] iArr = this.g;
        this.f.write(iArr[7] | (iArr[0] << 7) | (iArr[1] << 6) | (iArr[2] << 5) | (iArr[3] << 4) | (iArr[4] << 3) | (iArr[5] << 2) | (iArr[6] << 1));
    }

    public void d(int i) throws IOException {
        if (this.h == 8) {
            this.h = 0;
            g();
        }
        int[] iArr = this.g;
        int i2 = this.h;
        this.h = i2 + 1;
        iArr[i2] = i;
    }

    public void a(long j, int i) throws IOException {
        for (int i2 = 0; i2 < i; i2++) {
            d(((int) (j >> ((i - i2) - 1))) & 1);
        }
    }

    public void b() throws IOException {
        a(0, 8 - this.h);
    }

    public void e(int i) throws IOException {
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= 15) {
                break;
            }
            int i5 = (1 << i3) + i4;
            if (i < i5) {
                i2 = i3;
                break;
            } else {
                i3++;
                i4 = i5;
            }
        }
        a(0, i2);
        d(1);
        a((long) (i - i4), i2);
    }

    public void c(int i, String str) throws IOException {
        e(i);
    }

    public void a(boolean z, String str) throws IOException {
        d(z ? 1 : 0);
    }

    public void c() throws IOException {
        d(1);
        b();
        a();
    }
}
