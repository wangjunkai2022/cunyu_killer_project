package com.afollestad.materialdialogs.internal.main;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.afollestad.materialdialogs.LayoutMode;
import com.afollestad.materialdialogs.MaterialDialog;
import com.afollestad.materialdialogs.R;
import com.afollestad.materialdialogs.internal.button.DialogActionButton;
import com.afollestad.materialdialogs.internal.button.DialogActionButtonLayout;
import com.afollestad.materialdialogs.internal.button.DialogActionButtonLayoutKt;
import com.afollestad.materialdialogs.internal.message.DialogContentLayout;
import com.afollestad.materialdialogs.utils.DimensKt;
import com.afollestad.materialdialogs.utils.MDUtil;
import com.afollestad.materialdialogs.utils.ViewsKt;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.tekartik.sqflite.Constant;
import com.umeng.analytics.pro.c;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DialogLayout.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0014\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0007\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010D\u001a\u00020E2\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010F\u001a\u00020E2\u0006\u0010&\u001a\u00020'J\u0010\u0010G\u001a\u00020E2\u0006\u0010H\u001a\u00020IH\u0014J\u0016\u0010J\u001a\u00020E2\u0006\u0010K\u001a\u00020\u001e2\u0006\u0010L\u001a\u00020\u001eJ\b\u0010M\u001a\u00020EH\u0014J\u0010\u0010N\u001a\u00020E2\u0006\u0010H\u001a\u00020IH\u0014J\b\u0010O\u001a\u00020EH\u0014J0\u0010P\u001a\u00020E2\u0006\u0010Q\u001a\u00020\u001e2\u0006\u0010R\u001a\u00020-2\u0006\u0010S\u001a\u00020-2\u0006\u0010T\u001a\u00020-2\u0006\u0010U\u001a\u00020-H\u0014J\u0018\u0010V\u001a\u00020E2\u0006\u0010W\u001a\u00020-2\u0006\u0010X\u001a\u00020-H\u0014J\u001a\u0010Y\u001a\u00020%2\u0006\u0010Z\u001a\u00020-2\b\b\u0002\u0010[\u001a\u00020\\H\u0002J@\u0010]\u001a\u00020E*\u00020I2\b\b\u0001\u0010Z\u001a\u00020-2\b\b\u0002\u0010[\u001a\u00020\\2\u0006\u0010R\u001a\u00020\\2\u0006\u0010T\u001a\u00020\\2\u0006\u0010S\u001a\u00020\\2\u0006\u0010U\u001a\u00020\\H\u0002J*\u0010^\u001a\u00020E*\u00020I2\b\b\u0001\u0010Z\u001a\u00020-2\b\b\u0002\u0010_\u001a\u00020\\2\b\b\u0002\u0010`\u001a\u00020\\H\u0002J>\u0010a\u001a\u00020E*\u00020I2\b\b\u0001\u0010Z\u001a\u00020-2\b\b\u0002\u0010R\u001a\u00020\\2\b\b\u0002\u0010T\u001a\u00020\\2\b\b\u0002\u0010S\u001a\u00020\\2\b\b\u0002\u0010U\u001a\u00020\\H\u0002J(\u0010b\u001a\u00020E*\u00020I2\b\b\u0001\u0010Z\u001a\u00020-2\u0006\u0010_\u001a\u00020\\2\b\b\u0002\u0010c\u001a\u00020\\H\u0002R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0013\u001a\u00020\u001e@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u00020'X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0014\u0010,\u001a\u00020-X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0014\u00100\u001a\u00020-X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010/R\u000e\u00102\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u00103\u001a\u000204X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001a\u00109\u001a\u00020-X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010/\"\u0004\b;\u0010<R\u001a\u0010=\u001a\u00020>X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u000e\u0010C\u001a\u00020-X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006d"}, d2 = {"Lcom/afollestad/materialdialogs/internal/main/DialogLayout;", "Landroid/widget/FrameLayout;", c.R, "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "buttonsLayout", "Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;", "getButtonsLayout", "()Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;", "setButtonsLayout", "(Lcom/afollestad/materialdialogs/internal/button/DialogActionButtonLayout;)V", "contentLayout", "Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;", "getContentLayout", "()Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;", "setContentLayout", "(Lcom/afollestad/materialdialogs/internal/message/DialogContentLayout;)V", "value", "", "cornerRadii", "getCornerRadii", "()[F", "setCornerRadii", "([F)V", "cornerRadiusPath", "Landroid/graphics/Path;", "cornerRadiusRect", "Landroid/graphics/RectF;", "", Constant.METHOD_DEBUG_MODE, "getDebugMode", "()Z", "setDebugMode", "(Z)V", "debugPaint", "Landroid/graphics/Paint;", "dialog", "Lcom/afollestad/materialdialogs/MaterialDialog;", "getDialog", "()Lcom/afollestad/materialdialogs/MaterialDialog;", "setDialog", "(Lcom/afollestad/materialdialogs/MaterialDialog;)V", "frameMarginVertical", "", "getFrameMarginVertical$core", "()I", "frameMarginVerticalLess", "getFrameMarginVerticalLess$core", "isButtonsLayoutAChild", "layoutMode", "Lcom/afollestad/materialdialogs/LayoutMode;", "getLayoutMode", "()Lcom/afollestad/materialdialogs/LayoutMode;", "setLayoutMode", "(Lcom/afollestad/materialdialogs/LayoutMode;)V", "maxHeight", "getMaxHeight", "setMaxHeight", "(I)V", "titleLayout", "Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;", "getTitleLayout", "()Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;", "setTitleLayout", "(Lcom/afollestad/materialdialogs/internal/main/DialogTitleLayout;)V", "windowHeight", "attachButtonsLayout", "", "attachDialog", "dispatchDraw", "canvas", "Landroid/graphics/Canvas;", "invalidateDividers", "showTop", "showBottom", "onAttachedToWindow", "onDraw", "onFinishInflate", "onLayout", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "paint", TtmlNode.ATTR_TTS_COLOR, "alpha", "", "box", "horizontalLine", TtmlNode.START, "height", "line", "verticalLine", "width", "core"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes3.dex */
public final class DialogLayout extends FrameLayout {
    private DialogActionButtonLayout buttonsLayout;
    public DialogContentLayout contentLayout;
    private boolean debugMode;
    private Paint debugPaint;
    public MaterialDialog dialog;
    private int maxHeight;
    public DialogTitleLayout titleLayout;
    private float[] cornerRadii = new float[0];
    private final int frameMarginVertical = MDUtil.INSTANCE.dimenPx(this, R.dimen.md_dialog_frame_margin_vertical);
    private final int frameMarginVerticalLess = MDUtil.INSTANCE.dimenPx(this, R.dimen.md_dialog_frame_margin_vertical_less);
    private LayoutMode layoutMode = LayoutMode.WRAP_CONTENT;
    private boolean isButtonsLayoutAChild = true;
    private int windowHeight = -1;
    private final Path cornerRadiusPath = new Path();
    private final RectF cornerRadiusRect = new RectF();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, c.R);
    }

    public final int getMaxHeight() {
        return this.maxHeight;
    }

    public final void setMaxHeight(int i) {
        this.maxHeight = i;
    }

    public final boolean getDebugMode() {
        return this.debugMode;
    }

    public final void setDebugMode(boolean z) {
        this.debugMode = z;
        setWillNotDraw(!z);
    }

    public final float[] getCornerRadii() {
        return this.cornerRadii;
    }

    public final void setCornerRadii(float[] fArr) {
        Intrinsics.checkParameterIsNotNull(fArr, "value");
        this.cornerRadii = fArr;
        if (!this.cornerRadiusPath.isEmpty()) {
            this.cornerRadiusPath.reset();
        }
        invalidate();
    }

    public final int getFrameMarginVertical$core() {
        return this.frameMarginVertical;
    }

    public final int getFrameMarginVerticalLess$core() {
        return this.frameMarginVerticalLess;
    }

    public final MaterialDialog getDialog() {
        MaterialDialog materialDialog = this.dialog;
        if (materialDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dialog");
        }
        return materialDialog;
    }

    public final void setDialog(MaterialDialog materialDialog) {
        Intrinsics.checkParameterIsNotNull(materialDialog, "<set-?>");
        this.dialog = materialDialog;
    }

    public final DialogTitleLayout getTitleLayout() {
        DialogTitleLayout dialogTitleLayout = this.titleLayout;
        if (dialogTitleLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleLayout");
        }
        return dialogTitleLayout;
    }

    public final void setTitleLayout(DialogTitleLayout dialogTitleLayout) {
        Intrinsics.checkParameterIsNotNull(dialogTitleLayout, "<set-?>");
        this.titleLayout = dialogTitleLayout;
    }

    public final DialogContentLayout getContentLayout() {
        DialogContentLayout dialogContentLayout = this.contentLayout;
        if (dialogContentLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contentLayout");
        }
        return dialogContentLayout;
    }

    public final void setContentLayout(DialogContentLayout dialogContentLayout) {
        Intrinsics.checkParameterIsNotNull(dialogContentLayout, "<set-?>");
        this.contentLayout = dialogContentLayout;
    }

    public final DialogActionButtonLayout getButtonsLayout() {
        return this.buttonsLayout;
    }

    public final void setButtonsLayout(DialogActionButtonLayout dialogActionButtonLayout) {
        this.buttonsLayout = dialogActionButtonLayout;
    }

    @Override // android.view.ViewGroup
    public final LayoutMode getLayoutMode() {
        return this.layoutMode;
    }

    public final void setLayoutMode(LayoutMode layoutMode) {
        Intrinsics.checkParameterIsNotNull(layoutMode, "<set-?>");
        this.layoutMode = layoutMode;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        View findViewById = findViewById(R.id.md_title_layout);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(R.id.md_title_layout)");
        this.titleLayout = (DialogTitleLayout) findViewById;
        View findViewById2 = findViewById(R.id.md_content_layout);
        Intrinsics.checkExpressionValueIsNotNull(findViewById2, "findViewById(R.id.md_content_layout)");
        this.contentLayout = (DialogContentLayout) findViewById2;
        this.buttonsLayout = (DialogActionButtonLayout) findViewById(R.id.md_button_layout);
    }

    public final void attachDialog(MaterialDialog materialDialog) {
        Intrinsics.checkParameterIsNotNull(materialDialog, "dialog");
        DialogTitleLayout dialogTitleLayout = this.titleLayout;
        if (dialogTitleLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleLayout");
        }
        dialogTitleLayout.setDialog(materialDialog);
        DialogActionButtonLayout dialogActionButtonLayout = this.buttonsLayout;
        if (dialogActionButtonLayout != null) {
            dialogActionButtonLayout.setDialog(materialDialog);
        }
    }

    public final void attachButtonsLayout(DialogActionButtonLayout dialogActionButtonLayout) {
        Intrinsics.checkParameterIsNotNull(dialogActionButtonLayout, "buttonsLayout");
        this.buttonsLayout = dialogActionButtonLayout;
        this.isButtonsLayoutAChild = false;
    }

    public final void invalidateDividers(boolean z, boolean z2) {
        DialogTitleLayout dialogTitleLayout = this.titleLayout;
        if (dialogTitleLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleLayout");
        }
        dialogTitleLayout.setDrawDivider(z);
        DialogActionButtonLayout dialogActionButtonLayout = this.buttonsLayout;
        if (dialogActionButtonLayout != null) {
            dialogActionButtonLayout.setDrawDivider(z2);
        }
    }

    @Override // android.view.View, android.view.ViewGroup
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Object systemService = getContext().getSystemService("window");
        if (systemService != null) {
            this.windowHeight = MDUtil.INSTANCE.getWidthAndHeight((WindowManager) systemService).component2().intValue();
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i3 = this.maxHeight;
        if (1 <= i3 && size2 > i3) {
            size2 = i3;
        }
        DialogTitleLayout dialogTitleLayout = this.titleLayout;
        if (dialogTitleLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleLayout");
        }
        boolean z = false;
        dialogTitleLayout.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        if (DialogActionButtonLayoutKt.shouldBeVisible(this.buttonsLayout)) {
            DialogActionButtonLayout dialogActionButtonLayout = this.buttonsLayout;
            if (dialogActionButtonLayout == null) {
                Intrinsics.throwNpe();
            }
            dialogActionButtonLayout.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        }
        DialogTitleLayout dialogTitleLayout2 = this.titleLayout;
        if (dialogTitleLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleLayout");
        }
        int measuredHeight = dialogTitleLayout2.getMeasuredHeight();
        DialogActionButtonLayout dialogActionButtonLayout2 = this.buttonsLayout;
        int measuredHeight2 = size2 - (measuredHeight + (dialogActionButtonLayout2 != null ? dialogActionButtonLayout2.getMeasuredHeight() : 0));
        DialogContentLayout dialogContentLayout = this.contentLayout;
        if (dialogContentLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contentLayout");
        }
        dialogContentLayout.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight2, Integer.MIN_VALUE));
        if (this.layoutMode == LayoutMode.WRAP_CONTENT) {
            DialogTitleLayout dialogTitleLayout3 = this.titleLayout;
            if (dialogTitleLayout3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("titleLayout");
            }
            int measuredHeight3 = dialogTitleLayout3.getMeasuredHeight();
            DialogContentLayout dialogContentLayout2 = this.contentLayout;
            if (dialogContentLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contentLayout");
            }
            int measuredHeight4 = measuredHeight3 + dialogContentLayout2.getMeasuredHeight();
            DialogActionButtonLayout dialogActionButtonLayout3 = this.buttonsLayout;
            setMeasuredDimension(size, measuredHeight4 + (dialogActionButtonLayout3 != null ? dialogActionButtonLayout3.getMeasuredHeight() : 0));
        } else {
            setMeasuredDimension(size, this.windowHeight);
        }
        if (this.cornerRadii.length == 0) {
            z = true;
        }
        if (!z) {
            RectF rectF = this.cornerRadiusRect;
            rectF.left = 0.0f;
            rectF.top = 0.0f;
            rectF.right = (float) getMeasuredWidth();
            rectF.bottom = (float) getMeasuredHeight();
            this.cornerRadiusPath.addRoundRect(this.cornerRadiusRect, this.cornerRadii, Path.Direction.CW);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View, android.view.ViewGroup
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int measuredWidth = getMeasuredWidth();
        DialogTitleLayout dialogTitleLayout = this.titleLayout;
        if (dialogTitleLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleLayout");
        }
        int measuredHeight = dialogTitleLayout.getMeasuredHeight();
        DialogTitleLayout dialogTitleLayout2 = this.titleLayout;
        if (dialogTitleLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleLayout");
        }
        dialogTitleLayout2.layout(0, 0, measuredWidth, measuredHeight);
        if (this.isButtonsLayoutAChild) {
            int measuredHeight2 = getMeasuredHeight();
            DialogActionButtonLayout dialogActionButtonLayout = this.buttonsLayout;
            i5 = measuredHeight2 - (dialogActionButtonLayout != null ? dialogActionButtonLayout.getMeasuredHeight() : 0);
            if (DialogActionButtonLayoutKt.shouldBeVisible(this.buttonsLayout)) {
                int measuredWidth2 = getMeasuredWidth();
                int measuredHeight3 = getMeasuredHeight();
                DialogActionButtonLayout dialogActionButtonLayout2 = this.buttonsLayout;
                if (dialogActionButtonLayout2 == null) {
                    Intrinsics.throwNpe();
                }
                dialogActionButtonLayout2.layout(0, i5, measuredWidth2, measuredHeight3);
            }
        } else {
            i5 = getMeasuredHeight();
        }
        int measuredWidth3 = getMeasuredWidth();
        DialogContentLayout dialogContentLayout = this.contentLayout;
        if (dialogContentLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("contentLayout");
        }
        dialogContentLayout.layout(0, measuredHeight, measuredWidth3, i5);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        super.onDraw(canvas);
        if (this.debugMode) {
            verticalLine$default(this, canvas, -16776961, DimensKt.dp(this, 24), 0.0f, 4, null);
            horizontalLine$default(this, canvas, -16776961, DimensKt.dp(this, 24), 0.0f, 4, null);
            verticalLine$default(this, canvas, -16776961, ((float) getMeasuredWidth()) - DimensKt.dp(this, 24), 0.0f, 4, null);
            DialogTitleLayout dialogTitleLayout = this.titleLayout;
            if (dialogTitleLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("titleLayout");
            }
            if (ViewsKt.isVisible(dialogTitleLayout)) {
                DialogTitleLayout dialogTitleLayout2 = this.titleLayout;
                if (dialogTitleLayout2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("titleLayout");
                }
                horizontalLine$default(this, canvas, -65536, (float) dialogTitleLayout2.getBottom(), 0.0f, 4, null);
            }
            DialogContentLayout dialogContentLayout = this.contentLayout;
            if (dialogContentLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("contentLayout");
            }
            if (ViewsKt.isVisible(dialogContentLayout)) {
                DialogContentLayout dialogContentLayout2 = this.contentLayout;
                if (dialogContentLayout2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("contentLayout");
                }
                horizontalLine$default(this, canvas, -256, (float) dialogContentLayout2.getTop(), 0.0f, 4, null);
            }
            if (DialogActionButtonLayoutKt.shouldBeVisible(this.buttonsLayout)) {
                if (ViewsKt.isRtl(this)) {
                    f = DimensKt.dp(this, 8);
                } else {
                    f = ((float) getMeasuredWidth()) - DimensKt.dp(this, 8);
                }
                verticalLine$default(this, canvas, -16711681, f, 0.0f, 4, null);
                DialogActionButtonLayout dialogActionButtonLayout = this.buttonsLayout;
                if (dialogActionButtonLayout == null || !dialogActionButtonLayout.getStackButtons$core()) {
                    DialogActionButtonLayout dialogActionButtonLayout2 = this.buttonsLayout;
                    if (dialogActionButtonLayout2 != null) {
                        if (dialogActionButtonLayout2 == null) {
                            Intrinsics.throwNpe();
                        }
                        DialogActionButton[] visibleButtons = dialogActionButtonLayout2.getVisibleButtons();
                        for (DialogActionButton dialogActionButton : visibleButtons) {
                            DialogActionButtonLayout dialogActionButtonLayout3 = this.buttonsLayout;
                            if (dialogActionButtonLayout3 == null) {
                                Intrinsics.throwNpe();
                            }
                            float top2 = ((float) dialogActionButtonLayout3.getTop()) + ((float) dialogActionButton.getTop()) + DimensKt.dp(this, 8);
                            DialogActionButtonLayout dialogActionButtonLayout4 = this.buttonsLayout;
                            if (dialogActionButtonLayout4 == null) {
                                Intrinsics.throwNpe();
                            }
                            box(canvas, -16711681, 0.4f, ((float) dialogActionButton.getLeft()) + DimensKt.dp(this, 4), ((float) dialogActionButton.getRight()) - DimensKt.dp(this, 4), top2, ((float) dialogActionButtonLayout4.getBottom()) - DimensKt.dp(this, 8));
                        }
                        DialogActionButtonLayout dialogActionButtonLayout5 = this.buttonsLayout;
                        if (dialogActionButtonLayout5 == null) {
                            Intrinsics.throwNpe();
                        }
                        horizontalLine$default(this, canvas, -65281, (float) dialogActionButtonLayout5.getTop(), 0.0f, 4, null);
                        float measuredHeight = ((float) getMeasuredHeight()) - (DimensKt.dp(this, 52) - DimensKt.dp(this, 8));
                        horizontalLine$default(this, canvas, -65536, measuredHeight, 0.0f, 4, null);
                        horizontalLine$default(this, canvas, -65536, ((float) getMeasuredHeight()) - DimensKt.dp(this, 8), 0.0f, 4, null);
                        horizontalLine$default(this, canvas, -16776961, measuredHeight - DimensKt.dp(this, 8), 0.0f, 4, null);
                        return;
                    }
                    return;
                }
                DialogActionButtonLayout dialogActionButtonLayout6 = this.buttonsLayout;
                if (dialogActionButtonLayout6 == null) {
                    Intrinsics.throwNpe();
                }
                float top3 = ((float) dialogActionButtonLayout6.getTop()) + DimensKt.dp(this, 8);
                DialogActionButtonLayout dialogActionButtonLayout7 = this.buttonsLayout;
                if (dialogActionButtonLayout7 == null) {
                    Intrinsics.throwNpe();
                }
                DialogActionButton[] visibleButtons2 = dialogActionButtonLayout7.getVisibleButtons();
                float f2 = top3;
                for (DialogActionButton dialogActionButton2 : visibleButtons2) {
                    float dp = f2 + DimensKt.dp(this, 36);
                    box(canvas, -16711681, 0.4f, (float) dialogActionButton2.getLeft(), ((float) getMeasuredWidth()) - DimensKt.dp(this, 8), f2, dp);
                    f2 = dp + DimensKt.dp(this, 16);
                }
                DialogActionButtonLayout dialogActionButtonLayout8 = this.buttonsLayout;
                if (dialogActionButtonLayout8 == null) {
                    Intrinsics.throwNpe();
                }
                horizontalLine$default(this, canvas, -16776961, (float) dialogActionButtonLayout8.getTop(), 0.0f, 4, null);
                DialogActionButtonLayout dialogActionButtonLayout9 = this.buttonsLayout;
                if (dialogActionButtonLayout9 == null) {
                    Intrinsics.throwNpe();
                }
                horizontalLine$default(this, canvas, -65536, ((float) dialogActionButtonLayout9.getTop()) + DimensKt.dp(this, 8), 0.0f, 4, null);
                horizontalLine$default(this, canvas, -65536, ((float) getMeasuredHeight()) - DimensKt.dp(this, 8), 0.0f, 4, null);
            }
        }
    }

    @Override // android.view.View, android.view.ViewGroup
    protected void dispatchDraw(Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        if (!(this.cornerRadii.length == 0)) {
            canvas.clipPath(this.cornerRadiusPath);
        }
        super.dispatchDraw(canvas);
    }

    static /* synthetic */ Paint paint$default(DialogLayout dialogLayout, int i, float f, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            f = 1.0f;
        }
        return dialogLayout.paint(i, f);
    }

    private final Paint paint(int i, float f) {
        if (this.debugPaint == null) {
            Paint paint = new Paint();
            paint.setStrokeWidth(DimensKt.dp(this, 1));
            paint.setStyle(Paint.Style.FILL);
            paint.setAntiAlias(true);
            this.debugPaint = paint;
        }
        Paint paint2 = this.debugPaint;
        if (paint2 == null) {
            Intrinsics.throwNpe();
        }
        paint2.setColor(i);
        setAlpha(f);
        return paint2;
    }

    public final void box(Canvas canvas, int i, float f, float f2, float f3, float f4, float f5) {
        canvas.drawRect(f2, f4, f3, f5, paint(i, f));
    }

    static /* synthetic */ void line$default(DialogLayout dialogLayout, Canvas canvas, int i, float f, float f2, float f3, float f4, int i2, Object obj) {
        float f5 = (i2 & 2) != 0 ? 0.0f : f;
        float f6 = (i2 & 4) != 0 ? f5 : f2;
        float f7 = (i2 & 8) != 0 ? 0.0f : f3;
        dialogLayout.line(canvas, i, f5, f6, f7, (i2 & 16) != 0 ? f7 : f4);
    }

    private final void line(Canvas canvas, int i, float f, float f2, float f3, float f4) {
        canvas.drawLine(f, f3, f2, f4, paint$default(this, i, 0.0f, 2, null));
    }

    static /* synthetic */ void verticalLine$default(DialogLayout dialogLayout, Canvas canvas, int i, float f, float f2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            f2 = f;
        }
        dialogLayout.verticalLine(canvas, i, f, f2);
    }

    private final void verticalLine(Canvas canvas, int i, float f, float f2) {
        line(canvas, i, f, f2, 0.0f, (float) getMeasuredHeight());
    }

    static /* synthetic */ void horizontalLine$default(DialogLayout dialogLayout, Canvas canvas, int i, float f, float f2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            f = (float) dialogLayout.getMeasuredHeight();
        }
        if ((i2 & 4) != 0) {
            f2 = f;
        }
        dialogLayout.horizontalLine(canvas, i, f, f2);
    }

    private final void horizontalLine(Canvas canvas, int i, float f, float f2) {
        line(canvas, i, 0.0f, (float) getMeasuredWidth(), f, f2);
    }
}
