package androidx.core.app;

import android.app.Dialog;
import android.os.Build;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public class DialogCompat {
    private DialogCompat() {
    }

    public static View requireViewById(Dialog dialog, int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            return dialog.requireViewById(i);
        }
        View findViewById = dialog.findViewById(i);
        if (findViewById != null) {
            return findViewById;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this Dialog");
    }
}
