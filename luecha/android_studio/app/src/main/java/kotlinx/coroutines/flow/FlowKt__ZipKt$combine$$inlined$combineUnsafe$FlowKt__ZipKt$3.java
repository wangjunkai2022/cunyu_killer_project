package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: SafeCollector.common.kt */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3 implements Flow<R> {
    final /* synthetic */ Flow[] $flows$inlined;
    final /* synthetic */ Function6 $transform$inlined$1;

    public FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3(Flow[] flowArr, Function6 function6) {
        this.$flows$inlined = flowArr;
        this.$transform$inlined$1 = function6;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public Object collect(FlowCollector flowCollector, Continuation continuation) {
        Flow[] flowArr = this.$flows$inlined;
        Function0 function0 = FlowKt__ZipKt.nullArrayFactory$FlowKt__ZipKt();
        final Function6 function6 = this.$transform$inlined$1;
        Object combineInternal = CombineKt.combineInternal(flowCollector, flowArr, function0, new AnonymousClass2(null), continuation);
        if (combineInternal == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return combineInternal;
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: Zip.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¨\u0006\u0007"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combineUnsafe$1$1"}, k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3$2", f = "Zip.kt", i = {}, l = {333, 333}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3$2  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function3<FlowCollector<? super R>, Object[], Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        public final Object invoke(FlowCollector<? super R> flowCollector2, Object[] objArr, Continuation<? super Unit> continuation2) {
            AnonymousClass2 r0 = new AnonymousClass2(continuation2, function6);
            r0.L$0 = flowCollector2;
            r0.L$1 = objArr;
            return r0.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            FlowCollector flowCollector;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                flowCollector = (FlowCollector) this.L$0;
                Object[] objArr = (Object[]) this.L$1;
                Function6 function6 = function6;
                Object obj2 = objArr[0];
                Object obj3 = objArr[1];
                Object obj4 = objArr[2];
                Object obj5 = objArr[3];
                Object obj6 = objArr[4];
                this.L$0 = flowCollector;
                this.label = 1;
                InlineMarker.mark(6);
                obj = function6.invoke(obj2, obj3, obj4, obj5, obj6, this);
                InlineMarker.mark(7);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i == 1) {
                flowCollector = (FlowCollector) this.L$0;
                ResultKt.throwOnFailure(obj);
            } else if (i == 2) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            this.L$0 = null;
            this.label = 2;
            if (flowCollector.emit(obj, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }
}
