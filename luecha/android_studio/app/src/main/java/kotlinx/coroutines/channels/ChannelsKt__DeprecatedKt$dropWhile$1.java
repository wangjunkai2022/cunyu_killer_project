package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: Deprecated.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {1, 6, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$dropWhile$1", f = "Deprecated.kt", i = {0, 1, 1, 2, 3, 4}, l = {181, 182, 183, 187, TsExtractor.TS_PACKET_SIZE}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "e", "$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0", "L$0", "L$0"})
/* loaded from: classes5.dex */
final class ChannelsKt__DeprecatedKt$dropWhile$1 extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<E, Continuation<? super Boolean>, Object> $predicate;
    final /* synthetic */ ReceiveChannel<E> $this_dropWhile;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$dropWhile$1(ReceiveChannel<? extends E> receiveChannel, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super ChannelsKt__DeprecatedKt$dropWhile$1> continuation) {
        super(2, continuation);
        this.$this_dropWhile = receiveChannel;
        this.$predicate = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$dropWhile$1 channelsKt__DeprecatedKt$dropWhile$1 = new ChannelsKt__DeprecatedKt$dropWhile$1(this.$this_dropWhile, this.$predicate, continuation);
        channelsKt__DeprecatedKt$dropWhile$1.L$0 = obj;
        return channelsKt__DeprecatedKt$dropWhile$1;
    }

    public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$dropWhile$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0090 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ef A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0113  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /* Code decompiled incorrectly, please refer to instructions dump */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
        // Method dump skipped, instructions count: 278
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$dropWhile$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
