package com.tencent.liteav.network.a.b;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: BitSet.java */
/* loaded from: classes5.dex */
public final class a {
    private int a = 0;

    public a a(int i) {
        this.a = (1 << i) | this.a;
        return this;
    }

    public int a() {
        return this.a;
    }
}
