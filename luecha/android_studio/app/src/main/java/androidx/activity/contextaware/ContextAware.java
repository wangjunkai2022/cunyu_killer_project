package androidx.activity.contextaware;

import android.content.Context;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public interface ContextAware {
    void addOnContextAvailableListener(OnContextAvailableListener onContextAvailableListener);

    Context peekAvailableContext();

    void removeOnContextAvailableListener(OnContextAvailableListener onContextAvailableListener);
}
