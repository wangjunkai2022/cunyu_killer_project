package com.google.common.graph;

/* loaded from: classes2.dex */
public interface SuccessorsFunction<N> {
    @Override // com.google.common.graph.Graph
    Iterable<? extends N> successors(N n);
}
