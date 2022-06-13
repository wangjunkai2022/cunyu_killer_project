package com.tencent.thumbplayer.utils;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class g<K, V> {
    private Map<K, V> a = new HashMap();

    public g<K, V> a(K k, V v) {
        this.a.put(k, v);
        return this;
    }

    public Map<K, V> a() {
        return this.a;
    }
}
