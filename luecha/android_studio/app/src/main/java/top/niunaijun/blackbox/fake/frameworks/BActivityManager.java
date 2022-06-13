package top.niunaijun.blackbox.fake.frameworks;

import android.content.Intent;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.core.system.ServiceManager;
import top.niunaijun.blackbox.core.system.am.IBActivityManagerService;

/* loaded from: classes4.dex */
public class BActivityManager {
    private static final BActivityManager sActivityManager = new BActivityManager();
    private IBActivityManagerService mService;

    public static BActivityManager get() {
        return sActivityManager;
    }

    public void startActivity(Intent intent, int i) {
        try {
            getService().startActivity(intent, i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private IBActivityManagerService getService() {
        IBActivityManagerService iBActivityManagerService = this.mService;
        if (iBActivityManagerService != null && iBActivityManagerService.asBinder().isBinderAlive()) {
            return this.mService;
        }
        this.mService = IBActivityManagerService.Stub.asInterface(BlackBoxCore.get().getService(ServiceManager.ACTIVITY_MANAGER));
        return getService();
    }
}
