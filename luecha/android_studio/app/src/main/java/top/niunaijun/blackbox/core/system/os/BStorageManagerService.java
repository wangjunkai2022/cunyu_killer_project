package top.niunaijun.blackbox.core.system.os;

import android.os.Process;
import android.os.RemoteException;
import android.os.storage.StorageVolume;
import reflection.android.os.storage.StorageManager;
import top.niunaijun.blackbox.core.env.BEnvironment;
import top.niunaijun.blackbox.core.system.ISystemService;
import top.niunaijun.blackbox.core.system.os.IBStorageManagerService;
import top.niunaijun.blackbox.core.system.user.BUserHandle;
import top.niunaijun.blackbox.utils.compat.BuildCompat;

/* loaded from: classes4.dex */
public class BStorageManagerService extends IBStorageManagerService.Stub implements ISystemService {
    private static final BStorageManagerService sService = new BStorageManagerService();

    @Override // top.niunaijun.blackbox.core.system.ISystemService
    public void systemReady() {
    }

    public static BStorageManagerService get() {
        return sService;
    }

    @Override // top.niunaijun.blackbox.core.system.os.IBStorageManagerService
    public StorageVolume[] getVolumeList(int i, String str, int i2, int i3) throws RemoteException {
        if (StorageManager.getVolumeList == null) {
            return null;
        }
        try {
            StorageVolume[] call = StorageManager.getVolumeList.call(Integer.valueOf(BUserHandle.getUserId(Process.myUid())), 0);
            if (call == null) {
                return null;
            }
            for (StorageVolume storageVolume : call) {
                reflection.android.os.storage.StorageVolume.mPath.set(storageVolume, BEnvironment.getExternalUserDir(i3));
                if (BuildCompat.isPie()) {
                    reflection.android.os.storage.StorageVolume.mInternalPath.set(storageVolume, BEnvironment.getExternalUserDir(i3));
                }
            }
            return call;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
