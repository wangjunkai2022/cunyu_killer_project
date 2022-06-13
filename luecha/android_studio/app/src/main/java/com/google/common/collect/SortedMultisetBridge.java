package com.google.common.collect;

import java.util.SortedSet;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
interface SortedMultisetBridge<E> extends Multiset<E> {
    @Override // com.google.common.collect.Multiset
    SortedSet<E> elementSet();
}
