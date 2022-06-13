package com.google.common.hash;

import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface Funnel<T> extends Serializable {
    void funnel(T t, PrimitiveSink primitiveSink);
}
