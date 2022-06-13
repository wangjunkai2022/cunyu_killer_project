package com.tencent.thumbplayer.core.common;

/* loaded from: classes2.dex */
public class TPMediaTrackInfo {
    public static final int TP_NATIVE_MEDIA_TRACK_TYPE_AUDIO = 2;
    public static final int TP_NATIVE_MEDIA_TRACK_TYPE_SUBTITLE = 3;
    public static final int TP_NATIVE_MEDIA_TRACK_TYPE_UNKNOW = 0;
    public static final int TP_NATIVE_MEDIA_TRACK_TYPE_VIDEO = 1;
    public String trackName;
    public int trackType = 0;
    public boolean isSelected = false;
    public boolean isExclusive = true;
    public boolean isInternal = false;
    public TPMediaTrackHlsTag hlsTag = new TPMediaTrackHlsTag();
}
