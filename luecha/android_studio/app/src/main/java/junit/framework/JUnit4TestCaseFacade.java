package junit.framework;

import org.junit.runner.Describable;
import org.junit.runner.Description;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class JUnit4TestCaseFacade implements Test, Describable {
    private final Description fDescription;

    @Override // junit.framework.Test
    public int countTestCases() {
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JUnit4TestCaseFacade(Description description) {
        this.fDescription = description;
    }

    public String toString() {
        return getDescription().toString();
    }

    @Override // junit.framework.Test
    public void run(TestResult testResult) {
        throw new RuntimeException("This test stub created only for informational purposes.");
    }

    @Override // org.junit.runner.Describable
    public Description getDescription() {
        return this.fDescription;
    }
}
