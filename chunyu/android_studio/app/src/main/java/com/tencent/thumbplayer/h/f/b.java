package com.tencent.thumbplayer.h.f;

/* loaded from: classes2.dex */
public final class b {
    public static final b e = new b(1920, 1920);
    public int b;
    public int c;
    public boolean a = true;
    public a d = a.First;

    /* loaded from: classes2.dex */
    public enum a {
        First,
        SAME
    }

    public b(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    public String toString() {
        return "[initWidth:" + this.b + ", initHeight:" + this.c + ", reConfigByRealFormat:" + this.a + ']';
    }
}
