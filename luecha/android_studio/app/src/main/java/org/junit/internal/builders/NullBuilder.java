package org.junit.internal.builders;

import org.junit.runner.Runner;
import org.junit.runners.model.RunnerBuilder;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class NullBuilder extends RunnerBuilder {
    @Override // org.junit.runners.model.RunnerBuilder
    public Runner runnerForClass(Class<?> cls) throws Throwable {
        return null;
    }
}
