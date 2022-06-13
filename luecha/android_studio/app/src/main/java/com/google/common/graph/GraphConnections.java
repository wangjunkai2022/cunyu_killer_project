package com.google.common.graph;

import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
interface GraphConnections<N, V> {
    void addPredecessor(N n, V v);

    V addSuccessor(N n, V v);

    Set<N> adjacentNodes();

    Set<N> predecessors();

    void removePredecessor(N n);

    V removeSuccessor(N n);

    Set<N> successors();

    @NullableDecl
    V value(N n);
}
