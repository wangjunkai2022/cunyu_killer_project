package com.appinstall.sdk;

import android.util.Pair;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class ae implements Runnable {
    final /* synthetic */ LinkedBlockingQueue a;
    final /* synthetic */ ad b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(ad adVar, LinkedBlockingQueue linkedBlockingQueue) {
        this.b = adVar;
        this.a = linkedBlockingQueue;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        LinkedBlockingQueue linkedBlockingQueue;
        String a;
        bl b = this.b.d.i.b(true);
        if (b == null || !b.b(2)) {
            str = "pbT";
            if (b == null || !b.b(1)) {
                this.a.offer(Pair.create(str, null));
                return;
            } else {
                linkedBlockingQueue = this.a;
                a = b.a();
            }
        } else {
            linkedBlockingQueue = this.a;
            a = b.b();
            str = "pbH";
        }
        linkedBlockingQueue.offer(Pair.create(str, a));
    }
}
