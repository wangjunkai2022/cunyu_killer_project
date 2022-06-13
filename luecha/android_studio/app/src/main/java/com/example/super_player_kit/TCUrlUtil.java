package com.example.super_player_kit;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public class TCUrlUtil {
    public static boolean isRTMPPlay(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("rtmp");
    }

    public static boolean isFLVPlay(String str) {
        return ((!TextUtils.isEmpty(str) && str.startsWith("http://")) || str.startsWith("https://")) && str.contains(".flv");
    }

    public static boolean isMP4Play(String str) {
        return ((!TextUtils.isEmpty(str) && str.startsWith("http://")) || str.startsWith("https://")) && str.contains(".mp4");
    }

    public static boolean isHLSPlay(String str) {
        return ((!TextUtils.isEmpty(str) && str.startsWith("http://")) || str.startsWith("https://")) && str.contains(".hls");
    }

    public static int getPlayType(String str) {
        if (isRTMPPlay(str)) {
            return 0;
        }
        if (isFLVPlay(str)) {
            return 1;
        }
        if (isMP4Play(str)) {
            return 3;
        }
        return isHLSPlay(str) ? 4 : 6;
    }
}
