package top.niunaijun.blackbox.core.system.pm;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Binder;
import android.os.RemoteException;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.core.env.BEnvironment;
import top.niunaijun.blackbox.core.system.BProcessManager;
import top.niunaijun.blackbox.core.system.ISystemService;
import top.niunaijun.blackbox.core.system.pm.BPackage;
import top.niunaijun.blackbox.core.system.pm.IBPackageManagerService;
import top.niunaijun.blackbox.core.system.user.BUserManagerService;
import top.niunaijun.blackbox.entity.pm.InstallOption;
import top.niunaijun.blackbox.entity.pm.InstallResult;
import top.niunaijun.blackbox.entity.pm.InstalledPackage;
import top.niunaijun.blackbox.utils.AbiUtils;
import top.niunaijun.blackbox.utils.FileUtils;
import top.niunaijun.blackbox.utils.Slog;
import top.niunaijun.blackbox.utils.compat.PackageParserCompat;

/* loaded from: classes3.dex */
public class BPackageManagerService extends IBPackageManagerService.Stub implements ISystemService {
    public static final String TAG = "BPackageManagerService";
    public static BPackageManagerService sService = new BPackageManagerService();
    private static final BUserManagerService sUserManager = BUserManagerService.get();
    final Map<String, BPackageSettings> mPackages;
    private final Settings mSettings;
    private final List<PackageMonitor> mPackageMonitors = new ArrayList();
    final Object mInstallLock = new Object();
    private final ComponentResolver mComponentResolver = new ComponentResolver();

    public static String fixProcessName(String str, String str2) {
        return str2 == null ? str : str2;
    }

    private int updateFlags(int i, int i2) {
        return (i & 786432) != 0 ? i : i | 786432;
    }

    public static BPackageManagerService get() {
        return sService;
    }

    public BPackageManagerService() {
        Settings settings = new Settings();
        this.mSettings = settings;
        this.mPackages = settings.mPackages;
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public ApplicationInfo getApplicationInfo(String str, int i, int i2) {
        if (!sUserManager.exists(i2)) {
            return null;
        }
        if (Objects.equals(str, BlackBoxCore.getHostPkg())) {
            try {
                return BlackBoxCore.getPackageManager().getApplicationInfo(str, i);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                return null;
            }
        } else {
            int updateFlags = updateFlags(i, i2);
            synchronized (this.mPackages) {
                BPackageSettings bPackageSettings = this.mPackages.get(str);
                if (bPackageSettings == null) {
                    return null;
                }
                return PackageManagerCompat.generateApplicationInfo(bPackageSettings.pkg, updateFlags, bPackageSettings.readUserState(i2), i2);
            }
        }
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public ResolveInfo resolveService(Intent intent, int i, String str, int i2) {
        List<ResolveInfo> queryIntentServicesInternal;
        if (sUserManager.exists(i2) && (queryIntentServicesInternal = queryIntentServicesInternal(intent, str, i, i2)) != null && queryIntentServicesInternal.size() >= 1) {
            return queryIntentServicesInternal.get(0);
        }
        return null;
    }

    private List<ResolveInfo> queryIntentServicesInternal(Intent intent, String str, int i, int i2) {
        ComponentName component = intent.getComponent();
        if (component == null && intent.getSelector() != null) {
            intent = intent.getSelector();
            component = intent.getComponent();
        }
        if (component != null) {
            ArrayList arrayList = new ArrayList(1);
            ServiceInfo serviceInfo = getServiceInfo(component, i, i2);
            if (serviceInfo != null) {
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.serviceInfo = serviceInfo;
                arrayList.add(resolveInfo);
            }
            return arrayList;
        }
        synchronized (this.mPackages) {
            String str2 = intent.getPackage();
            if (str2 == null) {
                return null;
            }
            BPackageSettings bPackageSettings = this.mPackages.get(str2);
            if (bPackageSettings != null) {
                return this.mComponentResolver.queryServices(intent, str, i, bPackageSettings.pkg.services, i2);
            }
            return Collections.emptyList();
        }
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public ResolveInfo resolveActivity(Intent intent, int i, String str, int i2) {
        if (!sUserManager.exists(i2)) {
            return null;
        }
        return chooseBestActivity(intent, str, i, queryIntentActivities(intent, str, i, i2));
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public ProviderInfo resolveContentProvider(String str, int i, int i2) {
        if (!sUserManager.exists(i2)) {
            return null;
        }
        return this.mComponentResolver.queryProvider(str, i, i2);
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public ResolveInfo resolveIntent(Intent intent, String str, int i, int i2) {
        if (!sUserManager.exists(i2)) {
            return null;
        }
        return chooseBestActivity(intent, str, i, queryIntentActivities(intent, str, i, i2));
    }

    private ResolveInfo chooseBestActivity(Intent intent, String str, int i, List<ResolveInfo> list) {
        if (list == null) {
            return null;
        }
        int size = list.size();
        if (size == 1) {
            return list.get(0);
        }
        if (size <= 1) {
            return null;
        }
        ResolveInfo resolveInfo = list.get(0);
        ResolveInfo resolveInfo2 = list.get(1);
        if (resolveInfo.priority == resolveInfo2.priority && resolveInfo.preferredOrder == resolveInfo2.preferredOrder && resolveInfo.isDefault == resolveInfo2.isDefault) {
            return null;
        }
        return list.get(0);
    }

    private List<ResolveInfo> queryIntentActivities(Intent intent, String str, int i, int i2) {
        String str2 = intent.getPackage();
        ComponentName component = intent.getComponent();
        if (component == null && intent.getSelector() != null) {
            intent = intent.getSelector();
            component = intent.getComponent();
        }
        if (component != null) {
            ArrayList arrayList = new ArrayList(1);
            ActivityInfo activity = getActivity(component, i, i2);
            if (activity != null) {
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.activityInfo = activity;
                arrayList.add(resolveInfo);
                return arrayList;
            }
        }
        synchronized (this.mPackages) {
            if (str2 == null) {
                return Collections.emptyList();
            }
            return this.mComponentResolver.queryActivities(intent, str, i, i2);
        }
    }

    private ActivityInfo getActivity(ComponentName componentName, int i, int i2) {
        int updateFlags = updateFlags(i, i2);
        synchronized (this.mPackages) {
            BPackage.Activity activity = this.mComponentResolver.getActivity(componentName);
            if (activity == null) {
                return null;
            }
            BPackageSettings bPackageSettings = this.mPackages.get(componentName.getPackageName());
            if (bPackageSettings == null) {
                return null;
            }
            return PackageManagerCompat.generateActivityInfo(activity, updateFlags, bPackageSettings.readUserState(i2), i2);
        }
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public PackageInfo getPackageInfo(String str, int i, int i2) {
        if (!sUserManager.exists(i2)) {
            return null;
        }
        if (Objects.equals(str, BlackBoxCore.getHostPkg())) {
            try {
                return BlackBoxCore.getPackageManager().getPackageInfo(str, i);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                return null;
            }
        } else {
            int updateFlags = updateFlags(i, i2);
            synchronized (this.mPackages) {
                BPackageSettings bPackageSettings = this.mPackages.get(str);
                if (bPackageSettings == null) {
                    return null;
                }
                return PackageManagerCompat.generatePackageInfo(bPackageSettings, updateFlags, bPackageSettings.readUserState(i2), i2);
            }
        }
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public ServiceInfo getServiceInfo(ComponentName componentName, int i, int i2) {
        if (!sUserManager.exists(i2)) {
            return null;
        }
        synchronized (this.mPackages) {
            BPackage.Service service = this.mComponentResolver.getService(componentName);
            if (service == null) {
                return null;
            }
            BPackageSettings bPackageSettings = this.mPackages.get(componentName.getPackageName());
            if (bPackageSettings == null) {
                return null;
            }
            return PackageManagerCompat.generateServiceInfo(service, i, bPackageSettings.readUserState(i2), i2);
        }
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public ActivityInfo getReceiverInfo(ComponentName componentName, int i, int i2) {
        if (!sUserManager.exists(i2)) {
            return null;
        }
        synchronized (this.mPackages) {
            BPackage.Activity receiver = this.mComponentResolver.getReceiver(componentName);
            if (receiver == null) {
                return null;
            }
            BPackageSettings bPackageSettings = this.mPackages.get(componentName.getPackageName());
            if (bPackageSettings == null) {
                return null;
            }
            return PackageManagerCompat.generateActivityInfo(receiver, i, bPackageSettings.readUserState(i2), i2);
        }
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public ActivityInfo getActivityInfo(ComponentName componentName, int i, int i2) {
        if (!sUserManager.exists(i2)) {
            return null;
        }
        synchronized (this.mPackages) {
            BPackage.Activity activity = this.mComponentResolver.getActivity(componentName);
            if (activity == null) {
                return null;
            }
            BPackageSettings bPackageSettings = this.mPackages.get(componentName.getPackageName());
            if (bPackageSettings == null) {
                return null;
            }
            return PackageManagerCompat.generateActivityInfo(activity, i, bPackageSettings.readUserState(i2), i2);
        }
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public ProviderInfo getProviderInfo(ComponentName componentName, int i, int i2) {
        if (!sUserManager.exists(i2)) {
            return null;
        }
        synchronized (this.mPackages) {
            BPackage.Provider provider = this.mComponentResolver.getProvider(componentName);
            if (provider == null) {
                return null;
            }
            BPackageSettings bPackageSettings = this.mPackages.get(componentName.getPackageName());
            if (bPackageSettings == null) {
                return null;
            }
            return PackageManagerCompat.generateProviderInfo(provider, i, bPackageSettings.readUserState(i2), i2);
        }
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public List<ApplicationInfo> getInstalledApplications(int i, int i2) {
        return getInstalledApplicationsListInternal(i, i2, Binder.getCallingUid());
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public List<PackageInfo> getInstalledPackages(int i, int i2) {
        ArrayList arrayList;
        Binder.getCallingUid();
        if (!sUserManager.exists(i2)) {
            return Collections.emptyList();
        }
        synchronized (this.mPackages) {
            ArrayList arrayList2 = new ArrayList(this.mPackages.size());
            for (BPackageSettings bPackageSettings : this.mPackages.values()) {
                PackageInfo packageInfo = getPackageInfo(bPackageSettings.pkg.packageName, i, i2);
                if (packageInfo != null) {
                    arrayList2.add(packageInfo);
                }
            }
            arrayList = new ArrayList(arrayList2);
        }
        return arrayList;
    }

    private List<ApplicationInfo> getInstalledApplicationsListInternal(int i, int i2, int i3) {
        ArrayList arrayList;
        if (!sUserManager.exists(i2)) {
            return Collections.emptyList();
        }
        synchronized (this.mPackages) {
            arrayList = new ArrayList(this.mPackages.size());
            for (BPackageSettings bPackageSettings : this.mPackages.values()) {
                ApplicationInfo generateApplicationInfo = PackageManagerCompat.generateApplicationInfo(bPackageSettings.pkg, i, bPackageSettings.readUserState(i2), i2);
                if (generateApplicationInfo != null) {
                    arrayList.add(generateApplicationInfo);
                }
            }
        }
        return arrayList;
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public List<ResolveInfo> queryIntentActivities(Intent intent, int i, String str, int i2) throws RemoteException {
        if (!sUserManager.exists(i2)) {
            return Collections.emptyList();
        }
        String str2 = intent.getPackage();
        ComponentName component = intent.getComponent();
        if (component == null && intent.getSelector() != null) {
            intent = intent.getSelector();
            component = intent.getComponent();
        }
        if (component != null) {
            ArrayList arrayList = new ArrayList(1);
            ActivityInfo activityInfo = getActivityInfo(component, i, i2);
            if (activityInfo != null) {
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.activityInfo = activityInfo;
                arrayList.add(resolveInfo);
            }
            return arrayList;
        }
        synchronized (this.mPackages) {
            if (str2 == null) {
                return Collections.emptyList();
            }
            BPackageSettings bPackageSettings = this.mPackages.get(str2);
            List<ResolveInfo> list = null;
            if (bPackageSettings != null) {
                list = this.mComponentResolver.queryActivities(intent, str, i, bPackageSettings.pkg.activities, i2);
            }
            if ((list == null || list.size() == 0) && list == null) {
                list = new ArrayList<>();
            }
            return list;
        }
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i, String str, int i2) throws RemoteException {
        if (!sUserManager.exists(i2)) {
            return Collections.emptyList();
        }
        ComponentName component = intent.getComponent();
        if (component == null && intent.getSelector() != null) {
            intent = intent.getSelector();
            component = intent.getComponent();
        }
        if (component != null) {
            ArrayList arrayList = new ArrayList(1);
            ActivityInfo receiverInfo = getReceiverInfo(component, i, i2);
            if (receiverInfo != null) {
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.activityInfo = receiverInfo;
                arrayList.add(resolveInfo);
            }
            return arrayList;
        }
        synchronized (this.mPackages) {
            BPackageSettings bPackageSettings = this.mPackages.get(intent.getPackage());
            if (bPackageSettings != null) {
                return this.mComponentResolver.queryReceivers(intent, str, i, bPackageSettings.pkg.receivers, i2);
            }
            return Collections.emptyList();
        }
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public List<ProviderInfo> queryContentProviders(String str, int i, int i2, int i3) throws RemoteException {
        if (!sUserManager.exists(i3)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        arrayList.addAll(this.mComponentResolver.queryProviders(str, (String) null, i2, i3));
        return arrayList;
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public InstallResult installPackageAsUser(String str, InstallOption installOption, int i) {
        InstallResult installPackageAsUserLocked;
        synchronized (this.mInstallLock) {
            installPackageAsUserLocked = installPackageAsUserLocked(str, installOption, i);
        }
        return installPackageAsUserLocked;
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public void uninstallPackageAsUser(String str, int i) throws RemoteException {
        synchronized (this.mInstallLock) {
            synchronized (this.mPackages) {
                BPackageSettings bPackageSettings = this.mPackages.get(str);
                if (bPackageSettings != null) {
                    if (isInstalled(str, i)) {
                        boolean z = true;
                        if (bPackageSettings.getUserState().size() > 1) {
                            z = false;
                        }
                        BProcessManager.get().killPackageAsUser(str, i);
                        BPackageInstallerService.get().uninstallPackageAsUser(bPackageSettings, z, i);
                        if (z) {
                            this.mPackages.remove(str);
                            this.mComponentResolver.removeAllComponents(bPackageSettings.pkg);
                            this.mSettings.scanPackage();
                        } else {
                            bPackageSettings.removeUser(i);
                            bPackageSettings.save();
                        }
                        onPackageUninstalled(str, i);
                    }
                }
            }
        }
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public void uninstallPackage(String str) {
        synchronized (this.mInstallLock) {
            synchronized (this.mPackages) {
                BPackageSettings bPackageSettings = this.mPackages.get(str);
                if (bPackageSettings != null) {
                    BProcessManager.get().killAllByPackageName(str);
                    for (Integer num : bPackageSettings.getUserIds()) {
                        if (BPackageInstallerService.get().uninstallPackageAsUser(bPackageSettings, true, num.intValue()) >= 0) {
                            onPackageUninstalled(str, num.intValue());
                        }
                    }
                    this.mPackages.remove(str);
                    this.mComponentResolver.removeAllComponents(bPackageSettings.pkg);
                    this.mSettings.scanPackage();
                }
            }
        }
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public void deleteUser(int i) throws RemoteException {
        synchronized (this.mPackages) {
            for (BPackageSettings bPackageSettings : this.mPackages.values()) {
                uninstallPackageAsUser(bPackageSettings.pkg.packageName, i);
            }
        }
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public boolean isInstalled(String str, int i) {
        if (!sUserManager.exists(i)) {
            return false;
        }
        synchronized (this.mPackages) {
            BPackageSettings bPackageSettings = this.mPackages.get(str);
            if (bPackageSettings == null) {
                return false;
            }
            return bPackageSettings.getInstalled(i);
        }
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageManagerService
    public List<InstalledPackage> getInstalledPackagesAsUser(int i) {
        ArrayList arrayList;
        if (!sUserManager.exists(i)) {
            return Collections.emptyList();
        }
        synchronized (this.mPackages) {
            arrayList = new ArrayList();
            for (BPackageSettings bPackageSettings : this.mPackages.values()) {
                if (bPackageSettings.getInstalled(i)) {
                    InstalledPackage installedPackage = new InstalledPackage();
                    installedPackage.userId = i;
                    installedPackage.packageName = bPackageSettings.pkg.packageName;
                    arrayList.add(installedPackage);
                }
            }
        }
        return arrayList;
    }

    private InstallResult installPackageAsUserLocked(String str, InstallOption installOption, int i) {
        Throwable th;
        File file;
        InstallResult installResult = new InstallResult();
        File file2 = null;
        try {
            BUserManagerService bUserManagerService = sUserManager;
            if (!bUserManagerService.exists(i)) {
                bUserManagerService.createUser(i);
            }
            if (installOption.isFlag(8)) {
                File cacheDir = BEnvironment.getCacheDir();
                file = new File(cacheDir, UUID.randomUUID().toString() + ".apk");
                try {
                    FileUtils.copyFile(BlackBoxCore.getContext().getContentResolver().openInputStream(Uri.parse(str)), file);
                } catch (Throwable th2) {
                    th = th2;
                    file2 = file;
                    try {
                        th.printStackTrace();
                        if (file2 != null && installOption.isFlag(8)) {
                            FileUtils.deleteDir(file2);
                        }
                        return installResult;
                    } finally {
                        if (file2 != null && installOption.isFlag(8)) {
                            FileUtils.deleteDir(file2);
                        }
                    }
                }
            } else {
                file = new File(str);
            }
            if (!AbiUtils.isSupport(file2)) {
                return installResult.installError(BlackBoxCore.is64Bit() ? "not support armeabi-v7a abi" : "not support arm64-v8a abi");
            }
            PackageParser.Package parserApk = parserApk(file2.getAbsolutePath());
            if (parserApk == null) {
                InstallResult installError = installResult.installError("parser apk error.");
                if (file2 != null && installOption.isFlag(8)) {
                    FileUtils.deleteDir(file2);
                }
                return installError;
            }
            installResult.packageName = parserApk.packageName;
            BPackageSettings packageLPw = this.mSettings.getPackageLPw(parserApk.packageName, parserApk);
            packageLPw.installOption = installOption;
            BProcessManager.get().killPackageAsUser(parserApk.packageName, i);
            if (BPackageInstallerService.get().installPackageAsUser(packageLPw, i) < 0) {
                InstallResult installError2 = installResult.installError("install apk error.");
                if (file2 != null && installOption.isFlag(8)) {
                    FileUtils.deleteDir(file2);
                }
                return installError2;
            }
            synchronized (this.mPackages) {
                packageLPw.setInstalled(true, i);
                packageLPw.save();
            }
            this.mComponentResolver.addAllComponents(packageLPw.pkg);
            this.mSettings.scanPackage();
            onPackageInstalled(packageLPw.pkg.packageName, i);
            if (file2 != null && installOption.isFlag(8)) {
                FileUtils.deleteDir(file2);
            }
            return installResult;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private PackageParser.Package parserApk(String str) {
        try {
            PackageParser createParser = PackageParserCompat.createParser(new File(str));
            PackageParser.Package parsePackage = PackageParserCompat.parsePackage(createParser, new File(str), 0);
            PackageParserCompat.collectCertificates(createParser, parsePackage, 0);
            return parsePackage;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public int getAppId(String str) {
        BPackageSettings bPackageSettings = this.mPackages.get(str);
        if (bPackageSettings != null) {
            return bPackageSettings.appId;
        }
        return -1;
    }

    Settings getSettings() {
        return this.mSettings;
    }

    public void addPackageMonitor(PackageMonitor packageMonitor) {
        this.mPackageMonitors.add(packageMonitor);
    }

    public void removePackageMonitor(PackageMonitor packageMonitor) {
        this.mPackageMonitors.add(packageMonitor);
    }

    public void onPackageUninstalled(String str, int i) {
        for (PackageMonitor packageMonitor : this.mPackageMonitors) {
            packageMonitor.onPackageUninstalled(str, i);
        }
        Slog.d(TAG, "onPackageUninstalled: " + str + ", userId: " + i);
    }

    void onPackageInstalled(String str, int i) {
        for (PackageMonitor packageMonitor : this.mPackageMonitors) {
            packageMonitor.onPackageInstalled(str, i);
        }
        Slog.d(TAG, "onPackageInstalled: " + str + ", userId: " + i);
    }

    @Override // top.niunaijun.blackbox.core.system.ISystemService
    public void systemReady() {
        this.mSettings.scanPackage();
        for (BPackageSettings bPackageSettings : this.mPackages.values()) {
            this.mComponentResolver.addAllComponents(bPackageSettings.pkg);
        }
    }
}
