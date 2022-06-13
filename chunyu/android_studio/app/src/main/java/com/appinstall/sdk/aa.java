package com.appinstall.sdk;

import android.util.Pair;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes4.dex */
class aa implements Runnable {
    final /* synthetic */ LinkedBlockingQueue a;
    final /* synthetic */ w b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(w wVar, LinkedBlockingQueue linkedBlockingQueue) {
        this.b = wVar;
        this.a = linkedBlockingQueue;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.offer(Pair.create("si", String.valueOf(ap.a().a(this.b.b.a))));
    }
}
