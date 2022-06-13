package com.google.common.collect;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class EmptyImmutableListMultimap extends ImmutableListMultimap<Object, Object> {
    static final EmptyImmutableListMultimap INSTANCE = new EmptyImmutableListMultimap();
    private static final long serialVersionUID = 0;

    private EmptyImmutableListMultimap() {
        super(ImmutableMap.of(), 0);
    }

    private Object readResolve() {
        return INSTANCE;
    }
}
