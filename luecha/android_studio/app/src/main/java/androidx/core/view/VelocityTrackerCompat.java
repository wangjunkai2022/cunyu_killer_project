package androidx.core.view;

import android.view.VelocityTracker;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
@Deprecated
/* loaded from: classes4.dex */
public final class VelocityTrackerCompat {
    @Deprecated
    public static float getXVelocity(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getXVelocity(i);
    }

    @Deprecated
    public static float getYVelocity(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getYVelocity(i);
    }

    private VelocityTrackerCompat() {
    }
}
