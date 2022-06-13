package com.tencent.thumbplayer.h.h;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public final class d {
    private static final Handler a = new Handler(Looper.getMainLooper());
    private static final ExecutorService b = Executors.newCachedThreadPool();
    private static final HandlerThread c = new HandlerThread("tmediacodec-sub");
    private static Handler d = new Handler(c.getLooper());

    static {
        c.start();
    }

    public static void a(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            b.execute(runnable);
        } else {
            runnable.run();
        }
    }

    public static void b(Runnable runnable) {
        d.post(runnable);
    }
}
