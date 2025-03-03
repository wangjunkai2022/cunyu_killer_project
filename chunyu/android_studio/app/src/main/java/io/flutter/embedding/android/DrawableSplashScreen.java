package io.flutter.embedding.android;

import android.animation.Animator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import io.flutter.embedding.android.SplashScreen;

@Deprecated
/* loaded from: classes2.dex */
public final class DrawableSplashScreen implements SplashScreen {
    private final long crossfadeDurationInMillis;
    private final Drawable drawable;
    private final ImageView.ScaleType scaleType;
    private DrawableSplashScreenView splashView;

    @Override // io.flutter.embedding.android.SplashScreen
    public /* synthetic */ boolean doesSplashViewRememberItsTransition() {
        return SplashScreen.CC.$default$doesSplashViewRememberItsTransition(this);
    }

    @Override // io.flutter.embedding.android.SplashScreen
    public /* synthetic */ Bundle saveSplashScreenState() {
        return SplashScreen.CC.$default$saveSplashScreenState(this);
    }

    public DrawableSplashScreen(Drawable drawable) {
        this(drawable, ImageView.ScaleType.FIT_XY, 500);
    }

    public DrawableSplashScreen(Drawable drawable, ImageView.ScaleType scaleType, long j) {
        this.drawable = drawable;
        this.scaleType = scaleType;
        this.crossfadeDurationInMillis = j;
    }

    @Override // io.flutter.embedding.android.SplashScreen
    public View createSplashView(Context context, Bundle bundle) {
        this.splashView = new DrawableSplashScreenView(context);
        this.splashView.setSplashDrawable(this.drawable, this.scaleType);
        return this.splashView;
    }

    @Override // io.flutter.embedding.android.SplashScreen
    public void transitionToFlutter(final Runnable runnable) {
        DrawableSplashScreenView drawableSplashScreenView = this.splashView;
        if (drawableSplashScreenView == null) {
            runnable.run();
        } else {
            drawableSplashScreenView.animate().alpha(0.0f).setDuration(this.crossfadeDurationInMillis).setListener(new Animator.AnimatorListener() { // from class: io.flutter.embedding.android.DrawableSplashScreen.1
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    runnable.run();
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    runnable.run();
                }
            });
        }
    }

    /* loaded from: classes2.dex */
    public static class DrawableSplashScreenView extends ImageView {
        public DrawableSplashScreenView(Context context) {
            this(context, null, 0);
        }

        public DrawableSplashScreenView(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public DrawableSplashScreenView(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
        }

        public void setSplashDrawable(Drawable drawable) {
            setSplashDrawable(drawable, ImageView.ScaleType.FIT_XY);
        }

        public void setSplashDrawable(Drawable drawable, ImageView.ScaleType scaleType) {
            setScaleType(scaleType);
            setImageDrawable(drawable);
        }
    }
}
