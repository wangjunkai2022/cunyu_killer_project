package top.niunaijun.blackbox.core.system.am;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.HashMap;
import java.util.Map;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.core.system.BProcessManager;
import top.niunaijun.blackbox.core.system.ISystemService;
import top.niunaijun.blackbox.core.system.ProcessRecord;
import top.niunaijun.blackbox.core.system.am.IBActivityManagerService;
import top.niunaijun.blackbox.core.system.pm.BPackageManagerService;
import top.niunaijun.blackbox.entity.AppConfig;

/* loaded from: classes3.dex */
public class BActivityManagerService extends IBActivityManagerService.Stub implements ISystemService {
    public static final String TAG = "VActivityManagerService";
    private static final BActivityManagerService sService = new BActivityManagerService();
    private final Map<Integer, UserSpace> mUserSpace = new HashMap();

    @Override // top.niunaijun.blackbox.core.system.ISystemService
    public void systemReady() {
    }

    public static BActivityManagerService get() {
        return sService;
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public ComponentName startService(Intent intent, String str, int i) {
        UserSpace orCreateSpaceLocked = getOrCreateSpaceLocked(i);
        synchronized (orCreateSpaceLocked.mActiveServices) {
            orCreateSpaceLocked.mActiveServices.startService(intent, str, i);
        }
        return null;
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public Intent sendBroadcast(Intent intent, String str, int i) throws RemoteException {
        for (ResolveInfo resolveInfo : BPackageManagerService.get().queryBroadcastReceivers(intent, 128, str, i)) {
            ProcessRecord startProcessLocked = BProcessManager.get().startProcessLocked(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.processName, i, -1, Binder.getCallingUid(), Binder.getCallingPid());
            if (startProcessLocked != null) {
                startProcessLocked.bActivityThread.bindApplication();
            }
        }
        if (intent.getPackage() != null) {
            intent.setPackage(BlackBoxCore.getHostPkg());
        }
        if (intent.getComponent() != null) {
            intent.setComponent(null);
        }
        return intent;
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public void onActivityCreated(int i, IBinder iBinder, IBinder iBinder2) throws RemoteException {
        ProcessRecord findProcessByPid = BProcessManager.get().findProcessByPid(Binder.getCallingPid());
        if (findProcessByPid != null) {
            ActivityRecord activityRecord = (ActivityRecord) iBinder2;
            UserSpace orCreateSpaceLocked = getOrCreateSpaceLocked(findProcessByPid.userId);
            synchronized (orCreateSpaceLocked.mStack) {
                orCreateSpaceLocked.mStack.onActivityCreated(findProcessByPid, i, iBinder, activityRecord);
            }
        }
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public void onActivityResumed(IBinder iBinder) throws RemoteException {
        ProcessRecord findProcessByPid = BProcessManager.get().findProcessByPid(Binder.getCallingPid());
        if (findProcessByPid != null) {
            UserSpace orCreateSpaceLocked = getOrCreateSpaceLocked(findProcessByPid.userId);
            synchronized (orCreateSpaceLocked.mStack) {
                orCreateSpaceLocked.mStack.onActivityResumed(findProcessByPid.userId, iBinder);
            }
        }
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public void onActivityDestroyed(IBinder iBinder) throws RemoteException {
        ProcessRecord findProcessByPid = BProcessManager.get().findProcessByPid(Binder.getCallingPid());
        if (findProcessByPid != null) {
            UserSpace orCreateSpaceLocked = getOrCreateSpaceLocked(findProcessByPid.userId);
            synchronized (orCreateSpaceLocked.mStack) {
                orCreateSpaceLocked.mStack.onActivityDestroyed(findProcessByPid.userId, iBinder);
            }
        }
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public void onFinishActivity(IBinder iBinder) throws RemoteException {
        ProcessRecord findProcessByPid = BProcessManager.get().findProcessByPid(Binder.getCallingPid());
        if (findProcessByPid != null) {
            UserSpace orCreateSpaceLocked = getOrCreateSpaceLocked(findProcessByPid.userId);
            synchronized (orCreateSpaceLocked.mStack) {
                orCreateSpaceLocked.mStack.onFinishActivity(findProcessByPid.userId, iBinder);
            }
        }
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public void onStartCommand(Intent intent, int i) throws RemoteException {
        UserSpace orCreateSpaceLocked = getOrCreateSpaceLocked(i);
        synchronized (orCreateSpaceLocked.mActiveServices) {
            orCreateSpaceLocked.mActiveServices.onStartCommand(intent, i);
        }
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public void onServiceDestroy(Intent intent, int i) throws RemoteException {
        UserSpace orCreateSpaceLocked = getOrCreateSpaceLocked(i);
        synchronized (orCreateSpaceLocked.mActiveServices) {
            orCreateSpaceLocked.mActiveServices.onServiceDestroy(intent, i);
        }
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public int stopService(Intent intent, String str, int i) {
        int stopService;
        UserSpace orCreateSpaceLocked = getOrCreateSpaceLocked(i);
        synchronized (orCreateSpaceLocked.mActiveServices) {
            stopService = orCreateSpaceLocked.mActiveServices.stopService(intent, str, i);
        }
        return stopService;
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public Intent bindService(Intent intent, IBinder iBinder, String str, int i) throws RemoteException {
        synchronized (getOrCreateSpaceLocked(i).mActiveServices) {
        }
        return null;
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public void unbindService(IBinder iBinder, int i) throws RemoteException {
        UserSpace orCreateSpaceLocked = getOrCreateSpaceLocked(i);
        synchronized (orCreateSpaceLocked.mActiveServices) {
            orCreateSpaceLocked.mActiveServices.unbindService(iBinder, i);
        }
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public AppConfig initProcess(String str, String str2, int i) throws RemoteException {
        ProcessRecord startProcessLocked = BProcessManager.get().startProcessLocked(str, str2, i, -1, Binder.getCallingUid(), Binder.getCallingPid());
        if (startProcessLocked == null) {
            return null;
        }
        return startProcessLocked.getClientConfig();
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public void restartProcess(String str, String str2, int i) throws RemoteException {
        BProcessManager.get().restartAppProcess(str, str2, i);
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public void startActivity(Intent intent, int i) {
        UserSpace orCreateSpaceLocked = getOrCreateSpaceLocked(i);
        synchronized (orCreateSpaceLocked.mStack) {
            orCreateSpaceLocked.mStack.startActivityLocked(i, intent, null, null, null, -1, -1, null);
        }
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public int startActivityAms(int i, Intent intent, String str, IBinder iBinder, String str2, int i2, int i3, Bundle bundle) throws RemoteException {
        int startActivityLocked;
        UserSpace orCreateSpaceLocked = getOrCreateSpaceLocked(i);
        synchronized (orCreateSpaceLocked.mStack) {
            startActivityLocked = orCreateSpaceLocked.mStack.startActivityLocked(i, intent, str, iBinder, str2, i2, i3, bundle);
        }
        return startActivityLocked;
    }

    @Override // top.niunaijun.blackbox.core.system.am.IBActivityManagerService
    public int startActivities(int i, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle) throws RemoteException {
        int startActivitiesLocked;
        UserSpace orCreateSpaceLocked = getOrCreateSpaceLocked(i);
        synchronized (orCreateSpaceLocked.mStack) {
            startActivitiesLocked = orCreateSpaceLocked.mStack.startActivitiesLocked(i, intentArr, strArr, iBinder, bundle);
        }
        return startActivitiesLocked;
    }

    private UserSpace getOrCreateSpaceLocked(int i) {
        synchronized (this.mUserSpace) {
            UserSpace userSpace = this.mUserSpace.get(Integer.valueOf(i));
            if (userSpace != null) {
                return userSpace;
            }
            UserSpace userSpace2 = new UserSpace();
            this.mUserSpace.put(Integer.valueOf(i), userSpace2);
            return userSpace2;
        }
    }
}
