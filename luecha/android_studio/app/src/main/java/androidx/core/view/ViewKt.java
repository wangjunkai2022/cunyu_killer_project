package androidx.core.view;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* compiled from: View.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000j\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u001a5\u0010 \u001a\u00020!*\u00020\u00022#\b\u0004\u0010\"\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020!0#H\u0086\bø\u0001\u0000\u001a5\u0010'\u001a\u00020!*\u00020\u00022#\b\u0004\u0010\"\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020!0#H\u0086\bø\u0001\u0000\u001a5\u0010(\u001a\u00020!*\u00020\u00022#\b\u0004\u0010\"\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020!0#H\u0086\bø\u0001\u0000\u001a5\u0010)\u001a\u00020!*\u00020\u00022#\b\u0004\u0010\"\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020!0#H\u0086\bø\u0001\u0000\u001a5\u0010*\u001a\u00020+*\u00020\u00022#\b\u0004\u0010\"\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020!0#H\u0086\bø\u0001\u0000\u001a\u0014\u0010,\u001a\u00020-*\u00020\u00022\b\b\u0002\u0010.\u001a\u00020/\u001a(\u00100\u001a\u000201*\u00020\u00022\u0006\u00102\u001a\u0002032\u000e\b\u0004\u0010\"\u001a\b\u0012\u0004\u0012\u00020!04H\u0086\bø\u0001\u0000\u001a(\u00105\u001a\u000201*\u00020\u00022\u0006\u00102\u001a\u0002032\u000e\b\u0004\u0010\"\u001a\b\u0012\u0004\u0012\u00020!04H\u0087\bø\u0001\u0000\u001a\u0017\u00106\u001a\u00020!*\u00020\u00022\b\b\u0001\u00107\u001a\u00020\u0013H\u0086\b\u001a:\u00108\u001a\u00020!\"\n\b\u0000\u00109\u0018\u0001*\u00020:*\u00020\u00022\u0017\u0010;\u001a\u0013\u0012\u0004\u0012\u0002H9\u0012\u0004\u0012\u00020!0#¢\u0006\u0002\b<H\u0087\bø\u0001\u0000¢\u0006\u0002\b=\u001a)\u00108\u001a\u00020!*\u00020\u00022\u0017\u0010;\u001a\u0013\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u00020!0#¢\u0006\u0002\b<H\u0086\bø\u0001\u0000\u001a5\u0010>\u001a\u00020!*\u00020\u00022\b\b\u0003\u0010?\u001a\u00020\u00132\b\b\u0003\u0010@\u001a\u00020\u00132\b\b\u0003\u0010A\u001a\u00020\u00132\b\b\u0003\u0010B\u001a\u00020\u0013H\u0086\b\u001a5\u0010C\u001a\u00020!*\u00020\u00022\b\b\u0003\u0010D\u001a\u00020\u00132\b\b\u0003\u0010@\u001a\u00020\u00132\b\b\u0003\u0010E\u001a\u00020\u00132\b\b\u0003\u0010B\u001a\u00020\u0013H\u0087\b\"\u001b\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u001b\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0004\"*\u0010\n\u001a\u00020\t*\u00020\u00022\u0006\u0010\b\u001a\u00020\t8Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r\"*\u0010\u000e\u001a\u00020\t*\u00020\u00022\u0006\u0010\b\u001a\u00020\t8Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\r\"*\u0010\u0010\u001a\u00020\t*\u00020\u00022\u0006\u0010\b\u001a\u00020\t8Æ\u0002@Æ\u0002X\u0086\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\r\"\u0016\u0010\u0012\u001a\u00020\u0013*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015\"\u0016\u0010\u0016\u001a\u00020\u0013*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015\"\u0016\u0010\u0018\u001a\u00020\u0013*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0015\"\u0016\u0010\u001a\u001a\u00020\u0013*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0015\"\u0016\u0010\u001c\u001a\u00020\u0013*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0015\"\u0016\u0010\u001e\u001a\u00020\u0013*\u00020\u00028Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0015\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006F"}, d2 = {"allViews", "Lkotlin/sequences/Sequence;", "Landroid/view/View;", "getAllViews", "(Landroid/view/View;)Lkotlin/sequences/Sequence;", "ancestors", "Landroid/view/ViewParent;", "getAncestors", "value", "", "isGone", "(Landroid/view/View;)Z", "setGone", "(Landroid/view/View;Z)V", "isInvisible", "setInvisible", "isVisible", "setVisible", "marginBottom", "", "getMarginBottom", "(Landroid/view/View;)I", "marginEnd", "getMarginEnd", "marginLeft", "getMarginLeft", "marginRight", "getMarginRight", "marginStart", "getMarginStart", "marginTop", "getMarginTop", "doOnAttach", "", "action", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "view", "doOnDetach", "doOnLayout", "doOnNextLayout", "doOnPreDraw", "Landroidx/core/view/OneShotPreDrawListener;", "drawToBitmap", "Landroid/graphics/Bitmap;", "config", "Landroid/graphics/Bitmap$Config;", "postDelayed", "Ljava/lang/Runnable;", "delayInMillis", "", "Lkotlin/Function0;", "postOnAnimationDelayed", "setPadding", "size", "updateLayoutParams", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/view/ViewGroup$LayoutParams;", "block", "Lkotlin/ExtensionFunctionType;", "updateLayoutParamsTyped", "updatePadding", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "updatePaddingRelative", TtmlNode.START, TtmlNode.END, "core-ktx_release"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class ViewKt {
    public static final void doOnNextLayout(View view, Function1<? super View, Unit> function1) {
        Intrinsics.checkNotNullParameter(view, "$this$doOnNextLayout");
        Intrinsics.checkNotNullParameter(function1, "action");
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.core.view.ViewKt$doOnNextLayout$1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                Intrinsics.checkNotNullParameter(view2, "view");
                view2.removeOnLayoutChangeListener(this);
                Function1.this.invoke(view2);
            }
        });
    }

    public static final void doOnLayout(View view, Function1<? super View, Unit> function1) {
        Intrinsics.checkNotNullParameter(view, "$this$doOnLayout");
        Intrinsics.checkNotNullParameter(function1, "action");
        if (!ViewCompat.isLaidOut(view) || view.isLayoutRequested()) {
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.core.view.ViewKt$doOnLayout$$inlined$doOnNextLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    Intrinsics.checkNotNullParameter(view2, "view");
                    view2.removeOnLayoutChangeListener(this);
                    Function1.this.invoke(view2);
                }
            });
        } else {
            function1.invoke(view);
        }
    }

    public static final OneShotPreDrawListener doOnPreDraw(View view, Function1<? super View, Unit> function1) {
        Intrinsics.checkNotNullParameter(view, "$this$doOnPreDraw");
        Intrinsics.checkNotNullParameter(function1, "action");
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
        Intrinsics.checkNotNullExpressionValue(add, "OneShotPreDrawListener.add(this) { action(this) }");
        return add;
    }

    public static final void doOnAttach(View view, Function1<? super View, Unit> function1) {
        Intrinsics.checkNotNullParameter(view, "$this$doOnAttach");
        Intrinsics.checkNotNullParameter(function1, "action");
        if (ViewCompat.isAttachedToWindow(view)) {
            function1.invoke(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener(view, function1) { // from class: androidx.core.view.ViewKt$doOnAttach$1
                final /* synthetic */ Function1 $action;
                final /* synthetic */ View $this_doOnAttach;

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    Intrinsics.checkNotNullParameter(view2, "view");
                }

                {
                    this.$this_doOnAttach = r1;
                    this.$action = r2;
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    Intrinsics.checkNotNullParameter(view2, "view");
                    this.$this_doOnAttach.removeOnAttachStateChangeListener(this);
                    this.$action.invoke(view2);
                }
            });
        }
    }

    public static final void doOnDetach(View view, Function1<? super View, Unit> function1) {
        Intrinsics.checkNotNullParameter(view, "$this$doOnDetach");
        Intrinsics.checkNotNullParameter(function1, "action");
        if (!ViewCompat.isAttachedToWindow(view)) {
            function1.invoke(view);
        } else {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener(view, function1) { // from class: androidx.core.view.ViewKt$doOnDetach$1
                final /* synthetic */ Function1 $action;
                final /* synthetic */ View $this_doOnDetach;

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    Intrinsics.checkNotNullParameter(view2, "view");
                }

                {
                    this.$this_doOnDetach = r1;
                    this.$action = r2;
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    Intrinsics.checkNotNullParameter(view2, "view");
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
        Intrinsics.checkNotNullParameter(view, "$this$updatePaddingRelative");
        view.setPaddingRelative(i, i2, i3, i4);
    }

    public static final void updatePaddingRelative(View view, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(view, "$this$updatePaddingRelative");
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
        Intrinsics.checkNotNullParameter(view, "$this$updatePadding");
        view.setPadding(i, i2, i3, i4);
    }

    public static final void updatePadding(View view, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(view, "$this$updatePadding");
        view.setPadding(i, i2, i3, i4);
    }

    public static final void setPadding(View view, int i) {
        Intrinsics.checkNotNullParameter(view, "$this$setPadding");
        view.setPadding(i, i, i, i);
    }

    public static final Runnable postDelayed(View view, long j, Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(view, "$this$postDelayed");
        Intrinsics.checkNotNullParameter(function0, "action");
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
        Intrinsics.checkNotNullParameter(view, "$this$postOnAnimationDelayed");
        Intrinsics.checkNotNullParameter(function0, "action");
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
        Intrinsics.checkNotNullParameter(view, "$this$drawToBitmap");
        Intrinsics.checkNotNullParameter(config, "config");
        if (ViewCompat.isLaidOut(view)) {
            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), config);
            Intrinsics.checkNotNullExpressionValue(createBitmap, "Bitmap.createBitmap(width, height, config)");
            Canvas canvas = new Canvas(createBitmap);
            canvas.translate(-((float) view.getScrollX()), -((float) view.getScrollY()));
            view.draw(canvas);
            return createBitmap;
        }
        throw new IllegalStateException("View needs to be laid out before calling drawToBitmap()");
    }

    public static final boolean isVisible(View view) {
        Intrinsics.checkNotNullParameter(view, "$this$isVisible");
        return view.getVisibility() == 0;
    }

    public static final void setVisible(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "$this$isVisible");
        view.setVisibility(z ? 0 : 8);
    }

    public static final boolean isInvisible(View view) {
        Intrinsics.checkNotNullParameter(view, "$this$isInvisible");
        return view.getVisibility() == 4;
    }

    public static final void setInvisible(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "$this$isInvisible");
        view.setVisibility(z ? 4 : 0);
    }

    public static final boolean isGone(View view) {
        Intrinsics.checkNotNullParameter(view, "$this$isGone");
        return view.getVisibility() == 8;
    }

    public static final void setGone(View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "$this$isGone");
        view.setVisibility(z ? 8 : 0);
    }

    public static final /* synthetic */ <T extends ViewGroup.LayoutParams> void updateLayoutParamsTyped(View view, Function1<? super T, Unit> function1) {
        Intrinsics.checkNotNullParameter(view, "$this$updateLayoutParams");
        Intrinsics.checkNotNullParameter(function1, "block");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.reifiedOperationMarker(1, ExifInterface.GPS_DIRECTION_TRUE);
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        function1.invoke(layoutParams2);
        view.setLayoutParams(layoutParams2);
    }

    public static final int getMarginLeft(View view) {
        Intrinsics.checkNotNullParameter(view, "$this$marginLeft");
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
        Intrinsics.checkNotNullParameter(view, "$this$marginTop");
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
        Intrinsics.checkNotNullParameter(view, "$this$marginRight");
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
        Intrinsics.checkNotNullParameter(view, "$this$marginBottom");
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
        Intrinsics.checkNotNullParameter(view, "$this$marginStart");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return 0;
    }

    public static final int getMarginEnd(View view) {
        Intrinsics.checkNotNullParameter(view, "$this$marginEnd");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return MarginLayoutParamsCompat.getMarginEnd((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return 0;
    }

    public static final Sequence<ViewParent> getAncestors(View view) {
        Intrinsics.checkNotNullParameter(view, "$this$ancestors");
        return SequencesKt.generateSequence(view.getParent(), ViewKt$ancestors$1.INSTANCE);
    }

    public static final Sequence<View> getAllViews(View view) {
        Intrinsics.checkNotNullParameter(view, "$this$allViews");
        return SequencesKt.sequence(new ViewKt$allViews$1(view, null));
    }

    public static final void updateLayoutParams(View view, Function1<? super ViewGroup.LayoutParams, Unit> function1) {
        Intrinsics.checkNotNullParameter(view, "$this$updateLayoutParams");
        Intrinsics.checkNotNullParameter(function1, "block");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        function1.invoke(layoutParams);
        view.setLayoutParams(layoutParams);
    }
}
