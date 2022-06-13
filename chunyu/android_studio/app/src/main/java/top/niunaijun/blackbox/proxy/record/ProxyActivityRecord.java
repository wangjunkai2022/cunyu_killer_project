package top.niunaijun.blackbox.proxy.record;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.IBinder;
import top.niunaijun.blackbox.utils.compat.BundleCompat;

/* loaded from: classes3.dex */
public class ProxyActivityRecord {
    public ActivityInfo mActivityInfo;
    public IBinder mActivityRecord;
    public Intent mTarget;
    public int mUserId;

    public ProxyActivityRecord(int i, ActivityInfo activityInfo, Intent intent, IBinder iBinder) {
        this.mUserId = i;
        this.mActivityInfo = activityInfo;
        this.mTarget = intent;
        this.mActivityRecord = iBinder;
    }

    public static void saveStub(Intent intent, Intent intent2, ActivityInfo activityInfo, IBinder iBinder, int i) {
        intent.putExtra("_VM_|_user_id_", i);
        intent.putExtra("_VM_|_activity_info_", activityInfo);
        intent.putExtra("_VM_|_target_", intent2);
        BundleCompat.putBinder(intent, "_VM_|_activity_record_v_", iBinder);
    }

    public static ProxyActivityRecord create(Intent intent) {
        return new ProxyActivityRecord(intent.getIntExtra("_VM_|_user_id_", 0), (ActivityInfo) intent.getParcelableExtra("_VM_|_activity_info_"), (Intent) intent.getParcelableExtra("_VM_|_target_"), BundleCompat.getBinder(intent, "_VM_|_activity_record_v_"));
    }
}
