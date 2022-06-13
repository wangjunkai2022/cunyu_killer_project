package com.tencent.liteav.basic.structs;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXSAudioPacket.java */
/* loaded from: classes5.dex */
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
