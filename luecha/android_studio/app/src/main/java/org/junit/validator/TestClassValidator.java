package org.junit.validator;

import java.util.List;
import org.junit.runners.model.TestClass;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface TestClassValidator {
    List<Exception> validateTestClass(TestClass testClass);
}
