package com.tencent.live2.impl;

import android.text.TextUtils;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.tencent.liteav.basic.enums.c;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.live2.impl.a;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class V2TXLiveUtils {
    private static final String TAG = "V2TXLiveUtils";
    public static final String TRTC_ADDRESS1 = "room://cloud.tencent.com/rtc";
    public static final String TRTC_ADDRESS2 = "room://rtc.tencent.com";

    public static boolean isPortraitResolution(int i) {
        if (i != 30) {
            if (i == 31) {
                return false;
            }
            switch (i) {
                case 0:
                case 1:
                case 2:
                case 6:
                case 7:
                case 8:
                case 11:
                case 12:
                case 13:
                case 17:
                case 18:
                case 19:
                    break;
                case 3:
                case 4:
                case 5:
                case 9:
                case 10:
                case 14:
                case 15:
                case 16:
                    return false;
                default:
                    return true;
            }
        }
        return true;
    }

    public static V2TXLiveDef.V2TXLiveMode parseLiveMode(String str) {
        if (str.startsWith("trtc://") || str.startsWith("room://cloud.tencent.com/rtc") || str.startsWith("room://rtc.tencent.com")) {
            TXCLog.i("V2TXLiveUtils", "parseLiveMode: rtc.");
            return V2TXLiveDef.V2TXLiveMode.TXLiveMode_RTC;
        }
        TXCLog.i("V2TXLiveUtils", "parseLiveMode: rtmp.");
        return V2TXLiveDef.V2TXLiveMode.TXLiveMode_RTMP;
    }

    public static a.c parsePlayerType(String str) {
        if (str.startsWith("trtc://")) {
            TXCLog.i("V2TXLiveUtils", "parsePlayerType: rtc.");
            return a.c.V2TXLiveProtocolTypeTRTC;
        } else if (str.startsWith("room://cloud.tencent.com/rtc") || str.startsWith("room://rtc.tencent.com")) {
            TXCLog.i("V2TXLiveUtils", "parsePlayerType: room.");
            return a.c.V2TXLiveProtocolTypeROOM;
        } else if (str.startsWith("webrtc://")) {
            TXCLog.i("V2TXLiveUtils", "parsePlayerType: webrtc.");
            return a.c.V2TXLiveProtocolTypeWEBRTC;
        } else {
            TXCLog.i("V2TXLiveUtils", "parsePlayerType: rtmp.");
            return a.c.V2TXLiveProtocolTypeRTMP;
        }
    }

    public static int getRTMPRotation(V2TXLiveDef.V2TXLiveRotation v2TXLiveRotation) {
        if (v2TXLiveRotation == null) {
            return 0;
        }
        int i = AnonymousClass1.a[v2TXLiveRotation.ordinal()];
        if (i == 1) {
            return 270;
        }
        if (i != 2) {
            return i != 3 ? 0 : 90;
        }
        return 180;
    }

    public static int getRTMPFillMode(V2TXLiveDef.V2TXLiveFillMode v2TXLiveFillMode) {
        int i;
        return (v2TXLiveFillMode == null || (i = AnonymousClass1.b[v2TXLiveFillMode.ordinal()]) == 1 || i != 2) ? 0 : 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* renamed from: com.tencent.live2.impl.V2TXLiveUtils$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a;
        static final /* synthetic */ int[] b;

        static {
            try {
                c[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution160x160.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                c[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution270x270.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                c[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution480x480.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                c[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution320x240.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                c[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution480x360.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                c[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution640x480.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                c[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution320x180.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                c[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution480x270.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                c[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution640x360.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                c[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution960x540.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                c[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution1280x720.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                c[V2TXLiveDef.V2TXLiveVideoResolution.V2TXLiveVideoResolution1920x1080.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            b = new int[V2TXLiveDef.V2TXLiveFillMode.values().length];
            try {
                b[V2TXLiveDef.V2TXLiveFillMode.V2TXLiveFillModeFill.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                b[V2TXLiveDef.V2TXLiveFillMode.V2TXLiveFillModeFit.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            a = new int[V2TXLiveDef.V2TXLiveRotation.values().length];
            try {
                a[V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation270.ordinal()] = 1;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation180.ordinal()] = 2;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation90.ordinal()] = 3;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                a[V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation0.ordinal()] = 4;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    public static int getRTMPResolution(V2TXLiveDef.V2TXLiveVideoResolution v2TXLiveVideoResolution) {
        switch (v2TXLiveVideoResolution) {
            case V2TXLiveVideoResolution160x160:
                return 19;
            case V2TXLiveVideoResolution270x270:
                return 18;
            case V2TXLiveVideoResolution480x480:
                return 17;
            case V2TXLiveVideoResolution320x240:
                return 11;
            case V2TXLiveVideoResolution480x360:
                return 12;
            case V2TXLiveVideoResolution640x480:
                return 13;
            case V2TXLiveVideoResolution320x180:
                return 7;
            case V2TXLiveVideoResolution480x270:
                return 8;
            case V2TXLiveVideoResolution640x360:
                return 0;
            case V2TXLiveVideoResolution960x540:
            default:
                return 1;
            case V2TXLiveVideoResolution1280x720:
                return 2;
            case V2TXLiveVideoResolution1920x1080:
                return 30;
        }
    }

    public static c convertResolution(int i) {
        if (i == 0) {
            return c.RESOLUTION_TYPE_360_640;
        }
        if (i == 1) {
            return c.RESOLUTION_TYPE_540_960;
        }
        if (i == 2) {
            return c.RESOLUTION_TYPE_720_1280;
        }
        if (i == 3) {
            return c.RESOLUTION_TYPE_640_360;
        }
        if (i == 4) {
            return c.RESOLUTION_TYPE_960_540;
        }
        if (i == 5) {
            return c.RESOLUTION_TYPE_1280_720;
        }
        if (i == 30) {
            return c.RESOLUTION_TYPE_1080_1920;
        }
        if (i == 31) {
            return c.RESOLUTION_TYPE_1920_1080;
        }
        switch (i) {
            case 7:
                return c.RESOLUTION_TYPE_180_320;
            case 8:
                return c.RESOLUTION_TYPE_270_480;
            case 9:
                return c.RESOLUTION_TYPE_320_180;
            case 10:
                return c.RESOLUTION_TYPE_480_270;
            case 11:
                return c.RESOLUTION_TYPE_240_320;
            case 12:
                return c.RESOLUTION_TYPE_360_480;
            case 13:
                return c.RESOLUTION_TYPE_480_640;
            case 14:
                return c.RESOLUTION_TYPE_320_240;
            case 15:
                return c.RESOLUTION_TYPE_480_360;
            case 16:
                return c.RESOLUTION_TYPE_640_480;
            case 17:
                return c.RESOLUTION_TYPE_480_480;
            case 18:
                return c.RESOLUTION_TYPE_270_270;
            case 19:
                return c.RESOLUTION_TYPE_160_160;
            default:
                return c.RESOLUTION_TYPE_540_960;
        }
    }

    public static b getVideoSize(V2TXLiveDef.V2TXLiveVideoResolution v2TXLiveVideoResolution, V2TXLiveDef.V2TXLiveVideoResolutionMode v2TXLiveVideoResolutionMode) {
        b bVar;
        b bVar2 = new b(544, 960);
        switch (v2TXLiveVideoResolution) {
            case V2TXLiveVideoResolution160x160:
                return new b(160, 160);
            case V2TXLiveVideoResolution270x270:
                return new b(270, 270);
            case V2TXLiveVideoResolution480x480:
                return new b(480, 480);
            case V2TXLiveVideoResolution320x240:
                if (v2TXLiveVideoResolutionMode != V2TXLiveDef.V2TXLiveVideoResolutionMode.V2TXLiveVideoResolutionModePortrait) {
                    bVar = new b(320, PsExtractor.VIDEO_STREAM_MASK);
                    break;
                } else {
                    bVar = new b(PsExtractor.VIDEO_STREAM_MASK, 320);
                    break;
                }
            case V2TXLiveVideoResolution480x360:
                if (v2TXLiveVideoResolutionMode == V2TXLiveDef.V2TXLiveVideoResolutionMode.V2TXLiveVideoResolutionModePortrait) {
                    return new b(368, 480);
                }
                return new b(480, 368);
            case V2TXLiveVideoResolution640x480:
                if (v2TXLiveVideoResolutionMode == V2TXLiveDef.V2TXLiveVideoResolutionMode.V2TXLiveVideoResolutionModePortrait) {
                    return new b(480, 640);
                }
                return new b(640, 480);
            case V2TXLiveVideoResolution320x180:
                if (v2TXLiveVideoResolutionMode != V2TXLiveDef.V2TXLiveVideoResolutionMode.V2TXLiveVideoResolutionModePortrait) {
                    bVar = new b(320, 192);
                    break;
                } else {
                    bVar = new b(192, 320);
                    break;
                }
            case V2TXLiveVideoResolution480x270:
                if (v2TXLiveVideoResolutionMode != V2TXLiveDef.V2TXLiveVideoResolutionMode.V2TXLiveVideoResolutionModePortrait) {
                    bVar = new b(480, 272);
                    break;
                } else {
                    bVar = new b(272, 480);
                    break;
                }
            case V2TXLiveVideoResolution640x360:
                if (v2TXLiveVideoResolutionMode == V2TXLiveDef.V2TXLiveVideoResolutionMode.V2TXLiveVideoResolutionModePortrait) {
                    return new b(368, 640);
                }
                return new b(640, 368);
            case V2TXLiveVideoResolution960x540:
                if (v2TXLiveVideoResolutionMode == V2TXLiveDef.V2TXLiveVideoResolutionMode.V2TXLiveVideoResolutionModePortrait) {
                    return new b(544, 960);
                }
                return new b(960, 544);
            case V2TXLiveVideoResolution1280x720:
                if (v2TXLiveVideoResolutionMode != V2TXLiveDef.V2TXLiveVideoResolutionMode.V2TXLiveVideoResolutionModePortrait) {
                    bVar = new b(1280, 720);
                    break;
                } else {
                    bVar = new b(720, 1280);
                    break;
                }
            case V2TXLiveVideoResolution1920x1080:
                if (v2TXLiveVideoResolutionMode != V2TXLiveDef.V2TXLiveVideoResolutionMode.V2TXLiveVideoResolutionModePortrait) {
                    bVar = new b(1920, 1088);
                    break;
                } else {
                    bVar = new b(1088, 1920);
                    break;
                }
            default:
                return bVar2;
        }
        return bVar;
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class b {
        public int a;
        public int b;

        public b(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class a {
        public int a;
        public int b;

        public a(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public static a getBitrateByResolution(V2TXLiveDef.V2TXLiveVideoResolution v2TXLiveVideoResolution) {
        int i = 900;
        int i2 = 600;
        i2 = 250;
        i2 = 350;
        i = 1500;
        i2 = 800;
        switch (v2TXLiveVideoResolution) {
            case V2TXLiveVideoResolution160x160:
                i2 = 100;
                i = 150;
                break;
            case V2TXLiveVideoResolution270x270:
                i2 = 200;
                i = 300;
                break;
            case V2TXLiveVideoResolution480x480:
                i = 525;
                break;
            case V2TXLiveVideoResolution320x240:
                i = 375;
                break;
            case V2TXLiveVideoResolution480x360:
                i = 600;
                i2 = 400;
                break;
            case V2TXLiveVideoResolution320x180:
                i = 400;
                break;
            case V2TXLiveVideoResolution480x270:
                i = 550;
                break;
            case V2TXLiveVideoResolution640x360:
                i2 = 500;
                break;
            case V2TXLiveVideoResolution1280x720:
                i2 = 1000;
                i = 1800;
                break;
            case V2TXLiveVideoResolution1920x1080:
                i2 = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS;
                i = 3000;
                break;
        }
        return new a(i2, i);
    }

    public static String removeURLSensitiveInfo(String str) {
        String str2;
        Exception e;
        int indexOf;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            String[] strArr = {"roomsig", "privatemapkey", "usersig"};
            str2 = str;
            for (int i = 0; i < strArr.length; i++) {
                try {
                    if (str2.contains(strArr[i]) && (indexOf = str2.indexOf(strArr[i])) != -1) {
                        int indexOf2 = str2.indexOf("&", indexOf);
                        if (indexOf2 == -1) {
                            str2 = str2.substring(0, indexOf);
                        } else {
                            str2 = str2.substring(0, indexOf) + str2.substring(indexOf2);
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    TXCLog.e("V2TXLiveUtils", "remove url sensitive info failed.", e);
                    return str2;
                }
            }
        } catch (Exception e3) {
            e = e3;
            str2 = str;
        }
        return str2;
    }

    public static int getFinalResolution(int i, boolean z, boolean z2) {
        int i2;
        if (z2) {
            z = true;
        }
        if (i == 0) {
            i2 = z ? 0 : 3;
        } else if (i == 1) {
            i2 = z ? 1 : 4;
        } else if (i == 2) {
            i2 = z ? 2 : 5;
        } else if (i == 7) {
            i2 = z ? 7 : 9;
        } else if (i == 8) {
            i2 = z ? 8 : 10;
        } else if (i != 30) {
            switch (i) {
                case 11:
                    if (!z) {
                        i2 = 14;
                        break;
                    } else {
                        i2 = 11;
                        break;
                    }
                case 12:
                    if (!z) {
                        i2 = 15;
                        break;
                    } else {
                        i2 = 12;
                        break;
                    }
                case 13:
                    if (!z) {
                        i2 = 16;
                        break;
                    } else {
                        i2 = 13;
                        break;
                    }
                default:
                    switch (i) {
                        case 17:
                        case 18:
                        case 19:
                            i2 = i;
                            break;
                        default:
                            i2 = -1;
                            break;
                    }
            }
        } else {
            i2 = z ? 30 : 31;
        }
        if (i2 == -1) {
            TXCLog.e("V2TXLiveUtils", "getFinalResolution: seriously error!!! can't map resolution, use original resolution.");
            i2 = i;
        }
        TXCLog.i("V2TXLiveUtils", "getFinalResolution: [old res:" + i + "][new res:" + i2 + "]");
        return i2;
    }
}
