package com.tencent.thumbplayer.api.composition;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPMediaRTCAsset extends ITPMediaAsset {
    public static final int MINI_SDP_EXCHANGE = 1;
    public static final int NORMAL_SDP_EXCHANGE = 0;
    public static final int USER_SDP_EXCHANGE = 2;

    int getRtcSdpExchangeType();

    String getRtcServerUrl();

    String getRtcStreamUrl();
}
