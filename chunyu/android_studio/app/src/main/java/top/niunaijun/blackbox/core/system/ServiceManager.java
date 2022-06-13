package top.niunaijun.blackbox.core.system;

import android.os.IBinder;
import java.util.HashMap;
import java.util.Map;
import top.niunaijun.blackbox.core.system.am.BActivityManagerService;
import top.niunaijun.blackbox.core.system.dump.BDumpManagerService;
import top.niunaijun.blackbox.core.system.os.BStorageManagerService;
import top.niunaijun.blackbox.core.system.pm.BPackageManagerService;
import top.niunaijun.blackbox.core.system.user.BUserManagerService;

/* loaded from: classes3.dex */
public class ServiceManager {
    public static final String ACTIVITY_MANAGER = "activity_manager";
    public static final String DUMP_MANAGER = "dump_manager";
    public static final String PACKAGE_MANAGER = "package_manager";
    public static final String STORAGE_MANAGER = "storage_manager";
    public static final String USER_MANAGER = "user_manager";
    private static ServiceManager sServiceManager;
    private final Map<String, IBinder> mCaches;

    public static ServiceManager get() {
        if (sServiceManager == null) {
            synchronized (ServiceManager.class) {
                if (sServiceManager == null) {
                    sServiceManager = new ServiceManager();
                }
            }
        }
        return sServiceManager;
    }

    public static IBinder getService(String str) {
        return get().getServiceInternal(str);
    }

    private ServiceManager() {
        HashMap hashMap = new HashMap();
        this.mCaches = hashMap;
        hashMap.put(ACTIVITY_MANAGER, BActivityManagerService.get());
        hashMap.put(PACKAGE_MANAGER, BPackageManagerService.get());
        hashMap.put(STORAGE_MANAGER, BStorageManagerService.get());
        hashMap.put(USER_MANAGER, BUserManagerService.get());
        hashMap.put(DUMP_MANAGER, BDumpManagerService.get());
    }

    public IBinder getServiceInternal(String str) {
        return this.mCaches.get(str);
    }
}
