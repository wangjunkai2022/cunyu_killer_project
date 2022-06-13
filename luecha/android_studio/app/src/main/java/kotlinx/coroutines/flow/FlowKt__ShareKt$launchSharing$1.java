package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: Share.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1", f = "Share.kt", i = {0, 1, 2, 3}, l = {206, 210, 211, 217}, m = "invokeSuspend", n = {"$this$launch", "$this$launch", "$this$launch", "$this$launch"}, s = {"L$0", "L$0", "L$0", "L$0"})
/* loaded from: classes4.dex */
public final class FlowKt__ShareKt$launchSharing$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Object $initialValue;
    final /* synthetic */ MutableSharedFlow $shared;
    final /* synthetic */ SharingStarted $started;
    final /* synthetic */ Flow $upstream;
    Object L$0;
    int label;
    private CoroutineScope p$;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ShareKt$launchSharing$1(SharingStarted sharingStarted, Flow flow, MutableSharedFlow mutableSharedFlow, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$started = sharingStarted;
        this.$upstream = flow;
        this.$shared = mutableSharedFlow;
        this.$initialValue = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        FlowKt__ShareKt$launchSharing$1 flowKt__ShareKt$launchSharing$1 = new FlowKt__ShareKt$launchSharing$1(this.$started, this.$upstream, this.$shared, this.$initialValue, continuation);
        flowKt__ShareKt$launchSharing$1.p$ = (CoroutineScope) obj;
        return flowKt__ShareKt$launchSharing$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((FlowKt__ShareKt$launchSharing$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0083 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /* Code decompiled incorrectly, please refer to instructions dump */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.label
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L_0x002e
            if (r1 == r5) goto L_0x0025
            if (r1 == r4) goto L_0x001d
            if (r1 == r3) goto L_0x0025
            if (r1 != r2) goto L_0x0015
            goto L_0x0025
        L_0x0015:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L_0x001d:
            java.lang.Object r1 = r7.L$0
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r8)
            goto L_0x0073
        L_0x0025:
            java.lang.Object r0 = r7.L$0
            kotlinx.coroutines.CoroutineScope r0 = (kotlinx.coroutines.CoroutineScope) r0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L_0x00a6
        L_0x002e:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.CoroutineScope r1 = r7.p$
            kotlinx.coroutines.flow.SharingStarted r8 = r7.$started
            kotlinx.coroutines.flow.SharingStarted$Companion r6 = kotlinx.coroutines.flow.SharingStarted.Companion
            kotlinx.coroutines.flow.SharingStarted r6 = r6.getEagerly()
            if (r8 != r6) goto L_0x004e
            kotlinx.coroutines.flow.Flow r8 = r7.$upstream
            kotlinx.coroutines.flow.MutableSharedFlow r2 = r7.$shared
            kotlinx.coroutines.flow.FlowCollector r2 = (kotlinx.coroutines.flow.FlowCollector) r2
            r7.L$0 = r1
            r7.label = r5
            java.lang.Object r8 = r8.collect(r2, r7)
            if (r8 != r0) goto L_0x00a6
            return r0
        L_0x004e:
            kotlinx.coroutines.flow.SharingStarted r8 = r7.$started
            kotlinx.coroutines.flow.SharingStarted$Companion r5 = kotlinx.coroutines.flow.SharingStarted.Companion
            kotlinx.coroutines.flow.SharingStarted r5 = r5.getLazily()
            r6 = 0
            if (r8 != r5) goto L_0x0084
            kotlinx.coroutines.flow.MutableSharedFlow r8 = r7.$shared
            kotlinx.coroutines.flow.StateFlow r8 = r8.getSubscriptionCount()
            kotlinx.coroutines.flow.Flow r8 = (kotlinx.coroutines.flow.Flow) r8
            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1 r2 = new kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1
            r2.<init>(r6)
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2
            r7.L$0 = r1
            r7.label = r4
            java.lang.Object r8 = kotlinx.coroutines.flow.FlowKt.first(r8, r2, r7)
            if (r8 != r0) goto L_0x0073
            return r0
        L_0x0073:
            kotlinx.coroutines.flow.Flow r8 = r7.$upstream
            kotlinx.coroutines.flow.MutableSharedFlow r2 = r7.$shared
            kotlinx.coroutines.flow.FlowCollector r2 = (kotlinx.coroutines.flow.FlowCollector) r2
            r7.L$0 = r1
            r7.label = r3
            java.lang.Object r8 = r8.collect(r2, r7)
            if (r8 != r0) goto L_0x00a6
            return r0
        L_0x0084:
            kotlinx.coroutines.flow.SharingStarted r8 = r7.$started
            kotlinx.coroutines.flow.MutableSharedFlow r3 = r7.$shared
            kotlinx.coroutines.flow.StateFlow r3 = r3.getSubscriptionCount()
            kotlinx.coroutines.flow.Flow r8 = r8.command(r3)
            kotlinx.coroutines.flow.Flow r8 = kotlinx.coroutines.flow.FlowKt.distinctUntilChanged(r8)
            kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2 r3 = new kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2
            r3.<init>(r6)
            kotlin.jvm.functions.Function2 r3 = (kotlin.jvm.functions.Function2) r3
            r7.L$0 = r1
            r7.label = r2
            java.lang.Object r8 = kotlinx.coroutines.flow.FlowKt.collectLatest(r8, r3, r7)
            if (r8 != r0) goto L_0x00a6
            return r0
        L_0x00a6:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
