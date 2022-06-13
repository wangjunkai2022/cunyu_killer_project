package top.niunaijun.blackbox.core.system;

import android.content.pm.PackageManager;
import java.io.IOException;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.core.env.AppSystemEnv;
import top.niunaijun.blackbox.core.env.BEnvironment;
import top.niunaijun.blackbox.core.system.am.BActivityManagerService;
import top.niunaijun.blackbox.core.system.os.BStorageManagerService;
import top.niunaijun.blackbox.core.system.pm.BPackageInstallerService;
import top.niunaijun.blackbox.core.system.pm.BPackageManagerService;
import top.niunaijun.blackbox.core.system.user.BUserManagerService;
import top.niunaijun.blackbox.entity.pm.InstallOption;
import top.niunaijun.blackbox.utils.FileUtils;

/* loaded from: classes3.dex */
public class BlackBoxSystem {
    private static BlackBoxSystem sBlackBoxSystem;

    public static BlackBoxSystem getSystem() {
        if (sBlackBoxSystem == null) {
            synchronized (BlackBoxSystem.class) {
                if (sBlackBoxSystem == null) {
                    sBlackBoxSystem = new BlackBoxSystem();
                }
            }
        }
        return sBlackBoxSystem;
    }

    public void startup() {
        BEnvironment.load();
        BPackageManagerService.get().systemReady();
        BUserManagerService.get().systemReady();
        BActivityManagerService.get().systemReady();
        BStorageManagerService.get().systemReady();
        BPackageInstallerService.get().systemReady();
        for (String str : AppSystemEnv.getPreInstallPackages()) {
            try {
                if (!BPackageManagerService.get().isInstalled(str, -1)) {
                    BPackageManagerService.get().installPackageAsUser(BlackBoxCore.getPackageManager().getPackageInfo(str, 0).applicationInfo.sourceDir, InstallOption.installBySystem(), -1);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        initJarEnv();
    }

    private void initJarEnv() {
        try {
            FileUtils.copyFile(BlackBoxCore.getContext().getAssets().open("junit.jar"), BEnvironment.JUNIT_JAR);
            FileUtils.copyFile(BlackBoxCore.getContext().getAssets().open("empty.jar"), BEnvironment.EMPTY_JAR);
            FileUtils.copyFile(BlackBoxCore.getContext().getAssets().open("vm.jar"), BEnvironment.VM_JAR);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
