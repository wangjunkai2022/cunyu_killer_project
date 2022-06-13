package com.tencent.liteav.basic.d;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import com.tencent.liteav.basic.f.c;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;

/* compiled from: TXCVideoDecoderUtils.java */
/* loaded from: classes2.dex */
public class b {
    public static boolean a(int i, int i2, int i3) {
        boolean z;
        MediaCodecInfo[] mediaCodecInfoArr;
        boolean z2;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int i4 = false;
        if (TXCBuild.VersionInt() < 21) {
            return false;
        }
        MediaCodecList mediaCodecList = new MediaCodecList(0);
        MediaCodecInfo[] codecInfos = mediaCodecList.getCodecInfos();
        int length = codecInfos.length;
        int i5 = 0;
        boolean z3 = false;
        while (true) {
            z = true;
            if (i5 >= length) {
                break;
            }
            MediaCodecInfo mediaCodecInfo = codecInfos[i5];
            String[] supportedTypes = mediaCodecInfo.getSupportedTypes();
            if (!mediaCodecInfo.isEncoder()) {
                int length2 = supportedTypes.length;
                int i6 = i4;
                while (true) {
                    if (i6 >= length2) {
                        break;
                    }
                    String str = supportedTypes[i6];
                    if (!str.contains("video/hevc")) {
                        i6++;
                    } else {
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
                        if (capabilitiesForType != null && (videoCapabilities = capabilitiesForType.getVideoCapabilities()) != null) {
                            mediaCodecInfoArr = codecInfos;
                            double d = (double) i3;
                            boolean areSizeAndRateSupported = videoCapabilities.areSizeAndRateSupported(i, i2, d);
                            boolean areSizeAndRateSupported2 = videoCapabilities.areSizeAndRateSupported(i2, i, d);
                            TXCLog.i("TXCVideoDecoderUtils", "got hevc decoder:%s, type:%s, supportPort= %b,supportLand=%b", mediaCodecInfo.getName(), str, Boolean.valueOf(areSizeAndRateSupported), Boolean.valueOf(areSizeAndRateSupported2));
                            if (!areSizeAndRateSupported2 || !areSizeAndRateSupported) {
                                MediaFormat mediaFormat = null;
                                if (areSizeAndRateSupported2 || areSizeAndRateSupported) {
                                    if (!areSizeAndRateSupported2) {
                                        mediaFormat = MediaFormat.createVideoFormat("video/hevc", i2, i);
                                    } else if (!areSizeAndRateSupported) {
                                        mediaFormat = MediaFormat.createVideoFormat("video/hevc", i, i2);
                                    }
                                }
                                if (mediaFormat != null) {
                                    String findDecoderForFormat = mediaCodecList.findDecoderForFormat(mediaFormat);
                                    z2 = false;
                                    TXCLog.i("TXCVideoDecoderUtils", "findDecoderForFormat hevc decodername:%s", findDecoderForFormat);
                                    if (findDecoderForFormat != null) {
                                        z3 = true;
                                    }
                                }
                            } else {
                                z3 = true;
                            }
                            z2 = false;
                        }
                    }
                }
                i5++;
                i4 = z2;
                codecInfos = mediaCodecInfoArr;
            }
            z2 = i4;
            mediaCodecInfoArr = codecInfos;
            i5++;
            i4 = z2;
            codecInfos = mediaCodecInfoArr;
        }
        if (!z3 || !c.a().g()) {
            z = i4;
        }
        TXCLog.i("TXCVideoDecoderUtils", "config hevc decoder switch : " + z + " ,isSupport=" + z3);
        return z;
    }
}
