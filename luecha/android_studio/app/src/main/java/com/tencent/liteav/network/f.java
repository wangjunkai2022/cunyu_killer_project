package com.tencent.liteav.network;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.ImagesContract;
import com.tencent.liteav.network.g;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: TXCPlayInfoParserV4.java */
/* loaded from: classes5.dex */
public class f {
    private JSONObject a;
    private String b;
    private String c;
    private String d;
    private String e;
    private int f;
    private int g;
    private List<a> h;
    private List<g.b> i;
    private String j;
    private String k;

    /* compiled from: TXCPlayInfoParserV4.java */
    /* loaded from: classes5.dex */
    public static class a {
        public String a;
        public String b;
    }

    public f(JSONObject jSONObject) {
        this.a = jSONObject;
        j();
    }

    private void a(JSONArray jSONArray) throws JSONException {
        if (jSONArray != null && jSONArray.length() > 0) {
            this.i = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                g.b bVar = new g.b();
                int optInt = jSONObject.optInt("width");
                int optInt2 = jSONObject.optInt("height");
                bVar.b = optInt;
                bVar.c = optInt2;
                bVar.a = jSONObject.optString("resolutionName");
                bVar.d = jSONObject.optString("type");
                this.i.add(bVar);
            }
        }
    }

    private void j() {
        try {
            JSONObject jSONObject = this.a.getJSONObject("media");
            if (jSONObject != null) {
                JSONObject optJSONObject = jSONObject.optJSONObject("basicInfo");
                if (optJSONObject != null) {
                    this.b = optJSONObject.optString("name");
                    this.d = optJSONObject.optString("description");
                    if (TextUtils.isEmpty(this.d)) {
                        this.d = this.b;
                    }
                    this.e = optJSONObject.optString("coverUrl");
                    this.f = optJSONObject.optInt("duration");
                    this.g = optJSONObject.optInt("size");
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject("streamingInfo");
                if (jSONObject2 != null) {
                    JSONObject optJSONObject2 = jSONObject2.optJSONObject("plainOutput");
                    if (optJSONObject2 != null) {
                        this.c = optJSONObject2.optString(ImagesContract.URL);
                        a(optJSONObject2.optJSONArray("subStreams"));
                    }
                    JSONArray optJSONArray = jSONObject2.optJSONArray("drmOutput");
                    if (optJSONArray != null && optJSONArray.length() > 0) {
                        this.h = new ArrayList();
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject optJSONObject3 = optJSONArray.optJSONObject(i);
                            String optString = optJSONObject3.optString("type");
                            String optString2 = optJSONObject3.optString(ImagesContract.URL);
                            a aVar = new a();
                            aVar.a = optString;
                            aVar.b = optString2;
                            this.k = optString;
                            this.h.add(aVar);
                            a(optJSONObject3.optJSONArray("subStreams"));
                        }
                    }
                    this.j = jSONObject2.optString("drmToken");
                }
            }
        } catch (JSONException e) {
            Log.e("TXCPlayInfoParserV4", Log.getStackTraceString(e));
        }
    }

    public String a() {
        return !TextUtils.isEmpty(this.j) ? a("SimpleAES") : this.c;
    }

    public String a(String str) {
        for (a aVar : this.h) {
            if (aVar.a != null && aVar.a.equalsIgnoreCase(str)) {
                return aVar.b;
            }
        }
        return null;
    }

    public String b() {
        if (TextUtils.isEmpty(this.j)) {
            return null;
        }
        return this.j;
    }

    public String c() {
        return this.b;
    }

    public String d() {
        return this.d;
    }

    public String e() {
        return this.e;
    }

    public int f() {
        return this.f;
    }

    public int g() {
        return this.g;
    }

    public List<g.b> h() {
        return this.i;
    }

    public String i() {
        return this.k;
    }
}
