package com.tencent.thumbplayer.c;

import com.tencent.thumbplayer.api.composition.ITPMediaUrlAsset;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.io.IOException;

/* loaded from: classes2.dex */
public class l extends d implements ITPMediaUrlAsset {
    private String a;

    public l(String str) {
        this.a = str;
    }

    @Override // com.tencent.thumbplayer.c.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 0;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaUrlAsset
    public String getStreamUrl() {
        return this.a;
    }

    @Override // com.tencent.thumbplayer.c.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public String getUrl() {
        try {
            return i.a(this);
        } catch (IOException e) {
            TPLogUtil.e("TPMediaUrlAsset", e);
            return "";
        }
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaUrlAsset
    public void setStreamUrl(String str) {
        this.a = str;
    }
}
