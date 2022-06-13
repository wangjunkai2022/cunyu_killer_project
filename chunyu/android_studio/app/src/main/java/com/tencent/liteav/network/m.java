package com.tencent.liteav.network;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.tencent.liteav.basic.log.TXCLog;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: TXPlayInfoResponse.java */
/* loaded from: classes2.dex */
public class m {
    protected JSONObject a;
    n b;

    /* compiled from: TXPlayInfoResponse.java */
    /* loaded from: classes2.dex */
    public static class a {
        public String a;
        public String b;
        public List<Integer> c;
    }

    public m(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    public String a() {
        if (this.b == null) {
            this.b = m();
        }
        n nVar = this.b;
        if (nVar != null) {
            return nVar.a;
        }
        return null;
    }

    public int b() {
        if (this.b == null) {
            this.b = m();
        }
        n nVar = this.b;
        if (nVar != null) {
            return nVar.e;
        }
        return -1;
    }

    public int c() {
        if (this.b == null) {
            this.b = m();
        }
        n nVar = this.b;
        if (nVar != null) {
            return nVar.d;
        }
        return -1;
    }

    private n m() {
        if (g() != null) {
            return g();
        }
        if (e().size() != 0) {
            List<Integer> l = l();
            if (l != null) {
                for (n nVar : e()) {
                    if (l.contains(Integer.valueOf(nVar.a()))) {
                        return nVar;
                    }
                }
            }
            return e().get(0);
        } else if (f() != null) {
            return f();
        } else {
            return null;
        }
    }

    public String d() {
        try {
            JSONObject jSONObject = this.a.getJSONObject("coverInfo");
            if (jSONObject != null) {
                return jSONObject.getString("coverUrl");
            }
            return null;
        } catch (JSONException e) {
            TXCLog.e("TXPlayInfoResponse", "get cover url failed.", e);
            return null;
        }
    }

    public List<n> e() {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = this.a.getJSONObject("videoInfo").getJSONArray("transcodeList");
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    n nVar = new n();
                    nVar.a = jSONObject.getString(ImagesContract.URL);
                    nVar.e = jSONObject.getInt("duration");
                    nVar.c = jSONObject.getInt("width");
                    nVar.b = jSONObject.getInt("height");
                    nVar.d = Math.max(jSONObject.getInt("totalSize"), jSONObject.getInt("size"));
                    nVar.f = jSONObject.getInt("bitrate");
                    nVar.i = jSONObject.getInt("definition");
                    nVar.g = jSONObject.getString(TtmlNode.RUBY_CONTAINER);
                    nVar.h = jSONObject.getString("templateName");
                    arrayList.add(nVar);
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    public n f() {
        try {
            JSONObject jSONObject = this.a.getJSONObject("videoInfo").getJSONObject("sourceVideo");
            n nVar = new n();
            nVar.a = jSONObject.getString(ImagesContract.URL);
            nVar.e = jSONObject.getInt("duration");
            nVar.c = jSONObject.getInt("width");
            nVar.b = jSONObject.getInt("height");
            nVar.d = Math.max(jSONObject.getInt("size"), jSONObject.getInt("totalSize"));
            nVar.f = jSONObject.getInt("bitrate");
            return nVar;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public n g() {
        try {
            JSONObject jSONObject = this.a.getJSONObject("videoInfo").getJSONObject("masterPlayList");
            n nVar = new n();
            nVar.a = jSONObject.getString(ImagesContract.URL);
            return nVar;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String h() {
        try {
            JSONObject jSONObject = this.a.getJSONObject("videoInfo").getJSONObject("basicInfo");
            if (jSONObject != null) {
                return jSONObject.getString("name");
            }
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String i() {
        try {
            JSONObject jSONObject = this.a.getJSONObject("videoInfo").getJSONObject("basicInfo");
            if (jSONObject != null) {
                return jSONObject.getString("description");
            }
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String j() {
        try {
            return this.a.getJSONObject("playerInfo").getString("defaultVideoClassification");
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<a> k() {
        try {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = this.a.getJSONObject("playerInfo").getJSONArray("videoClassification");
            for (int i = 0; i < jSONArray.length(); i++) {
                a aVar = new a();
                aVar.a = jSONArray.getJSONObject(i).getString("id");
                aVar.b = jSONArray.getJSONObject(i).getString("name");
                aVar.c = new ArrayList();
                JSONArray jSONArray2 = jSONArray.getJSONObject(i).getJSONArray("definitionList");
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    aVar.c.add(Integer.valueOf(jSONArray2.getInt(i2)));
                }
                arrayList.add(aVar);
            }
            return arrayList;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<Integer> l() {
        List<a> k = k();
        String j = j();
        if (j == null || k == null) {
            return null;
        }
        for (a aVar : k) {
            if (aVar.a.equals(j)) {
                return aVar.c;
            }
        }
        return null;
    }

    public n a(String str, String str2) {
        List<Integer> list;
        List<a> k = k();
        if (!(str == null || k == null)) {
            for (a aVar : k) {
                if (aVar.a.equals(str)) {
                    list = aVar.c;
                    break;
                }
            }
        }
        list = null;
        if (list != null) {
            for (n nVar : e()) {
                if (list.contains(Integer.valueOf(nVar.i)) && (nVar.e() == null || nVar.e().contains(str2))) {
                    return nVar;
                }
            }
        }
        return null;
    }

    public n b(String str, String str2) {
        if (str == null) {
            return null;
        }
        for (n nVar : e()) {
            if (str.equals(nVar.f()) && (nVar.e() == null || nVar.e().contains(str2))) {
                return nVar;
            }
        }
        return null;
    }
}
