package com.appinstall.sdk;

import android.util.Pair;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
class z implements Runnable {
    final /* synthetic */ LinkedBlockingQueue a;
    final /* synthetic */ w b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(w wVar, LinkedBlockingQueue linkedBlockingQueue) {
        this.b = wVar;
        this.a = linkedBlockingQueue;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.offer(Pair.create("aI", this.b.b.h.k()));
    }
}
