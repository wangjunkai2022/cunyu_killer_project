package org.junit.internal.runners.model;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
@Deprecated
/* loaded from: classes5.dex */
public class MultipleFailureException extends org.junit.runners.model.MultipleFailureException {
    private static final long serialVersionUID = 1;

    public MultipleFailureException(List<Throwable> list) {
        super(list);
    }
}
