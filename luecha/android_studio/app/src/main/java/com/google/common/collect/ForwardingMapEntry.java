package com.google.common.collect;

import com.google.common.base.Objects;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public abstract class ForwardingMapEntry<K, V> extends ForwardingObject implements Map.Entry<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingObject
    public abstract Map.Entry<K, V> delegate();

    @Override // java.util.Map.Entry
    public K getKey() {
        return delegate().getKey();
    }

    @Override // java.util.Map.Entry
    public V getValue() {
        return delegate().getValue();
    }

    @Override // java.util.Map.Entry
    public V setValue(V v) {
        return delegate().setValue(v);
    }

    @Override // java.util.Map.Entry, java.lang.Object
    public boolean equals(@NullableDecl Object obj) {
        return delegate().equals(obj);
    }

    @Override // java.util.Map.Entry, java.lang.Object
    public int hashCode() {
        return delegate().hashCode();
    }

    protected boolean standardEquals(@NullableDecl Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (!Objects.equal(getKey(), entry.getKey()) || !Objects.equal(getValue(), entry.getValue())) {
            return false;
        }
        return true;
    }

    protected int standardHashCode() {
        int i;
        K key = getKey();
        V value = getValue();
        int i2 = 0;
        if (key == null) {
            i = 0;
        } else {
            i = key.hashCode();
        }
        if (value != null) {
            i2 = value.hashCode();
        }
        return i ^ i2;
    }

    protected String standardToString() {
        return getKey() + "=" + getValue();
    }
}
