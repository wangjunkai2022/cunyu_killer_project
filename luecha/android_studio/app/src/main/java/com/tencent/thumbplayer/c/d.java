package com.tencent.thumbplayer.c;

import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class d implements ITPMediaAsset {
    private ITPMediaAssetExtraParam a;

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public ITPMediaAssetExtraParam getExtraParam() {
        return this.a;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 0;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public String getUrl() {
        return "";
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public void setExtraParam(ITPMediaAssetExtraParam iTPMediaAssetExtraParam) {
        this.a = iTPMediaAssetExtraParam;
    }
}
