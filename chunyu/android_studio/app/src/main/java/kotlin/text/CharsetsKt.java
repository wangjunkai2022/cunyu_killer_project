package kotlin.text;

import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: Charsets.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\b¨\u0006\u0004"}, d2 = {"charset", "Ljava/nio/charset/Charset;", "charsetName", "", "kotlin-stdlib"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class CharsetsKt {
    private static final Charset charset(String str) {
        Intrinsics.checkNotNullParameter(str, "charsetName");
        Charset forName = Charset.forName(str);
        Intrinsics.checkNotNullExpressionValue(forName, "forName(charsetName)");
        return forName;
    }
}
