package kotlin.text.jdk8;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchGroup;
import kotlin.text.MatchGroupCollection;
import kotlin.text.MatchNamedGroupCollection;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: RegexExtensions.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0002¨\u0006\u0005"}, d2 = {"get", "Lkotlin/text/MatchGroup;", "Lkotlin/text/MatchGroupCollection;", "name", "", "kotlin-stdlib-jdk8"}, k = 2, mv = {1, 1, 15}, pn = "kotlin.text")
/* loaded from: classes4.dex */
public final class RegexExtensionsJDK8Kt {
    public static final MatchGroup get(MatchGroupCollection matchGroupCollection, String str) {
        Intrinsics.checkParameterIsNotNull(matchGroupCollection, "$this$get");
        Intrinsics.checkParameterIsNotNull(str, "name");
        if (!(matchGroupCollection instanceof MatchNamedGroupCollection)) {
            matchGroupCollection = null;
        }
        MatchNamedGroupCollection matchNamedGroupCollection = (MatchNamedGroupCollection) matchGroupCollection;
        if (matchNamedGroupCollection != null) {
            return matchNamedGroupCollection.get(str);
        }
        throw new UnsupportedOperationException("Retrieving groups by name is not supported on this platform.");
    }
}
