package com.tencent.liteav.audio.impl.route;

import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: TXCAudioSessionHost.java */
/* loaded from: classes2.dex */
public class g {
    private final List<a> a = new ArrayList();

    /* compiled from: TXCAudioSessionHost.java */
    /* loaded from: classes2.dex */
    public static class a {
        public long a;
        public f b;
    }

    public synchronized a a(long j) {
        a aVar;
        aVar = null;
        Iterator<a> it = this.a.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            a next = it.next();
            if (next.a == j) {
                aVar = next;
                break;
            }
        }
        return aVar;
    }

    public synchronized void a(f fVar, long j) {
        if (a(j) == null) {
            a aVar = new a();
            aVar.a = j;
            aVar.b = fVar;
            this.a.add(aVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
        r3.a.remove(r0);
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public synchronized void b(long r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            r0 = 0
        L_0x0002:
            java.util.List<com.tencent.liteav.audio.impl.route.g$a> r1 = r3.a     // Catch: all -> 0x0023
            int r1 = r1.size()     // Catch: all -> 0x0023
            if (r0 >= r1) goto L_0x0021
            java.util.List<com.tencent.liteav.audio.impl.route.g$a> r1 = r3.a     // Catch: all -> 0x0023
            java.lang.Object r1 = r1.get(r0)     // Catch: all -> 0x0023
            com.tencent.liteav.audio.impl.route.g$a r1 = (com.tencent.liteav.audio.impl.route.g.a) r1     // Catch: all -> 0x0023
            long r1 = r1.a     // Catch: all -> 0x0023
            int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r1 != 0) goto L_0x001e
            java.util.List<com.tencent.liteav.audio.impl.route.g$a> r4 = r3.a     // Catch: all -> 0x0023
            r4.remove(r0)     // Catch: all -> 0x0023
            goto L_0x0021
        L_0x001e:
            int r0 = r0 + 1
            goto L_0x0002
        L_0x0021:
            monitor-exit(r3)
            return
        L_0x0023:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.audio.impl.route.g.b(long):void");
    }

    public void a(Intent intent) {
        ArrayList<a> arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.a);
        }
        for (a aVar : arrayList) {
            aVar.b.a(intent);
        }
    }
}
