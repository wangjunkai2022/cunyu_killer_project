package kotlin.sequences;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
  classes5.dex
 */
/* compiled from: _Sequences.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlin.sequences.SequencesKt___SequencesKt$runningFold$1", f = "_Sequences.kt", i = {0, 1}, l = {2115, 2119}, m = "invokeSuspend", n = {"$this$sequence", "$this$sequence"}, s = {"L$0", "L$0"})
/* loaded from: classes4.dex */
final class SequencesKt___SequencesKt$runningFold$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super R>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Object $initial;
    final /* synthetic */ Function2 $operation;
    final /* synthetic */ Sequence $this_runningFold;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesKt$runningFold$1(Sequence sequence, Object obj, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.$this_runningFold = sequence;
        this.$initial = obj;
        this.$operation = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Intrinsics.checkNotNullParameter(continuation, "completion");
        SequencesKt___SequencesKt$runningFold$1 sequencesKt___SequencesKt$runningFold$1 = new SequencesKt___SequencesKt$runningFold$1(this.$this_runningFold, this.$initial, this.$operation, continuation);
        sequencesKt___SequencesKt$runningFold$1.L$0 = obj;
        return sequencesKt___SequencesKt$runningFold$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super Unit> continuation) {
        return ((SequencesKt___SequencesKt$runningFold$1) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0053  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /* Code decompiled incorrectly, please refer to instructions dump */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L_0x002d
            if (r1 == r3) goto L_0x0025
            if (r1 != r2) goto L_0x001d
            java.lang.Object r1 = r7.L$2
            java.util.Iterator r1 = (java.util.Iterator) r1
            java.lang.Object r3 = r7.L$1
            java.lang.Object r4 = r7.L$0
            kotlin.sequences.SequenceScope r4 = (kotlin.sequences.SequenceScope) r4
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r3
            goto L_0x004c
        L_0x001d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L_0x0025:
            java.lang.Object r1 = r7.L$0
            kotlin.sequences.SequenceScope r1 = (kotlin.sequences.SequenceScope) r1
            kotlin.ResultKt.throwOnFailure(r8)
            goto L_0x0042
        L_0x002d:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r8 = r7.L$0
            r1 = r8
            kotlin.sequences.SequenceScope r1 = (kotlin.sequences.SequenceScope) r1
            java.lang.Object r8 = r7.$initial
            r7.L$0 = r1
            r7.label = r3
            java.lang.Object r8 = r1.yield(r8, r7)
            if (r8 != r0) goto L_0x0042
            return r0
        L_0x0042:
            java.lang.Object r8 = r7.$initial
            kotlin.sequences.Sequence r3 = r7.$this_runningFold
            java.util.Iterator r3 = r3.iterator()
            r4 = r1
            r1 = r3
        L_0x004c:
            r3 = r7
        L_0x004d:
            boolean r5 = r1.hasNext()
            if (r5 == 0) goto L_0x006c
            java.lang.Object r5 = r1.next()
            kotlin.jvm.functions.Function2 r6 = r3.$operation
            java.lang.Object r8 = r6.invoke(r8, r5)
            r3.L$0 = r4
            r3.L$1 = r8
            r3.L$2 = r1
            r3.label = r2
            java.lang.Object r5 = r4.yield(r8, r3)
            if (r5 != r0) goto L_0x004d
            return r0
        L_0x006c:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.sequences.SequencesKt___SequencesKt$runningFold$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
