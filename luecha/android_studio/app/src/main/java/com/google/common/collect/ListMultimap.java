package com.google.common.collect;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ListMultimap<K, V> extends Multimap<K, V> {
    Map<K, Collection<V>> asMap();

    @Override // com.google.common.collect.ListMultimap
    boolean equals(@NullableDecl Object obj);

    List<V> get(@NullableDecl K k);

    List<V> removeAll(@NullableDecl Object obj);

    List<V> replaceValues(K k, Iterable<? extends V> iterable);
}
