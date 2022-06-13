package com.tencent.thumbplayer.core.downloadproxy.utils;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TVKThreadUtil {
    private static volatile ScheduledExecutorService mScheduler;

    public static ScheduledExecutorService getScheduledExecutorServiceInstance() {
        if (mScheduler == null) {
            synchronized (TVKThreadUtil.class) {
                if (mScheduler == null) {
                    mScheduler = Executors.newScheduledThreadPool(4);
                }
            }
        }
        return mScheduler;
    }
}
