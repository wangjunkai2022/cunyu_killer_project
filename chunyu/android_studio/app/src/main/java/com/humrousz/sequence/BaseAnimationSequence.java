package com.humrousz.sequence;

import android.graphics.Bitmap;

/* loaded from: classes2.dex */
public abstract class BaseAnimationSequence {
    private final int mDefaultLoopCount;
    private final int mFrameCount;
    private final int mHeight;
    private final int mWidth;

    public abstract long getFrame(int i, Bitmap bitmap, int i2);

    public abstract boolean isOpaque();

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getFrameCount() {
        return this.mFrameCount;
    }

    public int getDefaultLoopCount() {
        return this.mDefaultLoopCount;
    }

    public BaseAnimationSequence(int i, int i2, int i3, int i4) {
        this.mWidth = i;
        this.mHeight = i2;
        this.mFrameCount = i3;
        this.mDefaultLoopCount = i4;
    }
}
