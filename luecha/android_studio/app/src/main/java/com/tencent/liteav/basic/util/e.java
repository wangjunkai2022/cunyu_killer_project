package com.tencent.liteav.basic.util;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: Size.java */
/* loaded from: classes5.dex */
public class e {
    public int a;
    public int b;

    public e() {
        this(0, 0);
    }

    public e(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return eVar.a == this.a && eVar.b == this.b;
    }

    public int hashCode() {
        return (this.a * 32713) + this.b;
    }

    public String toString() {
        return "Size(" + this.a + ", " + this.b + ")";
    }
}
