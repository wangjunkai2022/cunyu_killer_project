package com.facebook.common.internal;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public class ImmutableSet<E> extends HashSet<E> {
    private ImmutableSet(Set<E> set) {
        super(set);
    }

    public static <E> ImmutableSet<E> copyOf(Set<E> set) {
        return new ImmutableSet<>(set);
    }

    public static <E> ImmutableSet<E> of(E... eArr) {
        HashSet hashSet = new HashSet();
        Collections.addAll(hashSet, eArr);
        return new ImmutableSet<>(hashSet);
    }
}
