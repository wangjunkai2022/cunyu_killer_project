package com.appinstall.sdk;

import android.content.Context;
import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.appinstall.api.Configuration;
import com.appinstall.api.listener.AppInstallListener;
import com.appinstall.api.listener.AppWakeUpListener;
import com.appinstall.api.listener.GetUpdateApkListener;
import com.appinstall.api.model.AppData;
import com.umeng.analytics.pro.ai;
import java.io.File;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class m extends ah {
    private final bd p;
    private final cg m = cg.a("Co");
    private final bc o = new bc();
    private final bg n = new bg();
    private final ThreadPoolExecutor q = d();
    private final ThreadPoolExecutor r = e();
    private final ThreadPoolExecutor s = f();

    public m(Context context, Looper looper, d dVar, f fVar, String str, g gVar, Configuration configuration) {
        super(context, looper, dVar, fVar, str, gVar, configuration);
        this.p = new bd(context);
    }

    private void a(boolean z, int i, AppInstallListener appInstallListener) {
        if (i <= 0) {
            i = 10;
        }
        this.r.execute(new al(this.s, new ag(this, i, z), new o(this, appInstallListener)));
    }

    public AppData b(String str) throws JSONException {
        AppData appData = new AppData();
        if (TextUtils.isEmpty(str)) {
            return appData;
        }
        JSONObject jSONObject = new JSONObject(str);
        if (jSONObject.has(ai.aD)) {
            appData.setChannel(jSONObject.optString(ai.aD));
        }
        if (jSONObject.has("d") && !jSONObject.isNull("d")) {
            appData.setData(jSONObject.optString("d"));
        }
        return appData;
    }

    private void b(Uri uri) {
        this.r.execute(new p(this, 600, uri));
    }

    private void b(Uri uri, AppWakeUpListener appWakeUpListener) {
        this.r.execute(new al(this.s, new ad(this, 10, uri), new af(this, appWakeUpListener, uri)));
    }

    private void b(GetUpdateApkListener getUpdateApkListener) {
        String str = this.a.getApplicationInfo().sourceDir;
        this.r.execute(new r(this, str, this.a.getFilesDir() + File.separator + this.a.getPackageName() + ".apk", getUpdateApkListener));
    }

    private void b(bl blVar) {
        this.q.execute(new w(this, blVar));
    }

    private ThreadPoolExecutor d() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(10), new n(this));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    private ThreadPoolExecutor e() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(3, 10, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(30), new s(this), new t(this));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    private ThreadPoolExecutor f() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(3, 10, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(30), new u(this), new v(this));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    public void g() {
        String a = TextUtils.isEmpty(this.c.h()) ? this.j.a(this.d) : this.c.h();
        if (cf.a) {
            cf.a("opid = %s", a);
        }
    }

    private void h() {
        this.r.execute(new q(this, 600));
    }

    @Override // com.appinstall.sdk.ah
    public void a() {
        ThreadPoolExecutor threadPoolExecutor = this.r;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.shutdown();
        }
        ThreadPoolExecutor threadPoolExecutor2 = this.s;
        if (threadPoolExecutor2 != null) {
            threadPoolExecutor2.shutdown();
        }
        super.a();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what == 1) {
            b((bl) ((ai) message.obj).a());
        } else if (message.what == 2) {
            ai aiVar = (ai) message.obj;
            b((Uri) aiVar.a(), (AppWakeUpListener) aiVar.c());
        } else if (message.what == 3) {
            ai aiVar2 = (ai) message.obj;
            Boolean bool = (Boolean) aiVar2.a();
            AppInstallListener appInstallListener = (AppInstallListener) aiVar2.c();
            a(bool == null ? false : bool.booleanValue(), aiVar2.b().intValue(), appInstallListener);
        } else if (message.what == 12) {
            b((Uri) ((ai) message.obj).a());
        } else if (message.what == 11) {
            h();
        } else if (message.what == 31) {
            b((GetUpdateApkListener) ((ai) message.obj).c());
        } else if (message.what == 0) {
            a();
        }
    }
}
