package com.tencent.thumbplayer.c;

import com.tencent.thumbplayer.api.composition.ITPMediaAssetOrderedMap;
import com.tencent.thumbplayer.utils.TPLogUtil;

/* loaded from: classes2.dex */
public class c implements ITPMediaAssetOrderedMap {
    private StringBuilder a = new StringBuilder();

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetOrderedMap
    public void addKeyValue(String str, String str2) {
        TPLogUtil.i("TPMediaAssetOrderedMap", "addKeyValue key:" + str + "=" + str2);
        StringBuilder sb = this.a;
        sb.append(str);
        sb.append("=");
        sb.append(str2);
        sb.append(";");
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetOrderedMap
    public String getKeyValueStr() {
        TPLogUtil.i("TPMediaAssetOrderedMap", "getKeyValueStr " + this.a.toString());
        return this.a.toString();
    }
}
