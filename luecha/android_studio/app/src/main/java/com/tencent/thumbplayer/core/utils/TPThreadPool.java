package com.tencent.thumbplayer.core.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import com.tencent.thumbplayer.core.common.TPNativeLog;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPThreadPool {
    private static final int CORE_POOL_SIZE = 1;
    private static final int MAX_POOL_SIZE = 20;
    private static final String PRE_THREAD_NAME = "TPCoreHdr";
    private static final String SHARE_THREAD_NAME = "TPCore-ShareThread";
    private static final String TAG = "TPCore[TPThreadPool]";
    private static volatile ExecutorService sCustomExecutor;
    private static volatile HandlerThread sHandlerThread;
    private static volatile TPThreadPool sInstance;
    private static volatile Handler sMainThreadHandler;
    private static volatile ScheduledExecutorService sScheduler;
    private static volatile ExecutorService sShareSingleExecutor;
    private static int sShareThreadCount;

    private TPThreadPool() {
    }

    public static TPThreadPool getInstance() {
        if (sInstance == null) {
            synchronized (TPThreadPool.class) {
                if (sInstance == null) {
                    sInstance = new TPThreadPool();
                }
            }
        }
        return sInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0029 A[Catch: all -> 0x003e, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0012, B:8:0x0016, B:10:0x001e, B:11:0x0021, B:13:0x0029, B:14:0x003c), top: B:19:0x0003 }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private static void initHandlerThread() {
        /*
            java.lang.Class<com.tencent.thumbplayer.core.utils.TPThreadPool> r0 = com.tencent.thumbplayer.core.utils.TPThreadPool.class
            monitor-enter(r0)
            android.os.HandlerThread r1 = com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread     // Catch: all -> 0x003e
            if (r1 != 0) goto L_0x0016
            android.os.HandlerThread r1 = new android.os.HandlerThread     // Catch: all -> 0x003e
            java.lang.String r2 = "TPCore-ShareThread"
            r1.<init>(r2)     // Catch: all -> 0x003e
            com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread = r1     // Catch: all -> 0x003e
            android.os.HandlerThread r1 = com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread     // Catch: all -> 0x003e
        L_0x0012:
            r1.start()     // Catch: all -> 0x003e
            goto L_0x0021
        L_0x0016:
            android.os.HandlerThread r1 = com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread     // Catch: all -> 0x003e
            boolean r1 = r1.isAlive()     // Catch: all -> 0x003e
            if (r1 != 0) goto L_0x0021
            android.os.HandlerThread r1 = com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread     // Catch: all -> 0x003e
            goto L_0x0012
        L_0x0021:
            android.os.HandlerThread r1 = com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread     // Catch: all -> 0x003e
            android.os.Looper r1 = r1.getLooper()     // Catch: all -> 0x003e
            if (r1 != 0) goto L_0x003c
            android.os.HandlerThread r1 = com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread     // Catch: all -> 0x003e
            r1.quit()     // Catch: all -> 0x003e
            android.os.HandlerThread r1 = new android.os.HandlerThread     // Catch: all -> 0x003e
            java.lang.String r2 = "TPCore-ShareThread"
            r1.<init>(r2)     // Catch: all -> 0x003e
            com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread = r1     // Catch: all -> 0x003e
            android.os.HandlerThread r1 = com.tencent.thumbplayer.core.utils.TPThreadPool.sHandlerThread     // Catch: all -> 0x003e
            r1.start()     // Catch: all -> 0x003e
        L_0x003c:
            monitor-exit(r0)     // Catch: all -> 0x003e
            return
        L_0x003e:
            r1 = move-exception
            monitor-exit(r0)     // Catch: all -> 0x003e
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.utils.TPThreadPool.initHandlerThread():void");
    }

    private static void initMainThreadHandler() {
        if (sMainThreadHandler == null) {
            synchronized (TPThreadPool.class) {
                if (sMainThreadHandler == null) {
                    Looper mainLooper = Looper.getMainLooper();
                    if (mainLooper != null) {
                        sMainThreadHandler = new Handler(mainLooper);
                    } else {
                        sMainThreadHandler = null;
                        TPNativeLog.printLog(4, "TPCore[TPThreadPool]", "cannot get thread looper");
                    }
                }
            }
        }
    }

    public HandlerThread obtainHandleThread(String str) {
        return obtainHandleThread(str, 0);
    }

    public HandlerThread obtainHandleThread(String str, int i) {
        if (i >= 19 || i <= -19) {
            i = 0;
        }
        if (TextUtils.isEmpty(str)) {
            str = "TPCoreHdr";
        }
        HandlerThread handlerThread = new HandlerThread(str, i);
        handlerThread.start();
        return handlerThread;
    }

    public ScheduledExecutorService obtainScheduledExecutorService() {
        if (sScheduler == null) {
            synchronized (TPThreadPool.class) {
                if (sScheduler == null) {
                    sScheduler = Executors.newScheduledThreadPool(1);
                }
            }
        }
        return sScheduler;
    }

    public HandlerThread obtainShareThread() {
        HandlerThread handlerThread;
        initHandlerThread();
        synchronized (TPThreadPool.class) {
            sShareThreadCount++;
            TPNativeLog.printLog(2, "TPCore[TPThreadPool]", "handlerThread obtainShareThread mShareThreadCount:" + sShareThreadCount);
            handlerThread = sHandlerThread;
        }
        return handlerThread;
    }

    public ExecutorService obtainSingleThreadExecutor() {
        if (sShareSingleExecutor == null) {
            synchronized (TPThreadPool.class) {
                if (sShareSingleExecutor == null) {
                    sShareSingleExecutor = Executors.newSingleThreadExecutor();
                }
            }
        }
        return sShareSingleExecutor;
    }

    public ExecutorService obtainThreadExecutor() {
        if (sCustomExecutor == null) {
            synchronized (TPThreadPool.class) {
                if (sCustomExecutor == null) {
                    sCustomExecutor = TPThreadPoolExecutor.newCustomThreadExecutor(1, 20);
                }
            }
        }
        return sCustomExecutor;
    }

    public void postDelayRunnableOnMainThread(Runnable runnable, long j) {
        initMainThreadHandler();
        if (sMainThreadHandler != null) {
            sMainThreadHandler.postDelayed(runnable, j);
        }
    }

    public void postRunnableOnMainThread(Runnable runnable) {
        initMainThreadHandler();
        if (sMainThreadHandler != null) {
            sMainThreadHandler.post(runnable);
        }
    }

    public void postRunnableOnMainThreadFront(Runnable runnable) {
        initMainThreadHandler();
        if (sMainThreadHandler != null) {
            sMainThreadHandler.postAtFrontOfQueue(runnable);
        }
    }

    public void recycle(HandlerThread handlerThread, Handler handler) {
        if (handlerThread != null) {
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            if (handlerThread.equals(sHandlerThread)) {
                synchronized (TPThreadPool.class) {
                    sShareThreadCount--;
                    TPNativeLog.printLog(2, "TPCore[TPThreadPool]", "handlerThread recycle mShareThreadCount:" + sShareThreadCount);
                }
                return;
            }
            handlerThread.quit();
        }
    }
}
