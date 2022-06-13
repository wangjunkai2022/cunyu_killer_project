package top.niunaijun.blackbox.core.system.pm;

import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ConfigurationInfo;
import android.content.pm.FeatureInfo;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import java.util.HashSet;
import reflection.android.content.pm.ApplicationInfoL;
import reflection.android.content.pm.ApplicationInfoN;
import reflection.android.content.pm.SigningInfo;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.core.env.AppSystemEnv;
import top.niunaijun.blackbox.core.env.BEnvironment;
import top.niunaijun.blackbox.core.system.pm.BPackage;
import top.niunaijun.blackbox.utils.ArrayUtils;
import top.niunaijun.blackbox.utils.FileUtils;
import top.niunaijun.blackbox.utils.compat.BuildCompat;

/* loaded from: classes4.dex */
public class PackageManagerCompat {
    public static PackageInfo generatePackageInfo(BPackageSettings bPackageSettings, int i, BPackageUserState bPackageUserState, int i2) {
        BPackage bPackage;
        if (bPackageSettings == null || (bPackage = bPackageSettings.pkg) == null) {
            return null;
        }
        try {
            return generatePackageInfo(bPackage, i, 0, 0, bPackageUserState, i2);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static PackageInfo generatePackageInfo(BPackage bPackage, int i, long j, long j2, BPackageUserState bPackageUserState, int i2) {
        PackageInfo packageInfo;
        if (!checkUseInstalledOrHidden(i, bPackageUserState, bPackage.applicationInfo)) {
            return null;
        }
        try {
            packageInfo = BlackBoxCore.getPackageManager().getPackageInfo(BlackBoxCore.getHostPkg(), i);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        if (packageInfo == null) {
            return null;
        }
        packageInfo.packageName = bPackage.packageName;
        packageInfo.versionCode = bPackage.mVersionCode;
        packageInfo.versionName = bPackage.mVersionName;
        packageInfo.sharedUserId = bPackage.mSharedUserId;
        packageInfo.sharedUserLabel = bPackage.mSharedUserLabel;
        packageInfo.applicationInfo = generateApplicationInfo(bPackage, i, bPackageUserState, i2);
        packageInfo.firstInstallTime = j;
        packageInfo.lastUpdateTime = j2;
        if (!bPackage.requestedPermissions.isEmpty()) {
            String[] strArr = new String[bPackage.requestedPermissions.size()];
            bPackage.requestedPermissions.toArray(strArr);
            packageInfo.requestedPermissions = strArr;
        }
        if ((i & 256) != 0) {
            packageInfo.gids = new int[0];
        }
        if ((i & 16384) != 0) {
            int size = bPackage.configPreferences != null ? bPackage.configPreferences.size() : 0;
            if (size > 0) {
                packageInfo.configPreferences = new ConfigurationInfo[size];
                bPackage.configPreferences.toArray(packageInfo.configPreferences);
            }
            int size2 = bPackage.reqFeatures != null ? bPackage.reqFeatures.size() : 0;
            if (size2 > 0) {
                packageInfo.reqFeatures = new FeatureInfo[size2];
                bPackage.reqFeatures.toArray(packageInfo.reqFeatures);
            }
        }
        if ((i & 1) != 0) {
            packageInfo.activities = null;
            int size3 = bPackage.activities.size();
            if (size3 > 0) {
                ActivityInfo[] activityInfoArr = new ActivityInfo[size3];
                int i3 = 0;
                int i4 = 0;
                while (i3 < size3) {
                    activityInfoArr[i4] = generateActivityInfo(bPackage.activities.get(i3), i, bPackageUserState, i2);
                    i3++;
                    i4++;
                }
                packageInfo.activities = (ActivityInfo[]) ArrayUtils.trimToSize(activityInfoArr, i4);
            }
        }
        if ((i & 2) != 0) {
            packageInfo.receivers = null;
            int size4 = bPackage.receivers.size();
            if (size4 > 0) {
                ActivityInfo[] activityInfoArr2 = new ActivityInfo[size4];
                int i5 = 0;
                int i6 = 0;
                while (i5 < size4) {
                    activityInfoArr2[i6] = generateActivityInfo(bPackage.receivers.get(i5), i, bPackageUserState, i2);
                    i5++;
                    i6++;
                }
                packageInfo.receivers = (ActivityInfo[]) ArrayUtils.trimToSize(activityInfoArr2, i6);
            }
        }
        if ((i & 4) != 0) {
            packageInfo.services = null;
            int size5 = bPackage.services.size();
            if (size5 > 0) {
                ServiceInfo[] serviceInfoArr = new ServiceInfo[size5];
                int i7 = 0;
                int i8 = 0;
                while (i7 < size5) {
                    serviceInfoArr[i8] = generateServiceInfo(bPackage.services.get(i7), i, bPackageUserState, i2);
                    i7++;
                    i8++;
                }
                packageInfo.services = (ServiceInfo[]) ArrayUtils.trimToSize(serviceInfoArr, i8);
            }
        }
        if ((i & 8) != 0) {
            packageInfo.providers = null;
            int size6 = bPackage.providers.size();
            if (size6 > 0) {
                ProviderInfo[] providerInfoArr = new ProviderInfo[size6];
                int i9 = 0;
                for (int i10 = 0; i10 < size6; i10++) {
                    ProviderInfo generateProviderInfo = generateProviderInfo(bPackage.providers.get(i10), i, bPackageUserState, i2);
                    if (generateProviderInfo != null) {
                        providerInfoArr[i9] = generateProviderInfo;
                        i9++;
                    }
                }
                packageInfo.providers = (ProviderInfo[]) ArrayUtils.trimToSize(providerInfoArr, i9);
            }
        }
        if ((i & 16) != 0) {
            packageInfo.instrumentation = null;
            int size7 = bPackage.instrumentation.size();
            if (size7 > 0) {
                packageInfo.instrumentation = new InstrumentationInfo[size7];
                for (int i11 = 0; i11 < size7; i11++) {
                    packageInfo.instrumentation[i11] = generateInstrumentationInfo(bPackage.instrumentation.get(i11), i);
                }
            }
        }
        if ((i & 4096) != 0) {
            packageInfo.permissions = null;
            int size8 = bPackage.permissions.size();
            if (size8 > 0) {
                packageInfo.permissions = new PermissionInfo[size8];
                for (int i12 = 0; i12 < size8; i12++) {
                    packageInfo.permissions[i12] = generatePermissionInfo(bPackage.permissions.get(i12), i);
                }
            }
            packageInfo.requestedPermissions = null;
            int size9 = bPackage.requestedPermissions.size();
            if (size9 > 0) {
                packageInfo.requestedPermissions = new String[size9];
                packageInfo.requestedPermissionsFlags = new int[size9];
                for (int i13 = 0; i13 < size9; i13++) {
                    packageInfo.requestedPermissions[i13] = bPackage.requestedPermissions.get(i13);
                }
            }
        }
        if ((i & 64) != 0) {
            if (BuildCompat.isPie()) {
                packageInfo.signatures = bPackage.mSigningDetails.signatures;
            } else {
                packageInfo.signatures = bPackage.mSignatures;
            }
        }
        if (BuildCompat.isPie() && (i & 134217728) != 0) {
            PackageParser.SigningDetails signingDetails = PackageParser.SigningDetails.UNKNOWN;
            signingDetails.signatures = bPackage.mSigningDetails.signatures;
            SigningInfo.mSigningDetails.set(packageInfo.signingInfo, signingDetails);
        }
        return packageInfo;
    }

    public static ActivityInfo generateActivityInfo(BPackage.Activity activity, int i, BPackageUserState bPackageUserState, int i2) {
        if (!checkUseInstalledOrHidden(i, bPackageUserState, activity.info.applicationInfo)) {
            return null;
        }
        ActivityInfo activityInfo = new ActivityInfo(activity.info);
        activityInfo.metaData = activity.metaData;
        activityInfo.processName = BPackageManagerService.fixProcessName(activityInfo.packageName, activityInfo.processName);
        activityInfo.applicationInfo = generateApplicationInfo(activity.owner, i, bPackageUserState, i2);
        return activityInfo;
    }

    public static ServiceInfo generateServiceInfo(BPackage.Service service, int i, BPackageUserState bPackageUserState, int i2) {
        if (!checkUseInstalledOrHidden(i, bPackageUserState, service.info.applicationInfo)) {
            return null;
        }
        ServiceInfo serviceInfo = new ServiceInfo(service.info);
        serviceInfo.metaData = service.metaData;
        serviceInfo.processName = BPackageManagerService.fixProcessName(serviceInfo.packageName, serviceInfo.processName);
        serviceInfo.applicationInfo = generateApplicationInfo(service.owner, i, bPackageUserState, i2);
        return serviceInfo;
    }

    public static ProviderInfo generateProviderInfo(BPackage.Provider provider, int i, BPackageUserState bPackageUserState, int i2) {
        if (!checkUseInstalledOrHidden(i, bPackageUserState, provider.info.applicationInfo)) {
            return null;
        }
        ProviderInfo providerInfo = new ProviderInfo(provider.info);
        if (providerInfo.authority == null) {
            return null;
        }
        providerInfo.metaData = provider.metaData;
        providerInfo.processName = BPackageManagerService.fixProcessName(providerInfo.packageName, providerInfo.processName);
        if ((i & 2048) == 0) {
            providerInfo.uriPermissionPatterns = null;
        }
        providerInfo.applicationInfo = generateApplicationInfo(provider.owner, i, bPackageUserState, i2);
        return providerInfo;
    }

    public static PermissionInfo generatePermissionInfo(BPackage.Permission permission, int i) {
        if (permission == null) {
            return null;
        }
        if ((i & 128) == 0) {
            return permission.info;
        }
        PermissionInfo permissionInfo = new PermissionInfo(permission.info);
        permissionInfo.metaData = permission.metaData;
        return permissionInfo;
    }

    public static InstrumentationInfo generateInstrumentationInfo(BPackage.Instrumentation instrumentation, int i) {
        if (instrumentation == null) {
            return null;
        }
        if ((i & 128) == 0) {
            return instrumentation.info;
        }
        InstrumentationInfo instrumentationInfo = new InstrumentationInfo(instrumentation.info);
        instrumentationInfo.metaData = instrumentation.metaData;
        return instrumentationInfo;
    }

    public static ApplicationInfo generateApplicationInfo(BPackage bPackage, int i, BPackageUserState bPackageUserState, int i2) {
        if (!checkUseInstalledOrHidden(i, bPackageUserState, bPackage.applicationInfo)) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = BlackBoxCore.getPackageManager().getApplicationInfo(BlackBoxCore.getHostPkg(), i);
            String str = bPackage.baseCodePath;
            if (bPackage.applicationInfo == null) {
                bPackage.applicationInfo = BlackBoxCore.getPackageManager().getPackageArchiveInfo(str, 0).applicationInfo;
            }
            ApplicationInfo applicationInfo2 = new ApplicationInfo(bPackage.applicationInfo);
            if ((i & 128) != 0) {
                applicationInfo2.metaData = bPackage.mAppMetaData;
            }
            applicationInfo2.dataDir = BEnvironment.getDataDir(applicationInfo2.packageName, i2).getAbsolutePath();
            applicationInfo2.nativeLibraryDir = BEnvironment.getAppLibDir(applicationInfo2.packageName).getAbsolutePath();
            applicationInfo2.processName = BPackageManagerService.fixProcessName(bPackage.packageName, applicationInfo2.packageName);
            applicationInfo2.publicSourceDir = str;
            applicationInfo2.sourceDir = str;
            applicationInfo2.uid = applicationInfo.uid;
            if (BuildCompat.isL()) {
                ApplicationInfoL.primaryCpuAbi.set(applicationInfo2, Build.CPU_ABI);
                ApplicationInfoL.scanPublicSourceDir.set(applicationInfo2, ApplicationInfoL.scanPublicSourceDir.get(applicationInfo));
                ApplicationInfoL.scanSourceDir.set(applicationInfo2, ApplicationInfoL.scanSourceDir.get(applicationInfo));
            }
            if (BuildCompat.isN()) {
                applicationInfo2.deviceProtectedDataDir = BEnvironment.getDeDataDir(bPackage.packageName, i2).getAbsolutePath();
                if (ApplicationInfoN.deviceEncryptedDataDir != null) {
                    ApplicationInfoN.deviceEncryptedDataDir.set(applicationInfo2, applicationInfo2.deviceProtectedDataDir);
                }
                if (ApplicationInfoN.credentialEncryptedDataDir != null) {
                    ApplicationInfoN.credentialEncryptedDataDir.set(applicationInfo2, applicationInfo2.dataDir);
                }
                if (ApplicationInfoN.deviceProtectedDataDir != null) {
                    ApplicationInfoN.deviceProtectedDataDir.set(applicationInfo2, applicationInfo2.deviceProtectedDataDir);
                }
                if (ApplicationInfoN.credentialProtectedDataDir != null) {
                    ApplicationInfoN.credentialProtectedDataDir.set(applicationInfo2, applicationInfo2.dataDir);
                }
            }
            fixJar(applicationInfo2);
            return applicationInfo2;
        } catch (Exception unused) {
            return null;
        }
    }

    private static boolean checkUseInstalledOrHidden(int i, BPackageUserState bPackageUserState, ApplicationInfo applicationInfo) {
        if (!AppSystemEnv.isBlackPackage(applicationInfo.packageName) && bPackageUserState.installed && !bPackageUserState.hidden) {
            return true;
        }
        return false;
    }

    private static void fixJar(ApplicationInfo applicationInfo) {
        HashSet hashSet = new HashSet();
        if (!BuildCompat.isQ()) {
            hashSet.add("/system/framework/org.apache.http.legacy.boot.jar");
        } else if (!FileUtils.isExist("/system/framework/org.apache.http.legacy.jar")) {
            hashSet.add("/system/framework/org.apache.http.legacy.boot.jar");
        } else {
            hashSet.add("/system/framework/org.apache.http.legacy.jar");
        }
        hashSet.add(BEnvironment.JUNIT_JAR.getAbsolutePath());
        hashSet.add(BEnvironment.VM_JAR.getAbsolutePath());
        applicationInfo.sharedLibraryFiles = (String[]) hashSet.toArray(new String[0]);
    }
}
