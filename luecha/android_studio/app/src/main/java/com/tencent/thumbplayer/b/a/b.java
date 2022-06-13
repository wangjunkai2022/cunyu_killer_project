package com.tencent.thumbplayer.b.a;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.tvkbeacon.event.UserAction;
import com.tencent.tvkbeacon.event.open.BeaconConfig;
import com.tencent.tvkbeacon.event.open.BeaconEvent;
import com.tencent.tvkbeacon.event.open.BeaconReport;
import com.tencent.tvkbeacon.event.open.EventResult;
import com.tencent.tvkbeacon.event.open.EventType;
import com.tencent.tvkbeacon.qimei.IAsyncQimeiListener;
import com.tencent.tvkbeacon.qimei.Qimei;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class b {
    private static boolean a = true;

    public static void a(Context context) {
        TPLogUtil.i("TPBeaconReportWrapper", "Beacon sdk init.");
        try {
            Class.forName("com.tencent.tvkbeacon.event.open.BeaconReport");
            BeaconConfig.Builder builder = BeaconConfig.builder();
            BeaconReport.getInstance().setCollectMac(false);
            if (!TPPlayerConfig.isDataReportEnable()) {
                builder.auditEnable(false);
            }
            if (!TextUtils.isEmpty(TPPlayerConfig.beacon_policy_host) && !TextUtils.isEmpty(TPPlayerConfig.beacon_log_host)) {
                UserAction.setReportDomain(TPPlayerConfig.beacon_policy_host, TPPlayerConfig.beacon_log_host);
            }
            BeaconReport.getInstance().setLogAble(false);
            BeaconReport.getInstance().getQimei(new IAsyncQimeiListener() { // from class: com.tencent.thumbplayer.b.a.b.1
                public void onQimeiDispatch(Qimei qimei) {
                    TPLogUtil.i("TPBeaconReportWrapper", "reportEvent: OldQimei: " + qimei.getQimeiOld() + ", newQimei: " + qimei.getQimeiNew());
                }
            });
            BeaconReport.getInstance().start(context.getApplicationContext(), "00000GODBG3702Y1", builder.build());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            a = false;
        }
    }

    public static void a(String str, a aVar) {
        HashMap hashMap = new HashMap();
        aVar.a(hashMap);
        a(str, "00000GODBG3702Y1", hashMap);
    }

    public static void a(String str, String str2, Map<String, String> map) {
        if (a && TPPlayerConfig.isDataReportEnable()) {
            EventResult report = BeaconReport.getInstance().report(BeaconEvent.builder().withCode(str).withType(EventType.NORMAL).withAppKey(str2).withParams(map).build());
            if (report.errorCode != 0) {
                TPLogUtil.w("TPBeaconReportWrapper", "reportEvent: failed! eventId = " + report.eventID + ", errorCode=" + report.errorCode);
            }
        }
    }

    public static void a(String str, Map<String, String> map) {
        a(str, "00000GODBG3702Y1", map);
    }
}
