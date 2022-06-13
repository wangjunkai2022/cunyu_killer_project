package com.google.common.collect;

import java.util.Collection;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
abstract class HashMultimapGwtSerializationDependencies<K, V> extends AbstractSetMultimap<K, V> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMultimapGwtSerializationDependencies(Map<K, Collection<V>> map) {
        super(map);
    }
}
