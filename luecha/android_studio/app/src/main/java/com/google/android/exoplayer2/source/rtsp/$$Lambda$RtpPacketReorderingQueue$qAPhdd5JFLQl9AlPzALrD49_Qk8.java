package com.google.android.exoplayer2.source.rtsp;

import com.google.android.exoplayer2.source.rtsp.RtpPacketReorderingQueue;
import java.util.Comparator;

/* compiled from: lambda */
/* renamed from: com.google.android.exoplayer2.source.rtsp.-$$Lambda$RtpPacketReorderingQueue$qAPhdd5JFLQl9AlPzALrD49_Qk8 */
/* loaded from: classes2.dex */
public final /* synthetic */ class $$Lambda$RtpPacketReorderingQueue$qAPhdd5JFLQl9AlPzALrD49_Qk8 implements Comparator {
    public static final /* synthetic */ $$Lambda$RtpPacketReorderingQueue$qAPhdd5JFLQl9AlPzALrD49_Qk8 INSTANCE = new $$Lambda$RtpPacketReorderingQueue$qAPhdd5JFLQl9AlPzALrD49_Qk8();

    private /* synthetic */ $$Lambda$RtpPacketReorderingQueue$qAPhdd5JFLQl9AlPzALrD49_Qk8() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return RtpPacketReorderingQueue.calculateSequenceNumberShift(((RtpPacketReorderingQueue.RtpPacketContainer) obj).packet.sequenceNumber, ((RtpPacketReorderingQueue.RtpPacketContainer) obj2).packet.sequenceNumber);
    }
}
