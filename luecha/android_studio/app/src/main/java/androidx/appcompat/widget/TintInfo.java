package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public class TintInfo {
    public boolean mHasTintList;
    public boolean mHasTintMode;
    public ColorStateList mTintList;
    public PorterDuff.Mode mTintMode;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clear() {
        this.mTintList = null;
        this.mHasTintList = false;
        this.mTintMode = null;
        this.mHasTintMode = false;
    }
}
