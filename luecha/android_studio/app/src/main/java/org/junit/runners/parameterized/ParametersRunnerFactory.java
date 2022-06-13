package org.junit.runners.parameterized;

import org.junit.runner.Runner;
import org.junit.runners.model.InitializationError;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ParametersRunnerFactory {
    Runner createRunnerForTestWithParameters(TestWithParameters testWithParameters) throws InitializationError;
}
