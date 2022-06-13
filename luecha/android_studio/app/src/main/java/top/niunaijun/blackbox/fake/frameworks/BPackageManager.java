package top.niunaijun.blackbox.fake.frameworks;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.RemoteException;
import java.util.Collections;
import java.util.List;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.core.system.ServiceManager;
import top.niunaijun.blackbox.core.system.pm.IBPackageManagerService;
import top.niunaijun.blackbox.entity.pm.InstallOption;
import top.niunaijun.blackbox.entity.pm.InstallResult;
import top.niunaijun.blackbox.entity.pm.InstalledPackage;

/* loaded from: classes4.dex */
public class BPackageManager {
    private static final BPackageManager sPackageManager = new BPackageManager();
    private IBPackageManagerService mService;

    public static BPackageManager get() {
        return sPackageManager;
    }

    public Intent getLaunchIntentForPackage(String str, int i) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.INFO");
        intent.setPackage(str);
        List<ResolveInfo> queryIntentActivities = queryIntentActivities(intent, 0, intent.resolveTypeIfNeeded(BlackBoxCore.getContext().getContentResolver()), i);
        if (queryIntentActivities == null || queryIntentActivities.size() <= 0) {
            intent.removeCategory("android.intent.category.INFO");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(str);
            queryIntentActivities = queryIntentActivities(intent, 0, intent.resolveTypeIfNeeded(BlackBoxCore.getContext().getContentResolver()), i);
        }
        if (queryIntentActivities == null || queryIntentActivities.size() <= 0) {
            return null;
        }
        Intent intent2 = new Intent(intent);
        intent2.setFlags(268435456);
        intent2.setClassName(queryIntentActivities.get(0).activityInfo.packageName, queryIntentActivities.get(0).activityInfo.name);
        return intent2;
    }

    public ResolveInfo resolveService(Intent intent, int i, String str, int i2) {
        try {
            return getService().resolveService(intent, i, str, i2);
        } catch (RemoteException e) {
            crash(e);
            return null;
        }
    }

    public ResolveInfo resolveActivity(Intent intent, int i, String str, int i2) {
        try {
            return getService().resolveActivity(intent, i, str, i2);
        } catch (RemoteException e) {
            crash(e);
            return null;
        }
    }

    public ProviderInfo resolveContentProvider(String str, int i, int i2) {
        try {
            return getService().resolveContentProvider(str, i, i2);
        } catch (RemoteException e) {
            crash(e);
            return null;
        }
    }

    public ResolveInfo resolveIntent(Intent intent, String str, int i, int i2) {
        try {
            return getService().resolveIntent(intent, str, i, i2);
        } catch (RemoteException e) {
            crash(e);
            return null;
        }
    }

    public ApplicationInfo getApplicationInfo(String str, int i, int i2) {
        try {
            return getService().getApplicationInfo(str, i, i2);
        } catch (RemoteException e) {
            crash(e);
            return null;
        }
    }

    public PackageInfo getPackageInfo(String str, int i, int i2) {
        try {
            return getService().getPackageInfo(str, i, i2);
        } catch (RemoteException e) {
            crash(e);
            return null;
        }
    }

    public ServiceInfo getServiceInfo(ComponentName componentName, int i, int i2) {
        try {
            return getService().getServiceInfo(componentName, i, i2);
        } catch (RemoteException e) {
            crash(e);
            return null;
        }
    }

    public ActivityInfo getReceiverInfo(ComponentName componentName, int i, int i2) {
        try {
            return getService().getReceiverInfo(componentName, i, i2);
        } catch (RemoteException e) {
            crash(e);
            return null;
        }
    }

    public ActivityInfo getActivityInfo(ComponentName componentName, int i, int i2) {
        try {
            return getService().getActivityInfo(componentName, i, i2);
        } catch (RemoteException e) {
            crash(e);
            return null;
        }
    }

    public ProviderInfo getProviderInfo(ComponentName componentName, int i, int i2) {
        try {
            return getService().getProviderInfo(componentName, i, i2);
        } catch (RemoteException e) {
            crash(e);
            return null;
        }
    }

    public List<ResolveInfo> queryIntentActivities(Intent intent, int i, String str, int i2) {
        try {
            return getService().queryIntentActivities(intent, i, str, i2);
        } catch (RemoteException e) {
            crash(e);
            return null;
        }
    }

    public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i, String str, int i2) {
        try {
            return getService().queryBroadcastReceivers(intent, i, str, i2);
        } catch (RemoteException e) {
            crash(e);
            return null;
        }
    }

    public List<ProviderInfo> queryContentProviders(String str, int i, int i2, int i3) {
        try {
            return getService().queryContentProviders(str, i, i2, i3);
        } catch (RemoteException e) {
            crash(e);
            return null;
        }
    }

    public InstallResult installPackageAsUser(String str, InstallOption installOption, int i) {
        try {
            return getService().installPackageAsUser(str, installOption, i);
        } catch (RemoteException e) {
            crash(e);
            return null;
        }
    }

    public List<ApplicationInfo> getInstalledApplications(int i, int i2) {
        try {
            return getService().getInstalledApplications(i, i2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return Collections.emptyList();
        }
    }

    public List<PackageInfo> getInstalledPackages(int i, int i2) {
        try {
            return getService().getInstalledPackages(i, i2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return Collections.emptyList();
        }
    }

    public void uninstallPackageAsUser(String str, int i) {
        try {
            getService().uninstallPackageAsUser(str, i);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void uninstallPackage(String str) {
        try {
            getService().uninstallPackage(str);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public boolean isInstalled(String str, int i) {
        try {
            return getService().isInstalled(str, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<InstalledPackage> getInstalledPackagesAsUser(int i) {
        try {
            return getService().getInstalledPackagesAsUser(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return Collections.emptyList();
        }
    }

    private void crash(Throwable th) {
        th.printStackTrace();
    }

    private IBPackageManagerService getService() {
        IBPackageManagerService iBPackageManagerService = this.mService;
        if (iBPackageManagerService != null && iBPackageManagerService.asBinder().isBinderAlive()) {
            return this.mService;
        }
        this.mService = IBPackageManagerService.Stub.asInterface(BlackBoxCore.get().getService(ServiceManager.PACKAGE_MANAGER));
        return getService();
    }
}
