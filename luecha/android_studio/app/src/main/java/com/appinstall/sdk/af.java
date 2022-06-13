package com.appinstall.sdk;

import android.net.Uri;
import android.text.TextUtils;
import com.appinstall.api.listener.AppWakeUpListener;
import com.appinstall.api.model.AppData;
import com.appinstall.api.model.Error;
import com.appinstall.sdk.by;
import org.json.JSONException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class af implements ak {
    final /* synthetic */ AppWakeUpListener a;
    final /* synthetic */ Uri b;
    final /* synthetic */ m c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(m mVar, AppWakeUpListener appWakeUpListener, Uri uri) {
        this.c = mVar;
        this.a = appWakeUpListener;
        this.b = uri;
    }

    @Override // com.appinstall.sdk.ak
    public void a(by byVar) {
        if (byVar.a() == by.a.SUCCESS) {
            if (cf.a) {
                cf.a("decodeWakeUp success : %s", byVar.d());
            }
            if (!TextUtils.isEmpty(byVar.c()) && cf.a) {
                cf.b("decodeWakeUp warning : %s", byVar.c());
            }
            try {
                AppData appData = new AppData();
                if (byVar.b() == 1) {
                    appData = this.c.b(byVar.d());
                } else {
                    bv d = bv.d(byVar.d());
                    appData.setChannel(d.a());
                    appData.setData(d.b());
                }
                if (this.a != null) {
                    this.a.onWakeUpFinish(appData, null);
                }
                if (appData != null && !appData.isEmpty()) {
                    this.c.a(this.b);
                }
            } catch (JSONException e) {
                if (cf.a) {
                    cf.c("decodeWakeUp error : %s", e.toString());
                }
                AppWakeUpListener appWakeUpListener = this.a;
                if (appWakeUpListener != null) {
                    appWakeUpListener.onWakeUpFinish(null, null);
                }
            }
        } else {
            if (cf.a) {
                cf.c("decodeWakeUp fail : %s", byVar.c());
            }
            AppWakeUpListener appWakeUpListener2 = this.a;
            if (appWakeUpListener2 != null) {
                appWakeUpListener2.onWakeUpFinish(null, new Error(byVar.b(), byVar.c()));
            }
        }
    }
}
