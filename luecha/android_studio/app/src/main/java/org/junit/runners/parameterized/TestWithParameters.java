package org.junit.runners.parameterized;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.junit.runners.model.TestClass;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TestWithParameters {
    private final String name;
    private final List<Object> parameters;
    private final TestClass testClass;

    public TestWithParameters(String str, TestClass testClass, List<Object> list) {
        notNull(str, "The name is missing.");
        notNull(testClass, "The test class is missing.");
        notNull(list, "The parameters are missing.");
        this.name = str;
        this.testClass = testClass;
        this.parameters = Collections.unmodifiableList(new ArrayList(list));
    }

    public String getName() {
        return this.name;
    }

    public TestClass getTestClass() {
        return this.testClass;
    }

    public List<Object> getParameters() {
        return this.parameters;
    }

    public int hashCode() {
        return ((((this.name.hashCode() + 14747) * 14747) + this.testClass.hashCode()) * 14747) + this.parameters.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TestWithParameters testWithParameters = (TestWithParameters) obj;
        return this.name.equals(testWithParameters.name) && this.parameters.equals(testWithParameters.parameters) && this.testClass.equals(testWithParameters.testClass);
    }

    public String toString() {
        return this.testClass.getName() + " '" + this.name + "' with parameters " + this.parameters;
    }

    private static void notNull(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }
}
