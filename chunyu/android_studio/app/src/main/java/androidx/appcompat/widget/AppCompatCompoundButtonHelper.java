package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes4.dex */
public class AppCompatCompoundButtonHelper {
    private ColorStateList mButtonTintList = null;
    private PorterDuff.Mode mButtonTintMode = null;
    private boolean mHasButtonTint = false;
    private boolean mHasButtonTintMode = false;
    private boolean mSkipNextApply;
    private final CompoundButton mView;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatCompoundButtonHelper(CompoundButton compoundButton) {
        this.mView = compoundButton;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006a A[Catch: all -> 0x0092, TryCatch #0 {all -> 0x0092, blocks: (B:3:0x001f, B:5:0x0027, B:7:0x002f, B:11:0x0043, B:13:0x004b, B:15:0x0053, B:16:0x0062, B:18:0x006a, B:19:0x0075, B:21:0x007d), top: B:28:0x001f }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007d A[Catch: all -> 0x0092, TRY_LEAVE, TryCatch #0 {all -> 0x0092, blocks: (B:3:0x001f, B:5:0x0027, B:7:0x002f, B:11:0x0043, B:13:0x004b, B:15:0x0053, B:16:0x0062, B:18:0x006a, B:19:0x0075, B:21:0x007d), top: B:28:0x001f }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void loadFromAttributes(android.util.AttributeSet r11, int r12) {
        /*
            r10 = this;
            android.widget.CompoundButton r0 = r10.mView
            android.content.Context r0 = r0.getContext()
            int[] r1 = androidx.appcompat.R.styleable.CompoundButton
            r2 = 0
            androidx.appcompat.widget.TintTypedArray r0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(r0, r11, r1, r12, r2)
            android.widget.CompoundButton r3 = r10.mView
            android.content.Context r4 = r3.getContext()
            int[] r5 = androidx.appcompat.R.styleable.CompoundButton
            android.content.res.TypedArray r7 = r0.getWrappedTypeArray()
            r9 = 0
            r6 = r11
            r8 = r12
            androidx.core.view.ViewCompat.saveAttributeDataForStyleable(r3, r4, r5, r6, r7, r8, r9)
            int r11 = androidx.appcompat.R.styleable.CompoundButton_buttonCompat     // Catch: all -> 0x0092
            boolean r11 = r0.hasValue(r11)     // Catch: all -> 0x0092
            if (r11 == 0) goto L_0x0040
            int r11 = androidx.appcompat.R.styleable.CompoundButton_buttonCompat     // Catch: all -> 0x0092
            int r11 = r0.getResourceId(r11, r2)     // Catch: all -> 0x0092
            if (r11 == 0) goto L_0x0040
            android.widget.CompoundButton r12 = r10.mView     // Catch: NotFoundException -> 0x0040, all -> 0x0092
            android.widget.CompoundButton r1 = r10.mView     // Catch: NotFoundException -> 0x0040, all -> 0x0092
            android.content.Context r1 = r1.getContext()     // Catch: NotFoundException -> 0x0040, all -> 0x0092
            android.graphics.drawable.Drawable r11 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r11)     // Catch: NotFoundException -> 0x0040, all -> 0x0092
            r12.setButtonDrawable(r11)     // Catch: NotFoundException -> 0x0040, all -> 0x0092
            r11 = 1
            goto L_0x0041
        L_0x0040:
            r11 = r2
        L_0x0041:
            if (r11 != 0) goto L_0x0062
            int r11 = androidx.appcompat.R.styleable.CompoundButton_android_button     // Catch: all -> 0x0092
            boolean r11 = r0.hasValue(r11)     // Catch: all -> 0x0092
            if (r11 == 0) goto L_0x0062
            int r11 = androidx.appcompat.R.styleable.CompoundButton_android_button     // Catch: all -> 0x0092
            int r11 = r0.getResourceId(r11, r2)     // Catch: all -> 0x0092
            if (r11 == 0) goto L_0x0062
            android.widget.CompoundButton r12 = r10.mView     // Catch: all -> 0x0092
            android.widget.CompoundButton r1 = r10.mView     // Catch: all -> 0x0092
            android.content.Context r1 = r1.getContext()     // Catch: all -> 0x0092
            android.graphics.drawable.Drawable r11 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r11)     // Catch: all -> 0x0092
            r12.setButtonDrawable(r11)     // Catch: all -> 0x0092
        L_0x0062:
            int r11 = androidx.appcompat.R.styleable.CompoundButton_buttonTint     // Catch: all -> 0x0092
            boolean r11 = r0.hasValue(r11)     // Catch: all -> 0x0092
            if (r11 == 0) goto L_0x0075
            android.widget.CompoundButton r11 = r10.mView     // Catch: all -> 0x0092
            int r12 = androidx.appcompat.R.styleable.CompoundButton_buttonTint     // Catch: all -> 0x0092
            android.content.res.ColorStateList r12 = r0.getColorStateList(r12)     // Catch: all -> 0x0092
            androidx.core.widget.CompoundButtonCompat.setButtonTintList(r11, r12)     // Catch: all -> 0x0092
        L_0x0075:
            int r11 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode     // Catch: all -> 0x0092
            boolean r11 = r0.hasValue(r11)     // Catch: all -> 0x0092
            if (r11 == 0) goto L_0x008e
            android.widget.CompoundButton r11 = r10.mView     // Catch: all -> 0x0092
            int r12 = androidx.appcompat.R.styleable.CompoundButton_buttonTintMode     // Catch: all -> 0x0092
            r1 = -1
            int r12 = r0.getInt(r12, r1)     // Catch: all -> 0x0092
            r1 = 0
            android.graphics.PorterDuff$Mode r12 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r12, r1)     // Catch: all -> 0x0092
            androidx.core.widget.CompoundButtonCompat.setButtonTintMode(r11, r12)     // Catch: all -> 0x0092
        L_0x008e:
            r0.recycle()
            return
        L_0x0092:
            r11 = move-exception
            r0.recycle()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatCompoundButtonHelper.loadFromAttributes(android.util.AttributeSet, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        this.mButtonTintList = colorStateList;
        this.mHasButtonTint = true;
        applyButtonTint();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList getSupportButtonTintList() {
        return this.mButtonTintList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        this.mButtonTintMode = mode;
        this.mHasButtonTintMode = true;
        applyButtonTint();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode getSupportButtonTintMode() {
        return this.mButtonTintMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onSetButtonDrawable() {
        if (this.mSkipNextApply) {
            this.mSkipNextApply = false;
            return;
        }
        this.mSkipNextApply = true;
        applyButtonTint();
    }

    void applyButtonTint() {
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(this.mView);
        if (buttonDrawable == null) {
            return;
        }
        if (this.mHasButtonTint || this.mHasButtonTintMode) {
            Drawable mutate = DrawableCompat.wrap(buttonDrawable).mutate();
            if (this.mHasButtonTint) {
                DrawableCompat.setTintList(mutate, this.mButtonTintList);
            }
            if (this.mHasButtonTintMode) {
                DrawableCompat.setTintMode(mutate, this.mButtonTintMode);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.mView.getDrawableState());
            }
            this.mView.setButtonDrawable(mutate);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCompoundPaddingLeft(int i) {
        Drawable buttonDrawable;
        return (Build.VERSION.SDK_INT >= 17 || (buttonDrawable = CompoundButtonCompat.getButtonDrawable(this.mView)) == null) ? i : i + buttonDrawable.getIntrinsicWidth();
    }
}
