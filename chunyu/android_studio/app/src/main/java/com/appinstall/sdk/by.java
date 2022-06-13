package com.appinstall.sdk;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.tekartik.sqflite.Constant;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class by {
    private a a;
    private int b;
    private String c;
    private String d;
    private String e;

    /* loaded from: classes4.dex */
    public enum a {
        SUCCESS,
        FAIL,
        ERROR
    }

    public by() {
    }

    public by(a aVar, int i) {
        this.a = aVar;
        this.b = i;
    }

    public static by a(String str) throws JSONException {
        String str2;
        by byVar = new by();
        JSONObject jSONObject = new JSONObject(str);
        if (jSONObject.has("config") && !jSONObject.isNull("config")) {
            byVar.d(jSONObject.optString("config"));
        }
        int optInt = jSONObject.optInt(Constant.PARAM_ERROR_CODE, -2);
        if (optInt == 0) {
            byVar.a(a.SUCCESS);
            byVar.a(0);
            if (jSONObject.has(TtmlNode.TAG_BODY) && !jSONObject.isNull(TtmlNode.TAG_BODY)) {
                byVar.c(jSONObject.optString(TtmlNode.TAG_BODY));
            }
            if (jSONObject.has("msg") && !jSONObject.isNull("msg")) {
                str2 = jSONObject.optString("msg");
            }
            return byVar;
        }
        byVar.a(a.ERROR);
        byVar.a(-2);
        str2 = optInt + " : " + jSONObject.optString("msg");
        byVar.b(str2);
        return byVar;
    }

    public a a() {
        return this.a;
    }

    public void a(int i) {
        this.b = i;
    }

    public void a(a aVar) {
        this.a = aVar;
    }

    public int b() {
        return this.b;
    }

    public void b(String str) {
        this.d = str;
    }

    public String c() {
        return this.d;
    }

    public void c(String str) {
        this.c = str;
    }

    public String d() {
        return this.c;
    }

    public void d(String str) {
        this.e = str;
    }

    public String e() {
        return this.e;
    }
}
