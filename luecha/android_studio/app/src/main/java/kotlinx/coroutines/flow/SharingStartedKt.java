package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.time.Duration;
import kotlinx.coroutines.flow.SharingStarted;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: SharingStarted.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a*\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, d2 = {"WhileSubscribed", "Lkotlinx/coroutines/flow/SharingStarted;", "Lkotlinx/coroutines/flow/SharingStarted$Companion;", "stopTimeout", "Lkotlin/time/Duration;", "replayExpiration", "WhileSubscribed-9tZugJw", "(Lkotlinx/coroutines/flow/SharingStarted$Companion;DD)Lkotlinx/coroutines/flow/SharingStarted;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class SharingStartedKt {
    /* renamed from: WhileSubscribed-9tZugJw$default  reason: not valid java name */
    public static /* synthetic */ SharingStarted m1465WhileSubscribed9tZugJw$default(SharingStarted.Companion companion, double d, double d2, int i, Object obj) {
        if ((i & 1) != 0) {
            d = Duration.Companion.m1389getZEROUwyO8pc();
        }
        if ((i & 2) != 0) {
            d2 = Duration.Companion.m1387getINFINITEUwyO8pc();
        }
        return m1464WhileSubscribed9tZugJw(companion, d, d2);
    }

    /* renamed from: WhileSubscribed-9tZugJw  reason: not valid java name */
    public static final SharingStarted m1464WhileSubscribed9tZugJw(SharingStarted.Companion companion, double d, double d2) {
        return new StartedWhileSubscribed(Duration.toLongMilliseconds-impl(d), Duration.toLongMilliseconds-impl(d2));
    }
}
