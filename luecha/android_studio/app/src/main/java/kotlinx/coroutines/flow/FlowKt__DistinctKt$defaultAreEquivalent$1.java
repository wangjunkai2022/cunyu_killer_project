package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: Distinct.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "old", "", "new", "invoke"}, k = 3, mv = {1, 4, 0})
/* loaded from: classes4.dex */
final class FlowKt__DistinctKt$defaultAreEquivalent$1 extends Lambda implements Function2<Object, Object, Boolean> {
    public static final FlowKt__DistinctKt$defaultAreEquivalent$1 INSTANCE = new FlowKt__DistinctKt$defaultAreEquivalent$1();

    FlowKt__DistinctKt$defaultAreEquivalent$1() {
        super(2);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [boolean, java.lang.Boolean] */
    @Override // kotlin.jvm.functions.Function2
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Boolean invoke2(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }
}
