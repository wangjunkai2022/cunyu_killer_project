package top.niunaijun.blackbox.core.system.am;

import android.content.Intent;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class TaskRecord {
    public final List<ActivityRecord> activities = new LinkedList();
    public int id;
    public Intent rootIntent;
    public String taskAffinity;
    public int userId;

    public TaskRecord(int i, int i2, String str) {
        this.id = i;
        this.userId = i2;
        this.taskAffinity = str;
    }

    public boolean needNewTask() {
        for (ActivityRecord activityRecord : this.activities) {
            if (!activityRecord.finished) {
                return false;
            }
        }
        return true;
    }

    public void addTopActivity(ActivityRecord activityRecord) {
        this.activities.add(activityRecord);
    }

    public void removeActivity(ActivityRecord activityRecord) {
        this.activities.remove(activityRecord);
    }

    public ActivityRecord getTopActivityRecord() {
        for (int size = this.activities.size() - 1; size >= 0; size--) {
            ActivityRecord activityRecord = this.activities.get(size);
            if (!activityRecord.finished) {
                return activityRecord;
            }
        }
        return null;
    }
}
