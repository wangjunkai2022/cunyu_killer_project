package com.tencent.thumbplayer.core.common;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class TPUnitendCodecUtils {
    private static int DolbyVisionProfileDvavPen = 1;
    private static int DolbyVisionProfileDvavPer = 0;
    private static int DolbyVisionProfileDvavSe = 9;
    private static int DolbyVisionProfileDvheDen = 3;
    private static int DolbyVisionProfileDvheDer = 2;
    private static int DolbyVisionProfileDvheDtb = 7;
    private static int DolbyVisionProfileDvheDth = 6;
    private static int DolbyVisionProfileDvheDtr = 4;
    private static int DolbyVisionProfileDvheSt = 8;
    private static int DolbyVisionProfileDvheStn = 5;
    private static HashMap<String, String> mSecureDecoderNameMaps;

    public static int convertOmxProfileToDolbyVision(int i) {
        int i2 = i != 1 ? i != 2 ? i != 4 ? i != 8 ? i != 16 ? i != 32 ? i != 64 ? i != 128 ? i != 256 ? i != 512 ? 0 : DolbyVisionProfileDvavSe : DolbyVisionProfileDvheSt : DolbyVisionProfileDvheDtb : DolbyVisionProfileDvheDth : DolbyVisionProfileDvheStn : DolbyVisionProfileDvheDtr : DolbyVisionProfileDvheDen : DolbyVisionProfileDvheDer : DolbyVisionProfileDvavPen : DolbyVisionProfileDvavPer;
        TPNativeLog.printLog(2, "TPUnitendCodecUtils", "convertOmxProfileToDolbyVision omxProfile:" + i + " dolbyVisionProfile:" + i2);
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c0, code lost:
        com.tencent.thumbplayer.core.common.TPNativeLog.printLog(2, "TPUnitendCodecUtils", "getDolbyVisionDecoderName name:" + r9);
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static synchronized java.lang.String getDolbyVisionDecoderName(java.lang.String r16, int r17, int r18, boolean r19) {
        /*
        // Method dump skipped, instructions count: 226
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPUnitendCodecUtils.getDolbyVisionDecoderName(java.lang.String, int, int, boolean):java.lang.String");
    }

    public static synchronized String getSecureDecoderName(String str) {
        MediaCodecInfo.CodecCapabilities codecCapabilities;
        synchronized (TPUnitendCodecUtils.class) {
            String str2 = null;
            if (!TextUtils.equals("video/avc", str) && !TextUtils.equals("video/hevc", str) && !TextUtils.equals("video/dolby-vision", str)) {
                return null;
            }
            if (mSecureDecoderNameMaps == null) {
                mSecureDecoderNameMaps = new HashMap<>();
            }
            if (mSecureDecoderNameMaps.containsKey(str)) {
                return mSecureDecoderNameMaps.get(str);
            }
            MediaCodecInfo[] codecInfos = new MediaCodecList(1).getCodecInfos();
            if (codecInfos == null) {
                return null;
            }
            int length = codecInfos.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                MediaCodecInfo mediaCodecInfo = codecInfos[i];
                if (!mediaCodecInfo.isEncoder()) {
                    try {
                        codecCapabilities = mediaCodecInfo.getCapabilitiesForType(str);
                    } catch (Exception unused) {
                        codecCapabilities = null;
                    }
                    if (codecCapabilities != null && codecCapabilities.isFeatureSupported("secure-playback")) {
                        str2 = mediaCodecInfo.getName();
                        break;
                    }
                }
                i++;
            }
            mSecureDecoderNameMaps.put(str, str2);
            return str2;
        }
    }
}
