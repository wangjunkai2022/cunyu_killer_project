package com.nineoldandroids.view;

import android.animation.Animator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import com.nineoldandroids.animation.Animator;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
class ViewPropertyAnimatorICS extends ViewPropertyAnimator {
    private static final long RETURN_WHEN_NULL = -1;
    private final WeakReference<ViewPropertyAnimator> mNative;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewPropertyAnimatorICS(View view) {
        this.mNative = new WeakReference<>(view.animate());
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator setDuration(long j) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.setDuration(j);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public long getDuration() {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            return viewPropertyAnimator.getDuration();
        }
        return -1;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator setStartDelay(long j) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.setStartDelay(j);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public long getStartDelay() {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            return viewPropertyAnimator.getStartDelay();
        }
        return -1;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator setInterpolator(Interpolator interpolator) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.setInterpolator(interpolator);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator setListener(final Animator.AnimatorListener animatorListener) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            if (animatorListener == null) {
                viewPropertyAnimator.setListener(null);
            } else {
                viewPropertyAnimator.setListener(new Animator.AnimatorListener() { // from class: com.nineoldandroids.view.ViewPropertyAnimatorICS.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(android.animation.Animator animator) {
                        animatorListener.onAnimationStart(null);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(android.animation.Animator animator) {
                        animatorListener.onAnimationRepeat(null);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(android.animation.Animator animator) {
                        animatorListener.onAnimationEnd(null);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(android.animation.Animator animator) {
                        animatorListener.onAnimationCancel(null);
                    }
                });
            }
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public void start() {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.start();
        }
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public void cancel() {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator x(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.x(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator xBy(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.xBy(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator y(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.y(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator yBy(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.yBy(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator rotation(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.rotation(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator rotationBy(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.rotationBy(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator rotationX(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.rotationX(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator rotationXBy(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.rotationXBy(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator rotationY(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.rotationY(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator rotationYBy(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.rotationYBy(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator translationX(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.translationX(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator translationXBy(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.translationXBy(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator translationY(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.translationY(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator translationYBy(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.translationYBy(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator scaleX(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.scaleX(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator scaleXBy(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.scaleXBy(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator scaleY(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.scaleY(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator scaleYBy(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.scaleYBy(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator alpha(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.alpha(f);
        }
        return this;
    }

    @Override // com.nineoldandroids.view.ViewPropertyAnimator
    public ViewPropertyAnimator alphaBy(float f) {
        ViewPropertyAnimator viewPropertyAnimator = this.mNative.get();
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.alphaBy(f);
        }
        return this;
    }
}
