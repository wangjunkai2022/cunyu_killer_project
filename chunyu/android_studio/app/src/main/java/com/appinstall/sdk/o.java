package com.appinstall.sdk;

import android.text.TextUtils;
import com.appinstall.api.listener.AppInstallListener;
import com.appinstall.api.model.AppData;
import com.appinstall.api.model.Error;
import com.appinstall.sdk.by;
import org.json.JSONException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class o implements ak {
    final /* synthetic */ AppInstallListener a;
    final /* synthetic */ m b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(m mVar, AppInstallListener appInstallListener) {
        this.b = mVar;
        this.a = appInstallListener;
    }

    @Override // com.appinstall.sdk.ak
    public void a(by byVar) {
        if (byVar.a() == by.a.SUCCESS) {
            if (cf.a) {
                cf.a("decodeInstall success : %s", byVar.d());
            }
            if (!TextUtils.isEmpty(byVar.c()) && cf.a) {
                cf.b("decodeInstall warning : %s", byVar.c());
            }
            try {
                bv d = bv.d(byVar.d());
                AppData appData = new AppData();
                appData.setChannel(d.a());
                appData.setData(d.b());
                if (this.a != null) {
                    this.a.onInstallFinish(appData, null);
                }
            } catch (JSONException e) {
                if (cf.a) {
                    cf.c("decodeInstall error : %s", e.toString());
                }
                AppInstallListener appInstallListener = this.a;
                if (appInstallListener != null) {
                    appInstallListener.onInstallFinish(null, null);
                }
            }
        } else {
            if (cf.a) {
                cf.c("decodeInstall fail : %s", byVar.c());
            }
            AppInstallListener appInstallListener2 = this.a;
            if (appInstallListener2 != null) {
                appInstallListener2.onInstallFinish(null, new Error(byVar.b(), byVar.c()));
            }
        }
    }
}
