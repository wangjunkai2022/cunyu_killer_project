package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: Combine.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}, l = {57, 79, 82}, m = "invokeSuspend", n = {"$this$flowScope", "size", "latestValues", "resultChannel", "nonClosed", "remainingAbsentValues", "lastReceivedEpoch", "currentEpoch", "$this$flowScope", "size", "latestValues", "resultChannel", "nonClosed", "remainingAbsentValues", "lastReceivedEpoch", "currentEpoch", "element", "results", "$this$flowScope", "size", "latestValues", "resultChannel", "nonClosed", "remainingAbsentValues", "lastReceivedEpoch", "currentEpoch", "element", "results"}, s = {"L$0", "I$0", "L$1", "L$2", "L$3", "I$1", "L$4", "B$0", "L$0", "I$0", "L$1", "L$2", "L$3", "I$1", "L$4", "I$2", "L$5", "L$6", "L$0", "I$0", "L$1", "L$2", "L$3", "I$1", "L$4", "I$2", "L$5", "L$6"})
/* loaded from: classes4.dex */
public final class CombineKt$combineInternal$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0 $arrayFactory;
    final /* synthetic */ Flow[] $flows;
    final /* synthetic */ FlowCollector $this_combineInternal;
    final /* synthetic */ Function3 $transform;
    byte B$0;
    int I$0;
    int I$1;
    int I$2;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;
    private CoroutineScope p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$combineInternal$2(FlowCollector flowCollector, Flow[] flowArr, Function0 function0, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.$this_combineInternal = flowCollector;
        this.$flows = flowArr;
        this.$arrayFactory = function0;
        this.$transform = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(this.$this_combineInternal, this.$flows, this.$arrayFactory, this.$transform, continuation);
        combineKt$combineInternal$2.p$ = (CoroutineScope) obj;
        return combineKt$combineInternal$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CombineKt$combineInternal$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x011f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0131 A[LOOP:1: B:26:0x0131->B:33:0x0152, LOOP_START, PHI: r2 r5 
      PHI: (r2v5 int) = (r2v4 int), (r2v6 int) binds: [B:25:0x012f, B:33:0x0152] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r5v5 kotlin.collections.IndexedValue) = (r5v4 kotlin.collections.IndexedValue), (r5v9 kotlin.collections.IndexedValue) binds: [B:25:0x012f, B:33:0x0152] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01da  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /* Code decompiled incorrectly, please refer to instructions dump */
    public final java.lang.Object invokeSuspend(java.lang.Object r25) {
        /*
        // Method dump skipped, instructions count: 477
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
