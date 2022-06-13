package top.niunaijun.blackbox;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.IBinder;
import android.os.Process;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import me.weishu.reflection.Reflection;
import reflection.android.app.ActivityThread;
import top.niunaijun.blackbox.app.configuration.AppLifecycleCallback;
import top.niunaijun.blackbox.app.configuration.ClientConfiguration;
import top.niunaijun.blackbox.core.system.ServiceManager;
import top.niunaijun.blackbox.entity.pm.InstallOption;
import top.niunaijun.blackbox.entity.pm.InstallResult;
import top.niunaijun.blackbox.fake.delegate.ContentProviderDelegate;
import top.niunaijun.blackbox.fake.frameworks.BActivityManager;
import top.niunaijun.blackbox.fake.frameworks.BDumpManager;
import top.niunaijun.blackbox.fake.frameworks.BPackageManager;
import top.niunaijun.blackbox.fake.frameworks.BStorageManager;
import top.niunaijun.blackbox.fake.hook.HookManager;
import top.niunaijun.blackbox.proxy.ProxyManifest;
import top.niunaijun.blackbox.utils.FileUtils;
import top.niunaijun.blackbox.utils.ShellUtils;
import top.niunaijun.blackbox.utils.compat.BuildCompat;
import top.niunaijun.blackbox.utils.compat.BundleCompat;
import top.niunaijun.blackbox.utils.provider.ProviderCall;

/* loaded from: classes3.dex */
public class BlackBoxCore extends ClientConfiguration {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String TAG = "BlackBoxCore";
    public static final int USER_ID = 0;
    private static final BlackBoxCore sBlackBoxCore = new BlackBoxCore();
    private static Context sContext;
    private ClientConfiguration mClientConfiguration;
    private ProcessType mProcessType;
    private final Map<String, IBinder> mServices = new HashMap();
    private AppLifecycleCallback mAppLifecycleCallback = AppLifecycleCallback.EMPTY;

    /* loaded from: classes3.dex */
    public enum ProcessType {
        Server,
        BAppClient,
        Main
    }

    public static BlackBoxCore get() {
        return sBlackBoxCore;
    }

    public static PackageManager getPackageManager() {
        return sContext.getPackageManager();
    }

    public static String getHostPkg() {
        return get().getHostPackageName();
    }

    public static Context getContext() {
        return sContext;
    }

    public void doAttachBaseContext(Context context, ClientConfiguration clientConfiguration) {
        if (clientConfiguration != null) {
            Reflection.unseal(context);
            sContext = context;
            this.mClientConfiguration = clientConfiguration;
            clientConfiguration.init();
            String processName = getProcessName(getContext());
            if (processName.equals(getHostPkg())) {
                this.mProcessType = ProcessType.Main;
                startLogcat();
            } else if (processName.endsWith(getContext().getString(R.string.black_box_service_name))) {
                this.mProcessType = ProcessType.Server;
            } else {
                this.mProcessType = ProcessType.BAppClient;
            }
            if (get().isVirtualProcess()) {
                processName.endsWith("p0");
            }
            isServerProcess();
            HookManager.get().init();
            return;
        }
        throw new IllegalArgumentException("ClientConfiguration is null!");
    }

    public void doCreate() {
        if (isVirtualProcess()) {
            ContentProviderDelegate.init();
        }
        if (!isServerProcess()) {
            initService();
        }
    }

    private void initService() {
        get().getService(ServiceManager.ACTIVITY_MANAGER);
        get().getService(ServiceManager.PACKAGE_MANAGER);
        get().getService(ServiceManager.STORAGE_MANAGER);
        get().getService(ServiceManager.DUMP_MANAGER);
    }

    public static Object mainThread() {
        return ActivityThread.currentActivityThread.call(new Object[0]);
    }

    public void startActivity(Intent intent, int i) {
        getBActivityManager().startActivity(intent, i);
    }

    public static BPackageManager getBPackageManager() {
        return BPackageManager.get();
    }

    public static BActivityManager getBActivityManager() {
        return BActivityManager.get();
    }

    public static BStorageManager getBStorageManager() {
        return BStorageManager.get();
    }

    public static BDumpManager getBDumpManager() {
        return BDumpManager.get();
    }

    public boolean launchApk(String str) {
        Intent launchIntentForPackage = getBPackageManager().getLaunchIntentForPackage(str, 0);
        if (launchIntentForPackage == null) {
            return false;
        }
        startActivity(launchIntentForPackage, 0);
        return true;
    }

    public boolean isInstalled(String str) {
        return getBPackageManager().isInstalled(str, 0);
    }

    public void uninstallPackage(String str) {
        getBPackageManager().uninstallPackageAsUser(str, 0);
    }

    public InstallResult installPackage(String str) {
        try {
            return getBPackageManager().installPackageAsUser(getPackageManager().getPackageInfo(str, 0).applicationInfo.sourceDir, InstallOption.installBySystem(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return new InstallResult().installError(e.getMessage());
        }
    }

    public InstallResult installPackage(File file) {
        return getBPackageManager().installPackageAsUser(file.getAbsolutePath(), InstallOption.installByStorage(), 0);
    }

    public InstallResult installPackage(Uri uri) {
        return getBPackageManager().installPackageAsUser(uri.toString(), InstallOption.installByStorage().makeUriFile(), 0);
    }

    public AppLifecycleCallback getAppLifecycleCallback() {
        return this.mAppLifecycleCallback;
    }

    public void setAppLifecycleCallback(AppLifecycleCallback appLifecycleCallback) {
        if (appLifecycleCallback != null) {
            this.mAppLifecycleCallback = appLifecycleCallback;
            return;
        }
        throw new IllegalArgumentException("AppLifecycleCallback is null!");
    }

    public IBinder getService(String str) {
        IBinder iBinder = this.mServices.get(str);
        if (iBinder != null && iBinder.isBinderAlive()) {
            return iBinder;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_VM_|_server_name_", str);
        IBinder binder = BundleCompat.getBinder(ProviderCall.callSafely(ProxyManifest.getBindProvider(), "VM", null, bundle), "_VM_|_server_");
        this.mServices.put(str, binder);
        return binder;
    }

    public boolean isVirtualProcess() {
        return this.mProcessType == ProcessType.BAppClient;
    }

    public boolean isMainProcess() {
        return this.mProcessType == ProcessType.Main;
    }

    public boolean isServerProcess() {
        return this.mProcessType == ProcessType.Server;
    }

    @Override // top.niunaijun.blackbox.app.configuration.ClientConfiguration
    public String getHostPackageName() {
        return this.mClientConfiguration.getHostPackageName();
    }

    @Override // top.niunaijun.blackbox.app.configuration.ClientConfiguration
    public String getDexDumpDir() {
        return this.mClientConfiguration.getDexDumpDir();
    }

    @Override // top.niunaijun.blackbox.app.configuration.ClientConfiguration
    public boolean isFixCodeItem() {
        return this.mClientConfiguration.isFixCodeItem();
    }

    @Override // top.niunaijun.blackbox.app.configuration.ClientConfiguration
    public boolean isEnableHookDump() {
        return this.mClientConfiguration.isEnableHookDump();
    }

    private void startLogcat() {
        File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
        File file = new File(externalStoragePublicDirectory, getContext().getPackageName() + "_logcat.txt");
        FileUtils.deleteDir(file);
        ShellUtils.execCommand("logcat -c", false);
        ShellUtils.execCommand("logcat >> " + file.getAbsolutePath() + " &", false);
    }

    private static String getProcessName(Context context) {
        String str;
        int myPid = Process.myPid();
        Iterator<ActivityManager.RunningAppProcessInfo> it = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses().iterator();
        while (true) {
            if (!it.hasNext()) {
                str = null;
                break;
            }
            ActivityManager.RunningAppProcessInfo next = it.next();
            if (next.pid == myPid) {
                str = next.processName;
                break;
            }
        }
        if (str != null) {
            return str;
        }
        throw new RuntimeException("processName = null");
    }

    public static boolean is64Bit() {
        if (BuildCompat.isM()) {
            return Process.is64Bit();
        }
        return Build.CPU_ABI.equals("arm64-v8a");
    }
}
