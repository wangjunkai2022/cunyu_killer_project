package androidx.viewpager2.adapter;

import android.os.Parcelable;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public interface StatefulAdapter {
    void restoreState(Parcelable parcelable);

    Parcelable saveState();
}
