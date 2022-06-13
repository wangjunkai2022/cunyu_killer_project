package junit.framework;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class AssertionFailedError extends AssertionError {
    private static final long serialVersionUID = 1;

    private static String defaultString(String str) {
        return str == null ? "" : str;
    }

    public AssertionFailedError() {
    }

    public AssertionFailedError(String str) {
        super(defaultString(str));
    }
}
