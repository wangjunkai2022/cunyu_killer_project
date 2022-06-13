package top.niunaijun.blackbox.core.system.pm.installer;

import android.content.pm.ApplicationInfo;
import java.io.File;
import java.io.IOException;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.core.env.BEnvironment;
import top.niunaijun.blackbox.core.system.pm.BPackageSettings;
import top.niunaijun.blackbox.entity.pm.InstallOption;
import top.niunaijun.blackbox.utils.FileUtils;
import top.niunaijun.blackbox.utils.NativeUtils;

/* loaded from: classes4.dex */
public class CopyExecutor implements Executor {
    @Override // top.niunaijun.blackbox.core.system.pm.installer.Executor
    public int exec(BPackageSettings bPackageSettings, InstallOption installOption, int i) {
        try {
            NativeUtils.copyNativeLib(new File(bPackageSettings.pkg.baseCodePath), BEnvironment.getAppLibDir(bPackageSettings.pkg.packageName));
            ApplicationInfo applicationInfo = BlackBoxCore.getContext().getApplicationInfo();
            FileUtils.copyFile(new File(applicationInfo.nativeLibraryDir, "libblackdex.so"), new File(BEnvironment.getAppLibDir(bPackageSettings.pkg.packageName), "libblackdex.so"));
            FileUtils.copyFile(new File(applicationInfo.nativeLibraryDir, "libblackdex_d.so"), new File(BEnvironment.getAppLibDir(bPackageSettings.pkg.packageName), "libblackdex_d.so"));
            if (installOption.isFlag(2)) {
                File file = new File(bPackageSettings.pkg.baseCodePath);
                File baseApkDir = BEnvironment.getBaseApkDir(bPackageSettings.pkg.packageName);
                try {
                    if (!installOption.isFlag(8)) {
                        FileUtils.copyFile(file, baseApkDir);
                    } else if (!FileUtils.renameTo(file, baseApkDir)) {
                        FileUtils.copyFile(file, baseApkDir);
                    }
                    bPackageSettings.pkg.baseCodePath = baseApkDir.getAbsolutePath();
                    return 0;
                } catch (IOException e) {
                    e.printStackTrace();
                    return -1;
                }
            } else {
                installOption.isFlag(1);
                return 0;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }
}
