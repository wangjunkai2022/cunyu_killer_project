package androidx.core.view;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: View.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\\\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u001a2\u0010\u0019\u001a\u00020\u001a*\u00020\u00032#\b\u0004\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u001a0\u001cH\u0086\b\u001a2\u0010 \u001a\u00020\u001a*\u00020\u00032#\b\u0004\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u001a0\u001cH\u0086\b\u001a2\u0010!\u001a\u00020\u001a*\u00020\u00032#\b\u0004\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u001a0\u001cH\u0086\b\u001a2\u0010\"\u001a\u00020\u001a*\u00020\u00032#\b\u0004\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u001a0\u001cH\u0086\b\u001a2\u0010#\u001a\u00020$*\u00020\u00032#\b\u0004\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u001a0\u001cH\u0086\b\u001a\u0014\u0010%\u001a\u00020&*\u00020\u00032\b\b\u0002\u0010'\u001a\u00020(\u001a%\u0010)\u001a\u00020**\u00020\u00032\u0006\u0010+\u001a\u00020,2\u000e\b\u0004\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0-H\u0086\b\u001a%\u0010.\u001a\u00020**\u00020\u00032\u0006\u0010+\u001a\u00020,2\u000e\b\u0004\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0-H\u0087\b\u001a\u0017\u0010/\u001a\u00020\u001a*\u00020\u00032\b\b\u0001\u00100\u001a\u00020\fH\u0086\b\u001a7\u00101\u001a\u00020\u001a\"\n\b\u0000\u00102\u0018\u0001*\u000203*\u00020\u00032\u0017\u00104\u001a\u0013\u0012\u0004\u0012\u0002H2\u0012\u0004\u0012\u00020\u001a0\u001c¢\u0006\u0002\b5H\u0087\b¢\u0006\u0002\b6\u001a&\u00101\u001a\u00020\u001a*\u00020\u00032\u0017\u00104\u001a\u0013\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u001a0\u001c¢\u0006\u0002\b5H\u0086\b\u001a5\u00107\u001a\u00020\u001a*\u00020\u00032\b\b\u0003\u00108\u001a\u00020\f2\b\b\u0003\u00109\u001a\u00020\f2\b\b\u0003\u0010:\u001a\u00020\f2\b\b\u0003\u0010;\u001a\u00020\fH\u0086\b\u001a5\u0010<\u001a\u00020\u001a*\u00020\u00032\b\b\u0003\u0010=\u001a\u00020\f2\b\b\u0003\u00109\u001a\u00020\f2\b\b\u0003\u0010>\u001a\u00020\f2\b\b\u0003\u0010;\u001a\u00020\fH\u0087\b\"*\u0010\u0002\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b\u0002\u0010\u0004\"\u0004\b\u0005\u0010\u0006\"*\u0010\u0007\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b\u0007\u0010\u0004\"\u0004\b\b\u0010\u0006\"*\u0010\t\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b\t\u0010\u0004\"\u0004\b\n\u0010\u0006\"\u0016\u0010\u000b\u001a\u00020\f*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e\"\u0016\u0010\u000f\u001a\u00020\f*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000e\"\u0016\u0010\u0011\u001a\u00020\f*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u000e\"\u0016\u0010\u0013\u001a\u00020\f*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u000e\"\u0016\u0010\u0015\u001a\u00020\f*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u000e\"\u0016\u0010\u0017\u001a\u00020\f*\u00020\u00038Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u000e¨\u0006?"}, d2 = {"value", "", "isGone", "Landroid/view/View;", "(Landroid/view/View;)Z", "setGone", "(Landroid/view/View;Z)V", "isInvisible", "setInvisible", "isVisible", "setVisible", "marginBottom", "", "getMarginBottom", "(Landroid/view/View;)I", "marginEnd", "getMarginEnd", "marginLeft", "getMarginLeft", "marginRight", "getMarginRight", "marginStart", "getMarginStart", "marginTop", "getMarginTop", "doOnAttach", "", "action", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "view", "doOnDetach", "doOnLayout", "doOnNextLayout", "doOnPreDraw", "Landroidx/core/view/OneShotPreDrawListener;", "drawToBitmap", "Landroid/graphics/Bitmap;", "config", "Landroid/graphics/Bitmap$Config;", "postDelayed", "Ljava/lang/Runnable;", "delayInMillis", "", "Lkotlin/Function0;", "postOnAnimationDelayed", "setPadding", "size", "updateLayoutParams", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/view/ViewGroup$LayoutParams;", "block", "Lkotlin/ExtensionFunctionType;", "updateLayoutParamsTyped", "updatePadding", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "updatePaddingRelative", TtmlNode.START, TtmlNode.END, "core-ktx_release"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final class ViewKt {
    public static final void doOnNextLayout(View view, Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(view, "$this$doOnNextLayout");
        Intrinsics.checkParameterIsNotNull(function1, "action");
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.core.view.ViewKt$doOnNextLayout$1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                Intrinsics.checkParameterIsNotNull(view2, "view");
                view2.removeOnLayoutChangeListener(this);
                Function1.this.invoke(view2);
            }
        });
    }

    public static final void doOnLayout(View view, Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(view, "$this$doOnLayout");
        Intrinsics.checkParameterIsNotNull(function1, "action");
        if (!ViewCompat.isLaidOut(view) || view.isLayoutRequested()) {
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.core.view.ViewKt$doOnLayout$$inlined$doOnNextLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    Intrinsics.checkParameterIsNotNull(view2, "view");
                    view2.removeOnLayoutChangeListener(this);
                    Function1.this.invoke(view2);
                }
            });
        } else {
            function1.invoke(view);
        }
    }

    public static final OneShotPreDrawListener doOnPreDraw(View view, Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(view, "$this$doOnPreDraw");
        Intrinsics.checkParameterIsNotNull(function1, "action");
        OneShotPreDrawListener add = OneShotPreDrawListener.add(view, new Runnable(view, function1) { // from class: androidx.core.view.ViewKt$doOnPreDraw$1
            final /* synthetic */ Function1 $action;
            final /* synthetic */ View $this_doOnPreDraw;

            {
                this.$this_doOnPreDraw = r1;
                this.$action = r2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.$action.invoke(this.$this_doOnPreDraw);
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(add, "OneShotPreDrawListener.add(this) { action(this) }");
        return add;
    }

    public static final void doOnAttach(View view, Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(view, "$this$doOnAttach");
        Intrinsics.checkParameterIsNotNull(function1, "action");
        if (ViewCompat.isAttachedToWindow(view)) {
            function1.invoke(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener(view, function1) { // from class: androidx.core.view.ViewKt$doOnAttach$1
                final /* synthetic */ Function1 $action;
                final /* synthetic */ View $this_doOnAttach;

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    Intrinsics.checkParameterIsNotNull(view2, "view");
                }

                {
                    this.$this_doOnAttach = r1;
                    this.$action = r2;
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    Intrinsics.checkParameterIsNotNull(view2, "view");
                    this.$this_doOnAttach.removeOnAttachStateChangeListener(this);
                    this.$action.invoke(view2);
                }
            });
        }
    }

    public static final void doOnDetach(View view, Function1<? super View, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(view, "$this$doOnDetach");
        Intrinsics.checkParameterIsNotNull(function1, "action");
        if (!ViewCompat.isAttachedToWindow(view)) {
            function1.invoke(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener(view, function1) { // from class: androidx.core.view.ViewKt$doOnDetach$1
                final /* synthetic */ Function1 $action;
                final /* synthetic */ View $this_doOnDetach;

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    Intrinsics.checkParameterIsNotNull(view2, "view");
                }

                {
                    this.$this_doOnDetach = r1;
                    this.$action = r2;
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    Intrinsics.checkParameterIsNotNull(view2, "view");
                    this.$this_doOnDetach.removeOnAttachStateChangeListener(this);
                    this.$action.invoke(view2);
                }
            });
        }
    }

    public static /* synthetic */ void updatePaddingRelative$default(View view, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = view.getPaddingStart();
        }
        if ((i5 & 2) != 0) {
            i2 = view.getPaddingTop();
        }
        if ((i5 & 4) != 0) {
            i3 = view.getPaddingEnd();
        }
        if ((i5 & 8) != 0) {
            i4 = view.getPaddingBottom();
        }
        Intrinsics.checkParameterIsNotNull(view, "$this$updatePaddingRelative");
        view.setPaddingRelative(i, i2, i3, i4);
    }

    public static final void updatePaddingRelative(View view, int i, int i2, int i3, int i4) {
        Intrinsics.checkParameterIsNotNull(view, "$this$updatePaddingRelative");
        view.setPaddingRelative(i, i2, i3, i4);
    }

    public static /* synthetic */ void updatePadding$default(View view, int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = view.getPaddingLeft();
        }
        if ((i5 & 2) != 0) {
            i2 = view.getPaddingTop();
        }
        if ((i5 & 4) != 0) {
            i3 = view.getPaddingRight();
        }
        if ((i5 & 8) != 0) {
            i4 = view.getPaddingBottom();
        }
        Intrinsics.checkParameterIsNotNull(view, "$this$updatePadding");
        view.setPadding(i, i2, i3, i4);
    }

    public static final void updatePadding(View view, int i, int i2, int i3, int i4) {
        Intrinsics.checkParameterIsNotNull(view, "$this$updatePadding");
        view.setPadding(i, i2, i3, i4);
    }

    public static final void setPadding(View view, int i) {
        Intrinsics.checkParameterIsNotNull(view, "$this$setPadding");
        view.setPadding(i, i, i, i);
    }

    public static final Runnable postDelayed(View view, long j, Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(view, "$this$postDelayed");
        Intrinsics.checkParameterIsNotNull(function0, "action");
        ViewKt$postDelayed$runnable$1 viewKt$postDelayed$runnable$1 = new Runnable() { // from class: androidx.core.view.ViewKt$postDelayed$runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                Function0.this.invoke();
            }
        };
        view.postDelayed(viewKt$postDelayed$runnable$1, j);
        return viewKt$postDelayed$runnable$1;
    }

    public static final Runnable postOnAnimationDelayed(View view, long j, Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(view, "$this$postOnAnimationDelayed");
        Intrinsics.checkParameterIsNotNull(function0, "action");
        ViewKt$postOnAnimationDelayed$runnable$1 viewKt$postOnAnimationDelayed$runnable$1 = new Runnable() { // from class: androidx.core.view.ViewKt$postOnAnimationDelayed$runnable$1
            @Override // java.lang.Runnable
            public final void run() {
                Function0.this.invoke();
            }
        };
        view.postOnAnimationDelayed(viewKt$postOnAnimationDelayed$runnable$1, j);
        return viewKt$postOnAnimationDelayed$runnable$1;
    }

    public static /* synthetic */ Bitmap drawToBitmap$default(View view, Bitmap.Config config, int i, Object obj) {
        if ((i & 1) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        return drawToBitmap(view, config);
    }

    public static final Bitmap drawToBitmap(View view, Bitmap.Config config) {
        Intrinsics.checkParameterIsNotNull(view, "$this$drawToBitmap");
        Intrinsics.checkParameterIsNotNull(config, "config");
        if (ViewCompat.isLaidOut(view)) {
            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), config);
            Intrinsics.checkExpressionValueIsNotNull(createBitmap, "Bitmap.createBitmap(width, height, config)");
            Canvas canvas = new Canvas(createBitmap);
            canvas.translate(-((float) view.getScrollX()), -((float) view.getScrollY()));
            view.draw(canvas);
            return createBitmap;
        }
        throw new IllegalStateException("View needs to be laid out before calling drawToBitmap()");
    }

    public static final boolean isVisible(View view) {
        Intrinsics.checkParameterIsNotNull(view, "$this$isVisible");
        return view.getVisibility() == 0;
    }

    public static final void setVisible(View view, boolean z) {
        Intrinsics.checkParameterIsNotNull(view, "$this$isVisible");
        view.setVisibility(z ? 0 : 8);
    }

    public static final boolean isInvisible(View view) {
        Intrinsics.checkParameterIsNotNull(view, "$this$isInvisible");
        return view.getVisibility() == 4;
    }

    public static final void setInvisible(View view, boolean z) {
        Intrinsics.checkParameterIsNotNull(view, "$this$isInvisible");
        view.setVisibility(z ? 4 : 0);
    }

    public static final boolean isGone(View view) {
        Intrinsics.checkParameterIsNotNull(view, "$this$isGone");
        return view.getVisibility() == 8;
    }

    public static final void setGone(View view, boolean z) {
        Intrinsics.checkParameterIsNotNull(view, "$this$isGone");
        view.setVisibility(z ? 8 : 0);
    }

    public static final /* synthetic */ <T extends ViewGroup.LayoutParams> void updateLayoutParamsTyped(View view, Function1<? super T, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(view, "$this$updateLayoutParams");
        Intrinsics.checkParameterIsNotNull(function1, "block");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.reifiedOperationMarker(1, ExifInterface.GPS_DIRECTION_TRUE);
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        function1.invoke(layoutParams2);
        view.setLayoutParams(layoutParams2);
    }

    public static final int getMarginLeft(View view) {
        Intrinsics.checkParameterIsNotNull(view, "$this$marginLeft");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            layoutParams = null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (marginLayoutParams != null) {
            return marginLayoutParams.leftMargin;
        }
        return 0;
    }

    public static final int getMarginTop(View view) {
        Intrinsics.checkParameterIsNotNull(view, "$this$marginTop");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            layoutParams = null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (marginLayoutParams != null) {
            return marginLayoutParams.topMargin;
        }
        return 0;
    }

    public static final int getMarginRight(View view) {
        Intrinsics.checkParameterIsNotNull(view, "$this$marginRight");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            layoutParams = null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (marginLayoutParams != null) {
            return marginLayoutParams.rightMargin;
        }
        return 0;
    }

    public static final int getMarginBottom(View view) {
        Intrinsics.checkParameterIsNotNull(view, "$this$marginBottom");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            layoutParams = null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (marginLayoutParams != null) {
            return marginLayoutParams.bottomMargin;
        }
        return 0;
    }

    public static final int getMarginStart(View view) {
        Intrinsics.checkParameterIsNotNull(view, "$this$marginStart");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return 0;
    }

    public static final int getMarginEnd(View view) {
        Intrinsics.checkParameterIsNotNull(view, "$this$marginEnd");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return 0;
    }

    public static final void updateLayoutParams(View view, Function1<? super ViewGroup.LayoutParams, Unit> function1) {
        Intrinsics.checkParameterIsNotNull(view, "$this$updateLayoutParams");
        Intrinsics.checkParameterIsNotNull(function1, "block");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            function1.invoke(layoutParams);
            view.setLayoutParams(layoutParams);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
    }
}
