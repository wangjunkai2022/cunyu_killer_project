package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public interface TintableCompoundDrawablesView {
    ColorStateList getSupportCompoundDrawablesTintList();

    PorterDuff.Mode getSupportCompoundDrawablesTintMode();

    void setSupportCompoundDrawablesTintList(ColorStateList colorStateList);

    void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode);
}
