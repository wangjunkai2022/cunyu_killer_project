package com.tencent.thumbplayer.utils;

import android.text.TextUtils;
import com.tencent.thumbplayer.b.a.a;
import java.util.Map;
import java.util.Properties;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class l implements a {
    protected final Properties a;

    public l() {
        this(null);
    }

    public l(Properties properties) {
        this.a = new Properties();
        if (properties != null) {
            for (Map.Entry entry : properties.entrySet()) {
                a((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    public Properties a() {
        return this.a;
    }

    @Override // com.tencent.thumbplayer.b.a.a
    public void a(String str, float f) {
        if (str != null) {
            this.a.put(str, String.valueOf(f));
        }
    }

    @Override // com.tencent.thumbplayer.b.a.a
    public void a(String str, int i) {
        if (str != null) {
            this.a.put(str, String.valueOf(i));
        }
    }

    @Override // com.tencent.thumbplayer.b.a.a
    public void a(String str, long j) {
        if (str != null) {
            this.a.put(str, String.valueOf(j));
        }
    }

    @Override // com.tencent.thumbplayer.b.a.a
    public void a(String str, String str2) {
        if (str == null) {
            return;
        }
        if (!TextUtils.isEmpty(str2)) {
            this.a.put(str, str2);
        } else {
            this.a.put(str, "");
        }
    }

    @Override // com.tencent.thumbplayer.b.a.a
    public void a(Map<String, String> map) {
        if (map != null) {
            for (Map.Entry entry : this.a.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                if (value == null) {
                    map.put(key.toString(), "");
                } else {
                    map.put(key.toString(), value.toString());
                }
            }
            return;
        }
        throw new IllegalArgumentException("map must not be null!");
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject(this.a);
        if (jSONObject.has("data")) {
            try {
                String string = jSONObject.getString("data");
                jSONObject.remove("data");
                jSONObject.put("data", new JSONObject(string));
            } catch (JSONException e) {
                TPLogUtil.e("TPProperties", e);
            }
        }
        return jSONObject.toString();
    }
}
