package top.niunaijun.blackbox.core.system;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.core.IBActivityThread;
import top.niunaijun.blackbox.core.system.pm.BPackageManagerService;
import top.niunaijun.blackbox.core.system.user.BUserHandle;
import top.niunaijun.blackbox.entity.AppConfig;
import top.niunaijun.blackbox.proxy.ProxyManifest;
import top.niunaijun.blackbox.utils.Slog;
import top.niunaijun.blackbox.utils.compat.ApplicationThreadCompat;
import top.niunaijun.blackbox.utils.compat.BundleCompat;
import top.niunaijun.blackbox.utils.provider.ProviderCall;

/* loaded from: classes4.dex */
public class BProcessManager {
    public static final String TAG = "BProcessManager";
    public static BProcessManager sVProcessManager = new BProcessManager();
    private final Map<Integer, Map<String, ProcessRecord>> mProcessMap = new HashMap();
    private final List<ProcessRecord> mPidsSelfLocked = new ArrayList();
    private final Object mProcessLock = new Object();

    public static BProcessManager get() {
        return sVProcessManager;
    }

    public ProcessRecord startProcessLocked(String str, String str2, int i, int i2, int i3, int i4) {
        ApplicationInfo applicationInfo = BPackageManagerService.get().getApplicationInfo(str, 0, i);
        ProcessRecord processRecord = null;
        if (applicationInfo == null) {
            return null;
        }
        int uid = BUserHandle.getUid(i, BPackageManagerService.get().getAppId(str));
        Map<String, ProcessRecord> map = this.mProcessMap.get(Integer.valueOf(uid));
        if (map == null) {
            map = new HashMap<>();
        }
        synchronized (this.mProcessLock) {
            if (i2 == -1) {
                try {
                    ProcessRecord processRecord2 = map.get(str2);
                    if (processRecord2 != null) {
                        if (processRecord2.initLock != null) {
                            processRecord2.initLock.block();
                        }
                        if (processRecord2.bActivityThread != null) {
                            return processRecord2;
                        }
                    }
                    i2 = getUsingBPidL();
                    Slog.d(TAG, "init bUid = " + uid + ", bPid = " + i2);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (i2 != -1) {
                ProcessRecord processRecord3 = new ProcessRecord(applicationInfo, str2, 0, i2, i3);
                processRecord3.uid = uid;
                processRecord3.buid = uid;
                processRecord3.userId = i;
                processRecord3.baseBUid = BUserHandle.getAppId(applicationInfo.uid);
                map.put(str2, processRecord3);
                this.mPidsSelfLocked.add(processRecord3);
                this.mProcessMap.put(Integer.valueOf(processRecord3.buid), map);
                if (!initAppProcessL(processRecord3)) {
                    map.remove(str2);
                    this.mPidsSelfLocked.remove(processRecord3);
                } else {
                    processRecord3.pid = getPid(BlackBoxCore.getContext(), ProxyManifest.getProcessName(processRecord3.bpid));
                    processRecord = processRecord3;
                }
                return processRecord;
            }
            throw new RuntimeException("No processes available");
        }
    }

    private int getUsingBPidL() {
        boolean z;
        ((ActivityManager) BlackBoxCore.getContext().getSystemService("activity")).getRunningAppProcesses();
        for (int i = 0; i < 100; i++) {
            Iterator<ProcessRecord> it = this.mPidsSelfLocked.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().bpid == i) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                return i;
            }
        }
        return -1;
    }

    public void restartAppProcess(String str, String str2, int i) {
        ProcessRecord findProcessByPid;
        synchronized (this.mProcessLock) {
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            synchronized (this.mProcessLock) {
                findProcessByPid = findProcessByPid(callingPid);
            }
            if (findProcessByPid == null) {
                startProcessLocked(str, str2, i, parseBPid(getProcessName(BlackBoxCore.getContext(), callingPid)), callingUid, callingPid);
            }
        }
    }

    private int parseBPid(String str) {
        if (str == null) {
            return -1;
        }
        String str2 = BlackBoxCore.getHostPkg() + ":p";
        if (str.startsWith(str2)) {
            try {
                return Integer.parseInt(str.substring(str2.length()));
            } catch (NumberFormatException unused) {
            }
        }
        return -1;
    }

    private boolean initAppProcessL(ProcessRecord processRecord) {
        Log.d(TAG, "initProcess: " + processRecord.processName);
        AppConfig clientConfig = processRecord.getClientConfig();
        Bundle bundle = new Bundle();
        bundle.putParcelable(AppConfig.KEY, clientConfig);
        IBinder binder = BundleCompat.getBinder(ProviderCall.callSafely(processRecord.getProviderAuthority(), "_Black_|_init_process_", null, bundle), "_Black_|_client_");
        if (binder == null || !binder.isBinderAlive()) {
            return false;
        }
        attachClientL(processRecord, binder);
        return true;
    }

    private void attachClientL(final ProcessRecord processRecord, final IBinder iBinder) {
        IBActivityThread asInterface = IBActivityThread.Stub.asInterface(iBinder);
        if (asInterface == null) {
            processRecord.kill();
            return;
        }
        try {
            iBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: top.niunaijun.blackbox.core.system.BProcessManager.1
                @Override // android.os.IBinder.DeathRecipient
                public void binderDied() {
                    Log.d(BProcessManager.TAG, "App Died: " + processRecord.processName);
                    iBinder.unlinkToDeath(this, 0);
                    BProcessManager.this.onProcessDie(processRecord);
                }
            }, 0);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        processRecord.bActivityThread = asInterface;
        try {
            processRecord.appThread = ApplicationThreadCompat.asInterface(asInterface.getActivityThread());
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
        processRecord.initLock.open();
    }

    public void onProcessDie(ProcessRecord processRecord) {
        synchronized (this.mProcessLock) {
            processRecord.kill();
            Map<String, ProcessRecord> remove = this.mProcessMap.remove(Integer.valueOf(processRecord.buid));
            if (remove != null) {
                remove.remove(processRecord.processName);
            }
            this.mPidsSelfLocked.remove(processRecord);
        }
    }

    public ProcessRecord findProcessRecord(String str, String str2, int i) {
        synchronized (this.mProcessLock) {
            Map<String, ProcessRecord> map = this.mProcessMap.get(Integer.valueOf(BUserHandle.getUid(i, BPackageManagerService.get().getAppId(str))));
            if (map == null) {
                return null;
            }
            return map.get(str2);
        }
    }

    public void killAllByPackageName(String str) {
        synchronized (this.mProcessLock) {
            synchronized (this.mPidsSelfLocked) {
                ArrayList arrayList = new ArrayList(this.mPidsSelfLocked);
                int appId = BPackageManagerService.get().getAppId(str);
                for (ProcessRecord processRecord : this.mPidsSelfLocked) {
                    if (appId == BUserHandle.getAppId(processRecord.buid)) {
                        this.mProcessMap.remove(Integer.valueOf(processRecord.buid));
                        arrayList.remove(processRecord);
                        processRecord.kill();
                    }
                }
                this.mPidsSelfLocked.clear();
                this.mPidsSelfLocked.addAll(arrayList);
            }
        }
    }

    public void killPackageAsUser(String str, int i) {
        synchronized (this.mProcessLock) {
            int uid = BUserHandle.getUid(i, BPackageManagerService.get().getAppId(str));
            Map<String, ProcessRecord> map = this.mProcessMap.get(Integer.valueOf(uid));
            if (map != null) {
                for (ProcessRecord processRecord : map.values()) {
                    processRecord.kill();
                }
                this.mProcessMap.remove(Integer.valueOf(uid));
            }
        }
    }

    public int getUserIdByCallingPid(int i) {
        synchronized (this.mProcessLock) {
            ProcessRecord findProcessByPid = get().findProcessByPid(i);
            if (findProcessByPid == null) {
                return 0;
            }
            return findProcessByPid.userId;
        }
    }

    public ProcessRecord findProcessByPid(int i) {
        synchronized (this.mPidsSelfLocked) {
            for (ProcessRecord processRecord : this.mPidsSelfLocked) {
                if (processRecord.pid == i) {
                    return processRecord;
                }
            }
            return null;
        }
    }

    private static String getProcessName(Context context, int i) {
        String str;
        Iterator<ActivityManager.RunningAppProcessInfo> it = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses().iterator();
        while (true) {
            if (!it.hasNext()) {
                str = null;
                break;
            }
            ActivityManager.RunningAppProcessInfo next = it.next();
            if (next.pid == i) {
                str = next.processName;
                break;
            }
        }
        if (str != null) {
            return str;
        }
        throw new RuntimeException("processName = null");
    }

    public static int getPid(Context context, String str) {
        try {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.processName.equals(str)) {
                    return runningAppProcessInfo.pid;
                }
            }
            return -1;
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }
}
