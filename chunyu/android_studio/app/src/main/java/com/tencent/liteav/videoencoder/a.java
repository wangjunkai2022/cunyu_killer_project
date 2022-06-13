package com.tencent.liteav.videoencoder;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.util.Range;
import com.google.android.gms.common.Scopes;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;

/* compiled from: MediaFormatUtil.java */
/* loaded from: classes2.dex */
class a {
    private static String a = "MediaFormatUtil";

    public static MediaFormat a(String str, int i, int i2, int i3, int i4, int i5) {
        String str2 = a;
        TXCLog.i(str2, "createBaseFormat:  mineType:" + str + "  width:" + i + "  height:" + i2 + "  bitrate:" + i3 + "  fps:" + i4 + "  gop:" + i5);
        if (i == 0 || i2 == 0 || i3 == 0 || i4 == 0 || TXCBuild.VersionInt() < 18) {
            return null;
        }
        MediaFormat createVideoFormat = MediaFormat.createVideoFormat(str, i, i2);
        createVideoFormat.setInteger("bitrate", i3 * 1024);
        createVideoFormat.setInteger("frame-rate", i4);
        createVideoFormat.setInteger("color-format", 2130708361);
        createVideoFormat.setInteger("i-frame-interval", i5);
        return createVideoFormat;
    }

    public static void a(MediaCodec mediaCodec, MediaFormat mediaFormat, String str, int i, int i2, boolean z) {
        MediaCodecInfo a2;
        MediaCodecInfo.CodecCapabilities capabilitiesForType;
        TXCLog.i(a, "updateFormat: format:" + mediaFormat + "  mineType:" + str + "  bitrateMod:" + i + "  targetProfile:" + i2 + "  fullIFrame:" + z);
        if (!(mediaFormat == null || TXCBuild.VersionInt() < 21 || (a2 = a(str)) == null || (capabilitiesForType = a2.getCapabilitiesForType(str)) == null)) {
            MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = capabilitiesForType.profileLevels;
            int i3 = 0;
            int i4 = 0;
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
                if (codecProfileLevel.profile <= i2 && (codecProfileLevel.profile > i3 || (codecProfileLevel.profile == i3 && codecProfileLevel.level > i4))) {
                    i3 = codecProfileLevel.profile;
                    i4 = codecProfileLevel.level;
                }
            }
            mediaFormat.setInteger(Scopes.PROFILE, i3);
            TXCLog.i(a, "createFormat: targetProfile:" + i3 + "  fixLevel:" + i4);
            if (TXCBuild.VersionInt() >= 23) {
                mediaFormat.setInteger("level", i4);
                capabilitiesForType = MediaCodecInfo.CodecCapabilities.createFromProfileLevel(str, i3, i4);
            }
            a(capabilitiesForType, i, mediaFormat, z);
            a(mediaFormat, capabilitiesForType);
            if (TXCBuild.VersionInt() >= 23) {
                a(str, mediaCodec, mediaFormat, i3, i4);
            }
        }
    }

    private static void a(MediaCodecInfo.CodecCapabilities codecCapabilities, int i, MediaFormat mediaFormat, boolean z) {
        MediaCodecInfo.EncoderCapabilities encoderCapabilities;
        if (TXCBuild.VersionInt() >= 21 && (encoderCapabilities = codecCapabilities.getEncoderCapabilities()) != null) {
            if (encoderCapabilities.isBitrateModeSupported(i)) {
                mediaFormat.setInteger("bitrate-mode", i);
            } else if (z) {
                if (encoderCapabilities.isBitrateModeSupported(1)) {
                    mediaFormat.setInteger("bitrate-mode", 1);
                } else if (encoderCapabilities.isBitrateModeSupported(2)) {
                    mediaFormat.setInteger("bitrate-mode", 2);
                }
            } else if (encoderCapabilities.isBitrateModeSupported(2)) {
                mediaFormat.setInteger("bitrate-mode", 2);
            }
            Range<Integer> complexityRange = encoderCapabilities.getComplexityRange();
            if (complexityRange != null) {
                mediaFormat.setInteger("complexity", complexityRange.getUpper().intValue());
                String str = a;
                TXCLog.i(str, "createFormat:MediaFormat.KEY_COMPLEXITY :" + complexityRange.getUpper());
            }
        }
    }

    private static void a(MediaFormat mediaFormat, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        if (codecCapabilities != null && mediaFormat != null && TXCBuild.VersionInt() >= 21 && (videoCapabilities = codecCapabilities.getVideoCapabilities()) != null) {
            Range<Integer> bitrateRange = videoCapabilities.getBitrateRange();
            String str = a;
            TXCLog.i(str, "bitrateRange: " + bitrateRange.getLower() + "  " + bitrateRange.getUpper());
            int integer = mediaFormat.getInteger("bitrate");
            String str2 = a;
            TXCLog.i(str2, "bitrateRange: " + bitrateRange.getLower() + "  " + bitrateRange.getUpper() + ", bitrate = " + integer);
            if (integer < bitrateRange.getLower().intValue()) {
                String str3 = a;
                TXCLog.i(str3, "fix bitrate = " + integer + " to lower " + bitrateRange.getLower());
                integer = bitrateRange.getLower().intValue();
            }
            if (integer > bitrateRange.getUpper().intValue()) {
                String str4 = a;
                TXCLog.i(str4, "fix bitrate = " + integer + " to upper " + bitrateRange.getUpper());
                integer = bitrateRange.getUpper().intValue();
            }
            mediaFormat.setInteger("bitrate", integer);
        }
    }

    private static MediaCodecInfo a(String str) {
        int codecCount = MediaCodecList.getCodecCount();
        for (int i = 0; i < codecCount; i++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (codecInfoAt.isEncoder()) {
                for (String str2 : codecInfoAt.getSupportedTypes()) {
                    if (str2.equalsIgnoreCase(str)) {
                        return codecInfoAt;
                    }
                }
                continue;
            }
        }
        return null;
    }

    private static boolean a(String str, MediaCodec mediaCodec, MediaFormat mediaFormat, int i, int i2) {
        return a(str, mediaFormat, i, i2) || b(str, mediaCodec, mediaFormat, i, i2) || b(str, mediaFormat, i, i2);
    }

    private static boolean a(String str, MediaFormat mediaFormat, int i, int i2) {
        MediaCodecInfo.VideoCapabilities a2;
        Integer num;
        if (TXCBuild.VersionInt() < 21 || mediaFormat == null || (a2 = a(str, i, i2)) == null) {
            return false;
        }
        Range<Integer> supportedWidths = a2.getSupportedWidths();
        Integer num2 = -1;
        Integer num3 = -1;
        if (supportedWidths != null) {
            num2 = supportedWidths.getUpper();
        }
        Range<Integer> supportedHeights = a2.getSupportedHeights();
        if (supportedHeights != null) {
            num3 = supportedHeights.getUpper();
        }
        if (num2.intValue() < 0 || num3.intValue() < 0) {
            return false;
        }
        int integer = mediaFormat.getInteger("width");
        int integer2 = mediaFormat.getInteger("height");
        if ((integer <= integer2 || num2.intValue() >= num3.intValue()) && (integer >= integer2 || num2.intValue() <= num3.intValue())) {
            num = num3;
            num3 = num2;
        } else {
            num = Integer.valueOf(num2.intValue());
        }
        String str2 = a;
        TXCLog.i(str2, "updateToCodecSupportSize: srcWidth:" + integer + " srcHeight:" + integer2);
        if (num3.intValue() >= integer && num.intValue() >= integer2) {
            return false;
        }
        float f = (float) integer;
        float f2 = (float) integer2;
        float min = Math.min(((float) num.intValue()) / (1.0f * f2), ((float) num3.intValue()) / (f * 1.0f));
        int i3 = (int) (f * min);
        int i4 = (int) (min * f2);
        mediaFormat.setInteger("width", i3);
        mediaFormat.setInteger("height", i4);
        String str3 = a;
        TXCLog.i(str3, "updateMediaFormatToUpperSize:upperW:" + num3 + " upperH:" + num + " fixUpperW:" + i3 + " fixUpperH:" + i4);
        return true;
    }

    private static boolean b(String str, MediaCodec mediaCodec, MediaFormat mediaFormat, int i, int i2) {
        MediaCodecInfo.VideoCapabilities a2;
        if (TXCBuild.VersionInt() < 21 || mediaFormat == null || (a2 = a(str, i, i2)) == null) {
            return false;
        }
        Range<Integer> supportedWidths = a2.getSupportedWidths();
        Range<Integer> supportedHeights = a2.getSupportedHeights();
        if (!(supportedWidths == null || supportedHeights == null)) {
            Integer lower = supportedWidths.getLower();
            Integer lower2 = supportedHeights.getLower();
            MediaCodecInfo.VideoCapabilities a3 = a(mediaCodec, str);
            if (a3 != null) {
                Range<Integer> supportedWidths2 = a3.getSupportedWidths();
                Range<Integer> supportedHeights2 = a3.getSupportedHeights();
                if (!(supportedWidths2 == null || supportedHeights2 == null)) {
                    lower = Integer.valueOf(Math.max(lower.intValue(), supportedWidths2.getLower().intValue()));
                    lower2 = Integer.valueOf(Math.max(lower2.intValue(), supportedHeights2.getLower().intValue()));
                }
            }
            if (lower.intValue() >= 0 && lower2.intValue() >= 0) {
                int integer = mediaFormat.getInteger("width");
                int integer2 = mediaFormat.getInteger("height");
                if (lower.intValue() <= integer && lower2.intValue() <= integer2) {
                    return false;
                }
                float f = (float) integer;
                float f2 = (float) integer2;
                float max = Math.max(((float) lower2.intValue()) / (1.0f * f2), ((float) lower.intValue()) / (f * 1.0f));
                int i3 = (int) (f * max);
                int i4 = (int) (max * f2);
                mediaFormat.setInteger("width", i3);
                mediaFormat.setInteger("height", i4);
                String str2 = a;
                TXCLog.i(str2, "updateMediaFormatToLowerSize:lowerW:" + lower + " lowerH:" + lower2 + " fixLowW:" + i3 + " fixLowH:" + i4);
                return true;
            }
        }
        return false;
    }

    private static boolean b(String str, MediaFormat mediaFormat, int i, int i2) {
        MediaCodecInfo.VideoCapabilities a2;
        if (TXCBuild.VersionInt() < 21 || mediaFormat == null || (a2 = a(str, i, i2)) == null) {
            return false;
        }
        int widthAlignment = a2.getWidthAlignment();
        int heightAlignment = a2.getHeightAlignment();
        String str2 = a;
        TXCLog.i(str2, "widthAlignment:" + widthAlignment + " heightAlignment:");
        if (widthAlignment >= 2 && heightAlignment >= 2 && widthAlignment % 2 == 0 && heightAlignment % 2 == 0) {
            int integer = mediaFormat.getInteger("width");
            int integer2 = mediaFormat.getInteger("height");
            int i3 = (integer / widthAlignment) * widthAlignment;
            int i4 = (integer2 / heightAlignment) * heightAlignment;
            if (integer == i3 && integer2 == i4) {
                return false;
            }
            mediaFormat.setInteger("width", i3);
            mediaFormat.setInteger("height", i4);
            String str3 = a;
            TXCLog.i(str3, "updateMediaFormatWithAlignment: fixSize: src:" + integer + " " + integer2 + " fix:" + i3 + " " + i4 + " widthAlignment：" + widthAlignment + "  heightAlignment：" + heightAlignment);
            return true;
        }
        return false;
    }

    private static MediaCodecInfo.VideoCapabilities a(String str, int i, int i2) {
        MediaCodecInfo.CodecCapabilities createFromProfileLevel;
        if (TXCBuild.VersionInt() >= 21 && (createFromProfileLevel = MediaCodecInfo.CodecCapabilities.createFromProfileLevel(str, i, i2)) != null) {
            return createFromProfileLevel.getVideoCapabilities();
        }
        return null;
    }

    private static MediaCodecInfo.VideoCapabilities a(MediaCodec mediaCodec, String str) {
        MediaCodecInfo.CodecCapabilities capabilitiesForType;
        if (mediaCodec == null || TXCBuild.VersionInt() < 21 || (capabilitiesForType = mediaCodec.getCodecInfo().getCapabilitiesForType(str)) == null) {
            return null;
        }
        return capabilitiesForType.getVideoCapabilities();
    }
}
