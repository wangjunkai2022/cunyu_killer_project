package kotlinx.coroutines.flow;

import kotlin.Metadata;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: SafeCollector.common.kt */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class FlowKt__LimitKt$take$$inlined$unsafeFlow$1 implements Flow<T> {
    final /* synthetic */ int $count$inlined;
    final /* synthetic */ Flow $this_take$inlined;

    /* JADX WARN: Can't wrap try/catch for region: R(8:2|(2:4|(6:6|8|23|(1:(2:11|12)(2:13|14))(3:15|16|(1:18))|21|22))|7|8|23|(0)(0)|21|22) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0058, code lost:
        kotlinx.coroutines.flow.internal.FlowExceptions_commonKt.checkOwnership(r8, r7);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0036  */
    /* JADX WARN: Type inference failed for: r7v0, types: [kotlinx.coroutines.flow.FlowCollector, java.lang.Object, kotlinx.coroutines.flow.FlowCollector<? super T>] */
    /* JADX WARN: Type inference failed for: r7v1, types: [kotlin.Unit, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v2, types: [kotlinx.coroutines.flow.FlowCollector] */
    @Override // kotlinx.coroutines.flow.Flow
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector<? super T> r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$take$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L_0x0014
            r0 = r8
            kotlinx.coroutines.flow.FlowKt__LimitKt$take$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$take$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L_0x0014
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L_0x0019
        L_0x0014:
            kotlinx.coroutines.flow.FlowKt__LimitKt$take$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$take$$inlined$unsafeFlow$1$1
            r0.<init>(r8)
        L_0x0019:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0036
            if (r2 != r3) goto L_0x002e
            java.lang.Object r7 = r0.L$0
            kotlinx.coroutines.flow.FlowCollector r7 = (kotlinx.coroutines.flow.FlowCollector) r7
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: AbortFlowException -> 0x0057
            goto L_0x005b
        L_0x002e:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L_0x0036:
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r0
            kotlin.coroutines.Continuation r8 = (kotlin.coroutines.Continuation) r8
            kotlin.jvm.internal.Ref$IntRef r8 = new kotlin.jvm.internal.Ref$IntRef
            r8.<init>()
            kotlinx.coroutines.flow.Flow r2 = r6.$this_take$inlined     // Catch: AbortFlowException -> 0x0057
            kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1 r4 = new kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1     // Catch: AbortFlowException -> 0x0057
            int r5 = r6.$count$inlined     // Catch: AbortFlowException -> 0x0057
            r4.<init>(r8, r5, r7)     // Catch: AbortFlowException -> 0x0057
            kotlinx.coroutines.flow.FlowCollector r4 = (kotlinx.coroutines.flow.FlowCollector) r4     // Catch: AbortFlowException -> 0x0057
            r0.L$0 = r7     // Catch: AbortFlowException -> 0x0057
            r0.label = r3     // Catch: AbortFlowException -> 0x0057
            java.lang.Object r7 = r2.collect(r4, r0)     // Catch: AbortFlowException -> 0x0057
            if (r7 != r1) goto L_0x005b
            return r1
        L_0x0057:
            r8 = move-exception
            kotlinx.coroutines.flow.internal.FlowExceptions_commonKt.checkOwnership(r8, r7)
        L_0x005b:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$take$$inlined$unsafeFlow$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public FlowKt__LimitKt$take$$inlined$unsafeFlow$1(Flow flow, int i) {
        this.$this_take$inlined = flow;
        this.$count$inlined = i;
    }
}
