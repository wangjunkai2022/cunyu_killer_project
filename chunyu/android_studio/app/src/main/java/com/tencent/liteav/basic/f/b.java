package com.tencent.liteav.basic.f;

import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: TXCCompatibleConfig.java */
/* loaded from: classes2.dex */
public class b {
    private final Map<String, String> a = new HashMap();
    private JSONObject b = null;

    public synchronized void a(JSONArray jSONArray) {
        this.a.clear();
        this.b = b(jSONArray);
        if (this.b == null) {
            TXCLog.i("CompatibleConfig", "can't find best match value");
            return;
        }
        a(this.a, "", this.b);
        b();
    }

    public synchronized void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                this.a.clear();
                this.b = new JSONObject(str);
                a(this.a, "", this.b);
                b();
            } catch (JSONException e) {
                TXCLog.e("CompatibleConfig", "parse best match value failed.", e);
            }
        }
    }

    public synchronized JSONObject a() {
        return this.b;
    }

    private void b() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : this.a.entrySet()) {
            sb.append(entry.getKey());
            sb.append(" : ");
            sb.append(entry.getValue());
            sb.append("\n");
        }
        TXCLog.i("CompatibleConfig", sb.toString());
    }

    private JSONObject b(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        JSONObject jSONObject = null;
        int i = 0;
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                int a = a(jSONObject2.optJSONObject("deviceinfo"));
                JSONObject optJSONObject = jSONObject2.optJSONObject("deviceconfig");
                if (a > i && optJSONObject != null) {
                    jSONObject = optJSONObject;
                    i = a;
                }
            } catch (JSONException e) {
                TXCLog.e("CompatibleConfig", "Find best match value failed.", e);
            }
        }
        TXCLog.i("CompatibleConfig", "bestMatchLevel: %d", Integer.valueOf(i));
        if (i > 0) {
            return jSONObject;
        }
        return null;
    }

    private int a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return 0;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(TXCBuild.Manufacturer(), jSONObject.optString("MANUFACTURER")));
        arrayList.add(new Pair(TXCBuild.Model(), jSONObject.optString("MODEL")));
        arrayList.add(new Pair(String.valueOf(TXCBuild.VersionInt()), jSONObject.optString("VERSION")));
        arrayList.add(new Pair(TXCBuild.VersionIncremental(), jSONObject.optString("VERSION_INCREMENTAL")));
        arrayList.add(new Pair(Build.DISPLAY, jSONObject.optString("DISPLAY")));
        for (int i = 0; i < arrayList.size(); i++) {
            Pair pair = (Pair) arrayList.get(i);
            if (TextUtils.isEmpty((CharSequence) pair.second)) {
                return i;
            }
            if (!((String) pair.first).equalsIgnoreCase((String) pair.second)) {
                return 0;
            }
        }
        return arrayList.size();
    }

    private void a(Map<String, String> map, String str, JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object opt = jSONObject.opt(next);
            if (opt instanceof JSONObject) {
                a(map, str + "." + next, (JSONObject) opt);
            } else if (opt != null) {
                map.put(str + "." + next, opt.toString());
            }
        }
    }
}
