package androidx.appcompat.view.menu;

import android.widget.ListView;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public interface ShowableListMenu {
    void dismiss();

    ListView getListView();

    boolean isShowing();

    void show();
}
