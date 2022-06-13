package com.google.android.exoplayer2.source.rtsp.reader;

import com.google.android.exoplayer2.source.rtsp.RtpPayloadFormat;
import com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MimeTypes;

/* loaded from: classes2.dex */
public final class DefaultRtpPayloadReaderFactory implements RtpPayloadReader.Factory {
    @Override // com.google.android.exoplayer2.source.rtsp.reader.RtpPayloadReader.Factory
    public RtpPayloadReader createPayloadReader(RtpPayloadFormat rtpPayloadFormat) {
        char c;
        String str = (String) Assertions.checkNotNull(rtpPayloadFormat.format.sampleMimeType);
        int hashCode = str.hashCode();
        if (hashCode == -53558318) {
            if (str.equals(MimeTypes.AUDIO_AAC)) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode != 187078296) {
            if (hashCode == 1331836730 && str.equals("video/avc")) {
                c = 2;
            }
            c = 65535;
        } else {
            if (str.equals(MimeTypes.AUDIO_AC3)) {
                c = 0;
            }
            c = 65535;
        }
        if (c == 0) {
            return new RtpAc3Reader(rtpPayloadFormat);
        }
        if (c == 1) {
            return new RtpAacReader(rtpPayloadFormat);
        }
        if (c != 2) {
            return null;
        }
        return new RtpH264Reader(rtpPayloadFormat);
    }
}
