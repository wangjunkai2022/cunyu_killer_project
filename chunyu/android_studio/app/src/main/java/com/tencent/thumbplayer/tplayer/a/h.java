package com.tencent.thumbplayer.tplayer.a;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class h {
    private static final Map<Integer, String> a = new HashMap();
    private int b;

    static {
        a.put(1, "IDLE");
        a.put(2, "PREPARING");
        a.put(3, "PREPARED");
    }

    public synchronized void a(int i) {
        this.b = i;
    }

    public synchronized boolean b(int i) {
        return this.b == i;
    }

    public synchronized String toString() {
        return "state[ cur : " + a.get(Integer.valueOf(this.b)) + " ]";
    }
}
