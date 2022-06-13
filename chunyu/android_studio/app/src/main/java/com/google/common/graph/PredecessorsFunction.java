package com.google.common.graph;

/* loaded from: classes2.dex */
public interface PredecessorsFunction<N> {
    @Override // com.google.common.graph.Graph
    Iterable<? extends N> predecessors(N n);
}
