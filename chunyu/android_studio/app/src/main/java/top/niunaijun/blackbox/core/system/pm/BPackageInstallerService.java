package top.niunaijun.blackbox.core.system.pm;

import android.os.RemoteException;
import java.util.ArrayList;
import top.niunaijun.blackbox.core.system.ISystemService;
import top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService;
import top.niunaijun.blackbox.core.system.pm.installer.CopyExecutor;
import top.niunaijun.blackbox.core.system.pm.installer.CreatePackageExecutor;
import top.niunaijun.blackbox.core.system.pm.installer.CreateUserExecutor;
import top.niunaijun.blackbox.core.system.pm.installer.Executor;
import top.niunaijun.blackbox.core.system.pm.installer.RemoveAppExecutor;
import top.niunaijun.blackbox.core.system.pm.installer.RemoveUserExecutor;
import top.niunaijun.blackbox.entity.pm.InstallOption;
import top.niunaijun.blackbox.utils.Slog;

/* loaded from: classes3.dex */
public class BPackageInstallerService extends IBPackageInstallerService.Stub implements ISystemService {
    public static final String TAG = "BPackageInstallerService";
    private static final BPackageInstallerService sService = new BPackageInstallerService();

    @Override // top.niunaijun.blackbox.core.system.ISystemService
    public void systemReady() {
    }

    public static BPackageInstallerService get() {
        return sService;
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService
    public int installPackageAsUser(BPackageSettings bPackageSettings, int i) throws RemoteException {
        ArrayList<Executor> arrayList = new ArrayList();
        arrayList.add(new CreateUserExecutor());
        arrayList.add(new CreatePackageExecutor());
        arrayList.add(new CopyExecutor());
        InstallOption installOption = bPackageSettings.installOption;
        for (Executor executor : arrayList) {
            int exec = executor.exec(bPackageSettings, installOption, i);
            Slog.d(TAG, "installPackageAsUser: " + executor.getClass().getSimpleName() + " exec: " + exec);
            if (exec != 0) {
                return exec;
            }
        }
        return 0;
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService
    public int uninstallPackageAsUser(BPackageSettings bPackageSettings, boolean z, int i) {
        ArrayList<Executor> arrayList = new ArrayList();
        if (z) {
            arrayList.add(new RemoveAppExecutor());
        }
        arrayList.add(new RemoveUserExecutor());
        InstallOption installOption = bPackageSettings.installOption;
        for (Executor executor : arrayList) {
            int exec = executor.exec(bPackageSettings, installOption, i);
            Slog.d(TAG, "uninstallPackageAsUser: " + executor.getClass().getSimpleName() + " exec: " + exec);
            if (exec != 0) {
                return exec;
            }
        }
        return 0;
    }

    @Override // top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService
    public int updatePackage(BPackageSettings bPackageSettings) {
        ArrayList<Executor> arrayList = new ArrayList();
        arrayList.add(new CreatePackageExecutor());
        arrayList.add(new CopyExecutor());
        InstallOption installOption = bPackageSettings.installOption;
        for (Executor executor : arrayList) {
            int exec = executor.exec(bPackageSettings, installOption, -1);
            Slog.d(TAG, "updatePackage: " + executor.getClass().getSimpleName() + " exec: " + exec);
            if (exec != 0) {
                return exec;
            }
        }
        return 0;
    }
}
