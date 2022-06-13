package androidx.transition;

import android.view.View;
import android.view.WindowId;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public class WindowIdApi18 implements WindowIdImpl {
    private final WindowId mWindowId;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WindowIdApi18(View view) {
        this.mWindowId = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof WindowIdApi18) && ((WindowIdApi18) obj).mWindowId.equals(this.mWindowId);
    }

    public int hashCode() {
        return this.mWindowId.hashCode();
    }
}
