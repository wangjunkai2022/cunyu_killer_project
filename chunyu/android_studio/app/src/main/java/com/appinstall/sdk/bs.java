package com.appinstall.sdk;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes4.dex */
public class bs implements Cloneable {
    private final long a;
    private final List b = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class a {
        byte[] a;

        public a(byte[] bArr) {
            this.a = bArr;
        }

        public byte[] a() {
            byte[] bArr = this.a;
            byte[] bArr2 = new byte[bArr.length - 12];
            System.arraycopy(bArr, 12, bArr2, 0, bArr2.length);
            return bArr2;
        }
    }

    public bs(long j) {
        this.a = j;
    }

    private byte[] a(int i) {
        for (br brVar : this.b) {
            if (((Integer) brVar.a).intValue() == i) {
                return ((a) brVar.b).a();
            }
        }
        return null;
    }

    private void b(int i) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            if (((Integer) ((br) it.next()).a).intValue() == i) {
                it.remove();
            }
        }
    }

    public long a() {
        return this.a + c();
    }

    public void a(int i, byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length + 8 + 4];
        ByteBuffer order = ByteBuffer.wrap(bArr2).order(ByteOrder.LITTLE_ENDIAN);
        order.putLong((long) (bArr2.length - 8)).putInt(i);
        order.put(bArr);
        br brVar = new br(Integer.valueOf(i), new a(bArr2));
        ListIterator listIterator = this.b.listIterator();
        while (listIterator.hasNext()) {
            if (((Integer) ((br) listIterator.next()).a).intValue() == i) {
                listIterator.set(brVar);
                return;
            }
        }
        this.b.add(brVar);
    }

    public void a(byte[] bArr) {
        if (bArr == null) {
            b(987894612);
        } else {
            a(987894612, bArr);
        }
    }

    public long b() {
        return this.a;
    }

    public long c() {
        long j = 32;
        for (br brVar : this.b) {
            j += (long) ((a) brVar.b).a.length;
        }
        return j;
    }

    public byte[] d() {
        return a(987894612);
    }

    public ByteBuffer[] e() {
        ByteBuffer[] byteBufferArr = new ByteBuffer[this.b.size() + 2];
        long c = c() - 8;
        byteBufferArr[0] = (ByteBuffer) ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(c).flip();
        int i = 1;
        for (br brVar : this.b) {
            i++;
            byteBufferArr[i] = ByteBuffer.wrap(((a) brVar.b).a);
        }
        byteBufferArr[i] = (ByteBuffer) ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN).putLong(c).putLong(2334950737559900225L).putLong(3617552046287187010L).flip();
        return byteBufferArr;
    }

    /* renamed from: f */
    public bs clone() {
        bs bsVar = new bs(this.a);
        for (br brVar : this.b) {
            bsVar.b.add(new br(brVar.a, brVar.b));
        }
        return bsVar;
    }
}
