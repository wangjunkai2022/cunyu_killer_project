package top.niunaijun.blackbox.core.system.am;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import top.niunaijun.blackbox.core.system.pm.BPackageManagerService;

/* loaded from: classes4.dex */
public class ActiveServices {
    public static final String TAG = "ActiveServices";
    private final Map<Intent.FilterComparison, RunningServiceRecord> mRunningServiceRecords = new HashMap();
    private final Map<IBinder, ConnectedServiceRecord> mConnectedServices = new HashMap();

    public void onServiceDestroy(Intent intent, int i) {
    }

    public void onStartCommand(Intent intent, int i) {
    }

    public void startService(Intent intent, String str, int i) {
    }

    public int stopService(Intent intent, String str, int i) {
        synchronized (this.mRunningServiceRecords) {
            RunningServiceRecord findRunningServiceRecord = findRunningServiceRecord(intent);
            if (findRunningServiceRecord == null) {
                return 0;
            }
            if (findRunningServiceRecord.mBindCount.get() > 0) {
                Log.d(TAG, "There are also connections");
                return 0;
            }
            findRunningServiceRecord.mStartId.set(0);
            return 0;
        }
    }

    public void unbindService(IBinder iBinder, int i) {
        ConnectedServiceRecord connectedServiceRecord = this.mConnectedServices.get(iBinder);
        if (connectedServiceRecord != null) {
            RunningServiceRecord orCreateRunningServiceRecord = getOrCreateRunningServiceRecord(connectedServiceRecord.mIntent);
            orCreateRunningServiceRecord.mConnectedServiceRecord = null;
            orCreateRunningServiceRecord.mBindCount.decrementAndGet();
            this.mConnectedServices.remove(iBinder);
        }
    }

    private RunningServiceRecord getOrCreateRunningServiceRecord(Intent intent) {
        RunningServiceRecord findRunningServiceRecord = findRunningServiceRecord(intent);
        if (findRunningServiceRecord != null) {
            return findRunningServiceRecord;
        }
        RunningServiceRecord runningServiceRecord = new RunningServiceRecord();
        this.mRunningServiceRecords.put(new Intent.FilterComparison(intent), runningServiceRecord);
        return runningServiceRecord;
    }

    private RunningServiceRecord findRunningServiceRecord(Intent intent) {
        return this.mRunningServiceRecords.get(new Intent.FilterComparison(intent));
    }

    private ResolveInfo resolveService(Intent intent, String str, int i) {
        return BPackageManagerService.get().resolveService(intent, 0, str, i);
    }

    private ConnectedServiceRecord findConnectedServiceRecord(Intent intent) {
        RunningServiceRecord runningServiceRecord = this.mRunningServiceRecords.get(intent);
        if (runningServiceRecord == null) {
            return null;
        }
        return runningServiceRecord.mConnectedServiceRecord;
    }

    /* loaded from: classes4.dex */
    public static class RunningServiceRecord {
        private ConnectedServiceRecord mConnectedServiceRecord;
        private AtomicInteger mStartId = new AtomicInteger(1);
        private AtomicInteger mBindCount = new AtomicInteger(0);

        public int getAndIncrementStartId() {
            return this.mStartId.getAndIncrement();
        }

        public int decrementBindCountAndGet() {
            return this.mBindCount.decrementAndGet();
        }

        public int incrementBindCountAndGet() {
            return this.mBindCount.incrementAndGet();
        }
    }

    /* loaded from: classes4.dex */
    public static class ConnectedServiceRecord {
        private IBinder mIBinder;
        private Intent mIntent;
    }
}
