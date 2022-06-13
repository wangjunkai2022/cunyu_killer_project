package com.google.common.collect;

import com.google.common.base.Objects;
import com.google.common.collect.Maps;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes5.dex */
public abstract class ForwardingMap<K, V> extends ForwardingObject implements Map<K, V> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingObject
    public abstract Map<K, V> delegate();

    @Override // java.util.Map
    public int size() {
        return delegate().size();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return delegate().isEmpty();
    }

    @Override // java.util.Map
    public V remove(Object obj) {
        return delegate().remove(obj);
    }

    @Override // java.util.Map
    public void clear() {
        delegate().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return delegate().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        return delegate().containsValue(obj);
    }

    @Override // java.util.Map
    public V get(@NullableDecl Object obj) {
        return delegate().get(obj);
    }

    @Override // java.util.Map, com.google.common.collect.BiMap
    public V put(K k, V v) {
        return delegate().put(k, v);
    }

    @Override // java.util.Map, com.google.common.collect.BiMap
    public void putAll(Map<? extends K, ? extends V> map) {
        delegate().putAll(map);
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return delegate().keySet();
    }

    @Override // java.util.Map, com.google.common.collect.BiMap
    public Collection<V> values() {
        return delegate().values();
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return delegate().entrySet();
    }

    @Override // java.util.Map, java.lang.Object
    public boolean equals(@NullableDecl Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // java.util.Map, java.lang.Object
    public int hashCode() {
        return delegate().hashCode();
    }

    protected void standardPutAll(Map<? extends K, ? extends V> map) {
        Maps.putAllImpl(this, map);
    }

    protected V standardRemove(@NullableDecl Object obj) {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (Objects.equal(next.getKey(), obj)) {
                V value = next.getValue();
                it.remove();
                return value;
            }
        }
        return null;
    }

    protected void standardClear() {
        Iterators.clear(entrySet().iterator());
    }

    /* loaded from: classes5.dex */
    protected class StandardKeySet extends Maps.KeySet<K, V> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StandardKeySet() {
            super(r1);
            ForwardingMap.this = r1;
        }
    }

    protected boolean standardContainsKey(@NullableDecl Object obj) {
        return Maps.containsKeyImpl(this, obj);
    }

    /* loaded from: classes5.dex */
    protected class StandardValues extends Maps.Values<K, V> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StandardValues() {
            super(r1);
            ForwardingMap.this = r1;
        }
    }

    protected boolean standardContainsValue(@NullableDecl Object obj) {
        return Maps.containsValueImpl(this, obj);
    }

    /* loaded from: classes5.dex */
    protected abstract class StandardEntrySet extends Maps.EntrySet<K, V> {
        public StandardEntrySet() {
            ForwardingMap.this = r1;
        }

        @Override // com.google.common.collect.Maps.EntrySet
        Map<K, V> map() {
            return ForwardingMap.this;
        }
    }

    protected boolean standardIsEmpty() {
        return !entrySet().iterator().hasNext();
    }

    protected boolean standardEquals(@NullableDecl Object obj) {
        return Maps.equalsImpl(this, obj);
    }

    protected int standardHashCode() {
        return Sets.hashCodeImpl(entrySet());
    }

    protected String standardToString() {
        return Maps.toStringImpl(this);
    }
}
