package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$unsafeTransform$$inlined$unsafeFlow$6"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1 implements Flow<R> {
    final /* synthetic */ Flow $this_unsafeTransform$inlined;
    final /* synthetic */ Function2 $transform$inlined$1;

    public FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1(Flow flow, Function2 function2) {
        this.$this_unsafeTransform$inlined = flow;
        this.$transform$inlined$1 = function2;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public Object collect(final FlowCollector flowCollector, Continuation continuation) {
        Object collect = this.$this_unsafeTransform$inlined.collect(new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.2
            /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
            /* JADX WARN: Removed duplicated region for block: B:16:0x0068  */
            /* JADX WARN: Removed duplicated region for block: B:21:0x0095  */
            /* JADX WARN: Removed duplicated region for block: B:25:0x00b1  */
            @Override // kotlinx.coroutines.flow.FlowCollector
            /* Code decompiled incorrectly, please refer to instructions dump */
            public java.lang.Object emit(java.lang.Object r10, kotlin.coroutines.Continuation r11) {
                /*
                    r9 = this;
                    boolean r0 = r11 instanceof kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1
                    if (r0 == 0) goto L_0x0014
                    r0 = r11
                    kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r1 = r1 & r2
                    if (r1 == 0) goto L_0x0014
                    int r11 = r0.label
                    int r11 = r11 - r2
                    r0.label = r11
                    goto L_0x0019
                L_0x0014:
                    kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2$1
                    r0.<init>(r11)
                L_0x0019:
                    java.lang.Object r11 = r0.result
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r2 = r0.label
                    r3 = 2
                    r4 = 1
                    if (r2 == 0) goto L_0x0068
                    if (r2 == r4) goto L_0x004e
                    if (r2 != r3) goto L_0x0046
                    java.lang.Object r10 = r0.L$7
                    java.lang.Object r10 = r0.L$6
                    kotlinx.coroutines.flow.FlowCollector r10 = (kotlinx.coroutines.flow.FlowCollector) r10
                    java.lang.Object r10 = r0.L$5
                    java.lang.Object r10 = r0.L$4
                    kotlin.coroutines.Continuation r10 = (kotlin.coroutines.Continuation) r10
                    java.lang.Object r10 = r0.L$3
                    java.lang.Object r10 = r0.L$2
                    kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2$1 r10 = (kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1) r10
                    java.lang.Object r10 = r0.L$1
                    java.lang.Object r10 = r0.L$0
                    kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2 r10 = (kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.AnonymousClass2) r10
                    kotlin.ResultKt.throwOnFailure(r11)
                    goto L_0x00ae
                L_0x0046:
                    java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                    java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                    r10.<init>(r11)
                    throw r10
                L_0x004e:
                    java.lang.Object r10 = r0.L$6
                    kotlinx.coroutines.flow.FlowCollector r10 = (kotlinx.coroutines.flow.FlowCollector) r10
                    java.lang.Object r2 = r0.L$5
                    java.lang.Object r4 = r0.L$4
                    kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                    java.lang.Object r5 = r0.L$3
                    java.lang.Object r6 = r0.L$2
                    kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2$1 r6 = (kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1) r6
                    java.lang.Object r7 = r0.L$1
                    java.lang.Object r8 = r0.L$0
                    kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2 r8 = (kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.AnonymousClass2) r8
                    kotlin.ResultKt.throwOnFailure(r11)
                    goto L_0x0093
                L_0x0068:
                    kotlin.ResultKt.throwOnFailure(r11)
                    kotlinx.coroutines.flow.FlowCollector r11 = kotlinx.coroutines.flow.FlowCollector.this
                    r2 = r0
                    kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                    kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1 r5 = r2
                    kotlin.jvm.functions.Function2 r5 = r5.$transform$inlined$1
                    r0.L$0 = r9
                    r0.L$1 = r10
                    r0.L$2 = r0
                    r0.L$3 = r10
                    r0.L$4 = r2
                    r0.L$5 = r10
                    r0.L$6 = r11
                    r0.label = r4
                    java.lang.Object r4 = r5.invoke(r10, r0)
                    if (r4 != r1) goto L_0x008b
                    return r1
                L_0x008b:
                    r8 = r9
                    r5 = r10
                    r7 = r5
                    r6 = r0
                    r10 = r11
                    r11 = r4
                    r4 = r2
                    r2 = r7
                L_0x0093:
                    if (r11 == 0) goto L_0x00b1
                    r0.L$0 = r8
                    r0.L$1 = r7
                    r0.L$2 = r6
                    r0.L$3 = r5
                    r0.L$4 = r4
                    r0.L$5 = r2
                    r0.L$6 = r10
                    r0.L$7 = r11
                    r0.label = r3
                    java.lang.Object r10 = r10.emit(r11, r0)
                    if (r10 != r1) goto L_0x00ae
                    return r1
                L_0x00ae:
                    kotlin.Unit r10 = kotlin.Unit.INSTANCE
                    goto L_0x00b3
                L_0x00b1:
                    kotlin.Unit r10 = kotlin.Unit.INSTANCE
                L_0x00b3:
                    return r10
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
            }

            public Object emit$$forInline(Object obj, Continuation continuation2) {
                InlineMarker.mark(4);
                new ContinuationImpl(continuation2) { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$.inlined.unsafeTransform.1.2.1
                    Object L$0;
                    Object L$1;
                    Object L$2;
                    Object L$3;
                    Object L$4;
                    Object L$5;
                    Object L$6;
                    Object L$7;
                    int label;
                    /* synthetic */ Object result;

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj2) {
                        this.result = obj2;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                };
                InlineMarker.mark(5);
                FlowCollector flowCollector2 = FlowCollector.this;
                Object invoke = this.$transform$inlined$1.invoke(obj, continuation2);
                if (invoke == null) {
                    return Unit.INSTANCE;
                }
                InlineMarker.mark(0);
                Object emit = flowCollector2.emit(invoke, continuation2);
                InlineMarker.mark(2);
                InlineMarker.mark(1);
                return emit;
            }
        }, continuation);
        return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
    }

    public Object collect$$forInline(final FlowCollector flowCollector, Continuation continuation) {
        InlineMarker.mark(4);
        new ContinuationImpl(continuation) { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.1
            int label;
            /* synthetic */ Object result;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.this.collect(null, this);
            }
        };
        InlineMarker.mark(5);
        InlineMarker.mark(0);
        this.$this_unsafeTransform$inlined.collect(new FlowCollector<T>() { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.2
            @Override // kotlinx.coroutines.flow.FlowCollector
            /* Code decompiled incorrectly, please refer to instructions dump */
            public java.lang.Object emit(java.lang.Object r10, kotlin.coroutines.Continuation r11) {
                /*
                    r9 = this;
                    boolean r0 = r11 instanceof kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1
                    if (r0 == 0) goto L_0x0014
                    r0 = r11
                    kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2$1 r0 = (kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r1 = r1 & r2
                    if (r1 == 0) goto L_0x0014
                    int r11 = r0.label
                    int r11 = r11 - r2
                    r0.label = r11
                    goto L_0x0019
                L_0x0014:
                    kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2$1 r0 = new kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2$1
                    r0.<init>(r11)
                L_0x0019:
                    java.lang.Object r11 = r0.result
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r2 = r0.label
                    r3 = 2
                    r4 = 1
                    if (r2 == 0) goto L_0x0068
                    if (r2 == r4) goto L_0x004e
                    if (r2 != r3) goto L_0x0046
                    java.lang.Object r10 = r0.L$7
                    java.lang.Object r10 = r0.L$6
                    kotlinx.coroutines.flow.FlowCollector r10 = (kotlinx.coroutines.flow.FlowCollector) r10
                    java.lang.Object r10 = r0.L$5
                    java.lang.Object r10 = r0.L$4
                    kotlin.coroutines.Continuation r10 = (kotlin.coroutines.Continuation) r10
                    java.lang.Object r10 = r0.L$3
                    java.lang.Object r10 = r0.L$2
                    kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2$1 r10 = (kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1) r10
                    java.lang.Object r10 = r0.L$1
                    java.lang.Object r10 = r0.L$0
                    kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2 r10 = (kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.AnonymousClass2) r10
                    kotlin.ResultKt.throwOnFailure(r11)
                    goto L_0x00ae
                L_0x0046:
                    java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                    java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                    r10.<init>(r11)
                    throw r10
                L_0x004e:
                    java.lang.Object r10 = r0.L$6
                    kotlinx.coroutines.flow.FlowCollector r10 = (kotlinx.coroutines.flow.FlowCollector) r10
                    java.lang.Object r2 = r0.L$5
                    java.lang.Object r4 = r0.L$4
                    kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                    java.lang.Object r5 = r0.L$3
                    java.lang.Object r6 = r0.L$2
                    kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2$1 r6 = (kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.AnonymousClass2.AnonymousClass1) r6
                    java.lang.Object r7 = r0.L$1
                    java.lang.Object r8 = r0.L$0
                    kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2 r8 = (kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.AnonymousClass2) r8
                    kotlin.ResultKt.throwOnFailure(r11)
                    goto L_0x0093
                L_0x0068:
                    kotlin.ResultKt.throwOnFailure(r11)
                    kotlinx.coroutines.flow.FlowCollector r11 = kotlinx.coroutines.flow.FlowCollector.this
                    r2 = r0
                    kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                    kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1 r5 = r2
                    kotlin.jvm.functions.Function2 r5 = r5.$transform$inlined$1
                    r0.L$0 = r9
                    r0.L$1 = r10
                    r0.L$2 = r0
                    r0.L$3 = r10
                    r0.L$4 = r2
                    r0.L$5 = r10
                    r0.L$6 = r11
                    r0.label = r4
                    java.lang.Object r4 = r5.invoke(r10, r0)
                    if (r4 != r1) goto L_0x008b
                    return r1
                L_0x008b:
                    r8 = r9
                    r5 = r10
                    r7 = r5
                    r6 = r0
                    r10 = r11
                    r11 = r4
                    r4 = r2
                    r2 = r7
                L_0x0093:
                    if (r11 == 0) goto L_0x00b1
                    r0.L$0 = r8
                    r0.L$1 = r7
                    r0.L$2 = r6
                    r0.L$3 = r5
                    r0.L$4 = r4
                    r0.L$5 = r2
                    r0.L$6 = r10
                    r0.L$7 = r11
                    r0.label = r3
                    java.lang.Object r10 = r10.emit(r11, r0)
                    if (r10 != r1) goto L_0x00ae
                    return r1
                L_0x00ae:
                    kotlin.Unit r10 = kotlin.Unit.INSTANCE
                    goto L_0x00b3
                L_0x00b1:
                    kotlin.Unit r10 = kotlin.Unit.INSTANCE
                L_0x00b3:
                    return r10
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
            }

            public Object emit$$forInline(Object obj, Continuation continuation2) {
                InlineMarker.mark(4);
                new ContinuationImpl(continuation2) { // from class: kotlinx.coroutines.flow.FlowKt__TransformKt$mapNotNull$.inlined.unsafeTransform.1.2.1
                    Object L$0;
                    Object L$1;
                    Object L$2;
                    Object L$3;
                    Object L$4;
                    Object L$5;
                    Object L$6;
                    Object L$7;
                    int label;
                    /* synthetic */ Object result;

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj2) {
                        this.result = obj2;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                };
                InlineMarker.mark(5);
                FlowCollector flowCollector2 = FlowCollector.this;
                Object invoke = this.$transform$inlined$1.invoke(obj, continuation2);
                if (invoke == null) {
                    return Unit.INSTANCE;
                }
                InlineMarker.mark(0);
                Object emit = flowCollector2.emit(invoke, continuation2);
                InlineMarker.mark(2);
                InlineMarker.mark(1);
                return emit;
            }
        }, continuation);
        InlineMarker.mark(2);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
