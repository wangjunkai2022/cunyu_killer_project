package com.netease.nis.captcha;

import android.content.Context;
import android.os.Build;
import com.netease.nis.captcha.e;
import com.umeng.analytics.pro.ai;
import java.net.URLEncoder;
import org.json.JSONObject;

/* compiled from: StatisticsUploader.java */
/* loaded from: classes2.dex */
public class g {
    private static volatile g b;
    private final b a = new b();

    /* compiled from: StatisticsUploader.java */
    /* loaded from: classes2.dex */
    class a implements e.b {
        a(g gVar) {
        }

        @Override // com.netease.nis.captcha.e.b
        public void a(String str) {
            c.a("%s", "上传统计信息成功");
        }

        @Override // com.netease.nis.captcha.e.b
        public void onError(int i, String str) {
        }
    }

    /* compiled from: StatisticsUploader.java */
    /* loaded from: classes2.dex */
    public static class b {
        String b;
        String c;
        String e;
        String f;
        String a = "captcha";
        String d = "Android";
        a g = new a();

        /* compiled from: StatisticsUploader.java */
        /* loaded from: classes2.dex */
        public static class a {
            String a;
            String b;
            String c;
            String d;
        }
    }

    private g() {
    }

    public static g b() {
        if (b == null) {
            synchronized (g.class) {
                if (b == null) {
                    b = new g();
                }
            }
        }
        return b;
    }

    public void a(String str, long j, long j2) {
        b bVar = this.a;
        bVar.b = str;
        bVar.c = String.valueOf(j);
        this.a.g.a = String.valueOf(j2);
    }

    private void a(Context context) {
        this.a.e = c.b(context);
        this.a.f = c.a(context);
        b.a aVar = this.a.g;
        aVar.b = Build.MODEL;
        aVar.c = Captcha.SDK_VERSION;
        aVar.d = Build.VERSION.RELEASE;
    }

    private String a() {
        StringBuilder sb = new StringBuilder();
        sb.append("pid=");
        sb.append(this.a.a);
        sb.append("&bid=");
        sb.append(this.a.b);
        sb.append("&nts=");
        sb.append(this.a.c);
        sb.append("&tt=");
        sb.append(this.a.d);
        sb.append("&ip=");
        sb.append(this.a.e);
        sb.append("&dns=");
        sb.append(this.a.f);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("tc", this.a.g.a);
        jSONObject.put("m", this.a.g.b);
        jSONObject.put(ai.aC, this.a.g.c);
        jSONObject.put(ai.x, this.a.g.d);
        sb.append("&value=");
        sb.append(URLEncoder.encode(jSONObject.toString(), "utf-8"));
        return URLEncoder.encode(sb.toString(), "utf-8");
    }

    public void b(Context context) {
        a(context);
        try {
            String a2 = a();
            e.a("https://da.dun.163.com/sn.gif?d=" + URLEncoder.encode(a2, "utf-8"), new a(this));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
