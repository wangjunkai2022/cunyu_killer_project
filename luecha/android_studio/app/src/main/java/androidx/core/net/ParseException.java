package androidx.core.net;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public class ParseException extends RuntimeException {
    public final String response;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ParseException(String str) {
        super(str);
        this.response = str;
    }
}
