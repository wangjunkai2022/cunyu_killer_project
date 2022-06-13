package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: AbstractChannel.kt */
@Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.AbstractChannel", f = "AbstractChannel.kt", i = {}, l = {633}, m = "receiveCatching-JP2dKIU", n = {}, s = {})
/* loaded from: classes5.dex */
final class AbstractChannel$receiveCatching$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AbstractChannel<E> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbstractChannel$receiveCatching$1(AbstractChannel<E> abstractChannel, Continuation<? super AbstractChannel$receiveCatching$1> continuation) {
        super(continuation);
        this.this$0 = abstractChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object r2 = this.this$0.receiveCatching-JP2dKIU(this);
        return r2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? r2 : ChannelResult.m1425boximpl(r2);
    }
}
