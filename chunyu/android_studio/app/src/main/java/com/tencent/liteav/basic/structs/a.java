package com.tencent.liteav.basic.structs;

/* compiled from: TXSAudioPacket.java */
/* loaded from: classes2.dex */
public class a implements Cloneable {
    public int a;
    public int b;
    public int c;
    public int d;
    public long e;
    public byte[] f;
    public int g;
    public int h;

    @Override // java.lang.Object
    public Object clone() {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return null;
        }
    }
}
