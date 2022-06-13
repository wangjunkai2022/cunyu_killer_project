package com.tencent.liteav.network;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.liteav.basic.f.c;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.h;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: UploadQualityData.java */
/* loaded from: classes2.dex */
public class q {
    protected static q a = new q();
    private Context b = null;
    private long c = 3;

    public static q a() {
        return a;
    }

    protected q() {
    }

    public void a(Context context) {
        if (this.b == null) {
            this.b = context.getApplicationContext();
        }
    }

    public String b() {
        try {
            if (this.b != null) {
                int d = h.d(this.b);
                if (d == 0) {
                    return "";
                }
                if (d == 1) {
                    return "wifi:";
                }
                if (d == 2) {
                    return "4g:";
                }
                if (d == 3) {
                    return "3g:";
                }
                if (d == 4) {
                    return "2g:";
                }
                if (d == 5) {
                    return "ethernet:";
                }
                return d == 6 ? "5g:" : "xg:";
            }
        } catch (Exception e) {
            TXCLog.e("UploadQualityData", "get network type failed." + e.getMessage());
        }
        return "";
    }

    public void a(String str, long j, long j2, long j3, float f, float f2, float f3) {
        if (c.a().a("Network", "QualityDataCacheCount") > 0) {
            TXCLog.e("UploadQualityData", String.format("updateQualityData: accessID = %s serverType = %d totalTime = %d networkRTT = %d avgBlockCnt = %f avgVideoQue = %f avgAudioQue = %f", str, Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3), Float.valueOf(f), Float.valueOf(f2), Float.valueOf(f3)));
            if (!b(str)) {
                try {
                    SharedPreferences sharedPreferences = this.b.getSharedPreferences("com.tencent.liteav.network", 0);
                    JSONObject c = c(sharedPreferences.getString("34238512-C08C-4931-A000-40E1D8B5BA5B", ""));
                    JSONObject optJSONObject = c.optJSONObject(str);
                    if (optJSONObject == null) {
                        optJSONObject = new JSONObject();
                    }
                    String str2 = j == 3 ? "DomainArrayData" : "OriginArrayData";
                    JSONArray optJSONArray = optJSONObject.optJSONArray(str2);
                    if (optJSONArray == null) {
                        optJSONArray = new JSONArray();
                    }
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("totalTime", j2);
                    jSONObject.put("networkRTT", j3);
                    jSONObject.put("avgBlockCnt", (double) f);
                    jSONObject.put("avgVideoQue", (double) f2);
                    jSONObject.put("avgAudioQue", (double) f3);
                    optJSONArray.put(jSONObject);
                    int length = optJSONArray.length();
                    long j4 = (long) length;
                    if (j4 > this.c) {
                        JSONArray jSONArray = new JSONArray();
                        for (int i = (int) (j4 - this.c); i < length; i++) {
                            jSONArray.put(optJSONArray.get(i));
                        }
                        optJSONArray = jSONArray;
                    }
                    optJSONObject.put(str2, optJSONArray);
                    c.put(str, optJSONObject);
                    sharedPreferences.edit().putString("34238512-C08C-4931-A000-40E1D8B5BA5B", c.toString()).commit();
                } catch (Exception e) {
                    TXCLog.e("UploadQualityData", "build json object failed.", e);
                }
            }
        }
    }

    public boolean c() {
        d();
        String b = b();
        String str = "isDomainAddressBetter: accessID = " + b + " minQualityDataCount = " + this.c;
        a a2 = a(b, true);
        a a3 = a(b, false);
        if (a2 != null) {
            str = String.format("%s \n isDomainAddressBetter：domainQualityData count = %d avgNetworkRTT = %f avgBlockCount = %f avgVideoQueue = %f avgAudioQueue = %f", str, Long.valueOf(a2.e), Float.valueOf(a2.a), Float.valueOf(a2.b), Float.valueOf(a2.c), Float.valueOf(a2.d));
        }
        if (a3 != null) {
            str = String.format("%s \n isDomainAddressBetter：originQualityData count = %d avgNetworkRTT = %f avgBlockCount = %f avgVideoQueue = %f avgAudioQueue = %f", str, Long.valueOf(a3.e), Float.valueOf(a3.a), Float.valueOf(a3.b), Float.valueOf(a3.c), Float.valueOf(a3.d));
        }
        TXCLog.e("UploadQualityData", str);
        if (a2 == null || a2.e < this.c || a3 == null || a3.e < this.c || a2.b >= a3.b || a2.c >= a3.c || a2.d >= a3.d) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: UploadQualityData.java */
    /* loaded from: classes2.dex */
    public class a {
        public float a = 0.0f;
        public float b = 0.0f;
        public float c = 0.0f;
        public float d = 0.0f;
        public long e = 0;

        protected a() {
        }
    }

    private a a(String str, boolean z) {
        JSONObject optJSONObject;
        if (b(str)) {
            return null;
        }
        try {
            String string = this.b.getSharedPreferences("com.tencent.liteav.network", 0).getString("34238512-C08C-4931-A000-40E1D8B5BA5B", "");
            if (b(string) || (optJSONObject = new JSONObject(string).optJSONObject(str)) == null) {
                return null;
            }
            JSONArray optJSONArray = optJSONObject.optJSONArray(z ? "DomainArrayData" : "OriginArrayData");
            if (optJSONArray == null) {
                return null;
            }
            long length = (long) optJSONArray.length();
            if (length == 0) {
                return null;
            }
            float f = 0.0f;
            String str2 = "";
            float f2 = 0.0f;
            float f3 = 0.0f;
            float f4 = 0.0f;
            int i = 0;
            while (((long) i) < length) {
                JSONObject jSONObject = optJSONArray.getJSONObject(i);
                f2 = (float) (((double) f2) + jSONObject.optDouble("avgBlockCnt"));
                f3 = (float) (((double) f3) + jSONObject.optDouble("avgVideoQue"));
                f4 = (float) (((double) f4) + jSONObject.optDouble("avgAudioQue"));
                str2 = String.format("%s \n isDomainAddressBetter：itemData domain = %b NetworkRTT = %d avgBlockCount = %f avgVideoQueue = %f avgAudioQueue = %f", str2, Boolean.valueOf(z), Long.valueOf(jSONObject.optLong("networkRTT")), Double.valueOf(jSONObject.optDouble("avgBlockCnt")), Double.valueOf(jSONObject.optDouble("avgVideoQue")), Double.valueOf(jSONObject.optDouble("avgAudioQue")));
                i++;
                f += (float) jSONObject.optLong("networkRTT");
                length = length;
            }
            float f5 = (float) length;
            float f6 = f / f5;
            float f7 = f2 / f5;
            float f8 = f3 / f5;
            float f9 = f4 / f5;
            a aVar = new a();
            aVar.a = f6;
            aVar.b = f7;
            aVar.c = f8;
            aVar.d = f9;
            aVar.e = length;
            return aVar;
        } catch (Exception e) {
            TXCLog.e("UploadQualityData", "get quality data failed.", e);
            return null;
        }
    }

    private boolean b(String str) {
        return str == null || str.length() == 0;
    }

    private JSONObject c(String str) {
        if (!b(str)) {
            try {
                return new JSONObject(str);
            } catch (Exception e) {
                TXCLog.e("UploadQualityData", "failed to parse json string", e);
            }
        }
        return new JSONObject();
    }

    private void d() {
        this.c = c.a().a("Network", "QualityDataCacheCount");
        long j = this.c;
        if (j == -1 || j < 3) {
            this.c = 3;
        }
    }

    public long a(String str) {
        Context context = this.b;
        if (context != null) {
            return context.getSharedPreferences("com.tencent.liteav.network", 0).getLong(str, 0);
        }
        return 0;
    }

    public void a(String str, long j) {
        Context context = this.b;
        if (context != null) {
            context.getSharedPreferences("com.tencent.liteav.network", 0).edit().putLong(str, j).commit();
        }
    }
}
