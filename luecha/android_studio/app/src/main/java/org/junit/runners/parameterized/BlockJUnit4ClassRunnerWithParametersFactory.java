package org.junit.runners.parameterized;

import org.junit.runner.Runner;
import org.junit.runners.model.InitializationError;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class BlockJUnit4ClassRunnerWithParametersFactory implements ParametersRunnerFactory {
    @Override // org.junit.runners.parameterized.ParametersRunnerFactory
    public Runner createRunnerForTestWithParameters(TestWithParameters testWithParameters) throws InitializationError {
        return new BlockJUnit4ClassRunnerWithParameters(testWithParameters);
    }
}
