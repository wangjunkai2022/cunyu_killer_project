package junit.runner;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface TestRunListener {
    public static final int STATUS_ERROR = 1;
    public static final int STATUS_FAILURE = 2;

    void testEnded(String str);

    void testFailed(int i, String str, String str2);

    void testRunEnded(long j);

    void testRunStarted(String str, int i);

    void testRunStopped(long j);

    void testStarted(String str);
}
