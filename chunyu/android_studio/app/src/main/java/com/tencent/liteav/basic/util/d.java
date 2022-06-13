package com.tencent.liteav.basic.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.tencent.liteav.basic.log.TXCLog;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: ProcessStateOwner.java */
/* loaded from: classes2.dex */
public class d implements Application.ActivityLifecycleCallbacks {
    private volatile boolean a;
    private final Set<Integer> b = new HashSet();
    private final Set<Integer> c = new HashSet();

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public d(Context context) {
        if (context == null) {
            TXCLog.e("ProcessLifecycleOwner", "ProcessStateOwner init failed. Context is null");
            return;
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(this);
        this.a = a(context);
    }

    public boolean a() {
        return this.a;
    }

    private boolean a(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager == null) {
                TXCLog.e("ProcessLifecycleOwner", "activityManager is null.");
                return false;
            }
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
            if (runningAppProcesses == null) {
                TXCLog.e("ProcessLifecycleOwner", "processInfoList is null.");
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100 && context.getPackageName().equals(runningAppProcessInfo.processName)) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            TXCLog.e("ProcessLifecycleOwner", "Get App background state failed. " + e);
            return false;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        a(activity.hashCode());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        a(activity.hashCode());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.c.add(Integer.valueOf(activity.hashCode()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        int hashCode = activity.hashCode();
        boolean z = true;
        if (this.b.contains(Integer.valueOf(hashCode))) {
            this.b.remove(Integer.valueOf(hashCode));
            if (this.b.size() != 0) {
                z = false;
            }
            this.a = z;
        } else if (this.b.size() != 0) {
            this.a = false;
        } else if (this.c.contains(Integer.valueOf(hashCode))) {
            this.a = true;
        }
        this.c.remove(Integer.valueOf(hashCode));
    }

    private void a(int i) {
        this.b.add(Integer.valueOf(i));
        this.a = false;
    }
}
