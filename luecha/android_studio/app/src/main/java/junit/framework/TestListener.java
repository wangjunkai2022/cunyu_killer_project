package junit.framework;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface TestListener {
    void addError(Test test, Throwable th);

    void addFailure(Test test, AssertionFailedError assertionFailedError);

    void endTest(Test test);

    void startTest(Test test);
}
