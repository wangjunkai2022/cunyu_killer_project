package androidx.core.widget;

import android.os.Build;
import android.view.View;
import android.widget.ListView;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public final class ListViewCompat {
    public static void scrollListBy(ListView listView, int i) {
        View childAt;
        if (Build.VERSION.SDK_INT >= 19) {
            listView.scrollListBy(i);
            return;
        }
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (firstVisiblePosition != -1 && (childAt = listView.getChildAt(0)) != null) {
            listView.setSelectionFromTop(firstVisiblePosition, childAt.getTop() - i);
        }
    }

    public static boolean canScrollList(ListView listView, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            return listView.canScrollList(i);
        }
        int childCount = listView.getChildCount();
        if (childCount == 0) {
            return false;
        }
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (i > 0) {
            int bottom = listView.getChildAt(childCount - 1).getBottom();
            if (firstVisiblePosition + childCount < listView.getCount() || bottom > listView.getHeight() - listView.getListPaddingBottom()) {
                return true;
            }
            return false;
        }
        int top2 = listView.getChildAt(0).getTop();
        if (firstVisiblePosition > 0 || top2 < listView.getListPaddingTop()) {
            return true;
        }
        return false;
    }

    private ListViewCompat() {
    }
}
