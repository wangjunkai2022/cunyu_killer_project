package com.facebook.imagepipeline.animated.base;

import android.animation.ValueAnimator;
import android.view.animation.LinearInterpolator;
import com.facebook.common.time.MonotonicClock;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes4.dex */
public class AnimatedDrawable extends AbstractAnimatedDrawable implements AnimatableDrawable {
    public AnimatedDrawable(ScheduledExecutorService scheduledExecutorService, AnimatedDrawableCachingBackend animatedDrawableCachingBackend, AnimatedDrawableDiagnostics animatedDrawableDiagnostics, MonotonicClock monotonicClock) {
        super(scheduledExecutorService, animatedDrawableCachingBackend, animatedDrawableDiagnostics, monotonicClock);
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatableDrawable
    public ValueAnimator createValueAnimator(int i) {
        ValueAnimator createValueAnimator = createValueAnimator();
        createValueAnimator.setRepeatCount(Math.max(i / getAnimatedDrawableBackend().getDurationMs(), 1));
        return createValueAnimator;
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatableDrawable
    public ValueAnimator createValueAnimator() {
        int loopCount = getAnimatedDrawableBackend().getLoopCount();
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, getDuration());
        valueAnimator.setDuration((long) getDuration());
        if (loopCount == 0) {
            loopCount = -1;
        }
        valueAnimator.setRepeatCount(loopCount);
        valueAnimator.setRepeatMode(1);
        valueAnimator.setInterpolator(new LinearInterpolator());
        valueAnimator.addUpdateListener(createAnimatorUpdateListener());
        return valueAnimator;
    }

    @Override // com.facebook.imagepipeline.animated.base.AnimatableDrawable
    public ValueAnimator.AnimatorUpdateListener createAnimatorUpdateListener() {
        return new ValueAnimator.AnimatorUpdateListener() { // from class: com.facebook.imagepipeline.animated.base.AnimatedDrawable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AnimatedDrawable.this.setLevel(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        };
    }
}
