package com.tencent.liteav;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXCVodPlayReportControl.java */
/* loaded from: classes5.dex */
public class g {
    private static volatile g d;
    private Context a;
    private Map<String, List<b>> b = new HashMap();
    private Map<String, Long> c = new HashMap();

    private g(Context context) {
        this.a = context.getApplicationContext();
        a();
    }

    public static g a(Context context) {
        if (d == null) {
            synchronized (g.class) {
                if (d == null) {
                    d = new g(context);
                }
            }
        }
        return d;
    }

    public int a(String str) {
        a aVar;
        if (str == null || str.isEmpty()) {
            return 60;
        }
        synchronized (this) {
            List<b> list = this.b.get(str);
            if (list != null) {
                for (b bVar : list) {
                    if (bVar != null && "40305".equals(bVar.b) && str.equalsIgnoreCase(bVar.a) && (aVar = (a) bVar) != null && aVar.e > System.currentTimeMillis() / 1000) {
                        return aVar.c;
                    }
                }
            }
            return 60;
        }
    }

    public boolean b(String str) {
        a aVar;
        if (str == null || str.isEmpty()) {
            return false;
        }
        synchronized (this) {
            List<b> list = this.b.get(str);
            if (list != null) {
                for (b bVar : list) {
                    if (bVar != null && "40305".equals(bVar.b) && str.equalsIgnoreCase(bVar.a) && (aVar = (a) bVar) != null && aVar.e > System.currentTimeMillis() / 1000) {
                        return aVar.d;
                    }
                }
            }
            return false;
        }
    }

    private long d(String str) {
        if (str == null || str.isEmpty()) {
            return (System.currentTimeMillis() / 1000) + 3600;
        }
        if (this.c.containsKey(str)) {
            return this.c.get(str).longValue();
        }
        List<b> list = this.b.get(str);
        if (list == null) {
            return 0;
        }
        for (b bVar : list) {
            if ("40305".equals(bVar.b) && str.equalsIgnoreCase(bVar.a)) {
                return ((a) bVar).e;
            }
        }
        return 0;
    }

    private void a(String str, long j) {
        this.c.put(str, Long.valueOf(j));
        TXCLog.i("TXCVodPlayReportControl", "SetReportExpireTime in mem appid= " + str + " , time=" + j);
    }

    public void c(final String str) {
        if (str != null && !str.isEmpty()) {
            synchronized (this) {
                if (d(str) < System.currentTimeMillis() / 1000) {
                    TXCLog.i("TXCVodPlayReportControl", "RequestReportControl");
                    a(str, (System.currentTimeMillis() / 1000) + 3600);
                    new Thread(new Runnable() { // from class: com.tencent.liteav.g.1
                        @Override // java.lang.Runnable
                        public void run() {
                            g.this.e(str);
                            g.this.b();
                        }
                    }, "report_control").start();
                }
            }
        }
    }

    private void a() {
        SharedPreferences sharedPreferences = this.a.getSharedPreferences("vod_report_config", 0);
        if (sharedPreferences != null) {
            String string = sharedPreferences.getString("value", "");
            if (!string.isEmpty()) {
                try {
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        List<b> h = h(jSONArray.optString(i));
                        if (h != null && h.size() > 0) {
                            this.b.put(h.get(0).a, h);
                        }
                    }
                } catch (JSONException e) {
                    TXCLog.e("TXCVodPlayReportControl", "" + e.toString());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        SharedPreferences.Editor edit;
        int i = 0;
        SharedPreferences sharedPreferences = this.a.getSharedPreferences("vod_report_config", 0);
        if (!(sharedPreferences == null || (edit = sharedPreferences.edit()) == null || this.b.size() <= 0)) {
            JSONArray jSONArray = new JSONArray();
            for (Map.Entry<String, List<b>> entry : this.b.entrySet()) {
                int i2 = i + 1;
                try {
                    jSONArray.put(i, a(entry.getValue()));
                } catch (JSONException e) {
                    TXCLog.e("TXCVodPlayReportControl", "" + e.toString());
                }
                i = i2;
            }
            edit.putString("value", jSONArray.toString());
            edit.apply();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
        URL url;
        HttpsURLConnection httpsURLConnection;
        Throwable th;
        IOException e;
        StringBuilder sb;
        IOException e2;
        BufferedReader bufferedReader = null;
        try {
            url = new URL(g(str));
        } catch (MalformedURLException e3) {
            TXCLog.i("TXCVodPlayReportControl", "URL :" + e3.toString());
            url = null;
        }
        if (url != null) {
            try {
                httpsURLConnection = (HttpsURLConnection) url.openConnection();
            } catch (IOException e4) {
                TXCLog.i("TXCVodPlayReportControl", "openConnection :" + e4.toString());
                httpsURLConnection = null;
            }
            if (httpsURLConnection != null) {
                try {
                    try {
                        httpsURLConnection.setConnectTimeout(8000);
                        httpsURLConnection.setReadTimeout(8000);
                        httpsURLConnection.setRequestProperty("Accept-Encoding", "identity");
                        httpsURLConnection.setInstanceFollowRedirects(true);
                        httpsURLConnection.connect();
                        int responseCode = httpsURLConnection.getResponseCode();
                        TXCLog.i("TXCVodPlayReportControl", "request report control response code : " + responseCode);
                        if (200 == responseCode) {
                            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream()));
                            try {
                                StringBuilder sb2 = new StringBuilder();
                                while (true) {
                                    String readLine = bufferedReader2.readLine();
                                    if (readLine == null) {
                                        break;
                                    }
                                    sb2.append(readLine);
                                }
                                f(sb2.toString());
                                bufferedReader = bufferedReader2;
                            } catch (IOException e5) {
                                e2 = e5;
                                bufferedReader = bufferedReader2;
                                TXCLog.i("TXCVodPlayReportControl", "connect or read: " + e2.toString());
                                httpsURLConnection.disconnect();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                        return;
                                    } catch (IOException e6) {
                                        e = e6;
                                        sb = new StringBuilder();
                                        sb.append("bufferedReader.close :");
                                        sb.append(e.toString());
                                        TXCLog.i("TXCVodPlayReportControl", sb.toString());
                                    }
                                } else {
                                    return;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                bufferedReader = bufferedReader2;
                                httpsURLConnection.disconnect();
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e7) {
                                        TXCLog.i("TXCVodPlayReportControl", "bufferedReader.close :" + e7.toString());
                                    }
                                }
                                throw th;
                            }
                        }
                        httpsURLConnection.disconnect();
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e8) {
                                e = e8;
                                sb = new StringBuilder();
                                sb.append("bufferedReader.close :");
                                sb.append(e.toString());
                                TXCLog.i("TXCVodPlayReportControl", sb.toString());
                            }
                        }
                    } catch (IOException e9) {
                        e2 = e9;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }
    }

    private void f(String str) {
        if (str == null || str.isEmpty()) {
            TXCLog.i("TXCVodPlayReportControl", "response msg is empty");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i = jSONObject.getInt("code");
            String optString = jSONObject.optString("message");
            String optString2 = jSONObject.optString("requestId");
            TXCLog.i("TXCVodPlayReportControl", "code = " + i + " ,message = " + optString + " , requestID= " + optString2);
            if (i == 0 && jSONObject.getInt("version") == 1) {
                a(jSONObject);
            }
        } catch (JSONException e) {
            TXCLog.e("TXCVodPlayReportControl", "parseJson err: " + e.toString());
        }
    }

    private void a(JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray("controlInfos");
        int optInt = jSONObject.optInt("appId");
        if (optInt == 0) {
            TXCLog.i("TXCVodPlayReportControl", "response appid is zero!");
        } else if (optJSONArray != null && optJSONArray.length() != 0) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null && "40305".equals(optJSONObject.optString("eventId"))) {
                    long optLong = optJSONObject.optLong("expireTime", 0);
                    if (optLong > System.currentTimeMillis() / 1000) {
                        String optString = optJSONObject.optString("switch");
                        int optInt2 = optJSONObject.optInt("frequency", 60);
                        int i2 = optInt2 < 60 ? 60 : optInt2;
                        boolean equalsIgnoreCase = "on".equalsIgnoreCase(optString);
                        arrayList.add(new a(i2, equalsIgnoreCase, optLong, "" + optInt));
                    }
                }
            }
            synchronized (this) {
                if (arrayList.size() != 0) {
                    Map<String, List<b>> map = this.b;
                    map.put("" + optInt, arrayList);
                    this.c.remove(Integer.valueOf(optInt));
                }
            }
        }
    }

    private String g(String str) {
        String str2 = "https://vodreport.qcloud.com/describeControlInfos/v1/" + str + "?sdkVersion=" + TXCCommonUtil.getSDKVersionStr();
        TXCLog.i("TXCVodPlayReportControl", "makeUrl: " + str2);
        return str2;
    }

    private String a(List<b> list) {
        if (list == null) {
            return "";
        }
        JSONArray jSONArray = new JSONArray();
        int i = 0;
        for (b bVar : list) {
            JSONObject jSONObject = new JSONObject();
            if ("40305".equals(bVar.b)) {
                a aVar = (a) bVar;
                try {
                    jSONObject.put("appid", aVar.a);
                    jSONObject.put("eventid", aVar.b);
                    jSONObject.put("40305", aVar.toString());
                } catch (JSONException e) {
                    TXCLog.e("TXCVodPlayReportControl", "controlDataListToString jsonObject.put：" + e.toString());
                }
            }
            int i2 = i + 1;
            try {
                jSONArray.put(i, jSONObject);
            } catch (JSONException e2) {
                TXCLog.e("TXCVodPlayReportControl", "jsonArray.put： " + e2.toString());
            }
            i = i2;
        }
        return jSONArray.toString();
    }

    private List<b> h(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    optJSONObject.optString("appid", "");
                    if (optJSONObject.optString("eventid", "").equalsIgnoreCase("40305")) {
                        String optString = optJSONObject.optString("40305", "");
                        if (!optString.isEmpty()) {
                            arrayList.add(new a(optString));
                        }
                    }
                }
            }
        } catch (JSONException e) {
            TXCLog.e("TXCVodPlayReportControl", "controlDataListParseFormString :" + e.toString());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: TXCVodPlayReportControl.java */
    /* loaded from: classes5.dex */
    public static class b {
        protected String a;
        protected String b;

        public b(String str, String str2) {
            this.a = "";
            this.b = "";
            this.a = str;
            this.b = str2;
        }

        public b() {
            this.a = "";
            this.b = "";
        }

        public void a(String str) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.a = jSONObject.optString("appid", "");
                this.b = jSONObject.optString("eventid", "");
            } catch (JSONException e) {
                TXCLog.i("TXCVodPlayReportControl", "parseFromString: " + e.toString());
                this.a = "";
                this.b = "";
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: TXCVodPlayReportControl.java */
    /* loaded from: classes5.dex */
    public static class a extends b {
        private int c;
        private boolean d;
        private long e;

        public a(int i, boolean z, long j, String str) {
            super(str, "40305");
            this.c = 60;
            this.d = false;
            this.e = 0;
            this.c = i;
            this.d = z;
            this.e = j;
        }

        public a(String str) {
            this.c = 60;
            this.d = false;
            this.e = 0;
            a(str);
        }

        public String toString() {
            return a().toString();
        }

        private JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("SengmentDuration", this.c);
                jSONObject.put("ReportSwitch", this.d);
                jSONObject.put("ExpireTime", this.e);
                jSONObject.put("appid", this.a);
                jSONObject.put("eventid", this.b);
            } catch (JSONException e) {
                TXCLog.e("TXCVodPlayReportControl", "toJsonObject jsonexception: " + e.toString());
            }
            return jSONObject;
        }

        @Override // com.tencent.liteav.g.b
        public void a(String str) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.c = jSONObject.optInt("SengmentDuration", 60);
                this.d = jSONObject.optBoolean("ReportSwitch", false);
                this.e = jSONObject.optLong("ExpireTime", (System.currentTimeMillis() / 1000) + 3600);
                this.a = jSONObject.optString("appid", "");
                this.b = jSONObject.optString("eventid", "");
            } catch (JSONException e) {
                TXCLog.i("TXCVodPlayReportControl", "parseFromString: " + e.toString());
                this.c = 60;
                this.d = false;
                this.e = 0;
                this.a = "";
                this.b = "40305";
            }
        }
    }
}
