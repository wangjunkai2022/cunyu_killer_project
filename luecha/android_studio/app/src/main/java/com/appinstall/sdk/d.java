package com.appinstall.sdk;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class d {
    private volatile e a = null;
    private final CountDownLatch b = new CountDownLatch(1);
    private final LinkedBlockingQueue c = new LinkedBlockingQueue(1);
    private final Object d = new Object();

    public void a(long j) {
        if (this.a == null || this.a == e.a || this.a == e.b) {
            this.c.offer(this.d);
            try {
                this.b.await(j, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public synchronized void a(e eVar) {
        this.a = eVar;
    }

    public boolean a() {
        return this.a == e.d;
    }

    public Object b(long j) throws InterruptedException {
        return this.c.poll(j, TimeUnit.SECONDS);
    }

    public boolean b() {
        return this.a == e.e || this.a == e.d;
    }

    public synchronized e c() {
        return this.a;
    }

    public void d() {
        this.b.countDown();
    }
}
