package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes2.dex
 */
/* loaded from: classes4.dex */
public abstract class ViewModel {
    private final Map<String, Object> mBagOfTags = new HashMap();
    private volatile boolean mCleared = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCleared() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void clear() {
        this.mCleared = true;
        Map<String, Object> map = this.mBagOfTags;
        if (map != null) {
            synchronized (map) {
                for (Object obj : this.mBagOfTags.values()) {
                    closeWithRuntimeException(obj);
                }
            }
        }
        onCleared();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> T setTagIfAbsent(String str, T t) {
        Object obj;
        synchronized (this.mBagOfTags) {
            obj = this.mBagOfTags.get(str);
            if (obj == null) {
                this.mBagOfTags.put(str, t);
            }
        }
        if (obj != null) {
            t = obj;
        }
        if (this.mCleared) {
            closeWithRuntimeException(t);
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> T getTag(String str) {
        T t;
        Map<String, Object> map = this.mBagOfTags;
        if (map == null) {
            return null;
        }
        synchronized (map) {
            t = (T) this.mBagOfTags.get(str);
        }
        return t;
    }

    private static void closeWithRuntimeException(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
