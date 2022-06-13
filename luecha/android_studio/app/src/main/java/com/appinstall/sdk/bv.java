package com.appinstall.sdk;

import android.text.TextUtils;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class bv implements Serializable {
    private String a = "";
    private String b = "";
    private String c = "";

    public static bv d(String str) throws JSONException {
        bv bvVar = new bv();
        if (TextUtils.isEmpty(str)) {
            return bvVar;
        }
        JSONObject jSONObject = new JSONObject(str);
        if (jSONObject.has("market")) {
            bvVar.a(jSONObject.optString("market"));
        }
        if (jSONObject.has("channelCode")) {
            bvVar.b(jSONObject.optString("channelCode"));
        }
        if (jSONObject.has("bind")) {
            bvVar.c(jSONObject.optString("bind"));
        }
        return bvVar;
    }

    public String a() {
        return this.b;
    }

    public void a(String str) {
        this.a = str;
    }

    public String b() {
        return this.c;
    }

    public void b(String str) {
        this.b = str;
    }

    public void c(String str) {
        this.c = str;
    }
}
