package com.github.nukc.stateview;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.ScrollingView;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Injector.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\fJ\u000e\u0010\u0013\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0014R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0015"}, d2 = {"Lcom/github/nukc/stateview/Injector;", "", "()V", "constraintLayoutAvailable", "", "getConstraintLayoutAvailable", "()Z", "matchViewIfParentIsConstraintLayout", "Lcom/github/nukc/stateview/StateView;", "parent", "Landroidx/constraintlayout/widget/ConstraintLayout;", "view", "Landroid/view/View;", "matchViewIfParentIsRelativeLayout", "Landroid/widget/RelativeLayout;", "setStateListAnimator", "", "stateView", "target", "wrapChild", "Landroid/view/ViewGroup;", "kotlin_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final class Injector {
    public static final Injector INSTANCE = new Injector();
    private static final boolean constraintLayoutAvailable;

    static {
        boolean z = false;
        try {
            if (Class.forName("androidx.constraintlayout.widget.ConstraintLayout") != null) {
                z = true;
            }
        } catch (Throwable unused) {
        }
        constraintLayoutAvailable = z;
    }

    private Injector() {
    }

    public final boolean getConstraintLayoutAvailable() {
        return constraintLayoutAvailable;
    }

    public final StateView wrapChild(ViewGroup viewGroup) {
        Intrinsics.checkParameterIsNotNull(viewGroup, "parent");
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        frameLayout.setLayoutParams(layoutParams);
        int i = 0;
        if (viewGroup instanceof LinearLayout) {
            LinearLayout linearLayout = (LinearLayout) viewGroup;
            LinearLayout linearLayout2 = new LinearLayout(linearLayout.getContext());
            ViewGroup.LayoutParams layoutParams2 = linearLayout.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams = layoutParams2;
            }
            linearLayout2.setLayoutParams(layoutParams);
            linearLayout2.setOrientation(linearLayout.getOrientation());
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(0);
                Intrinsics.checkExpressionValueIsNotNull(childAt, "parent.getChildAt(0)");
                viewGroup.removeView(childAt);
                linearLayout2.addView(childAt);
            }
            frameLayout.addView(linearLayout2);
        } else if ((viewGroup instanceof ScrollView) || (viewGroup instanceof ScrollingView)) {
            if (viewGroup.getChildCount() == 1) {
                View childAt2 = viewGroup.getChildAt(0);
                viewGroup.removeView(childAt2);
                frameLayout.addView(childAt2);
                Object systemService = viewGroup.getContext().getSystemService("window");
                if (systemService != null) {
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    ((WindowManager) systemService).getDefaultDisplay().getMetrics(displayMetrics);
                    i = displayMetrics.heightPixels;
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
                }
            } else {
                throw new IllegalStateException("the ScrollView does not have one direct child");
            }
        } else if (!(viewGroup instanceof NestedScrollingParent) || !(viewGroup instanceof NestedScrollingChild)) {
            throw new IllegalStateException("the view does not have parent, view = " + viewGroup);
        } else if (viewGroup.getChildCount() == 2) {
            View childAt3 = viewGroup.getChildAt(1);
            viewGroup.removeView(childAt3);
            frameLayout.addView(childAt3);
        } else if (viewGroup.getChildCount() > 2) {
            throw new IllegalStateException("the view is not refresh layout? view = " + viewGroup);
        }
        viewGroup.addView(frameLayout);
        Context context = viewGroup.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "parent.context");
        StateView stateView = new StateView(context);
        if (i > 0) {
            frameLayout.addView(stateView, new ViewGroup.LayoutParams(-1, i));
        } else {
            frameLayout.addView(stateView);
        }
        return stateView;
    }

    public final StateView matchViewIfParentIsConstraintLayout(ConstraintLayout constraintLayout, View view) {
        Intrinsics.checkParameterIsNotNull(constraintLayout, "parent");
        Intrinsics.checkParameterIsNotNull(view, "view");
        Context context = constraintLayout.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "parent.context");
        StateView stateView = new StateView(context);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(layoutParams);
            layoutParams2.leftToLeft = view.getId();
            layoutParams2.rightToRight = view.getId();
            layoutParams2.topToTop = view.getId();
            layoutParams2.bottomToBottom = view.getId();
            constraintLayout.addView(stateView, layoutParams2);
            return stateView;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }

    public final StateView matchViewIfParentIsRelativeLayout(RelativeLayout relativeLayout, View view) {
        RelativeLayout.LayoutParams layoutParams;
        Intrinsics.checkParameterIsNotNull(relativeLayout, "parent");
        Intrinsics.checkParameterIsNotNull(view, "view");
        Context context = relativeLayout.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "parent.context");
        StateView stateView = new StateView(context);
        if (Build.VERSION.SDK_INT >= 19) {
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            if (layoutParams2 != null) {
                layoutParams = new RelativeLayout.LayoutParams((RelativeLayout.LayoutParams) layoutParams2);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
            }
        } else {
            layoutParams = new RelativeLayout.LayoutParams(view.getLayoutParams());
        }
        relativeLayout.addView(stateView, layoutParams);
        setStateListAnimator(stateView, view);
        return stateView;
    }

    public final void setStateListAnimator(StateView stateView, View view) {
        Intrinsics.checkParameterIsNotNull(stateView, "stateView");
        Intrinsics.checkParameterIsNotNull(view, "target");
        if (Build.VERSION.SDK_INT >= 21 && (view instanceof Button)) {
            Log.i(StateView.Companion.getTAG$kotlin_release(), "for normal display, stateView.stateListAnimator = view.stateListAnimator");
            stateView.setStateListAnimator(((Button) view).getStateListAnimator());
        }
    }
}
