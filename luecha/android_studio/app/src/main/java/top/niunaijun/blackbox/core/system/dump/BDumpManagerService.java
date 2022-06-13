package top.niunaijun.blackbox.core.system.dump;

import android.os.IBinder;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
import top.niunaijun.blackbox.core.system.dump.IBDumpManagerService;
import top.niunaijun.blackbox.core.system.dump.IBDumpMonitor;
import top.niunaijun.blackbox.entity.dump.DumpResult;

/* loaded from: classes4.dex */
public class BDumpManagerService extends IBDumpManagerService.Stub {
    private static final BDumpManagerService sService = new BDumpManagerService();
    private final List<IBinder> mMonitors = new ArrayList();

    public static BDumpManagerService get() {
        return sService;
    }

    @Override // top.niunaijun.blackbox.core.system.dump.IBDumpManagerService
    public void registerMonitor(final IBinder iBinder) {
        try {
            iBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: top.niunaijun.blackbox.core.system.dump.BDumpManagerService.1
                @Override // android.os.IBinder.DeathRecipient
                public void binderDied() {
                    iBinder.unlinkToDeath(this, 0);
                    BDumpManagerService.this.mMonitors.remove(iBinder);
                }
            }, 0);
        } catch (RemoteException unused) {
        }
        this.mMonitors.add(iBinder);
    }

    @Override // top.niunaijun.blackbox.core.system.dump.IBDumpManagerService
    public void unregisterMonitor(IBinder iBinder) {
        this.mMonitors.remove(iBinder);
    }

    @Override // top.niunaijun.blackbox.core.system.dump.IBDumpManagerService
    public void noticeMonitor(DumpResult dumpResult) throws RemoteException {
        for (IBinder iBinder : this.mMonitors) {
            if (iBinder.isBinderAlive()) {
                IBDumpMonitor.Stub.asInterface(iBinder).onDump(dumpResult);
            }
        }
    }
}
