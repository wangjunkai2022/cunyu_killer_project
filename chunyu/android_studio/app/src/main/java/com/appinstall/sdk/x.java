package com.appinstall.sdk;

import android.util.Pair;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes4.dex */
class x implements Runnable {
    final /* synthetic */ LinkedBlockingQueue a;
    final /* synthetic */ w b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(w wVar, LinkedBlockingQueue linkedBlockingQueue) {
        this.b = wVar;
        this.a = linkedBlockingQueue;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        String str2;
        LinkedBlockingQueue linkedBlockingQueue;
        LinkedBlockingQueue linkedBlockingQueue2;
        String a;
        bl b = this.b.b.i.b(true);
        if (b == null || !b.b(2)) {
            str = "pbT";
            if (b == null || !b.b(1)) {
                if (b != null) {
                    linkedBlockingQueue = this.a;
                    str2 = null;
                } else {
                    linkedBlockingQueue = this.a;
                    str2 = String.valueOf(false);
                    str = "pbR";
                }
                linkedBlockingQueue.offer(Pair.create(str, str2));
                this.b.b.i.a(false);
            }
            linkedBlockingQueue2 = this.a;
            a = b.a();
        } else {
            linkedBlockingQueue2 = this.a;
            a = b.b();
            str = "pbH";
        }
        linkedBlockingQueue2.offer(Pair.create(str, a));
        this.b.b.i.a(false);
    }
}
