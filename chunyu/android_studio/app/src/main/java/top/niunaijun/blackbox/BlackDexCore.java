package top.niunaijun.blackbox;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.Uri;
import java.io.File;
import java.util.Iterator;
import top.niunaijun.blackbox.app.configuration.ClientConfiguration;
import top.niunaijun.blackbox.core.system.dump.IBDumpMonitor;
import top.niunaijun.blackbox.entity.pm.InstallResult;

/* loaded from: classes3.dex */
public class BlackDexCore {
    public static final String TAG = "BlackBoxCore";
    private static final BlackDexCore sBlackDexCore = new BlackDexCore();

    public static BlackDexCore get() {
        return sBlackDexCore;
    }

    public void doAttachBaseContext(Context context, ClientConfiguration clientConfiguration) {
        BlackBoxCore.get().doAttachBaseContext(context, clientConfiguration);
    }

    public void doCreate() {
        BlackBoxCore.get().doCreate();
        if (BlackBoxCore.get().isMainProcess()) {
            for (PackageInfo packageInfo : BlackBoxCore.getBPackageManager().getInstalledPackages(0, 0)) {
                BlackBoxCore.get().uninstallPackage(packageInfo.packageName);
            }
        }
    }

    public InstallResult dumpDex(String str) {
        InstallResult installPackage = BlackBoxCore.get().installPackage(str);
        if (!installPackage.success) {
            return null;
        }
        if (BlackBoxCore.get().launchApk(str)) {
            return installPackage;
        }
        BlackBoxCore.get().uninstallPackage(installPackage.packageName);
        return null;
    }

    public InstallResult dumpDex(File file) {
        InstallResult installPackage = BlackBoxCore.get().installPackage(file);
        if (!installPackage.success) {
            return null;
        }
        if (BlackBoxCore.get().launchApk(installPackage.packageName)) {
            return installPackage;
        }
        BlackBoxCore.get().uninstallPackage(installPackage.packageName);
        return null;
    }

    public InstallResult dumpDex(Uri uri) {
        InstallResult installPackage = BlackBoxCore.get().installPackage(uri);
        if (!installPackage.success) {
            return null;
        }
        if (BlackBoxCore.get().launchApk(installPackage.packageName)) {
            return installPackage;
        }
        BlackBoxCore.get().uninstallPackage(installPackage.packageName);
        return null;
    }

    public void registerDumpMonitor(IBDumpMonitor iBDumpMonitor) {
        BlackBoxCore.getBDumpManager().registerMonitor(iBDumpMonitor.asBinder());
    }

    public void unregisterDumpMonitor(IBDumpMonitor iBDumpMonitor) {
        BlackBoxCore.getBDumpManager().unregisterMonitor(iBDumpMonitor.asBinder());
    }

    public boolean isRunning() {
        Iterator<ActivityManager.RunningAppProcessInfo> it = ((ActivityManager) BlackBoxCore.getContext().getSystemService("activity")).getRunningAppProcesses().iterator();
        while (true) {
            if (!it.hasNext()) {
                return false;
            }
            ActivityManager.RunningAppProcessInfo next = it.next();
            for (int i = 0; i < 100; i++) {
                String str = next.processName;
                if (str.endsWith("p" + i)) {
                    return true;
                }
            }
        }
    }

    public boolean isExistDexFile(String str) {
        File[] listFiles = new File(BlackBoxCore.get().getDexDumpDir(), str).listFiles();
        return listFiles != null && listFiles.length > 0;
    }
}
