package top.niunaijun.blackbox.app;

import android.app.Application;
import android.app.Instrumentation;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.os.Build;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import reflection.android.app.ActivityThread;
import reflection.android.app.ContextImpl;
import reflection.android.app.LoadedApk;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.core.IBActivityThread;
import top.niunaijun.blackbox.core.IOCore;
import top.niunaijun.blackbox.core.VMCore;
import top.niunaijun.blackbox.entity.AppConfig;
import top.niunaijun.blackbox.entity.dump.DumpResult;
import top.niunaijun.blackbox.utils.FileUtils;

/* loaded from: classes4.dex */
public class BActivityThread extends IBActivityThread.Stub {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String TAG = "BActivityThread";
    private static BActivityThread sBActivityThread;
    private AppConfig mAppConfig;
    private AppBindData mBoundApplication;
    private Application mInitialApplication;
    private final List<ProviderInfo> mProviders = new ArrayList();

    /* loaded from: classes4.dex */
    public static class AppBindData {
        ApplicationInfo appInfo;
        Object info;
        String processName;
        List<ProviderInfo> providers;
    }

    public static BActivityThread currentActivityThread() {
        if (sBActivityThread == null) {
            synchronized (BActivityThread.class) {
                if (sBActivityThread == null) {
                    sBActivityThread = new BActivityThread();
                }
            }
        }
        return sBActivityThread;
    }

    public static synchronized AppConfig getAppConfig() {
        AppConfig appConfig;
        synchronized (BActivityThread.class) {
            appConfig = currentActivityThread().mAppConfig;
        }
        return appConfig;
    }

    public static List<ProviderInfo> getProviders() {
        return currentActivityThread().mProviders;
    }

    public static String getAppProcessName() {
        if (getAppConfig() != null) {
            return getAppConfig().processName;
        }
        if (currentActivityThread().mBoundApplication != null) {
            return currentActivityThread().mBoundApplication.processName;
        }
        return null;
    }

    public static String getAppPackageName() {
        if (getAppConfig() != null) {
            return getAppConfig().packageName;
        }
        if (currentActivityThread().mInitialApplication != null) {
            return currentActivityThread().mInitialApplication.getPackageName();
        }
        return null;
    }

    public static Application getApplication() {
        return currentActivityThread().mInitialApplication;
    }

    public static int getAppPid() {
        if (getAppConfig() == null) {
            return -1;
        }
        return getAppConfig().bpid;
    }

    public static int getAppUid() {
        if (getAppConfig() == null) {
            return 10000;
        }
        return getAppConfig().buid;
    }

    public static int getBaseAppUid() {
        if (getAppConfig() == null) {
            return 10000;
        }
        return getAppConfig().baseBUid;
    }

    public static int getUid() {
        if (getAppConfig() == null) {
            return -1;
        }
        return getAppConfig().uid;
    }

    public static int getUserId() {
        if (getAppConfig() == null) {
            return 0;
        }
        return getAppConfig().userId;
    }

    public void initProcess(AppConfig appConfig) {
        if (this.mAppConfig == null) {
            this.mAppConfig = appConfig;
            return;
        }
        throw new RuntimeException("reject init process: " + appConfig.processName + ", this process is : " + this.mAppConfig.processName);
    }

    public boolean isInit() {
        return this.mBoundApplication != null;
    }

    public void bindApplication(String str, String str2) {
        if (this.mAppConfig != null) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                ConditionVariable conditionVariable = new ConditionVariable();
                new Handler(Looper.getMainLooper()).post(new Runnable(str, str2, conditionVariable) { // from class: top.niunaijun.blackbox.app.-$$Lambda$BActivityThread$JuC3pNbR721xFVnvHESqsb57wK4
                    public final /* synthetic */ String f$1;
                    public final /* synthetic */ String f$2;
                    public final /* synthetic */ ConditionVariable f$3;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                        this.f$3 = r4;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        BActivityThread.this.lambda$bindApplication$0$BActivityThread(this.f$1, this.f$2, this.f$3);
                    }
                });
                conditionVariable.block();
                return;
            }
            handleBindApplication(str, str2);
        }
    }

    public /* synthetic */ void lambda$bindApplication$0$BActivityThread(String str, String str2, ConditionVariable conditionVariable) {
        handleBindApplication(str, str2);
        conditionVariable.open();
    }

    private synchronized void handleBindApplication(String str, String str2) {
        ClassLoader classLoader;
        DumpResult dumpResult = new DumpResult();
        dumpResult.packageName = str;
        dumpResult.dir = new File(BlackBoxCore.get().getDexDumpDir(), str).getAbsolutePath();
        PackageInfo packageInfo = BlackBoxCore.getBPackageManager().getPackageInfo(str, 8, getUserId());
        if (packageInfo != null) {
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (packageInfo.providers == null) {
                packageInfo.providers = new ProviderInfo[0];
            }
            this.mProviders.addAll(Arrays.asList(packageInfo.providers));
            Object obj = ActivityThread.mBoundApplication.get(BlackBoxCore.mainThread());
            Context createPackageContext = createPackageContext(applicationInfo);
            Object obj2 = ContextImpl.mPackageInfo.get(createPackageContext);
            LoadedApk.mSecurityViolation.set(obj2, false);
            LoadedApk.mApplicationInfo.set(obj2, applicationInfo);
            FileUtils.deleteDir(new File(BlackBoxCore.get().getDexDumpDir(), str));
            VMCore.init(Build.VERSION.SDK_INT);
            IOCore.get().enableRedirect(createPackageContext);
            AppBindData appBindData = new AppBindData();
            appBindData.appInfo = applicationInfo;
            appBindData.processName = str2;
            appBindData.info = obj2;
            appBindData.providers = this.mProviders;
            ActivityThread.AppBindData.instrumentationName.set(obj, new ComponentName(appBindData.appInfo.packageName, Instrumentation.class.getName()));
            ActivityThread.AppBindData.appInfo.set(obj, appBindData.appInfo);
            ActivityThread.AppBindData.info.set(obj, appBindData.info);
            ActivityThread.AppBindData.processName.set(obj, appBindData.processName);
            ActivityThread.AppBindData.providers.set(obj, appBindData.providers);
            this.mBoundApplication = appBindData;
            BlackBoxCore.get().getAppLifecycleCallback().beforeCreateApplication(str, str2, createPackageContext);
            LoadedApk.getClassloader.call(obj2, new Object[0]);
            Application call = LoadedApk.makeApplication.call(obj2, false, null);
            this.mInitialApplication = call;
            ActivityThread.mInitialApplication.set(BlackBoxCore.mainThread(), this.mInitialApplication);
            if (Objects.equals(str, str2)) {
                if (call == null) {
                    classLoader = LoadedApk.getClassloader.call(obj2, new Object[0]);
                } else {
                    classLoader = call.getClassLoader();
                }
                handleDumpDex(str, dumpResult, classLoader);
            }
        }
    }

    private void handleDumpDex(String str, DumpResult dumpResult, ClassLoader classLoader) {
        new Thread(new Runnable(classLoader, str, dumpResult) { // from class: top.niunaijun.blackbox.app.-$$Lambda$BActivityThread$J_ssE6qu-NFT46r7ZR3wOo_LxUU
            public final /* synthetic */ ClassLoader f$1;
            public final /* synthetic */ String f$2;
            public final /* synthetic */ DumpResult f$3;

            {
                this.f$1 = r2;
                this.f$2 = r3;
                this.f$3 = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                BActivityThread.this.lambda$handleDumpDex$1$BActivityThread(this.f$1, this.f$2, this.f$3);
            }
        }).start();
    }

    public /* synthetic */ void lambda$handleDumpDex$1$BActivityThread(ClassLoader classLoader, String str, DumpResult dumpResult) {
        try {
            Thread.sleep(500);
        } catch (InterruptedException unused) {
        }
        try {
            VMCore.cookieDumpDex(classLoader, str);
        } finally {
            this.mAppConfig = null;
            File file = new File(dumpResult.dir);
            if (!file.exists() || file.listFiles().length == 0) {
                BlackBoxCore.getBDumpManager().noticeMonitor(dumpResult.dumpError("not found dex file"));
            } else {
                BlackBoxCore.getBDumpManager().noticeMonitor(dumpResult.dumpSuccess());
            }
            BlackBoxCore.get().uninstallPackage(str);
        }
    }

    private Context createPackageContext(ApplicationInfo applicationInfo) {
        try {
            return BlackBoxCore.getContext().createPackageContext(applicationInfo.packageName, 3);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // top.niunaijun.blackbox.core.IBActivityThread
    public IBinder getActivityThread() {
        return ActivityThread.getApplicationThread.call(BlackBoxCore.mainThread(), new Object[0]);
    }

    @Override // top.niunaijun.blackbox.core.IBActivityThread
    public void bindApplication() {
        if (!isInit()) {
            bindApplication(getAppPackageName(), getAppProcessName());
        }
    }
}
