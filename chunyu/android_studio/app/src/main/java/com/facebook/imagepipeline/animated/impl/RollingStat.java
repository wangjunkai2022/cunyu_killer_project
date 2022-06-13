package com.facebook.imagepipeline.animated.impl;

import android.os.SystemClock;

/* loaded from: classes4.dex */
class RollingStat {
    private static final int WINDOWS = 60;
    private final short[] mStat = new short[60];

    /* JADX INFO: Access modifiers changed from: package-private */
    public void incrementStats(int i) {
        long uptimeMillis = SystemClock.uptimeMillis() / 1000;
        int i2 = (int) (uptimeMillis % 60);
        int i3 = (int) ((uptimeMillis / 60) & 255);
        short s = this.mStat[i2];
        int i4 = s & 255;
        if (i3 == ((s >> 8) & 255)) {
            i += i4;
        }
        this.mStat[i2] = (short) (i | (i3 << 8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSum(int i) {
        long uptimeMillis = SystemClock.uptimeMillis() / 1000;
        int i2 = (int) ((uptimeMillis - ((long) i)) % 60);
        int i3 = (int) ((uptimeMillis / 60) & 255);
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            short s = this.mStat[(i2 + i5) % 60];
            int i6 = s & 255;
            if (((s >> 8) & 255) == i3) {
                i4 += i6;
            }
        }
        return i4;
    }
}
