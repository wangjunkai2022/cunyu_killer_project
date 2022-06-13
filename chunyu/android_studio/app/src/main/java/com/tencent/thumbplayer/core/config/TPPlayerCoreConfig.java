package com.tencent.thumbplayer.core.config;

/* loaded from: classes2.dex */
public class TPPlayerCoreConfig {
    private static boolean mMediaDrmReuseEnable;
    private static int mVideoMediaCodecCoexistMaxCnt;

    public static boolean getMediaDrmReuseEnable() {
        return mMediaDrmReuseEnable;
    }

    public static int getVideoMediaCodecCoexistMaxCnt() {
        return mVideoMediaCodecCoexistMaxCnt;
    }

    public static void setMediaDrmReuseEnable(boolean z) {
        mMediaDrmReuseEnable = z;
    }

    public static void setVideoMediaCodecCoexistMaxCnt(int i) {
        mVideoMediaCodecCoexistMaxCnt = i;
    }
}
