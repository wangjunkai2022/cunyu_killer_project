package com.tencent.thumbplayer.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes5.dex */
public class o {
    private static volatile HandlerThread a;
    private static volatile Handler b;
    private static int c;
    private static volatile ExecutorService d;
    private static volatile ExecutorService e;
    private static volatile ScheduledExecutorService f;
    private static volatile o g;

    private o() {
    }

    public static o a() {
        if (g == null) {
            synchronized (o.class) {
                if (g == null) {
                    g = new o();
                }
            }
        }
        return g;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0029 A[Catch: all -> 0x003e, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0012, B:8:0x0016, B:10:0x001e, B:11:0x0021, B:13:0x0029, B:14:0x003c), top: B:19:0x0003 }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private static void f() {
        /*
            java.lang.Class<com.tencent.thumbplayer.utils.o> r0 = com.tencent.thumbplayer.utils.o.class
            monitor-enter(r0)
            android.os.HandlerThread r1 = com.tencent.thumbplayer.utils.o.a     // Catch: all -> 0x003e
            if (r1 != 0) goto L_0x0016
            android.os.HandlerThread r1 = new android.os.HandlerThread     // Catch: all -> 0x003e
            java.lang.String r2 = "TP-ShareThreadPool"
            r1.<init>(r2)     // Catch: all -> 0x003e
            com.tencent.thumbplayer.utils.o.a = r1     // Catch: all -> 0x003e
            android.os.HandlerThread r1 = com.tencent.thumbplayer.utils.o.a     // Catch: all -> 0x003e
        L_0x0012:
            r1.start()     // Catch: all -> 0x003e
            goto L_0x0021
        L_0x0016:
            android.os.HandlerThread r1 = com.tencent.thumbplayer.utils.o.a     // Catch: all -> 0x003e
            boolean r1 = r1.isAlive()     // Catch: all -> 0x003e
            if (r1 != 0) goto L_0x0021
            android.os.HandlerThread r1 = com.tencent.thumbplayer.utils.o.a     // Catch: all -> 0x003e
            goto L_0x0012
        L_0x0021:
            android.os.HandlerThread r1 = com.tencent.thumbplayer.utils.o.a     // Catch: all -> 0x003e
            android.os.Looper r1 = r1.getLooper()     // Catch: all -> 0x003e
            if (r1 != 0) goto L_0x003c
            android.os.HandlerThread r1 = com.tencent.thumbplayer.utils.o.a     // Catch: all -> 0x003e
            r1.quit()     // Catch: all -> 0x003e
            android.os.HandlerThread r1 = new android.os.HandlerThread     // Catch: all -> 0x003e
            java.lang.String r2 = "TP-ShareThreadPool"
            r1.<init>(r2)     // Catch: all -> 0x003e
            com.tencent.thumbplayer.utils.o.a = r1     // Catch: all -> 0x003e
            android.os.HandlerThread r1 = com.tencent.thumbplayer.utils.o.a     // Catch: all -> 0x003e
            r1.start()     // Catch: all -> 0x003e
        L_0x003c:
            monitor-exit(r0)     // Catch: all -> 0x003e
            return
        L_0x003e:
            r1 = move-exception
            monitor-exit(r0)     // Catch: all -> 0x003e
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.utils.o.f():void");
    }

    public HandlerThread a(String str) {
        return a(str, 0);
    }

    public HandlerThread a(String str, int i) {
        if (i >= 19 || i <= -19) {
            i = 0;
        }
        if (TextUtils.isEmpty(str)) {
            str = "TP-HandlerThread";
        }
        HandlerThread handlerThread = new HandlerThread(str, i);
        handlerThread.start();
        return handlerThread;
    }

    public void a(HandlerThread handlerThread, Handler handler) {
        if (handlerThread != null) {
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            if (handlerThread.equals(a)) {
                synchronized (o.class) {
                    c--;
                    TPLogUtil.i("TPPlayer[TPThreadPool]", "handlerThread recycle mShareThreadCount:" + c);
                }
                return;
            }
            handlerThread.quit();
        }
    }

    public HandlerThread b() {
        HandlerThread handlerThread;
        f();
        synchronized (o.class) {
            c++;
            TPLogUtil.i("TPPlayer[TPThreadPool]", "handlerThread obtainShareThread mShareThreadCount:" + c);
            handlerThread = a;
        }
        return handlerThread;
    }

    public ExecutorService c() {
        if (d == null) {
            synchronized (o.class) {
                if (d == null) {
                    d = Executors.newSingleThreadExecutor();
                }
            }
        }
        return d;
    }

    public ExecutorService d() {
        if (e == null) {
            synchronized (o.class) {
                if (e == null) {
                    e = p.a(4, 20);
                }
            }
        }
        return e;
    }

    public ScheduledExecutorService e() {
        if (f == null) {
            synchronized (o.class) {
                if (f == null) {
                    f = Executors.newScheduledThreadPool(4);
                }
            }
        }
        return f;
    }
}
