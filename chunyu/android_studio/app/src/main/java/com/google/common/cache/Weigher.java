package com.google.common.cache;

/* loaded from: classes4.dex */
public interface Weigher<K, V> {
    int weigh(K k, V v);
}
