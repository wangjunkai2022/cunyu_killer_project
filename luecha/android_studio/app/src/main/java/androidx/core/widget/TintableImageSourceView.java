package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public interface TintableImageSourceView {
    ColorStateList getSupportImageTintList();

    PorterDuff.Mode getSupportImageTintMode();

    void setSupportImageTintList(ColorStateList colorStateList);

    void setSupportImageTintMode(PorterDuff.Mode mode);
}
