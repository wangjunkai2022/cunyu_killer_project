package com.umeng.analytics.pro;

import android.content.Context;
import com.umeng.commonsdk.debug.UMLog;
import org.repackage.com.miui.deviceid.IdentifierManager;

/* compiled from: XiaomiDeviceIdSupplier.java */
/* loaded from: classes3.dex */
class ag implements y {
    @Override // com.umeng.analytics.pro.y
    public String a(Context context) {
        try {
            if (IdentifierManager.a()) {
                return IdentifierManager.b(context);
            }
            UMLog.mutlInfo(2, "当前设备不支持获取OAID");
            return null;
        } catch (Exception unused) {
            while (true) {
                UMLog.mutlInfo(2, "未检测到您集成OAID SDK包");
                return null;
            }
        }
    }
}
