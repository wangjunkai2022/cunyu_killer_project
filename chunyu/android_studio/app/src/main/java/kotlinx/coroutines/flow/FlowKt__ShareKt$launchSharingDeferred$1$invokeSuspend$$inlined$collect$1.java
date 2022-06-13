package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: Collect.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class FlowKt__ShareKt$launchSharingDeferred$1$invokeSuspend$$inlined$collect$1 implements FlowCollector<T> {
    final /* synthetic */ Ref.ObjectRef $state$inlined;
    final /* synthetic */ CoroutineScope $this_launch$inlined;
    final /* synthetic */ FlowKt__ShareKt$launchSharingDeferred$1 this$0;

    public FlowKt__ShareKt$launchSharingDeferred$1$invokeSuspend$$inlined$collect$1(FlowKt__ShareKt$launchSharingDeferred$1 flowKt__ShareKt$launchSharingDeferred$1, CoroutineScope coroutineScope, Ref.ObjectRef objectRef) {
        this.this$0 = flowKt__ShareKt$launchSharingDeferred$1;
        this.$this_launch$inlined = coroutineScope;
        this.$state$inlined = objectRef;
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [T, kotlinx.coroutines.flow.MutableStateFlow] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.Object emit(java.lang.Object r3, kotlin.coroutines.Continuation r4) {
        /*
            r2 = this;
            kotlin.jvm.internal.Ref$ObjectRef r4 = r2.$state$inlined
            T r4 = r4.element
            kotlinx.coroutines.flow.MutableStateFlow r4 = (kotlinx.coroutines.flow.MutableStateFlow) r4
            if (r4 == 0) goto L_0x000e
            r4.setValue(r3)
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            goto L_0x0025
        L_0x000e:
            kotlin.jvm.internal.Ref$ObjectRef r4 = r2.$state$inlined
            kotlinx.coroutines.flow.MutableStateFlow r3 = kotlinx.coroutines.flow.StateFlowKt.MutableStateFlow(r3)
            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1 r0 = r2.this$0
            kotlinx.coroutines.CompletableDeferred<kotlinx.coroutines.flow.StateFlow<T>> r0 = r0.$result
            kotlinx.coroutines.flow.StateFlow r1 = kotlinx.coroutines.flow.FlowKt.asStateFlow(r3)
            r0.complete(r1)
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            r4.element = r3
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
        L_0x0025:
            java.lang.Object r4 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r3 != r4) goto L_0x002c
            return r3
        L_0x002c:
            kotlin.Unit r3 = kotlin.Unit.INSTANCE
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1$invokeSuspend$$inlined$collect$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
