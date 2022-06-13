package com.tencent.thumbplayer.h.h;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.os.Build;
import com.google.android.exoplayer2.util.MimeTypes;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.h.b.e;
import com.tencent.thumbplayer.h.b.f;
import com.umeng.analytics.pro.ai;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class c {
    private static boolean b;
    private static boolean c;
    public static final String[] a = {"csd-0", "csd-1", "csd-2"};
    private static final Set<String> d = new HashSet();

    static {
        d.add("1601");
        d.add("1713");
        d.add("1714");
        d.add("A10-70F");
        d.add("A10-70L");
        d.add("A1601");
        d.add("A2016a40");
        d.add("A7000-a");
        d.add("A7000plus");
        d.add("A7010a48");
        d.add("A7020a48");
        d.add("AquaPowerM");
        d.add("ASUS_X00AD_2");
        d.add("Aura_Note_2");
        d.add("BLACK-1X");
        d.add("BRAVIA_ATV2");
        d.add("BRAVIA_ATV3_4K");
        d.add("C1");
        d.add("ComioS1");
        d.add("CP8676_I02");
        d.add("CPH1609");
        d.add("CPY83_I00");
        d.add("cv1");
        d.add("cv3");
        d.add("deb");
        d.add("E5643");
        d.add("ELUGA_A3_Pro");
        d.add("ELUGA_Note");
        d.add("ELUGA_Prim");
        d.add("ELUGA_Ray_X");
        d.add("EverStar_S");
        d.add("F3111");
        d.add("F3113");
        d.add("F3116");
        d.add("F3211");
        d.add("F3213");
        d.add("F3215");
        d.add("F3311");
        d.add("flo");
        d.add("fugu");
        d.add("GiONEE_CBL7513");
        d.add("GiONEE_GBL7319");
        d.add("GIONEE_GBL7360");
        d.add("GIONEE_SWW1609");
        d.add("GIONEE_SWW1627");
        d.add("GIONEE_SWW1631");
        d.add("GIONEE_WBL5708");
        d.add("GIONEE_WBL7365");
        d.add("GIONEE_WBL7519");
        d.add("griffin");
        d.add("htc_e56ml_dtul");
        d.add("hwALE-H");
        d.add("HWBLN-H");
        d.add("HWCAM-H");
        d.add("HWVNS-H");
        d.add("HWWAS-H");
        d.add("i9031");
        d.add("iball8735_9806");
        d.add("Infinix-X572");
        d.add("iris60");
        d.add("itel_S41");
        d.add("j2xlteins");
        d.add("JGZ");
        d.add("K50a40");
        d.add("kate");
        d.add("l5460");
        d.add("le_x6");
        d.add("LS-5017");
        d.add("M5c");
        d.add("manning");
        d.add("marino_f");
        d.add("MEIZU_M5");
        d.add("mh");
        d.add("mido");
        d.add(ai.aD);
        d.add("namath");
        d.add("nicklaus_f");
        d.add("NX541J");
        d.add("NX573J");
        d.add("OnePlus5T");
        d.add("p212");
        d.add("P681");
        d.add("P85");
        d.add("panell_d");
        d.add("panell_dl");
        d.add("panell_ds");
        d.add("panell_dt");
        d.add("PB2-670M");
        d.add("PGN528");
        d.add("PGN610");
        d.add("PGN611");
        d.add("Phantom6");
        d.add("Pixi4-7_3G");
        d.add("Pixi5-10_4G");
        d.add("PLE");
        d.add("PRO7S");
        d.add("Q350");
        d.add("Q4260");
        d.add("Q427");
        d.add("Q4310");
        d.add("Q5");
        d.add("QM16XE_U");
        d.add("QX1");
        d.add("santoni");
        d.add("Slate_Pro");
        d.add("SVP-DTV15");
        d.add("s905x018");
        d.add("taido_row");
        d.add("TB3-730F");
        d.add("TB3-730X");
        d.add("TB3-850F");
        d.add("TB3-850M");
        d.add("tcl_eu");
        d.add("V1");
        d.add("V23GB");
        d.add("V5");
        d.add("vernee_M5");
        d.add("watson");
        d.add("whyred");
        d.add("woods_f");
        d.add("woods_fn");
        d.add("X3_HK");
        d.add("XE2X");
        d.add("XT1663");
        d.add("Z12_PRO");
        d.add("Z80");
    }

    public static int a(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }

    public static int a(f fVar, e eVar) {
        if (eVar.i == -1) {
            return a(eVar.j, eVar.b, eVar.c, fVar.d);
        }
        int i = 0;
        for (int i2 = 0; i2 < eVar.a.size(); i2++) {
            i += eVar.a.get(i2).length;
        }
        return eVar.i + i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(String str, int i, int i2, boolean z) {
        boolean z2;
        int i3;
        if (i == -1 || i2 == -1) {
            return -1;
        }
        int i4 = 4;
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals(MimeTypes.VIDEO_H263)) {
                    z2 = false;
                    break;
                }
                z2 = true;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    z2 = true;
                    break;
                }
                z2 = true;
                break;
            case 1187890754:
                if (str.equals(MimeTypes.VIDEO_MP4V)) {
                    z2 = true;
                    break;
                }
                z2 = true;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    z2 = true;
                    break;
                }
                z2 = true;
                break;
            case 1599127256:
                if (str.equals(MimeTypes.VIDEO_VP8)) {
                    z2 = true;
                    break;
                }
                z2 = true;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    z2 = true;
                    break;
                }
                z2 = true;
                break;
            default:
                z2 = true;
                break;
        }
        if (z2 && !z2) {
            if (!z2) {
                if (!z2) {
                    if (!z2 && !z2) {
                        return -1;
                    }
                    i3 = i * i2;
                    return (i3 * 3) / (i4 * 2);
                }
            } else if ("BRAVIA 4K 2015".equals(TPSystemInfo.getDeviceName()) || ("Amazon".equals(TPSystemInfo.getDeviceManufacturer()) && ("KFSOWI".equals(TPSystemInfo.getDeviceName()) || ("AFTS".equals(TPSystemInfo.getDeviceName()) && z)))) {
                return -1;
            } else {
                i3 = a(i, 16) * a(i2, 16) * 16 * 16;
                i4 = 2;
                return (i3 * 3) / (i4 * 2);
            }
        }
        i3 = i * i2;
        i4 = 2;
        return (i3 * 3) / (i4 * 2);
    }

    public static String a(MediaCodec mediaCodec) {
        return Build.VERSION.SDK_INT >= 18 ? mediaCodec.getName() : "unknow-low-api-18";
    }

    public static ArrayList<byte[]> a(MediaFormat mediaFormat) {
        ArrayList<byte[]> arrayList = new ArrayList<>();
        int i = 0;
        while (true) {
            String[] strArr = a;
            if (i >= strArr.length) {
                return arrayList;
            }
            ByteBuffer byteBuffer = mediaFormat.getByteBuffer(strArr[i]);
            if (byteBuffer != null) {
                arrayList.add(byteBuffer.array());
            }
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0075, code lost:
        if (r1 != 2) goto L_0x0077;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x007d A[Catch: all -> 0x009b, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0012, B:9:0x0016, B:11:0x001c, B:14:0x0027, B:17:0x002c, B:19:0x0036, B:20:0x0038, B:27:0x0052, B:30:0x005c, B:33:0x0066, B:40:0x0077, B:42:0x007d, B:43:0x0095, B:44:0x0097), top: B:50:0x0003 }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static boolean a() {
        /*
            java.lang.Class<com.tencent.thumbplayer.h.h.c> r0 = com.tencent.thumbplayer.h.h.c.class
            monitor-enter(r0)
            boolean r1 = com.tencent.thumbplayer.h.h.c.b     // Catch: all -> 0x009b
            if (r1 != 0) goto L_0x0097
            java.lang.String r1 = "dangal"
            java.lang.String r2 = android.os.Build.DEVICE     // Catch: all -> 0x009b
            boolean r1 = r1.equals(r2)     // Catch: all -> 0x009b
            r2 = 1
            if (r1 == 0) goto L_0x0016
        L_0x0012:
            com.tencent.thumbplayer.h.h.c.c = r2     // Catch: all -> 0x009b
            goto L_0x0077
        L_0x0016:
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: all -> 0x009b
            r3 = 27
            if (r1 > r3) goto L_0x0027
            java.lang.String r1 = "HWEML"
            java.lang.String r4 = android.os.Build.DEVICE     // Catch: all -> 0x009b
            boolean r1 = r1.equals(r4)     // Catch: all -> 0x009b
            if (r1 == 0) goto L_0x0027
            goto L_0x0012
        L_0x0027:
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: all -> 0x009b
            if (r1 < r3) goto L_0x002c
            goto L_0x0077
        L_0x002c:
            java.util.Set<java.lang.String> r1 = com.tencent.thumbplayer.h.h.c.d     // Catch: all -> 0x009b
            java.lang.String r3 = android.os.Build.DEVICE     // Catch: all -> 0x009b
            boolean r1 = r1.contains(r3)     // Catch: all -> 0x009b
            if (r1 == 0) goto L_0x0038
            com.tencent.thumbplayer.h.h.c.c = r2     // Catch: all -> 0x009b
        L_0x0038:
            java.lang.String r1 = com.tencent.thumbplayer.core.common.TPSystemInfo.getDeviceName()     // Catch: all -> 0x009b
            r3 = -1
            int r4 = r1.hashCode()     // Catch: all -> 0x009b
            r5 = -594534941(0xffffffffdc901de3, float:-3.2452206E17)
            r6 = 2
            if (r4 == r5) goto L_0x0066
            r5 = 2006354(0x1e9d52, float:2.811501E-39)
            if (r4 == r5) goto L_0x005c
            r5 = 2006367(0x1e9d5f, float:2.811519E-39)
            if (r4 == r5) goto L_0x0052
            goto L_0x0070
        L_0x0052:
            java.lang.String r4 = "AFTN"
            boolean r1 = r1.equals(r4)     // Catch: all -> 0x009b
            if (r1 == 0) goto L_0x0070
            r1 = r2
            goto L_0x0071
        L_0x005c:
            java.lang.String r4 = "AFTA"
            boolean r1 = r1.equals(r4)     // Catch: all -> 0x009b
            if (r1 == 0) goto L_0x0070
            r1 = 0
            goto L_0x0071
        L_0x0066:
            java.lang.String r4 = "JSN-L21"
            boolean r1 = r1.equals(r4)     // Catch: all -> 0x009b
            if (r1 == 0) goto L_0x0070
            r1 = r6
            goto L_0x0071
        L_0x0070:
            r1 = r3
        L_0x0071:
            if (r1 == 0) goto L_0x0012
            if (r1 == r2) goto L_0x0012
            if (r1 == r6) goto L_0x0012
        L_0x0077:
            boolean r1 = com.tencent.thumbplayer.h.h.b.a()     // Catch: all -> 0x009b
            if (r1 == 0) goto L_0x0095
            java.lang.String r1 = "TUtils"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: all -> 0x009b
            r3.<init>()     // Catch: all -> 0x009b
            java.lang.String r4 = "deviceNeedsSetOutputSurfaceWorkaround:"
            r3.append(r4)     // Catch: all -> 0x009b
            boolean r4 = com.tencent.thumbplayer.h.h.c.c     // Catch: all -> 0x009b
            r3.append(r4)     // Catch: all -> 0x009b
            java.lang.String r3 = r3.toString()     // Catch: all -> 0x009b
            com.tencent.thumbplayer.h.h.b.b(r1, r3)     // Catch: all -> 0x009b
        L_0x0095:
            com.tencent.thumbplayer.h.h.c.b = r2     // Catch: all -> 0x009b
        L_0x0097:
            monitor-exit(r0)     // Catch: all -> 0x009b
            boolean r0 = com.tencent.thumbplayer.h.h.c.c
            return r0
        L_0x009b:
            r1 = move-exception
            monitor-exit(r0)     // Catch: all -> 0x009b
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.h.h.c.a():boolean");
    }

    public static boolean a(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return Build.VERSION.SDK_INT >= 19 && c(codecCapabilities);
    }

    public static boolean a(String str) {
        return str.contains("video");
    }

    public static boolean b(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return Build.VERSION.SDK_INT >= 21 && d(codecCapabilities);
    }

    private static boolean c(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    private static boolean d(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }
}
