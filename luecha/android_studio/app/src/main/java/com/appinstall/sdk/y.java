package com.appinstall.sdk;

import android.util.Pair;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
class y implements Runnable {
    final /* synthetic */ LinkedBlockingQueue a;
    final /* synthetic */ w b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(w wVar, LinkedBlockingQueue linkedBlockingQueue) {
        this.b = wVar;
        this.a = linkedBlockingQueue;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.b.o.a(this.b.b.a);
        this.a.offer(Pair.create("gR", this.b.b.o.a()));
    }
}
