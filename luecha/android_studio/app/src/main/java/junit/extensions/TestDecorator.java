package junit.extensions;

import junit.framework.Assert;
import junit.framework.Test;
import junit.framework.TestResult;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TestDecorator extends Assert implements Test {
    protected Test fTest;

    public TestDecorator(Test test) {
        this.fTest = test;
    }

    public void basicRun(TestResult testResult) {
        this.fTest.run(testResult);
    }

    @Override // junit.framework.Test
    public int countTestCases() {
        return this.fTest.countTestCases();
    }

    @Override // junit.framework.Test
    public void run(TestResult testResult) {
        basicRun(testResult);
    }

    public String toString() {
        return this.fTest.toString();
    }

    public Test getTest() {
        return this.fTest;
    }
}
