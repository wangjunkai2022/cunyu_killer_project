package top.niunaijun.blackbox.core.system.pm.installer;

import top.niunaijun.blackbox.core.env.BEnvironment;
import top.niunaijun.blackbox.core.system.pm.BPackageSettings;
import top.niunaijun.blackbox.entity.pm.InstallOption;
import top.niunaijun.blackbox.utils.FileUtils;

/* loaded from: classes4.dex */
public class CreatePackageExecutor implements Executor {
    @Override // top.niunaijun.blackbox.core.system.pm.installer.Executor
    public int exec(BPackageSettings bPackageSettings, InstallOption installOption, int i) {
        FileUtils.deleteDir(BEnvironment.getAppDir(bPackageSettings.pkg.packageName));
        FileUtils.mkdirs(BEnvironment.getAppDir(bPackageSettings.pkg.packageName));
        FileUtils.mkdirs(BEnvironment.getAppLibDir(bPackageSettings.pkg.packageName));
        return 0;
    }
}
