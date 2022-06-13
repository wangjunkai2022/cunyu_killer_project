package com.tencent.liteav.basic.d;

/* compiled from: TXCVideoEncoderUtils.java */
/* loaded from: classes2.dex */
public class c {
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0064, code lost:
        continue;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static boolean a(int r12, int r13, int r14) {
        /*
            int r0 = com.tencent.liteav.basic.util.TXCBuild.VersionInt()
            r1 = 0
            r2 = 21
            if (r0 >= r2) goto L_0x000a
            return r1
        L_0x000a:
            android.media.MediaCodecList r0 = new android.media.MediaCodecList
            r2 = 1
            r0.<init>(r2)
            android.media.MediaCodecInfo[] r0 = r0.getCodecInfos()
            int r3 = r0.length
            r4 = r1
        L_0x0016:
            java.lang.String r5 = "TXCVideoEncoderUtils"
            if (r4 >= r3) goto L_0x0067
            r6 = r0[r4]
            boolean r7 = r6.isEncoder()
            if (r7 != 0) goto L_0x0023
            goto L_0x0064
        L_0x0023:
            java.lang.String[] r7 = r6.getSupportedTypes()
            int r8 = r7.length
            r9 = r1
        L_0x0029:
            if (r9 >= r8) goto L_0x0064
            r10 = r7[r9]
            java.lang.String r11 = "video/hevc"
            boolean r11 = r10.contains(r11)
            if (r11 != 0) goto L_0x0038
            int r9 = r9 + 1
            goto L_0x0029
        L_0x0038:
            android.media.MediaCodecInfo$CodecCapabilities r7 = r6.getCapabilitiesForType(r10)
            if (r7 != 0) goto L_0x003f
            return r1
        L_0x003f:
            android.media.MediaCodecInfo$VideoCapabilities r7 = r7.getVideoCapabilities()
            if (r7 != 0) goto L_0x0046
            return r1
        L_0x0046:
            double r8 = (double) r14
            boolean r11 = r7.areSizeAndRateSupported(r12, r13, r8)
            if (r11 == 0) goto L_0x0064
            boolean r7 = r7.areSizeAndRateSupported(r13, r12, r8)
            if (r7 == 0) goto L_0x0064
            r12 = 2
            java.lang.Object[] r12 = new java.lang.Object[r12]
            java.lang.String r13 = r6.getName()
            r12[r1] = r13
            r12[r2] = r10
            java.lang.String r13 = "got hevc encoder:%s, type:%s"
            com.tencent.liteav.basic.log.TXCLog.i(r5, r13, r12)
            return r2
        L_0x0064:
            int r4 = r4 + 1
            goto L_0x0016
        L_0x0067:
            java.lang.String r12 = "not got hevc encoder"
            com.tencent.liteav.basic.log.TXCLog.w(r5, r12)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.basic.d.c.a(int, int, int):boolean");
    }
}
