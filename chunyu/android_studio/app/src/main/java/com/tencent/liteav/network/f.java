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
/* loaded from: classes2.dex */
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
    /* loaded from: classes2.dex */
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
        JSONObject optJSONObject;
        try {
            JSONObject jSONObject = this.a.getJSONObject("media");
            if (jSONObject != null) {
                JSONObject optJSONObject2 = jSONObject.optJSONObject("basicInfo");
                if (optJSONObject2 != null) {
                    this.b = optJSONObject2.optString("name");
                    this.d = optJSONObject2.optString("description");
                    if (TextUtils.isEmpty(this.d)) {
                        this.d = this.b;
                    }
                    this.e = optJSONObject2.optString("coverUrl");
                    this.f = optJSONObject2.optInt("duration");
                    this.g = optJSONObject2.optInt("size");
                }
                String optString = jSONObject.optString("audioVideoType");
                if (TextUtils.equals(optString, "AdaptiveDynamicStream")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("streamingInfo");
                    if (jSONObject2 != null) {
                        JSONObject optJSONObject3 = jSONObject2.optJSONObject("plainOutput");
                        if (optJSONObject3 != null) {
                            this.c = optJSONObject3.optString(ImagesContract.URL);
                            a(optJSONObject3.optJSONArray("subStreams"));
                        }
                        JSONArray optJSONArray = jSONObject2.optJSONArray("drmOutput");
                        if (optJSONArray != null && optJSONArray.length() > 0) {
                            this.h = new ArrayList();
                            for (int i = 0; i < optJSONArray.length(); i++) {
                                JSONObject optJSONObject4 = optJSONArray.optJSONObject(i);
                                String optString2 = optJSONObject4.optString("type");
                                String optString3 = optJSONObject4.optString(ImagesContract.URL);
                                a aVar = new a();
                                aVar.a = optString2;
                                aVar.b = optString3;
                                this.k = optString2;
                                this.h.add(aVar);
                                a(optJSONObject4.optJSONArray("subStreams"));
                            }
                        }
                        this.j = jSONObject2.optString("drmToken");
                    }
                } else if (TextUtils.equals(optString, "Transcode")) {
                    JSONObject optJSONObject5 = jSONObject.optJSONObject("transcodeInfo");
                    if (optJSONObject5 != null) {
                        this.c = optJSONObject5.optString(ImagesContract.URL);
                    }
                } else if (TextUtils.equals(optString, "Original") && (optJSONObject = jSONObject.optJSONObject("originalInfo")) != null) {
                    this.c = optJSONObject.optString(ImagesContract.URL);
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
