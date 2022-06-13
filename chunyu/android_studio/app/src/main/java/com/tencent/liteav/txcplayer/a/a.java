package com.tencent.liteav.txcplayer.a;

import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: CommonThreadPool.java */
/* loaded from: classes2.dex */
public class a extends ThreadPoolExecutor {
    public static ThreadPoolExecutor a;

    private a(int i) {
        super(1, i, 100, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
    }

    public static synchronized ThreadPoolExecutor a() {
        ThreadPoolExecutor threadPoolExecutor;
        synchronized (a.class) {
            if (a == null || a.isShutdown()) {
                a = new a(3);
            }
            threadPoolExecutor = a;
        }
        return threadPoolExecutor;
    }
}
