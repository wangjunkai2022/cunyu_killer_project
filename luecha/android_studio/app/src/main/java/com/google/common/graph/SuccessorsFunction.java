package com.google.common.graph;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface SuccessorsFunction<N> {
    @Override // com.google.common.graph.Graph
    Iterable<? extends N> successors(N n);
}
