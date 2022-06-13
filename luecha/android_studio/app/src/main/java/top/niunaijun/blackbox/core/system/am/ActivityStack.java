package top.niunaijun.blackbox.core.system.am;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Process;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import reflection.android.app.ActivityManagerNative;
import reflection.android.app.IActivityManager;
import top.niunaijun.blackbox.BlackBoxCore;
import top.niunaijun.blackbox.core.system.BProcessManager;
import top.niunaijun.blackbox.core.system.ProcessRecord;
import top.niunaijun.blackbox.proxy.ProxyManifest;
import top.niunaijun.blackbox.proxy.record.ProxyActivityRecord;
import top.niunaijun.blackbox.utils.ComponentUtils;

/* loaded from: classes4.dex */
public class ActivityStack {
    private final Map<Integer, TaskRecord> mTasks = new LinkedHashMap();
    private final Set<ActivityRecord> mLaunchingActivities = new HashSet();
    private ActivityManager mAms = (ActivityManager) BlackBoxCore.getContext().getSystemService("activity");

    private void deliverNewIntentLocked(ActivityRecord activityRecord, Intent intent) {
    }

    public boolean containsFlag(Intent intent, int i) {
        return (intent.getFlags() & i) != 0;
    }

    public int startActivitiesLocked(int i, Intent[] intentArr, String[] strArr, IBinder iBinder, Bundle bundle) {
        Objects.requireNonNull(intentArr, "intents is null");
        Objects.requireNonNull(strArr, "resolvedTypes is null");
        if (intentArr.length == strArr.length) {
            for (int i2 = 0; i2 < intentArr.length; i2++) {
                startActivityLocked(i, intentArr[i2], strArr[i2], iBinder, null, -1, 0, bundle);
            }
            return 0;
        }
        throw new IllegalArgumentException("intents are length different than resolvedTypes");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01e4 A[LOOP:3: B:121:0x01de->B:123:0x01e4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x019a  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public int startActivityLocked(int r22, android.content.Intent r23, java.lang.String r24, android.os.IBinder r25, java.lang.String r26, int r27, int r28, android.os.Bundle r29) {
        /*
        // Method dump skipped, instructions count: 585
        */
        throw new UnsupportedOperationException("Method not decompiled: top.niunaijun.blackbox.core.system.am.ActivityStack.startActivityLocked(int, android.content.Intent, java.lang.String, android.os.IBinder, java.lang.String, int, int, android.os.Bundle):int");
    }

    private Intent startActivityProcess(int i, Intent intent, ActivityInfo activityInfo, ActivityRecord activityRecord, int i2) {
        ProxyActivityRecord proxyActivityRecord = new ProxyActivityRecord(i, activityInfo, intent, activityRecord);
        ProcessRecord startProcessLocked = BProcessManager.get().startProcessLocked(activityInfo.packageName, activityInfo.processName, i, -1, Binder.getCallingUid(), Binder.getCallingPid());
        if (startProcessLocked != null) {
            return getStartStubActivityIntentInner(intent, startProcessLocked.bpid, i, proxyActivityRecord, activityInfo);
        }
        throw new RuntimeException("Unable to create process, name:" + activityInfo.name);
    }

    private int startActivityInNewTaskLocked(int i, Intent intent, ActivityInfo activityInfo, IBinder iBinder, int i2) {
        Intent startActivityProcess = startActivityProcess(i, intent, activityInfo, newActivityRecord(intent, activityInfo, iBinder, i), Process.myUid());
        startActivityProcess.addFlags(134217728);
        startActivityProcess.addFlags(524288);
        startActivityProcess.addFlags(268435456);
        startActivityProcess.addFlags(i2);
        BlackBoxCore.getContext().startActivity(startActivityProcess);
        return 0;
    }

    private int startActivityInSourceTask(Intent intent, String str, IBinder iBinder, String str2, int i, int i2, Bundle bundle, int i3, ActivityRecord activityRecord, ActivityInfo activityInfo, int i4) {
        Intent startActivityProcess = startActivityProcess(i3, intent, activityInfo, newActivityRecord(intent, activityInfo, iBinder, i3), Process.myUid());
        startActivityProcess.addFlags(i4);
        return realStartActivityLocked(activityRecord.processRecord.appThread, startActivityProcess, str, iBinder, str2, i, i2, bundle);
    }

    private int realStartActivityLocked(IInterface iInterface, Intent intent, String str, IBinder iBinder, String str2, int i, int i2, Bundle bundle) {
        Object[] objArr = new Object[IActivityManager.startActivity.unwrap().getParameterTypes().length];
        objArr[0] = iInterface;
        objArr[1] = BlackBoxCore.getHostPkg();
        objArr[2] = intent;
        objArr[3] = str;
        objArr[4] = iBinder;
        objArr[5] = str2;
        objArr[6] = Integer.valueOf(i);
        objArr[7] = Integer.valueOf(i2);
        objArr[8] = null;
        objArr[9] = bundle;
        try {
            IActivityManager.startActivity.call(ActivityManagerNative.getDefault.call(new Object[0]), objArr);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return 0;
    }

    private ActivityRecord getTopActivityRecord() {
        synchronized (this.mTasks) {
            synchronizeTasks();
        }
        LinkedList linkedList = new LinkedList(this.mTasks.values());
        if (linkedList.isEmpty()) {
            return null;
        }
        return ((TaskRecord) linkedList.get(linkedList.size() - 1)).getTopActivityRecord();
    }

    private Intent getStartStubActivityIntentInner(Intent intent, int i, int i2, ProxyActivityRecord proxyActivityRecord, ActivityInfo activityInfo) {
        Intent intent2 = new Intent();
        intent2.setComponent(new ComponentName(BlackBoxCore.getHostPkg(), ProxyManifest.getProxyActivity(i)));
        ProxyActivityRecord.saveStub(intent2, intent, proxyActivityRecord.mActivityInfo, proxyActivityRecord.mActivityRecord, proxyActivityRecord.mUserId);
        return intent2;
    }

    private void finishAllActivity(int i) {
        for (TaskRecord taskRecord : this.mTasks.values()) {
            for (ActivityRecord activityRecord : taskRecord.activities) {
                if (activityRecord.userId == i) {
                    boolean z = activityRecord.finished;
                }
            }
        }
    }

    ActivityRecord newActivityRecord(Intent intent, ActivityInfo activityInfo, IBinder iBinder, int i) {
        ActivityRecord create = ActivityRecord.create(intent, activityInfo, iBinder, i);
        synchronized (this.mLaunchingActivities) {
            this.mLaunchingActivities.add(create);
        }
        return create;
    }

    private ActivityRecord findActivityRecordByComponentName(int i, ComponentName componentName) {
        ActivityRecord activityRecord = null;
        for (TaskRecord taskRecord : this.mTasks.values()) {
            if (i == taskRecord.userId) {
                Iterator<ActivityRecord> it = taskRecord.activities.iterator();
                while (true) {
                    if (it.hasNext()) {
                        ActivityRecord next = it.next();
                        if (next.component.equals(componentName)) {
                            activityRecord = next;
                            break;
                        }
                    }
                }
            }
        }
        return activityRecord;
    }

    private ActivityRecord findActivityRecordByToken(int i, IBinder iBinder) {
        ActivityRecord activityRecord = null;
        if (iBinder != null) {
            for (TaskRecord taskRecord : this.mTasks.values()) {
                if (i == taskRecord.userId) {
                    Iterator<ActivityRecord> it = taskRecord.activities.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            ActivityRecord next = it.next();
                            if (next.token == iBinder) {
                                activityRecord = next;
                                break;
                            }
                        }
                    }
                }
            }
        }
        return activityRecord;
    }

    private TaskRecord findTaskRecordByTaskAffinityLocked(int i, String str) {
        synchronized (this.mTasks) {
            for (TaskRecord taskRecord : this.mTasks.values()) {
                if (i == taskRecord.userId && taskRecord.taskAffinity.equals(str)) {
                    return taskRecord;
                }
            }
            return null;
        }
    }

    private TaskRecord findTaskRecordByTokenLocked(int i, IBinder iBinder) {
        synchronized (this.mTasks) {
            for (TaskRecord taskRecord : this.mTasks.values()) {
                if (i == taskRecord.userId) {
                    for (ActivityRecord activityRecord : taskRecord.activities) {
                        if (activityRecord.token == iBinder) {
                            return taskRecord;
                        }
                    }
                    continue;
                }
            }
            return null;
        }
    }

    public void onActivityCreated(ProcessRecord processRecord, int i, IBinder iBinder, ActivityRecord activityRecord) {
        synchronized (this.mLaunchingActivities) {
            this.mLaunchingActivities.remove(activityRecord);
        }
        synchronized (this.mTasks) {
            synchronizeTasks();
            TaskRecord taskRecord = this.mTasks.get(Integer.valueOf(i));
            if (taskRecord == null) {
                taskRecord = new TaskRecord(i, activityRecord.userId, ComponentUtils.getTaskAffinity(activityRecord.info));
                taskRecord.rootIntent = activityRecord.intent;
                this.mTasks.put(Integer.valueOf(i), taskRecord);
            }
            activityRecord.token = iBinder;
            activityRecord.processRecord = processRecord;
            activityRecord.task = taskRecord;
            taskRecord.addTopActivity(activityRecord);
        }
    }

    public void onActivityResumed(int i, IBinder iBinder) {
        synchronized (this.mTasks) {
            synchronizeTasks();
            ActivityRecord findActivityRecordByToken = findActivityRecordByToken(i, iBinder);
            if (findActivityRecordByToken != null) {
                findActivityRecordByToken.task.removeActivity(findActivityRecordByToken);
                findActivityRecordByToken.task.addTopActivity(findActivityRecordByToken);
            }
        }
    }

    public void onActivityDestroyed(int i, IBinder iBinder) {
        synchronized (this.mTasks) {
            synchronizeTasks();
            ActivityRecord findActivityRecordByToken = findActivityRecordByToken(i, iBinder);
            if (findActivityRecordByToken != null) {
                findActivityRecordByToken.finished = true;
                findActivityRecordByToken.task.removeActivity(findActivityRecordByToken);
            }
        }
    }

    public void onFinishActivity(int i, IBinder iBinder) {
        synchronized (this.mTasks) {
            synchronizeTasks();
            ActivityRecord findActivityRecordByToken = findActivityRecordByToken(i, iBinder);
            if (findActivityRecordByToken != null) {
                findActivityRecordByToken.finished = true;
            }
        }
    }

    private void synchronizeTasks() {
        List<ActivityManager.RecentTaskInfo> recentTasks = this.mAms.getRecentTasks(100, 0);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int size = recentTasks.size() - 1; size >= 0; size--) {
            ActivityManager.RecentTaskInfo recentTaskInfo = recentTasks.get(size);
            TaskRecord taskRecord = this.mTasks.get(Integer.valueOf(recentTaskInfo.id));
            if (taskRecord != null) {
                linkedHashMap.put(Integer.valueOf(recentTaskInfo.id), taskRecord);
            }
        }
        this.mTasks.clear();
        this.mTasks.putAll(linkedHashMap);
    }
}
