package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class RtspTrackTiming {
    public final long rtpTimestamp;
    public final int sequenceNumber;
    public final Uri uri;

    /* JADX WARN: Removed duplicated region for block: B:25:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0084 A[Catch: Exception -> 0x0091, TRY_LEAVE, TryCatch #0 {Exception -> 0x0091, blocks: (B:7:0x0027, B:14:0x004b, B:17:0x0055, B:20:0x0060, B:28:0x0072, B:29:0x0078, B:30:0x007d, B:31:0x007e, B:32:0x0084), top: B:51:0x0027 }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static com.google.common.collect.ImmutableList<com.google.android.exoplayer2.source.rtsp.RtspTrackTiming> parseTrackTiming(java.lang.String r18) throws com.google.android.exoplayer2.ParserException {
        /*
            com.google.common.collect.ImmutableList$Builder r0 = new com.google.common.collect.ImmutableList$Builder
            r0.<init>()
            java.lang.String r1 = ","
            r2 = r18
            java.lang.String[] r1 = com.google.android.exoplayer2.util.Util.split(r2, r1)
            int r2 = r1.length
            r3 = 0
            r4 = r3
        L_0x0010:
            if (r4 >= r2) goto L_0x00c6
            r5 = r1[r4]
            java.lang.String r6 = ";"
            java.lang.String[] r6 = com.google.android.exoplayer2.util.Util.split(r5, r6)
            int r7 = r6.length
            r12 = r3
            r8 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r13 = 0
            r14 = -1
        L_0x0023:
            if (r12 >= r7) goto L_0x0097
            r15 = r6[r12]
            java.lang.String r11 = "="
            java.lang.String[] r11 = com.google.android.exoplayer2.util.Util.splitAtFirst(r15, r11)     // Catch: Exception -> 0x0091
            r10 = r11[r3]     // Catch: Exception -> 0x0091
            r3 = 1
            r11 = r11[r3]     // Catch: Exception -> 0x0091
            int r3 = r10.hashCode()     // Catch: Exception -> 0x0091
            r16 = r1
            r1 = 113759(0x1bc5f, float:1.5941E-40)
            r17 = r2
            r2 = 2
            if (r3 == r1) goto L_0x0060
            r1 = 116079(0x1c56f, float:1.62661E-40)
            if (r3 == r1) goto L_0x0055
            r1 = 1524180539(0x5ad9263b, float:3.05610524E16)
            if (r3 == r1) goto L_0x004b
            goto L_0x006a
        L_0x004b:
            java.lang.String r1 = "rtptime"
            boolean r1 = r10.equals(r1)     // Catch: Exception -> 0x0091
            if (r1 == 0) goto L_0x006a
            r1 = r2
            goto L_0x006b
        L_0x0055:
            java.lang.String r1 = "url"
            boolean r1 = r10.equals(r1)     // Catch: Exception -> 0x0091
            if (r1 == 0) goto L_0x006a
            r1 = 0
            goto L_0x006b
        L_0x0060:
            java.lang.String r1 = "seq"
            boolean r1 = r10.equals(r1)     // Catch: Exception -> 0x0091
            if (r1 == 0) goto L_0x006a
            r1 = 1
            goto L_0x006b
        L_0x006a:
            r1 = -1
        L_0x006b:
            if (r1 == 0) goto L_0x0084
            r3 = 1
            if (r1 == r3) goto L_0x007e
            if (r1 != r2) goto L_0x0078
            long r1 = java.lang.Long.parseLong(r11)     // Catch: Exception -> 0x0091
            r8 = r1
            goto L_0x0089
        L_0x0078:
            r0 = 0
            com.google.android.exoplayer2.ParserException r0 = com.google.android.exoplayer2.ParserException.createForMalformedManifest(r10, r0)     // Catch: Exception -> 0x0091
            throw r0     // Catch: Exception -> 0x0091
        L_0x007e:
            int r1 = java.lang.Integer.parseInt(r11)     // Catch: Exception -> 0x0091
            r14 = r1
            goto L_0x0089
        L_0x0084:
            android.net.Uri r1 = android.net.Uri.parse(r11)     // Catch: Exception -> 0x0091
            r13 = r1
        L_0x0089:
            int r12 = r12 + 1
            r1 = r16
            r2 = r17
            r3 = 0
            goto L_0x0023
        L_0x0091:
            r0 = move-exception
            com.google.android.exoplayer2.ParserException r0 = com.google.android.exoplayer2.ParserException.createForMalformedManifest(r15, r0)
            throw r0
        L_0x0097:
            r16 = r1
            r17 = r2
            if (r13 == 0) goto L_0x00c0
            java.lang.String r1 = r13.getScheme()
            if (r1 == 0) goto L_0x00c0
            r1 = -1
            if (r14 != r1) goto L_0x00af
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
            if (r1 == 0) goto L_0x00c0
        L_0x00af:
            com.google.android.exoplayer2.source.rtsp.RtspTrackTiming r1 = new com.google.android.exoplayer2.source.rtsp.RtspTrackTiming
            r1.<init>(r8, r14, r13)
            r0.add(r1)
            int r4 = r4 + 1
            r1 = r16
            r2 = r17
            r3 = 0
            goto L_0x0010
        L_0x00c0:
            r0 = 0
            com.google.android.exoplayer2.ParserException r0 = com.google.android.exoplayer2.ParserException.createForMalformedManifest(r5, r0)
            throw r0
        L_0x00c6:
            com.google.common.collect.ImmutableList r0 = r0.build()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.rtsp.RtspTrackTiming.parseTrackTiming(java.lang.String):com.google.common.collect.ImmutableList");
    }

    private RtspTrackTiming(long j, int i, Uri uri) {
        this.rtpTimestamp = j;
        this.sequenceNumber = i;
        this.uri = uri;
    }
}
