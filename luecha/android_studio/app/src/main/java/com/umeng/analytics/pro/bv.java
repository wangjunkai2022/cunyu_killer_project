package com.umeng.analytics.pro;

import java.util.BitSet;

/* compiled from: TTupleProtocol.java */
/* loaded from: classes4.dex */
public final class bv extends bj {

    /* compiled from: TTupleProtocol.java */
    /* loaded from: classes4.dex */
    public static class a implements br {
        @Override // com.umeng.analytics.pro.br
        public bp a(cd cdVar) {
            return new bv(cdVar);
        }
    }

    public bv(cd cdVar) {
        super(cdVar);
    }

    @Override // com.umeng.analytics.pro.bp
    public Class<? extends bx> D() {
        return ca.class;
    }

    public void a(BitSet bitSet, int i) throws aw {
        for (byte b : b(bitSet, i)) {
            a(b);
        }
    }

    public BitSet b(int i) throws aw {
        int ceil = (int) Math.ceil(((double) i) / 8.0d);
        byte[] bArr = new byte[ceil];
        for (int i2 = 0; i2 < ceil; i2++) {
            bArr[i2] = u();
        }
        return a(bArr);
    }

    public static BitSet a(byte[] bArr) {
        BitSet bitSet = new BitSet();
        for (int i = 0; i < bArr.length * 8; i++) {
            if ((bArr[(bArr.length - (i / 8)) - 1] & (1 << (i % 8))) > 0) {
                bitSet.set(i);
            }
        }
        return bitSet;
    }

    public static byte[] b(BitSet bitSet, int i) {
        int ceil = (int) Math.ceil(((double) i) / 8.0d);
        byte[] bArr = new byte[ceil];
        for (int i2 = 0; i2 < bitSet.length(); i2++) {
            if (bitSet.get(i2)) {
                int i3 = (ceil - (i2 / 8)) - 1;
                bArr[i3] = (byte) ((1 << (i2 % 8)) | bArr[i3]);
            }
        }
        return bArr;
    }
}
