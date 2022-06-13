package com.tencent.thumbplayer.core.config;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
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
