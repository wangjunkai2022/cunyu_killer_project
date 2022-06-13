package com.ferfalk.simplesearchview.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.graphics.Point;
import android.os.Build;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.ferfalk.simplesearchview.utils.SimpleAnimationUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SimpleAnimationUtils.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002#$B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0007J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J&\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u001a\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J&\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0015\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0001¢\u0006\u0002\b\u0018J\u001d\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0001¢\u0006\u0002\b\u001bJ\u0010\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u001a\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u001a\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J$\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0004H\u0007J\"\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\"\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J,\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u001a\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u001a\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J$\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\"\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J2\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u0010\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u001a\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u001a\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J$\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u0018\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0004H\u0007J\"\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\"\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J,\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u001a\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\u001a\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J$\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J\"\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J2\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0007J,\u0010 \u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J4\u0010 \u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u00068@X\u0081\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\t¨\u0006%"}, d2 = {"Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;", "", "()V", "ANIMATION_DURATION_DEFAULT", "", "defaultInterpolator", "Landroid/view/animation/Interpolator;", "getDefaultInterpolator$simplesearchview_release$annotations", "getDefaultInterpolator$simplesearchview_release", "()Landroid/view/animation/Interpolator;", "distance", "", "first", "Landroid/graphics/Point;", "second", "fadeIn", "Landroid/animation/Animator;", "view", "Landroid/view/View;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;", "duration", "fadeOut", "getDefaultCenter", "getDefaultCenter$simplesearchview_release", "getRevealRadius", TtmlNode.CENTER, "getRevealRadius$simplesearchview_release", "hide", "hideOrFadeOut", "reveal", "revealOrFadeIn", "verticalSlideView", "fromHeight", "toHeight", "AnimationListener", "DefaultActionAnimationListener", "simplesearchview_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class SimpleAnimationUtils {
    public static final int ANIMATION_DURATION_DEFAULT = 250;
    public static final SimpleAnimationUtils INSTANCE = new SimpleAnimationUtils();

    /* compiled from: SimpleAnimationUtils.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\b"}, d2 = {"Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;", "", "onAnimationCancel", "", "view", "Landroid/view/View;", "onAnimationEnd", "onAnimationStart", "simplesearchview_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public interface AnimationListener {
        boolean onAnimationCancel(View view);

        boolean onAnimationEnd(View view);

        boolean onAnimationStart(View view);
    }

    @JvmStatic
    public static final Animator fadeIn(View view) {
        return fadeIn$default(view, 0, null, 6, null);
    }

    @JvmStatic
    public static final Animator fadeIn(View view, int i) {
        return fadeIn$default(view, i, null, 4, null);
    }

    @JvmStatic
    public static final Animator fadeOut(View view) {
        return fadeOut$default(view, 0, null, 6, null);
    }

    @JvmStatic
    public static final Animator fadeOut(View view, int i) {
        return fadeOut$default(view, i, null, 4, null);
    }

    @JvmStatic
    public static /* synthetic */ void getDefaultInterpolator$simplesearchview_release$annotations() {
    }

    @JvmStatic
    public static final Animator hideOrFadeOut(View view) {
        return hideOrFadeOut$default(view, 0, null, null, 14, null);
    }

    @JvmStatic
    public static final Animator hideOrFadeOut(View view, int i) {
        return hideOrFadeOut$default(view, i, null, null, 12, null);
    }

    @JvmStatic
    public static final Animator hideOrFadeOut(View view, int i, AnimationListener animationListener) {
        return hideOrFadeOut$default(view, i, animationListener, null, 8, null);
    }

    @JvmStatic
    public static final Animator revealOrFadeIn(View view) {
        return revealOrFadeIn$default(view, 0, null, null, 14, null);
    }

    @JvmStatic
    public static final Animator revealOrFadeIn(View view, int i) {
        return revealOrFadeIn$default(view, i, null, null, 12, null);
    }

    @JvmStatic
    public static final Animator revealOrFadeIn(View view, int i, AnimationListener animationListener) {
        return revealOrFadeIn$default(view, i, animationListener, null, 8, null);
    }

    @JvmStatic
    public static final Animator verticalSlideView(View view, int i, int i2) {
        return verticalSlideView$default(view, i, i2, null, 8, null);
    }

    @JvmStatic
    public static final Animator verticalSlideView(View view, int i, int i2, int i3) {
        return verticalSlideView$default(view, i, i2, i3, null, 16, null);
    }

    private SimpleAnimationUtils() {
    }

    public static /* synthetic */ Animator revealOrFadeIn$default(View view, int i, AnimationListener animationListener, Point point, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 250;
        }
        if ((i2 & 4) != 0) {
            animationListener = null;
        }
        if ((i2 & 8) != 0) {
            point = null;
        }
        return revealOrFadeIn(view, i, animationListener, point);
    }

    @JvmStatic
    public static final Animator revealOrFadeIn(View view, int i, AnimationListener animationListener, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (Build.VERSION.SDK_INT >= 21) {
            return reveal(view, i, animationListener, point);
        }
        return fadeIn(view, i, animationListener);
    }

    @JvmStatic
    public static final Animator revealOrFadeIn(View view, int i, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        return revealOrFadeIn(view, i, null, point);
    }

    @JvmStatic
    public static final Animator revealOrFadeIn(View view, AnimationListener animationListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        return revealOrFadeIn(view, 250, animationListener, null);
    }

    @JvmStatic
    public static final Animator revealOrFadeIn(View view, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        return revealOrFadeIn(view, 250, null, point);
    }

    @JvmStatic
    public static final Animator revealOrFadeIn(View view, AnimationListener animationListener, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        return revealOrFadeIn(view, 250, animationListener, point);
    }

    public static /* synthetic */ Animator hideOrFadeOut$default(View view, int i, AnimationListener animationListener, Point point, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 250;
        }
        if ((i2 & 4) != 0) {
            animationListener = null;
        }
        if ((i2 & 8) != 0) {
            point = null;
        }
        return hideOrFadeOut(view, i, animationListener, point);
    }

    @JvmStatic
    public static final Animator hideOrFadeOut(View view, int i, AnimationListener animationListener, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (Build.VERSION.SDK_INT >= 21) {
            return hide(view, i, animationListener, point);
        }
        return fadeOut(view, i, animationListener);
    }

    @JvmStatic
    public static final Animator hideOrFadeOut(View view, int i, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        return hideOrFadeOut(view, i, null, point);
    }

    @JvmStatic
    public static final Animator hideOrFadeOut(View view, AnimationListener animationListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        return hideOrFadeOut(view, 250, animationListener, null);
    }

    @JvmStatic
    public static final Animator hideOrFadeOut(View view, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        return hideOrFadeOut(view, 250, null, point);
    }

    @JvmStatic
    public static final Animator hideOrFadeOut(View view, AnimationListener animationListener, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        return hideOrFadeOut(view, 250, animationListener, point);
    }

    @JvmStatic
    public static final Animator reveal(View view, int i) {
        Intrinsics.checkNotNullParameter(view, "view");
        return reveal(view, i, null, null);
    }

    @JvmStatic
    public static final Animator reveal(View view, int i, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        return reveal(view, i, null, point);
    }

    @JvmStatic
    public static final Animator reveal(View view, int i, AnimationListener animationListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        return reveal(view, i, animationListener, null);
    }

    @JvmStatic
    public static final Animator reveal(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return reveal(view, 250);
    }

    @JvmStatic
    public static final Animator reveal(View view, AnimationListener animationListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        return reveal(view, 250, animationListener, null);
    }

    @JvmStatic
    public static final Animator reveal(View view, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        return reveal(view, 250, null, point);
    }

    @JvmStatic
    public static final Animator reveal(View view, AnimationListener animationListener, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        return reveal(view, 250, animationListener, point);
    }

    @JvmStatic
    public static final Animator reveal(View view, int i, AnimationListener animationListener, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (point == null) {
            point = getDefaultCenter$simplesearchview_release(view);
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, point.x, point.y, 0.0f, (float) getRevealRadius$simplesearchview_release(point, view));
        createCircularReveal.addListener(new DefaultActionAnimationListener(view, animationListener, view, animationListener) { // from class: com.ferfalk.simplesearchview.utils.SimpleAnimationUtils$reveal$1
            final /* synthetic */ SimpleAnimationUtils.AnimationListener $listener;
            final /* synthetic */ View $view;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$view = r1;
                this.$listener = r2;
            }

            @Override // com.ferfalk.simplesearchview.utils.SimpleAnimationUtils.DefaultActionAnimationListener
            public void defaultOnAnimationStart(View view2) {
                Intrinsics.checkNotNullParameter(view2, "view");
                view2.setVisibility(0);
            }
        });
        Intrinsics.checkNotNullExpressionValue(createCircularReveal, "anim");
        createCircularReveal.setDuration((long) i);
        createCircularReveal.setInterpolator(getDefaultInterpolator$simplesearchview_release());
        return createCircularReveal;
    }

    @JvmStatic
    public static final Animator hide(View view, int i) {
        Intrinsics.checkNotNullParameter(view, "view");
        return hide(view, i, null, null);
    }

    @JvmStatic
    public static final Animator hide(View view, int i, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        return hide(view, i, null, point);
    }

    @JvmStatic
    public static final Animator hide(View view, int i, AnimationListener animationListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        return hide(view, i, animationListener, null);
    }

    @JvmStatic
    public static final Animator hide(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return hide(view, 250);
    }

    @JvmStatic
    public static final Animator hide(View view, AnimationListener animationListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        return hide(view, 250, animationListener, null);
    }

    @JvmStatic
    public static final Animator hide(View view, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        return hide(view, 250, null, point);
    }

    @JvmStatic
    public static final Animator hide(View view, AnimationListener animationListener, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        return hide(view, 250, animationListener, point);
    }

    @JvmStatic
    public static final Animator hide(View view, int i, AnimationListener animationListener, Point point) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (point == null) {
            point = getDefaultCenter$simplesearchview_release(view);
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, point.x, point.y, (float) getRevealRadius$simplesearchview_release(point, view), 0.0f);
        createCircularReveal.addListener(new DefaultActionAnimationListener(view, animationListener, view, animationListener) { // from class: com.ferfalk.simplesearchview.utils.SimpleAnimationUtils$hide$1
            final /* synthetic */ SimpleAnimationUtils.AnimationListener $listener;
            final /* synthetic */ View $view;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$view = r1;
                this.$listener = r2;
            }

            @Override // com.ferfalk.simplesearchview.utils.SimpleAnimationUtils.DefaultActionAnimationListener
            public void defaultOnAnimationEnd(View view2) {
                Intrinsics.checkNotNullParameter(view2, "view");
                view2.setVisibility(8);
            }
        });
        Intrinsics.checkNotNullExpressionValue(createCircularReveal, "anim");
        createCircularReveal.setDuration((long) i);
        createCircularReveal.setInterpolator(getDefaultInterpolator$simplesearchview_release());
        return createCircularReveal;
    }

    @JvmStatic
    public static final Point getDefaultCenter$simplesearchview_release(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return new Point(view.getWidth() / 2, view.getHeight() / 2);
    }

    @JvmStatic
    public static final int getRevealRadius$simplesearchview_release(Point point, View view) {
        Intrinsics.checkNotNullParameter(point, TtmlNode.CENTER);
        Intrinsics.checkNotNullParameter(view, "view");
        ArrayList<Point> arrayList = new ArrayList();
        arrayList.add(new Point(view.getLeft(), view.getTop()));
        arrayList.add(new Point(view.getRight(), view.getTop()));
        arrayList.add(new Point(view.getLeft(), view.getBottom()));
        arrayList.add(new Point(view.getRight(), view.getBottom()));
        float f = 0.0f;
        for (Point point2 : arrayList) {
            float distance = distance(point, point2);
            if (distance > f) {
                f = distance;
            }
        }
        return (int) Math.ceil((double) f);
    }

    @JvmStatic
    public static final float distance(Point point, Point point2) {
        Intrinsics.checkNotNullParameter(point, "first");
        Intrinsics.checkNotNullParameter(point2, "second");
        return (float) Math.sqrt(Math.pow(((double) point.x) - ((double) point2.x), 2.0d) + Math.pow(((double) point.y) - ((double) point2.y), 2.0d));
    }

    @JvmStatic
    public static final Animator fadeIn(View view, AnimationListener animationListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        return fadeIn(view, 250, animationListener);
    }

    public static /* synthetic */ Animator fadeIn$default(View view, int i, AnimationListener animationListener, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 250;
        }
        if ((i2 & 4) != 0) {
            animationListener = null;
        }
        return fadeIn(view, i, animationListener);
    }

    @JvmStatic
    public static final Animator fadeIn(View view, int i, AnimationListener animationListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (view.getAlpha() == 1.0f) {
            view.setAlpha(0.0f);
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f);
        ofFloat.addListener(new DefaultActionAnimationListener(view, animationListener, view, animationListener) { // from class: com.ferfalk.simplesearchview.utils.SimpleAnimationUtils$fadeIn$1
            final /* synthetic */ SimpleAnimationUtils.AnimationListener $listener;
            final /* synthetic */ View $view;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$view = r1;
                this.$listener = r2;
            }

            @Override // com.ferfalk.simplesearchview.utils.SimpleAnimationUtils.DefaultActionAnimationListener
            public void defaultOnAnimationStart(View view2) {
                Intrinsics.checkNotNullParameter(view2, "view");
                view2.setVisibility(0);
            }
        });
        Intrinsics.checkNotNullExpressionValue(ofFloat, "anim");
        ofFloat.setDuration((long) i);
        ofFloat.setInterpolator(getDefaultInterpolator$simplesearchview_release());
        return ofFloat;
    }

    @JvmStatic
    public static final Animator fadeOut(View view, AnimationListener animationListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        return fadeOut(view, 250, animationListener);
    }

    public static /* synthetic */ Animator fadeOut$default(View view, int i, AnimationListener animationListener, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 250;
        }
        if ((i2 & 4) != 0) {
            animationListener = null;
        }
        return fadeOut(view, i, animationListener);
    }

    @JvmStatic
    public static final Animator fadeOut(View view, int i, AnimationListener animationListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f);
        ofFloat.addListener(new DefaultActionAnimationListener(view, animationListener, view, animationListener) { // from class: com.ferfalk.simplesearchview.utils.SimpleAnimationUtils$fadeOut$1
            final /* synthetic */ SimpleAnimationUtils.AnimationListener $listener;
            final /* synthetic */ View $view;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$view = r1;
                this.$listener = r2;
            }

            @Override // com.ferfalk.simplesearchview.utils.SimpleAnimationUtils.DefaultActionAnimationListener
            public void defaultOnAnimationEnd(View view2) {
                Intrinsics.checkNotNullParameter(view2, "view");
                view2.setVisibility(8);
            }
        });
        Intrinsics.checkNotNullExpressionValue(ofFloat, "anim");
        ofFloat.setDuration((long) i);
        ofFloat.setInterpolator(getDefaultInterpolator$simplesearchview_release());
        return ofFloat;
    }

    public static /* synthetic */ Animator verticalSlideView$default(View view, int i, int i2, AnimationListener animationListener, int i3, Object obj) {
        if ((i3 & 8) != 0) {
            animationListener = null;
        }
        return verticalSlideView(view, i, i2, animationListener);
    }

    @JvmStatic
    public static final Animator verticalSlideView(View view, int i, int i2, AnimationListener animationListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        return verticalSlideView(view, i, i2, 250, animationListener);
    }

    public static /* synthetic */ Animator verticalSlideView$default(View view, int i, int i2, int i3, AnimationListener animationListener, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            animationListener = null;
        }
        return verticalSlideView(view, i, i2, i3, animationListener);
    }

    @JvmStatic
    public static final Animator verticalSlideView(View view, int i, int i2, int i3, AnimationListener animationListener) {
        Intrinsics.checkNotNullParameter(view, "view");
        ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(view) { // from class: com.ferfalk.simplesearchview.utils.SimpleAnimationUtils$verticalSlideView$1
            final /* synthetic */ View $view;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.$view = r1;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                Intrinsics.checkNotNullParameter(valueAnimator, "animation");
                ViewGroup.LayoutParams layoutParams = this.$view.getLayoutParams();
                Object animatedValue = valueAnimator.getAnimatedValue();
                Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
                layoutParams.height = ((Integer) animatedValue).intValue();
                this.$view.requestLayout();
            }
        });
        ofInt.addListener(new DefaultActionAnimationListener(view, animationListener));
        Intrinsics.checkNotNullExpressionValue(ofInt, "anim");
        ofInt.setDuration((long) i3);
        ofInt.setInterpolator(getDefaultInterpolator$simplesearchview_release());
        return ofInt;
    }

    public static final Interpolator getDefaultInterpolator$simplesearchview_release() {
        return new FastOutSlowInInterpolator();
    }

    /* compiled from: SimpleAnimationUtils.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0012\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\n\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;", "Landroid/animation/AnimatorListenerAdapter;", "view", "Landroid/view/View;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;", "(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)V", "defaultOnAnimationCancel", "", "defaultOnAnimationEnd", "defaultOnAnimationStart", "onAnimationCancel", "animation", "Landroid/animation/Animator;", "onAnimationEnd", "onAnimationStart", "simplesearchview_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static class DefaultActionAnimationListener extends AnimatorListenerAdapter {
        private final AnimationListener listener;
        private final View view;

        public final void defaultOnAnimationCancel(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
        }

        public void defaultOnAnimationEnd(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
        }

        public void defaultOnAnimationStart(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
        }

        public DefaultActionAnimationListener(View view, AnimationListener animationListener) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.view = view;
            this.listener = animationListener;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            Intrinsics.checkNotNullParameter(animator, "animation");
            AnimationListener animationListener = this.listener;
            if (animationListener == null || !animationListener.onAnimationStart(this.view)) {
                defaultOnAnimationStart(this.view);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Intrinsics.checkNotNullParameter(animator, "animation");
            AnimationListener animationListener = this.listener;
            if (animationListener == null || !animationListener.onAnimationEnd(this.view)) {
                defaultOnAnimationEnd(this.view);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            Intrinsics.checkNotNullParameter(animator, "animation");
            AnimationListener animationListener = this.listener;
            if (animationListener == null || !animationListener.onAnimationCancel(this.view)) {
                defaultOnAnimationCancel(this.view);
            }
        }
    }
}
