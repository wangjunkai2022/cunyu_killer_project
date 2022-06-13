package com.google.android.exoplayer2.source.rtsp;

import com.google.android.exoplayer2.source.rtsp.RtspMessageChannel;
import com.google.android.exoplayer2.upstream.DataSource;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface RtpDataChannel extends DataSource {

    /* loaded from: classes2.dex */
    public interface Factory {

        /* renamed from: com.google.android.exoplayer2.source.rtsp.RtpDataChannel$Factory$-CC */
        /* loaded from: classes2.dex */
        public final /* synthetic */ class CC {
            public static Factory $default$createFallbackDataChannelFactory(Factory factory) {
                return null;
            }
        }

        RtpDataChannel createAndOpenDataChannel(int i) throws IOException;

        Factory createFallbackDataChannelFactory();
    }

    RtspMessageChannel.InterleavedBinaryDataListener getInterleavedBinaryDataListener();

    int getLocalPort();

    String getTransport();
}
