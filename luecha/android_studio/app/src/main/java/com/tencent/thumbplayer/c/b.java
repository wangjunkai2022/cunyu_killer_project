package com.tencent.thumbplayer.c;

import com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam;
import com.tencent.thumbplayer.api.composition.ITPMediaAssetObjectParam;
import java.io.Serializable;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class b implements ITPMediaAssetExtraParam {
    private HashMap<String, Serializable> a = new HashMap<>();

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam
    public int getExtraInt(String str) {
        if (this.a.containsKey(str)) {
            return ((Integer) this.a.get(str)).intValue();
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam
    public ITPMediaAssetObjectParam getExtraObject(String str) {
        if (this.a.get(str) instanceof ITPMediaAssetObjectParam) {
            return (ITPMediaAssetObjectParam) this.a.get(str);
        }
        return null;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam
    public String getExtraString(String str) {
        return this.a.containsKey(str) ? (String) this.a.get(str) : "";
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam
    public void setExtraInt(String str, int i) {
        this.a.put(str, Integer.valueOf(i));
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam
    public void setExtraObject(String str, ITPMediaAssetObjectParam iTPMediaAssetObjectParam) {
        this.a.put(str, iTPMediaAssetObjectParam);
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam
    public void setExtraString(String str, String str2) {
        this.a.put(str, str2);
    }
}
