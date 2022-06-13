package kotlin.time;

import com.umeng.analytics.pro.ai;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationUnitKt;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: DurationUnit.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u0001*\u00060\u0002j\u0002`\u0003H\u0001¨\u0006\u0004"}, d2 = {"shortName", "", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xi = 1, xs = "kotlin/time/DurationUnitKt")
/* loaded from: classes4.dex */
class DurationUnitKt__DurationUnitKt extends DurationUnitKt__DurationUnitJvmKt {

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: DurationUnit.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes5.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DurationUnit.values().length];
            iArr[DurationUnit.NANOSECONDS.ordinal()] = 1;
            iArr[DurationUnit.MICROSECONDS.ordinal()] = 2;
            iArr[DurationUnit.MILLISECONDS.ordinal()] = 3;
            iArr[DurationUnit.SECONDS.ordinal()] = 4;
            iArr[DurationUnit.MINUTES.ordinal()] = 5;
            iArr[DurationUnit.HOURS.ordinal()] = 6;
            iArr[DurationUnit.DAYS.ordinal()] = 7;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final String shortName(TimeUnit timeUnit) {
        Intrinsics.checkNotNullParameter(timeUnit, "$this$shortName");
        switch (DurationUnitKt.WhenMappings.$EnumSwitchMapping$0[timeUnit.ordinal()]) {
            case 1:
                return "ns";
            case 2:
                return "us";
            case 3:
                return "ms";
            case 4:
                return ai.az;
            case 5:
                return "m";
            case 6:
                return "h";
            case 7:
                return "d";
            default:
                throw new IllegalStateException(("Unknown unit: " + timeUnit).toString());
        }
    }
}
