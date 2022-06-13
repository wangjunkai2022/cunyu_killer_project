package com.tencent.thumbplayer.utils;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class f {
    private static CopyOnWriteArrayList<a> a = new CopyOnWriteArrayList<>();

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface a {
        void a(int i, int i2, int i3, Object obj);
    }

    public static synchronized void a(int i, int i2, int i3, Object obj) {
        synchronized (f.class) {
            Iterator<a> it = a.iterator();
            while (it.hasNext()) {
                it.next().a(i, i2, i3, obj);
            }
        }
    }

    public static synchronized void a(a aVar) {
        synchronized (f.class) {
            if (a != null && !a.contains(aVar)) {
                a.add(aVar);
                TPLogUtil.i("TPGlobalEventNofication", "add onNetStatus change listener: " + aVar + ", mListeners: " + a.size());
            }
        }
    }

    public static synchronized void b(a aVar) {
        synchronized (f.class) {
            if (a != null) {
                a.remove(aVar);
                TPLogUtil.i("TPGlobalEventNofication", "remove netStatusChangeListener, listener: " + aVar + ", mListeners: " + a.size());
            }
        }
    }
}
