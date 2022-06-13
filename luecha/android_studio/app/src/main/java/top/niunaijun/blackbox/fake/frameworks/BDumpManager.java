package top.niunaijun.blackbox.fake.frameworks;

import android.os.IBinder;
import android.os.RemoteException;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.core.system.ServiceManager;
import top.niunaijun.blackbox.core.system.dump.IBDumpManagerService;
import top.niunaijun.blackbox.entity.dump.DumpResult;

/* loaded from: classes4.dex */
public class BDumpManager {
    private static final BDumpManager sDumpManager = new BDumpManager();
    private IBDumpManagerService mService;

    public static BDumpManager get() {
        return sDumpManager;
    }

    public void registerMonitor(IBinder iBinder) {
        try {
            getService().registerMonitor(iBinder);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void unregisterMonitor(IBinder iBinder) {
        try {
            getService().unregisterMonitor(iBinder);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void noticeMonitor(DumpResult dumpResult) {
        try {
            getService().noticeMonitor(dumpResult);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    private IBDumpManagerService getService() {
        IBDumpManagerService iBDumpManagerService = this.mService;
        if (iBDumpManagerService != null && iBDumpManagerService.asBinder().isBinderAlive()) {
            return this.mService;
        }
        this.mService = IBDumpManagerService.Stub.asInterface(BlackBoxCore.get().getService(ServiceManager.DUMP_MANAGER));
        return getService();
    }
}
