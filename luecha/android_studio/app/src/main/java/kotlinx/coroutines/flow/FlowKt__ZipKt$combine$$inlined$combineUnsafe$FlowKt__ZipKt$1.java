package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1 implements Flow<R> {
    final /* synthetic */ Flow[] $flows$inlined;
    final /* synthetic */ Function4 $transform$inlined$1;

    public FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1(Flow[] flowArr, Function4 function4) {
        this.$flows$inlined = flowArr;
        this.$transform$inlined$1 = function4;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector flowCollector, Continuation continuation) {
        Object combineInternal = CombineKt.combineInternal(flowCollector, this.$flows$inlined, FlowKt__ZipKt.nullArrayFactory$FlowKt__ZipKt(), new AnonymousClass2(null), continuation);
        if (combineInternal == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return combineInternal;
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
      classes5.dex
     */
    /* compiled from: Zip.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1$lambda$1"}, k = 3, mv = {1, 4, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1$2", f = "Zip.kt", i = {0, 0, 0, 0, 1, 1}, l = {336, 336}, m = "invokeSuspend", n = {"$this$combineInternal", "it", "continuation", "args", "$this$combineInternal", "it"}, s = {"L$0", "L$1", "L$3", "L$4", "L$0", "L$1"})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function3<FlowCollector<? super R>, Object[], Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        private FlowCollector p$;
        private Object[] p$0;

        public final Continuation<Unit> create(FlowCollector<? super R> flowCollector2, Object[] objArr, Continuation<? super Unit> continuation2) {
            AnonymousClass2 r0 = new AnonymousClass2(continuation2, this);
            r0.p$ = flowCollector2;
            r0.p$0 = objArr;
            return r0;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object[] objArr, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create((FlowCollector) obj, objArr, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            FlowCollector flowCollector;
            Object[] objArr;
            FlowCollector flowCollector2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                flowCollector2 = this.p$;
                Object[] objArr2 = this.p$0;
                Function4 function4 = this.$transform$inlined$1;
                Object obj2 = objArr2[0];
                Object obj3 = objArr2[1];
                Object obj4 = objArr2[2];
                this.L$0 = flowCollector2;
                this.L$1 = objArr2;
                this.L$2 = flowCollector2;
                this.L$3 = this;
                this.L$4 = objArr2;
                this.label = 1;
                InlineMarker.mark(6);
                Object invoke = function4.invoke(obj2, obj3, obj4, this);
                InlineMarker.mark(7);
                if (invoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
                flowCollector = flowCollector2;
                objArr = objArr2;
                obj = invoke;
            } else if (i == 1) {
                Object[] objArr3 = (Object[]) this.L$4;
                Continuation continuation = (Continuation) this.L$3;
                flowCollector2 = (FlowCollector) this.L$2;
                objArr = (Object[]) this.L$1;
                flowCollector = (FlowCollector) this.L$0;
                ResultKt.throwOnFailure(obj);
            } else if (i == 2) {
                Object[] objArr4 = (Object[]) this.L$1;
                FlowCollector flowCollector3 = (FlowCollector) this.L$0;
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            this.L$0 = flowCollector;
            this.L$1 = objArr;
            this.label = 2;
            if (flowCollector2.emit(obj, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }
}
