package kotlin.text;

import com.github.florent37.assets_audio_player.notification.NotificationAction;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: Regex.kt */
@Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public /* synthetic */ class Regex$findAll$2 extends FunctionReferenceImpl implements Function1<MatchResult, MatchResult> {
    public static final Regex$findAll$2 INSTANCE = new Regex$findAll$2();

    Regex$findAll$2() {
        super(1, MatchResult.class, NotificationAction.ACTION_NEXT, "next()Lkotlin/text/MatchResult;", 0);
    }

    public final MatchResult invoke(MatchResult matchResult) {
        Intrinsics.checkNotNullParameter(matchResult, "p0");
        return matchResult.next();
    }
}
