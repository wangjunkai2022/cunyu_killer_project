package com.appinstall.sdk;

import android.util.Pair;
import com.appinstall.sdk.be;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes4.dex */
class ab implements Runnable {
    final /* synthetic */ LinkedBlockingQueue a;
    final /* synthetic */ w b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(w wVar, LinkedBlockingQueue linkedBlockingQueue) {
        this.b = wVar;
        this.a = linkedBlockingQueue;
    }

    @Override // java.lang.Runnable
    public void run() {
        be.a a = be.a(this.b.b.a);
        this.a.offer(Pair.create("ga", (a == null || a.b()) ? null : a.a()));
    }
}
