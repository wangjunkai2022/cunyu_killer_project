package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BroadcastChannel;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChannelFlowKt;

/* compiled from: Channels.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007\u001a0\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0007\u001a\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\n\u001a/\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\nH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000f\u001a9\u0010\u0010\u001a\u00020\f\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a&\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00020\n\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u001a\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"asFlow", "Lkotlinx/coroutines/flow/Flow;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/BroadcastChannel;", "broadcastIn", "scope", "Lkotlinx/coroutines/CoroutineScope;", TtmlNode.START, "Lkotlinx/coroutines/CoroutineStart;", "consumeAsFlow", "Lkotlinx/coroutines/channels/ReceiveChannel;", "emitAll", "", "Lkotlinx/coroutines/flow/FlowCollector;", "channel", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "emitAllImpl", "consume", "", "emitAllImpl$FlowKt__ChannelsKt", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "produceIn", "receiveAsFlow", "kotlinx-coroutines-core"}, k = 5, mv = {1, 4, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class FlowKt__ChannelsKt {
    public static final <T> Object emitAll(FlowCollector<? super T> flowCollector, ReceiveChannel<? extends T> receiveChannel, Continuation<? super Unit> continuation) {
        Object emitAllImpl$FlowKt__ChannelsKt = emitAllImpl$FlowKt__ChannelsKt(flowCollector, receiveChannel, true, continuation);
        return emitAllImpl$FlowKt__ChannelsKt == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? emitAllImpl$FlowKt__ChannelsKt : Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0088 A[Catch: all -> 0x0060, TRY_LEAVE, TryCatch #0 {all -> 0x0060, blocks: (B:13:0x0039, B:18:0x005c, B:25:0x0082, B:27:0x0088, B:33:0x0096, B:34:0x0097), top: B:44:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0097 A[Catch: all -> 0x0060, TRY_LEAVE, TryCatch #0 {all -> 0x0060, blocks: (B:13:0x0039, B:18:0x005c, B:25:0x0082, B:27:0x0088, B:33:0x0096, B:34:0x0097), top: B:44:0x0023 }] */
    /* JADX WARN: Type inference failed for: r10v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v1, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v6, types: [kotlinx.coroutines.channels.ReceiveChannel, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v9, types: [boolean] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static final /* synthetic */ <T> java.lang.Object emitAllImpl$FlowKt__ChannelsKt(kotlinx.coroutines.flow.FlowCollector<? super T> r8, kotlinx.coroutines.channels.ReceiveChannel<? extends T> r9, boolean r10, kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
        // Method dump skipped, instructions count: 186
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ChannelsKt.emitAllImpl$FlowKt__ChannelsKt(kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.channels.ReceiveChannel, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final <T> Flow<T> receiveAsFlow(ReceiveChannel<? extends T> receiveChannel) {
        return new ChannelAsFlow(receiveChannel, false, null, 0, null, 28, null);
    }

    public static final <T> Flow<T> consumeAsFlow(ReceiveChannel<? extends T> receiveChannel) {
        return new ChannelAsFlow(receiveChannel, true, null, 0, null, 28, null);
    }

    public static /* synthetic */ BroadcastChannel broadcastIn$default(Flow flow, CoroutineScope coroutineScope, CoroutineStart coroutineStart, int i, Object obj) {
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.LAZY;
        }
        return FlowKt.broadcastIn(flow, coroutineScope, coroutineStart);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use shareIn operator and the resulting SharedFlow as a replacement for BroadcastChannel", replaceWith = @ReplaceWith(expression = "this.shareIn(scope, SharingStarted.Lazily, 0)", imports = {}))
    public static final <T> BroadcastChannel<T> broadcastIn(Flow<? extends T> flow, CoroutineScope coroutineScope, CoroutineStart coroutineStart) {
        return ChannelFlowKt.asChannelFlow(flow).broadcastImpl(coroutineScope, coroutineStart);
    }

    public static final <T> ReceiveChannel<T> produceIn(Flow<? extends T> flow, CoroutineScope coroutineScope) {
        return ChannelFlowKt.asChannelFlow(flow).produceImpl(coroutineScope);
    }

    public static final <T> Flow<T> asFlow(BroadcastChannel<T> broadcastChannel) {
        return new Flow<T>() { // from class: kotlinx.coroutines.flow.FlowKt__ChannelsKt$asFlow$$inlined$unsafeFlow$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object emitAll = FlowKt.emitAll(flowCollector, BroadcastChannel.this.openSubscription(), continuation);
                if (emitAll == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    return emitAll;
                }
                return Unit.INSTANCE;
            }
        };
    }
}
