package top.niunaijun.blackbox.fake.frameworks;

import android.os.RemoteException;
import android.os.storage.StorageVolume;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.core.system.ServiceManager;
import top.niunaijun.blackbox.core.system.os.IBStorageManagerService;

/* loaded from: classes3.dex */
public class BStorageManager {
    private static final BStorageManager sStorageManager = new BStorageManager();
    private IBStorageManagerService mService;

    public static BStorageManager get() {
        return sStorageManager;
    }

    public StorageVolume[] getVolumeList(int i, String str, int i2, int i3) {
        try {
            return getService().getVolumeList(i, str, i2, i3);
        } catch (RemoteException e) {
            e.printStackTrace();
            return new StorageVolume[0];
        }
    }

    private IBStorageManagerService getService() {
        IBStorageManagerService iBStorageManagerService = this.mService;
        if (iBStorageManagerService != null && iBStorageManagerService.asBinder().isBinderAlive()) {
            return this.mService;
        }
        this.mService = IBStorageManagerService.Stub.asInterface(BlackBoxCore.get().getService(ServiceManager.STORAGE_MANAGER));
        return getService();
    }
}
