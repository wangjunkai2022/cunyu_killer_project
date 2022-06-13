package com.google.common.graph;

import com.google.common.base.Optional;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
abstract class AbstractGraphBuilder<N> {
    final boolean directed;
    boolean allowsSelfLoops = false;
    ElementOrder<N> nodeOrder = ElementOrder.insertion();
    Optional<Integer> expectedNodeCount = Optional.absent();

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractGraphBuilder(boolean z) {
        this.directed = z;
    }
}
