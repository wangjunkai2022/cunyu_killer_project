package com.appinstall.api;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.appinstall.api.listener.AppInstallListener;
import com.appinstall.api.listener.AppInstallRetryAdapter;
import com.appinstall.api.listener.AppWakeUpListener;
import com.appinstall.api.listener.GetUpdateApkListener;
import com.appinstall.api.model.Error;
import com.appinstall.sdk.b;
import com.appinstall.sdk.bu;
import com.appinstall.sdk.ce;
import com.appinstall.sdk.cf;
import com.appinstall.sdk.ch;
import com.appinstall.sdk.ci;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes4.dex */
public final class AppInstall {
    private static b a;
    private static volatile boolean b;
    private static Context c;
    private static Runnable d;
    private static Configuration e;
    private static Boolean f;

    private AppInstall() {
    }

    private static void a(Context context, Configuration configuration, Runnable runnable) {
        init(context, configuration);
        if (runnable != null) {
            runnable.run();
            d = null;
        }
    }

    private static boolean a() {
        if (b) {
            return true;
        }
        if (cf.a) {
            cf.c("请先调用 init(Context) 初始化", new Object[0]);
        }
        return false;
    }

    private static boolean a(Activity activity, Intent intent) {
        boolean z;
        if (intent == null || TextUtils.isEmpty(intent.getAction()) || intent.getCategories() == null) {
            return false;
        }
        if (!intent.getAction().equals("android.intent.action.MAIN") || !intent.getCategories().contains("android.intent.category.LAUNCHER") || Build.VERSION.SDK_INT < 22) {
            return false;
        }
        Uri referrer = activity.getReferrer();
        if (referrer == null) {
            return false;
        }
        String host = referrer.getHost();
        if (TextUtils.isEmpty(host)) {
            return false;
        }
        if (host.equalsIgnoreCase(ce.y) || host.equalsIgnoreCase(ce.z)) {
            if (cf.a) {
                cf.a("应用宝唤醒：启用了\"集成应用宝\"", new Object[0]);
            }
            z = true;
        } else {
            z = false;
        }
        if (!host.equalsIgnoreCase(ce.A) && !host.equalsIgnoreCase(ce.B) && !host.equalsIgnoreCase(ce.C)) {
            return z;
        }
        if (cf.a) {
            cf.a("应用宝唤醒：外部地址填写了应用宝地址", new Object[0]);
        }
        return true;
    }

    private static boolean a(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        int myPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid) {
                return context.getApplicationInfo().packageName.equals(runningAppProcessInfo.processName);
            }
        }
        return false;
    }

    private static boolean a(Intent intent) {
        if (!(intent == null || intent.getData() == null || intent.getAction() == null)) {
            Uri data = intent.getData();
            String action = intent.getAction();
            if (!TextUtils.isEmpty(data.getHost()) && action.equals("android.intent.action.VIEW")) {
                for (String str : bu.c().split("\\|")) {
                    if (data.getHost().endsWith(str)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static void getInstall(AppInstallListener appInstallListener) {
        getInstall(appInstallListener, 10);
    }

    public static void getInstall(AppInstallListener appInstallListener, int i) {
        if (!a()) {
            appInstallListener.onInstallFinish(null, null);
            return;
        }
        if (cf.a && i < 5) {
            cf.b("getInstall设置超时时间过小，易造成数据获取失败，请增大超时时间或调整调用时机", new Object[0]);
        }
        a.a((Boolean) false, i, appInstallListener);
    }

    public static void getInstallCanRetry(AppInstallRetryAdapter appInstallRetryAdapter, int i) {
        if (!a()) {
            appInstallRetryAdapter.onInstallFinish(null, new Error(-4, "未调用初始化"));
        } else {
            a.a((Boolean) true, i, (AppInstallListener) appInstallRetryAdapter);
        }
    }

    @Deprecated
    public static void getUpdateApk(GetUpdateApkListener getUpdateApkListener) {
        if (!a()) {
            getUpdateApkListener.onGetFinish(null);
        } else {
            a.a(getUpdateApkListener);
        }
    }

    public static String getVersion() {
        return "2.6.1";
    }

    public static boolean getWakeUp(Intent intent, AppWakeUpListener appWakeUpListener) {
        if (!a() || !a(intent)) {
            return false;
        }
        a.a(intent, appWakeUpListener);
        return true;
    }

    public static void getWakeUpAlwaysCallback(Intent intent, AppWakeUpListener appWakeUpListener) {
        if (!a()) {
            appWakeUpListener.onWakeUpFinish(null, new Error(-8, "未初始化"));
        } else if (a(intent)) {
            a.a(intent, appWakeUpListener);
        } else {
            appWakeUpListener.onWakeUpFinish(null, new Error(-7, "data 不匹配"));
        }
    }

    public static boolean getWakeUpYYB(Activity activity, Intent intent, AppWakeUpListener appWakeUpListener) {
        if (!a()) {
            return false;
        }
        if (a(intent)) {
            a.a(intent, appWakeUpListener);
            return true;
        } else if (!a(activity, intent)) {
            return false;
        } else {
            a.a(appWakeUpListener);
            return true;
        }
    }

    public static void getWakeUpYYBAlwaysCallback(Activity activity, Intent intent, AppWakeUpListener appWakeUpListener) {
        if (!a()) {
            appWakeUpListener.onWakeUpFinish(null, new Error(-8, "未初始化"));
        } else if (a(intent)) {
            a.a(intent, appWakeUpListener);
        } else if (a(activity, intent)) {
            a.a(appWakeUpListener);
        } else {
            appWakeUpListener.onWakeUpFinish(null, new Error(-7, "data 不匹配"));
        }
    }

    public static void init(Context context) {
        init(context, Configuration.getDefault());
    }

    public static void init(Context context, Configuration configuration) {
        String a2 = ch.a(context);
        if (!TextUtils.isEmpty(a2)) {
            init(context, a2, configuration);
            return;
        }
        throw new IllegalArgumentException("请在AndroidManifest.xml中配置AppInstall提供的AppKey");
    }

    public static void init(Context context, String str) {
        init(context, str, Configuration.getDefault());
    }

    public static void init(Context context, String str, Configuration configuration) {
        if (context != null) {
            WeakReference weakReference = null;
            if (context instanceof Activity) {
                weakReference = new WeakReference((Activity) context);
            }
            Context applicationContext = context.getApplicationContext();
            if (!TextUtils.isEmpty(str)) {
                if (cf.a) {
                    cf.a("SDK Version : " + getVersion(), new Object[0]);
                }
                if (!a(applicationContext) && cf.a) {
                    cf.c("多个进程调用init，将导致获取参数失败，统计数据异常", new Object[0]);
                }
                if (f == null) {
                    f = Boolean.valueOf(ch.b(applicationContext));
                }
                if (configuration == null) {
                    configuration = Configuration.getDefault();
                }
                synchronized (AppInstall.class) {
                    if (!b) {
                        if (a == null) {
                            a = b.a(applicationContext, str, configuration);
                            a.a(f.booleanValue(), weakReference);
                        }
                        b = true;
                    }
                }
                return;
            }
            throw new IllegalArgumentException("请前往AppInstall控制台的 “Android集成” -> “Android应用配置” 中获取AppKey");
        }
        throw new IllegalArgumentException("context不能为空");
    }

    @Deprecated
    public static void initWithPermission(Activity activity, Configuration configuration) {
        initWithPermission(activity, configuration, null);
    }

    @Deprecated
    public static void initWithPermission(Activity activity, Configuration configuration, Runnable runnable) {
        if (cf.a) {
            cf.b("initWithPermission 方法在后续版本中将被移除，请自行进行权限申请", new Object[0]);
        }
        if (!ci.a(activity)) {
            ci.a(activity, new String[]{"android.permission.READ_PHONE_STATE"}, 987);
            c = activity.getApplicationContext();
            d = runnable;
            e = configuration;
            return;
        }
        a(activity.getApplicationContext(), configuration, runnable);
    }

    public static void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Context context = c;
        if (context != null && i == 987) {
            a(context, e, d);
        }
    }

    public static void reportEffectPoint(String str, long j) {
        if (a()) {
            a.a(str, j);
        }
    }

    public static void reportRegister() {
        if (a()) {
            a.a();
        }
    }

    public static void setDebug(boolean z) {
        cf.a = z;
    }

    @Deprecated
    public static void setEncrypt(boolean z) {
        f = Boolean.valueOf(z);
    }
}
