package org.junit.internal.builders;

import org.junit.internal.runners.SuiteMethod;
import org.junit.runner.Runner;
import org.junit.runners.model.RunnerBuilder;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class SuiteMethodBuilder extends RunnerBuilder {
    @Override // org.junit.runners.model.RunnerBuilder
    public Runner runnerForClass(Class<?> cls) throws Throwable {
        if (hasSuiteMethod(cls)) {
            return new SuiteMethod(cls);
        }
        return null;
    }

    public boolean hasSuiteMethod(Class<?> cls) {
        try {
            cls.getMethod("suite", new Class[0]);
            return true;
        } catch (NoSuchMethodException unused) {
            return false;
        }
    }
}
