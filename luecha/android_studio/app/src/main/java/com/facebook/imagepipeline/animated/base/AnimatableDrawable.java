package com.facebook.imagepipeline.animated.base;

import android.animation.ValueAnimator;
import android.graphics.drawable.Animatable;

/* loaded from: classes2.dex */
public interface AnimatableDrawable extends Animatable {
    ValueAnimator.AnimatorUpdateListener createAnimatorUpdateListener();

    ValueAnimator createValueAnimator();

    ValueAnimator createValueAnimator(int i);
}
