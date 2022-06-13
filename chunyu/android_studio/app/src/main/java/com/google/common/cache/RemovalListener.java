package com.google.common.cache;

/* loaded from: classes4.dex */
public interface RemovalListener<K, V> {
    void onRemoval(RemovalNotification<K, V> removalNotification);
}
