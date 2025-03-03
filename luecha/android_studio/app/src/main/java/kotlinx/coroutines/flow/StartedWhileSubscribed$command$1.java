package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: SharingStarted.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlinx/coroutines/flow/SharingCommand;", "count", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", i = {0, 0, 1, 1, 2, 2, 3, 3, 4, 4}, l = {179, 181, 183, 184, 186}, m = "invokeSuspend", n = {"$this$transformLatest", "count", "$this$transformLatest", "count", "$this$transformLatest", "count", "$this$transformLatest", "count", "$this$transformLatest", "count"}, s = {"L$0", "I$0", "L$0", "I$0", "L$0", "I$0", "L$0", "I$0", "L$0", "I$0"})
/* loaded from: classes4.dex */
final class StartedWhileSubscribed$command$1 extends SuspendLambda implements Function3<FlowCollector<? super SharingCommand>, Integer, Continuation<? super Unit>, Object> {
    int I$0;
    Object L$0;
    int label;
    private FlowCollector p$;
    private int p$0;
    final /* synthetic */ StartedWhileSubscribed this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartedWhileSubscribed$command$1(StartedWhileSubscribed startedWhileSubscribed, Continuation continuation) {
        super(3, continuation);
        this.this$0 = startedWhileSubscribed;
    }

    public final Continuation<Unit> create(FlowCollector<? super SharingCommand> flowCollector, int i, Continuation<? super Unit> continuation) {
        StartedWhileSubscribed$command$1 startedWhileSubscribed$command$1 = new StartedWhileSubscribed$command$1(this.this$0, continuation);
        startedWhileSubscribed$command$1.p$ = flowCollector;
        startedWhileSubscribed$command$1.p$0 = i;
        return startedWhileSubscribed$command$1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(FlowCollector<? super SharingCommand> flowCollector, Integer num, Continuation<? super Unit> continuation) {
        return ((StartedWhileSubscribed$command$1) create(flowCollector, num.intValue(), continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a2  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /* Code decompiled incorrectly, please refer to instructions dump */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r10.label
            r2 = 5
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L_0x0047
            if (r1 == r6) goto L_0x003f
            if (r1 == r5) goto L_0x0035
            if (r1 == r4) goto L_0x002b
            if (r1 == r3) goto L_0x0020
            if (r1 != r2) goto L_0x0018
            goto L_0x003f
        L_0x0018:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L_0x0020:
            int r1 = r10.I$0
            java.lang.Object r3 = r10.L$0
            kotlinx.coroutines.flow.FlowCollector r3 = (kotlinx.coroutines.flow.FlowCollector) r3
            kotlin.ResultKt.throwOnFailure(r11)
            goto L_0x00a3
        L_0x002b:
            int r1 = r10.I$0
            java.lang.Object r4 = r10.L$0
            kotlinx.coroutines.flow.FlowCollector r4 = (kotlinx.coroutines.flow.FlowCollector) r4
            kotlin.ResultKt.throwOnFailure(r11)
            goto L_0x008f
        L_0x0035:
            int r1 = r10.I$0
            java.lang.Object r5 = r10.L$0
            kotlinx.coroutines.flow.FlowCollector r5 = (kotlinx.coroutines.flow.FlowCollector) r5
            kotlin.ResultKt.throwOnFailure(r11)
            goto L_0x0073
        L_0x003f:
            java.lang.Object r0 = r10.L$0
            kotlinx.coroutines.flow.FlowCollector r0 = (kotlinx.coroutines.flow.FlowCollector) r0
            kotlin.ResultKt.throwOnFailure(r11)
            goto L_0x00b3
        L_0x0047:
            kotlin.ResultKt.throwOnFailure(r11)
            kotlinx.coroutines.flow.FlowCollector r11 = r10.p$
            int r1 = r10.p$0
            if (r1 <= 0) goto L_0x005f
            kotlinx.coroutines.flow.SharingCommand r2 = kotlinx.coroutines.flow.SharingCommand.START
            r10.L$0 = r11
            r10.I$0 = r1
            r10.label = r6
            java.lang.Object r11 = r11.emit(r2, r10)
            if (r11 != r0) goto L_0x00b3
            return r0
        L_0x005f:
            kotlinx.coroutines.flow.StartedWhileSubscribed r6 = r10.this$0
            long r6 = kotlinx.coroutines.flow.StartedWhileSubscribed.access$getStopTimeout$p(r6)
            r10.L$0 = r11
            r10.I$0 = r1
            r10.label = r5
            java.lang.Object r5 = kotlinx.coroutines.DelayKt.delay(r6, r10)
            if (r5 != r0) goto L_0x0072
            return r0
        L_0x0072:
            r5 = r11
        L_0x0073:
            kotlinx.coroutines.flow.StartedWhileSubscribed r11 = r10.this$0
            long r6 = kotlinx.coroutines.flow.StartedWhileSubscribed.access$getReplayExpiration$p(r11)
            r8 = 0
            int r11 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r11 <= 0) goto L_0x00a4
            kotlinx.coroutines.flow.SharingCommand r11 = kotlinx.coroutines.flow.SharingCommand.STOP
            r10.L$0 = r5
            r10.I$0 = r1
            r10.label = r4
            java.lang.Object r11 = r5.emit(r11, r10)
            if (r11 != r0) goto L_0x008e
            return r0
        L_0x008e:
            r4 = r5
        L_0x008f:
            kotlinx.coroutines.flow.StartedWhileSubscribed r11 = r10.this$0
            long r5 = kotlinx.coroutines.flow.StartedWhileSubscribed.access$getReplayExpiration$p(r11)
            r10.L$0 = r4
            r10.I$0 = r1
            r10.label = r3
            java.lang.Object r11 = kotlinx.coroutines.DelayKt.delay(r5, r10)
            if (r11 != r0) goto L_0x00a2
            return r0
        L_0x00a2:
            r3 = r4
        L_0x00a3:
            r5 = r3
        L_0x00a4:
            kotlinx.coroutines.flow.SharingCommand r11 = kotlinx.coroutines.flow.SharingCommand.STOP_AND_RESET_REPLAY_CACHE
            r10.L$0 = r5
            r10.I$0 = r1
            r10.label = r2
            java.lang.Object r11 = r5.emit(r11, r10)
            if (r11 != r0) goto L_0x00b3
            return r0
        L_0x00b3:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StartedWhileSubscribed$command$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
