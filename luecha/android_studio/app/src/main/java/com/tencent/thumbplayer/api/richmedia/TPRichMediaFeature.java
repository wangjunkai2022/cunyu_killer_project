package com.tencent.thumbplayer.api.richmedia;

import com.tencent.thumbplayer.core.richmedia.TPNativeRichMediaFeature;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPRichMediaFeature {
    private List<String> mBinding;
    private String mFeatureType;
    private boolean mIsSelected;

    public TPRichMediaFeature(TPNativeRichMediaFeature tPNativeRichMediaFeature) {
        this.mIsSelected = false;
        this.mFeatureType = tPNativeRichMediaFeature.getFeatureType();
        this.mBinding = new ArrayList(Arrays.asList(tPNativeRichMediaFeature.getBinding()));
        this.mIsSelected = tPNativeRichMediaFeature.isSelected();
    }

    public List<String> getBinding() {
        return this.mBinding;
    }

    public String getFeatureType() {
        return this.mFeatureType;
    }

    public boolean isSelected() {
        return this.mIsSelected;
    }
}
