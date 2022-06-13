package com.umeng.analytics.pro;

import com.umeng.analytics.pro.bj;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* compiled from: TDeserializer.java */
/* loaded from: classes3.dex */
public class at {
    private final bp a;
    private final cc b;

    public at() {
        this(new bj.a());
    }

    public at(br brVar) {
        cc ccVar = new cc();
        this.b = ccVar;
        this.a = brVar.a(ccVar);
    }

    public void a(aq aqVar, byte[] bArr) throws aw {
        try {
            this.b.a(bArr);
            aqVar.read(this.a);
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public void a(aq aqVar, String str, String str2) throws aw {
        try {
            try {
                a(aqVar, str.getBytes(str2));
            } catch (UnsupportedEncodingException unused) {
                throw new aw("JVM DOES NOT SUPPORT ENCODING: " + str2);
            }
        } finally {
            this.a.B();
        }
    }

    public void a(aq aqVar, byte[] bArr, ax axVar, ax... axVarArr) throws aw {
        try {
            try {
                if (j(bArr, axVar, axVarArr) != null) {
                    aqVar.read(this.a);
                }
            } catch (Exception e) {
                throw new aw(e);
            }
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    public Boolean a(byte[] bArr, ax axVar, ax... axVarArr) throws aw {
        return (Boolean) a((byte) 2, bArr, axVar, axVarArr);
    }

    public Byte b(byte[] bArr, ax axVar, ax... axVarArr) throws aw {
        return (Byte) a((byte) 3, bArr, axVar, axVarArr);
    }

    public Double c(byte[] bArr, ax axVar, ax... axVarArr) throws aw {
        return (Double) a((byte) 4, bArr, axVar, axVarArr);
    }

    public Short d(byte[] bArr, ax axVar, ax... axVarArr) throws aw {
        return (Short) a((byte) 6, bArr, axVar, axVarArr);
    }

    public Integer e(byte[] bArr, ax axVar, ax... axVarArr) throws aw {
        return (Integer) a((byte) 8, bArr, axVar, axVarArr);
    }

    public Long f(byte[] bArr, ax axVar, ax... axVarArr) throws aw {
        return (Long) a((byte) 10, bArr, axVar, axVarArr);
    }

    public String g(byte[] bArr, ax axVar, ax... axVarArr) throws aw {
        return (String) a((byte) 11, bArr, axVar, axVarArr);
    }

    public ByteBuffer h(byte[] bArr, ax axVar, ax... axVarArr) throws aw {
        return (ByteBuffer) a((byte) 100, bArr, axVar, axVarArr);
    }

    public Short i(byte[] bArr, ax axVar, ax... axVarArr) throws aw {
        Short sh;
        try {
            try {
                if (j(bArr, axVar, axVarArr) != null) {
                    this.a.j();
                    sh = Short.valueOf(this.a.l().c);
                } else {
                    sh = null;
                }
                return sh;
            } catch (Exception e) {
                throw new aw(e);
            }
        } finally {
            this.b.e();
            this.a.B();
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Try blocks wrapping queue limit reached! Please report as an issue!
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:88)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:58)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:452)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:51)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    private java.lang.Object a(byte r1, byte[] r2, com.umeng.analytics.pro.ax r3, com.umeng.analytics.pro.ax... r4) throws com.umeng.analytics.pro.aw {
        /*
            r0 = this;
            com.umeng.analytics.pro.bk r2 = r0.j(r2, r3, r4)     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r2 == 0) goto L_0x009e
            r3 = 2
            if (r1 == r3) goto L_0x008f
            r3 = 3
            if (r1 == r3) goto L_0x0080
            r3 = 4
            if (r1 == r3) goto L_0x0071
            r3 = 6
            if (r1 == r3) goto L_0x0062
            r3 = 8
            if (r1 == r3) goto L_0x0053
            r3 = 100
            r4 = 11
            if (r1 == r3) goto L_0x0048
            r3 = 10
            if (r1 == r3) goto L_0x0039
            if (r1 == r4) goto L_0x0024
            goto L_0x009e
        L_0x0024:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r4) goto L_0x009e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.lang.String r1 = r1.z()     // Catch: Exception -> 0x00a2, all -> 0x00a0
        L_0x002e:
            com.umeng.analytics.pro.cc r2 = r0.b
            r2.e()
            com.umeng.analytics.pro.bp r2 = r0.a
            r2.B()
            return r1
        L_0x0039:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r3) goto L_0x009e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            long r1 = r1.x()     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch: Exception -> 0x00a2, all -> 0x00a0
            goto L_0x002e
        L_0x0048:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r4) goto L_0x009e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.nio.ByteBuffer r1 = r1.A()     // Catch: Exception -> 0x00a2, all -> 0x00a0
            goto L_0x002e
        L_0x0053:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r3) goto L_0x009e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            int r1 = r1.w()     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: Exception -> 0x00a2, all -> 0x00a0
            goto L_0x002e
        L_0x0062:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r3) goto L_0x009e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            short r1 = r1.v()     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.lang.Short r1 = java.lang.Short.valueOf(r1)     // Catch: Exception -> 0x00a2, all -> 0x00a0
            goto L_0x002e
        L_0x0071:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r3) goto L_0x009e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            double r1 = r1.y()     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.lang.Double r1 = java.lang.Double.valueOf(r1)     // Catch: Exception -> 0x00a2, all -> 0x00a0
            goto L_0x002e
        L_0x0080:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r3) goto L_0x009e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            byte r1 = r1.u()     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.lang.Byte r1 = java.lang.Byte.valueOf(r1)     // Catch: Exception -> 0x00a2, all -> 0x00a0
            goto L_0x002e
        L_0x008f:
            byte r1 = r2.b     // Catch: Exception -> 0x00a2, all -> 0x00a0
            if (r1 != r3) goto L_0x009e
            com.umeng.analytics.pro.bp r1 = r0.a     // Catch: Exception -> 0x00a2, all -> 0x00a0
            boolean r1 = r1.t()     // Catch: Exception -> 0x00a2, all -> 0x00a0
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)     // Catch: Exception -> 0x00a2, all -> 0x00a0
            goto L_0x002e
        L_0x009e:
            r1 = 0
            goto L_0x002e
        L_0x00a0:
            r1 = move-exception
            goto L_0x00a9
        L_0x00a2:
            r1 = move-exception
            com.umeng.analytics.pro.aw r2 = new com.umeng.analytics.pro.aw     // Catch: all -> 0x00a0
            r2.<init>(r1)     // Catch: all -> 0x00a0
            throw r2     // Catch: all -> 0x00a0
        L_0x00a9:
            com.umeng.analytics.pro.cc r2 = r0.b
            r2.e()
            com.umeng.analytics.pro.bp r2 = r0.a
            r2.B()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.at.a(byte, byte[], com.umeng.analytics.pro.ax, com.umeng.analytics.pro.ax[]):java.lang.Object");
    }

    private bk j(byte[] bArr, ax axVar, ax... axVarArr) throws aw {
        this.b.a(bArr);
        int length = axVarArr.length + 1;
        ax[] axVarArr2 = new ax[length];
        int i = 0;
        axVarArr2[0] = axVar;
        int i2 = 0;
        while (i2 < axVarArr.length) {
            int i3 = i2 + 1;
            axVarArr2[i3] = axVarArr[i2];
            i2 = i3;
        }
        this.a.j();
        bk bkVar = null;
        while (i < length) {
            bkVar = this.a.l();
            if (bkVar.b == 0 || bkVar.c > axVarArr2[i].a()) {
                return null;
            }
            if (bkVar.c != axVarArr2[i].a()) {
                bs.a(this.a, bkVar.b);
                this.a.m();
            } else {
                i++;
                if (i < length) {
                    this.a.j();
                }
            }
        }
        return bkVar;
    }

    public void a(aq aqVar, String str) throws aw {
        a(aqVar, str.getBytes());
    }
}
