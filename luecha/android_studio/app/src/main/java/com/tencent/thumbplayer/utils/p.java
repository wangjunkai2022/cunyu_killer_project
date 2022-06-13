package com.tencent.thumbplayer.utils;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class p {

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static class a implements RejectedExecutionHandler {
        private a() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            try {
                threadPoolExecutor.getQueue().put(runnable);
                TPLogUtil.i("TPPlayer[TPThreadPoolExecutor]", "rejectedExecution put task to queue");
            } catch (InterruptedException e) {
                TPLogUtil.e("TPPlayer[TPThreadPoolExecutor]", "rejectedExecution has exception:" + e.toString());
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static class b implements ThreadFactory {
        private AtomicInteger a;

        private b() {
            this.a = new AtomicInteger(0);
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName("TP-Thread" + this.a.incrementAndGet());
            return thread;
        }
    }

    public static ExecutorService a(int i, int i2) {
        return new ThreadPoolExecutor(i, i2, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(20), new b(), new a());
    }
}
