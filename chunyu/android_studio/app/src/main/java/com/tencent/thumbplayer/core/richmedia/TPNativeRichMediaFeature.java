package com.tencent.thumbplayer.core.richmedia;

/* loaded from: classes2.dex */
public class TPNativeRichMediaFeature {
    private String mFeatureType;
    private String[] mBinding = new String[0];
    private boolean mIsSelected = false;

    public String[] getBinding() {
        return this.mBinding;
    }

    public String getFeatureType() {
        return this.mFeatureType;
    }

    public boolean isSelected() {
        return this.mIsSelected;
    }

    public void setBinding(String[] strArr) {
        this.mBinding = strArr;
    }

    public void setFeatureType(String str) {
        this.mFeatureType = str;
    }

    public void setSelected(boolean z) {
        this.mIsSelected = z;
    }
}
