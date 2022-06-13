package com.tencent.thumbplayer.api.composition;

import java.io.Serializable;

/* loaded from: classes2.dex */
public interface ITPMediaAssetExtraParam extends Serializable {
    public static final String TP_PLAYER_EXTRA_PARAM_HLS_PREFERRED_AUDIO = "hls_preferred_audio";
    public static final String TP_PLAYER_EXTRA_PARAM_HLS_PREFERRED_SUBTITLE = "hls_preferred_subtitle";
    public static final String TP_PLAYER_EXTRA_PARAM_HLS_PREFERRED_VIDEO = "hls_preferred_video";

    int getExtraInt(String str);

    ITPMediaAssetObjectParam getExtraObject(String str);

    String getExtraString(String str);

    void setExtraInt(String str, int i);

    void setExtraObject(String str, ITPMediaAssetObjectParam iTPMediaAssetObjectParam);

    void setExtraString(String str, String str2);
}
