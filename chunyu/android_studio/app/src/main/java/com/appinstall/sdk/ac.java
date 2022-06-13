package com.appinstall.sdk;

import android.util.Pair;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes4.dex */
class ac implements Runnable {
    final /* synthetic */ LinkedBlockingQueue a;
    final /* synthetic */ w b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(w wVar, LinkedBlockingQueue linkedBlockingQueue) {
        this.b = wVar;
        this.a = linkedBlockingQueue;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.b.n.a(this.b.b.a);
        this.a.offer(Pair.create("oa", this.b.b.n.a()));
    }
}
