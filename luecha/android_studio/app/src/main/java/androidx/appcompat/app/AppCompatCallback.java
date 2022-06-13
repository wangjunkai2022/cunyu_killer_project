package androidx.appcompat.app;

import androidx.appcompat.view.ActionMode;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public interface AppCompatCallback {
    void onSupportActionModeFinished(ActionMode actionMode);

    void onSupportActionModeStarted(ActionMode actionMode);

    ActionMode onWindowStartingSupportActionMode(ActionMode.Callback callback);
}
