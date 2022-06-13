package com.netease.nis.captcha;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.basesdk.crash.BaseJavaCrashHandler;
import com.umeng.analytics.pro.ai;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.json.JSONObject;

/* compiled from: CrashHandler.java */
/* loaded from: classes2.dex */
public final class d extends BaseJavaCrashHandler {
    private static boolean c;
    private String a;
    private Context b;

    /* compiled from: CrashHandler.java */
    /* loaded from: classes2.dex */
    private static class b {
        private static final d a = new d();
    }

    public static d b() {
        return b.a;
    }

    public void a(String str, Context context) {
        if (!c) {
            if (context.getExternalFilesDir("nCrash") != null) {
                super.initialize(context.getExternalFilesDir("nCrash").toString());
            } else {
                super.initialize(context.getFilesDir().toString());
            }
            this.a = str;
            this.b = context;
            c = true;
        }
    }

    @Override // com.netease.nis.basesdk.crash.BaseJavaCrashHandler
    protected String buildCrashInfo(Throwable th) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("pid=captcha_sdk_crash");
        sb.append("&version=");
        sb.append(Captcha.SDK_VERSION);
        sb.append("&bid=");
        sb.append(this.a);
        sb.append("&nts=");
        sb.append(System.currentTimeMillis());
        sb.append("&tt=1");
        sb.append("&ip=");
        sb.append(c.b(this.b));
        sb.append("&dns=");
        sb.append(c.a(this.b));
        sb.append("&type=");
        sb.append(5);
        sb.append("&name=crash");
        sb.append("&value=");
        JSONObject jSONObject = new JSONObject();
        try {
            String th2 = th.toString();
            if (th.getMessage() != null) {
                str = th.getMessage();
            } else {
                str = "";
            }
            jSONObject.put("cn", th2.replace(str, ""));
            jSONObject.put("cr", th.getMessage());
            jSONObject.put("ck", Log.getStackTraceString(th));
            jSONObject.put("ct", System.currentTimeMillis());
            jSONObject.put("m", Build.MODEL);
            jSONObject.put(ai.x, Build.VERSION.RELEASE);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            sb.append(URLEncoder.encode(jSONObject.toString(), "UTF-8"));
        } catch (UnsupportedEncodingException unused) {
            Logger.e("CrashHandler", "encode失败");
        }
        return sb.toString();
    }

    @Override // com.netease.nis.basesdk.crash.BaseJavaCrashHandler
    protected boolean interceptHandleException(Throwable th) {
        String stackTraceString = Log.getStackTraceString(th);
        return stackTraceString != null && !stackTraceString.contains("com.netease.nis.captcha.");
    }

    private d() {
    }
}
