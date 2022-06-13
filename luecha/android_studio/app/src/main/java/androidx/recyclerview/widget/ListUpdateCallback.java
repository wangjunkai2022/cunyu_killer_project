package androidx.recyclerview.widget;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public interface ListUpdateCallback {
    void onChanged(int i, int i2, Object obj);

    void onInserted(int i, int i2);

    void onMoved(int i, int i2);

    void onRemoved(int i, int i2);
}
