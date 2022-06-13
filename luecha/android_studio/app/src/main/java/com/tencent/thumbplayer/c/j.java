package com.tencent.thumbplayer.c;

import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class j extends d implements ITPMediaDRMAsset {
    private String a;
    @TPCommonEnum.TP_DRM_TYPE
    private int b;
    private Map<String, String> c = new HashMap();

    public j(@TPCommonEnum.TP_DRM_TYPE int i, String str) {
        this.a = str;
        this.b = i;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
    public Map<String, String> getDrmAllProperties() {
        return this.c;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
    public String getDrmPlayUrl() {
        return this.a;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
    public String getDrmProperty(String str, String str2) {
        String str3;
        Map<String, String> map = this.c;
        return (map == null || map.isEmpty() || (str3 = this.c.get(str)) == null) ? str2 : str3;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
    @TPCommonEnum.TP_DRM_TYPE
    public int getDrmType() {
        return this.b;
    }

    @Override // com.tencent.thumbplayer.c.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public int getMediaType() {
        return 0;
    }

    @Override // com.tencent.thumbplayer.c.d, com.tencent.thumbplayer.api.composition.ITPMediaAsset
    public String getUrl() {
        try {
            return i.a(this);
        } catch (IOException e) {
            TPLogUtil.e("TPMediaDRMAsset", e);
            return "";
        }
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
    public void setDrmPlayUrl(String str) {
        this.a = str;
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
    public void setDrmProperty(String str, String str2) {
        this.c.put(str, str2);
    }

    @Override // com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset
    public void setDrmType(@TPCommonEnum.TP_DRM_TYPE int i) {
        this.b = i;
    }
}
