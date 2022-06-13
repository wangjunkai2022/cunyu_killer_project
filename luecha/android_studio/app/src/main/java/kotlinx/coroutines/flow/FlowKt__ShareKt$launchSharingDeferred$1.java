package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: Share.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1", f = "Share.kt", i = {0, 0, 0}, l = {415}, m = "invokeSuspend", n = {"$this$launch", "state", "$this$collect$iv"}, s = {"L$0", "L$1", "L$2"})
/* loaded from: classes4.dex */
public final class FlowKt__ShareKt$launchSharingDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ CompletableDeferred $result;
    final /* synthetic */ Flow $upstream;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    private CoroutineScope p$;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ShareKt$launchSharingDeferred$1(Flow flow, CompletableDeferred completableDeferred, Continuation continuation) {
        super(2, continuation);
        this.$upstream = flow;
        this.$result = completableDeferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        FlowKt__ShareKt$launchSharingDeferred$1 flowKt__ShareKt$launchSharingDeferred$1 = new FlowKt__ShareKt$launchSharingDeferred$1(this.$upstream, this.$result, continuation);
        flowKt__ShareKt$launchSharingDeferred$1.p$ = (CoroutineScope) obj;
        return flowKt__ShareKt$launchSharingDeferred$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((FlowKt__ShareKt$launchSharingDeferred$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, kotlinx.coroutines.flow.MutableStateFlow] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope = this.p$;
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = (MutableStateFlow) 0;
                Flow flow = this.$upstream;
                this.L$0 = coroutineScope;
                this.L$1 = objectRef;
                this.L$2 = flow;
                this.label = 1;
                if (flow.collect(new FlowCollector<T>(coroutineScope, objectRef) { // from class: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1$invokeSuspend$$inlined$collect$1
                    final /* synthetic */ Ref.ObjectRef $state$inlined;
                    final /* synthetic */ CoroutineScope $this_launch$inlined;

                    {
                        this.$this_launch$inlined = r2;
                        this.$state$inlined = r3;
                    }

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
                            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1 r0 = kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1.this
                            kotlinx.coroutines.CompletableDeferred r0 = r0.$result
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
                }, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i == 1) {
                Flow flow2 = (Flow) this.L$2;
                Ref.ObjectRef objectRef2 = (Ref.ObjectRef) this.L$1;
                CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        } catch (Throwable th) {
            this.$result.completeExceptionally(th);
            throw th;
        }
    }
}
