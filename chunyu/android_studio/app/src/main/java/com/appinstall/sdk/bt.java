package com.appinstall.sdk;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes4.dex */
public class bt implements Cloneable {
    private static final byte[] i = new byte[0];
    public int a;
    public int b;
    public int c;
    public int d;
    public long e;
    public long f;
    public byte[] g = i;
    public long h;

    public int a() {
        return this.g.length + 22;
    }

    public ByteBuffer a(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(a());
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putInt(101010256);
        allocate.putShort((short) this.a);
        allocate.putShort((short) this.b);
        allocate.putShort((short) this.c);
        allocate.putShort((short) this.d);
        allocate.putInt((int) this.e);
        allocate.putInt((int) j);
        allocate.putShort((short) this.g.length);
        allocate.put(this.g);
        allocate.flip();
        return allocate;
    }

    public void a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            bArr = i;
        }
        this.g = bArr;
    }

    /* renamed from: b */
    public bt clone() {
        try {
            return (bt) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new Error(e);
        }
    }
}
