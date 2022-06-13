package com.tencent.thumbplayer.api.capability;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPHDRVersionRange {
    public int lowerboundAndroidAPILevel;
    public int lowerboundPatchVersion;
    public int lowerboundSystemVersion;
    public int upperboundAndroidAPILevel;
    public int upperboundPatchVersion;
    public int upperboundSystemVersion;

    public TPHDRVersionRange(int i, int i2) {
        this.upperboundAndroidAPILevel = i;
        this.lowerboundAndroidAPILevel = i2;
    }

    public TPHDRVersionRange(int i, int i2, int i3, int i4) {
        this.upperboundSystemVersion = i;
        this.lowerboundSystemVersion = i2;
        this.upperboundPatchVersion = i3;
        this.lowerboundPatchVersion = i4;
    }
}
