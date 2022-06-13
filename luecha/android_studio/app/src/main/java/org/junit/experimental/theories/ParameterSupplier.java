package org.junit.experimental.theories;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public abstract class ParameterSupplier {
    public abstract List<PotentialAssignment> getValueSources(ParameterSignature parameterSignature) throws Throwable;
}
