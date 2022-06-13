package com.tencent.thumbplayer.e;

import android.os.SystemClock;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class c {
    private CopyOnWriteArrayList<WeakReference<a>> a = new CopyOnWriteArrayList<>();

    public void a(b bVar) {
        if (this.a != null) {
            bVar.a(SystemClock.elapsedRealtime());
            bVar.b(System.currentTimeMillis());
            Iterator<WeakReference<a>> it = this.a.iterator();
            while (it.hasNext()) {
                a aVar = it.next().get();
                if (aVar != null) {
                    aVar.a(bVar);
                }
            }
        }
    }
}
