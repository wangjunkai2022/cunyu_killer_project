package com.tencent.thumbplayer.c;

import com.tencent.thumbplayer.api.composition.ITPMediaRTCAsset;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class k extends d implements ITPMediaRTCAsset {
    private String a;
    private String b;
    private int c;

    public k(String str, String str2) {
        this.c = 0;
        this.a = str;
        this.b = str2;
    }

    public k(String str, String str2, int i) {
        this.c = 0;
        this.a = str;
        this.b = str2;
        this.c = i;
    }

    @Override // com.tencent.thumbplayer.c.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 0;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaRTCAsset
    public int getRtcSdpExchangeType() {
        return this.c;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaRTCAsset
    public String getRtcServerUrl() {
        return this.b;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaRTCAsset
    public String getRtcStreamUrl() {
        return this.a;
    }

    @Override // com.tencent.thumbplayer.c.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public String getUrl() {
        try {
            return i.a(this);
        } catch (IOException e) {
            TPLogUtil.e("TPMediaWebrtcAsset", e);
            return "";
        }
    }
}
