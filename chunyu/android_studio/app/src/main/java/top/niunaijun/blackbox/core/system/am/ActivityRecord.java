package top.niunaijun.blackbox.core.system.am;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Binder;
import android.os.IBinder;
import top.niunaijun.blackbox.core.system.ProcessRecord;

/* loaded from: classes3.dex */
public class ActivityRecord extends Binder {
    public ComponentName component;
    public boolean finished;
    public ActivityInfo info;
    public Intent intent;
    public ProcessRecord processRecord;
    public IBinder resultTo;
    public TaskRecord task;
    public IBinder token;
    public int userId;

    public static ActivityRecord create(Intent intent, ActivityInfo activityInfo, IBinder iBinder, int i) {
        ActivityRecord activityRecord = new ActivityRecord();
        activityRecord.intent = intent;
        activityRecord.info = activityInfo;
        activityRecord.component = new ComponentName(activityInfo.packageName, activityInfo.name);
        activityRecord.resultTo = iBinder;
        activityRecord.userId = i;
        return activityRecord;
    }
}
