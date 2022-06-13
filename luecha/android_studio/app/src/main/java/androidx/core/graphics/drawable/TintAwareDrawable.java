package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public interface TintAwareDrawable {
    @Override // androidx.core.graphics.drawable.TintAwareDrawable
    void setTint(int i);

    @Override // androidx.core.graphics.drawable.TintAwareDrawable
    void setTintList(ColorStateList colorStateList);

    @Override // androidx.core.graphics.drawable.TintAwareDrawable
    void setTintMode(PorterDuff.Mode mode);
}
