package com.tencent.thumbplayer.utils;

import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
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
