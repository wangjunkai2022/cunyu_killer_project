package com.tencent.liteav.network;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.exifinterface.media.ExifInterface;
import com.pichillilorenzo.flutter_inappwebview.CredentialDatabase.ProtectionSpaceContract;
import com.tencent.liteav.basic.f.c;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.umeng.analytics.pro.ai;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: TXCIntelligentRoute.java */
/* loaded from: classes2.dex */
class d {
    private final String b = "https://tcdns.myqcloud.com/queryip";
    private final String c = "https://tcdnsipv6.myqcloud.com/queryip";
    private final String d = "forward_stream";
    private final String e = "forward_num";
    private final String f = "request_type";
    private final String g = "sdk_version";
    private final String h = ai.u;
    private final String i = "use";
    private final String j = "51451748-d8f2-4629-9071-db2983aa7251";
    private final int k = 5;
    private final int l = 2;
    public b a = null;
    private Thread m = null;
    private int n = 5;

    public void a(final String str, final int i) {
        this.m = new Thread("TXCPushRoute") { // from class: com.tencent.liteav.network.d.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                if (d.this.a != null) {
                    int i2 = 7;
                    while (i2 > 0) {
                        if (!d.this.a(str, i, i2 > 2 ? "https://tcdns.myqcloud.com/queryip" : "https://tcdnsipv6.myqcloud.com/queryip")) {
                            if (i2 == 1) {
                                TXCLog.w("TXCIntelligentRoute", "fetchByUrl failed, bad response, no retryCount left, push directly to domain name");
                                d.this.a.onFetchDone(-1, null);
                                return;
                            }
                            try {
                                Thread.sleep(1000, 0);
                                StringBuilder sb = new StringBuilder();
                                sb.append("fetchByUrl failed, bad response, bad response, retryCount left:");
                                sb.append(i2 - 1);
                                TXCLog.w("TXCIntelligentRoute", sb.toString());
                            } catch (InterruptedException unused) {
                            }
                            i2--;
                        } else {
                            return;
                        }
                    }
                }
            }
        };
        this.m.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str, int i, String str2) {
        ArrayList<a> arrayList;
        try {
            String b = b(str, i, str2);
            JSONObject jSONObject = new JSONObject(b);
            boolean z = !jSONObject.has("use");
            if (z) {
                arrayList = a(b);
            } else {
                int i2 = jSONObject.getInt("use");
                if (i2 == -1) {
                    TXCLog.w("TXCIntelligentRoute", "server error, use = -1, but current SDK isn't international, push directly to domain name");
                } else if (i2 != 0) {
                    TXCLog.w("TXCIntelligentRoute", "unknown value for key:'use', push directly to domain name. use = " + i2);
                }
                arrayList = null;
            }
            if (!z) {
                this.a.onFetchDone(0, null);
            } else if (arrayList == null || arrayList.size() <= 0) {
                return false;
            } else {
                this.a.onFetchDone(0, arrayList);
            }
            return true;
        } catch (Exception e) {
            TXCLog.e("TXCIntelligentRoute", "get value from json failed.", e);
            return false;
        }
    }

    private String b(String str, int i, String str2) {
        InputStream c;
        StringBuffer stringBuffer = new StringBuffer("");
        try {
            c = c(str, i, str2);
        } catch (IOException e) {
            TXCLog.e("TXCIntelligentRoute", "get json string from url failed.", e);
        }
        if (c == null) {
            return "";
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(c));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            stringBuffer.append(readLine);
        }
        return stringBuffer.toString();
    }

    private InputStream c(String str, int i, String str2) throws IOException {
        try {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(str2).openConnection();
            httpsURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
            httpsURLConnection.setRequestProperty("forward_stream", str);
            httpsURLConnection.setRequestProperty("forward_num", ExifInterface.GPS_MEASUREMENT_2D);
            httpsURLConnection.setRequestProperty("sdk_version", TXCCommonUtil.getSDKVersionStr());
            if (i == 1) {
                httpsURLConnection.setRequestProperty("request_type", "1");
            } else if (i == 2) {
                httpsURLConnection.setRequestProperty("request_type", ExifInterface.GPS_MEASUREMENT_2D);
            } else {
                httpsURLConnection.setRequestProperty("request_type", ExifInterface.GPS_MEASUREMENT_3D);
            }
            if (this.n > 0) {
                httpsURLConnection.setConnectTimeout(this.n * 1000);
                httpsURLConnection.setReadTimeout(this.n * 1000);
            }
            httpsURLConnection.connect();
            if (httpsURLConnection.getResponseCode() == 200) {
                return httpsURLConnection.getInputStream();
            }
            return null;
        } catch (Exception e) {
            TXCLog.e("TXCIntelligentRoute", "https failed.", e);
            return null;
        }
    }

    private ArrayList<a> a(String str) {
        JSONArray jSONArray;
        ArrayList<a> arrayList = new ArrayList<>();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.getInt("state") != 0 || (jSONArray = jSONObject.getJSONObject("content").getJSONArray("list")) == null) {
                return null;
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                a a = a((JSONObject) jSONArray.opt(i));
                if (a != null && a.c) {
                    arrayList.add(a);
                }
            }
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                a a2 = a((JSONObject) jSONArray.opt(i2));
                if (a2 != null && !a2.c) {
                    arrayList.add(a2);
                }
            }
            if (c.a().a("Network", "EnableRouteOptimize") != 1 || !q.a().c()) {
                long a3 = c.a().a("Network", "RouteSamplingMaxCount");
                if (a3 >= 1) {
                    long a4 = q.a().a("51451748-d8f2-4629-9071-db2983aa7251");
                    if (a4 <= a3) {
                        arrayList = a(arrayList, false);
                        q.a().a("51451748-d8f2-4629-9071-db2983aa7251", a4 + 1);
                    }
                }
                a(arrayList);
                return arrayList;
            }
            ArrayList<a> a5 = a(arrayList, true);
            a(a5);
            return a5;
        } catch (JSONException e) {
            TXCLog.e("TXCIntelligentRoute", "get records from json string failed.", e);
            return arrayList;
        }
    }

    private a a(JSONObject jSONObject) {
        a aVar = new a();
        try {
            aVar.a = jSONObject.getString("ip");
            aVar.b = jSONObject.getString(ProtectionSpaceContract.FeedEntry.COLUMN_NAME_PORT);
            aVar.e = 0;
            aVar.c = false;
            aVar.d = c(aVar.a);
            if (jSONObject.has("type") && jSONObject.getInt("type") == 2) {
                aVar.c = true;
            }
            return aVar;
        } catch (JSONException e) {
            TXCLog.e("TXCIntelligentRoute", "get ip record from json object failed.", e);
            return null;
        }
    }

    private boolean b(String str) {
        return str.split(":").length > 1;
    }

    private boolean c(String str) {
        if (!b(str) && str != null) {
            for (String str2 : str.split("[.]")) {
                if (!d(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean d(String str) {
        return Pattern.compile("[0-9]*").matcher(str).matches();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ArrayList<a> a(ArrayList<a> arrayList, boolean z) {
        a aVar;
        a aVar2 = null;
        if (arrayList == null || arrayList.size() == 0) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<a> it = arrayList.iterator();
        loop0: while (true) {
            while (it.hasNext()) {
                aVar2 = it.next();
                if (aVar2.c) {
                    arrayList2.add(aVar2);
                } else if (aVar2.d) {
                    break;
                } else {
                    arrayList3.add(aVar2);
                }
            }
        }
        ArrayList<a> arrayList4 = new ArrayList<>();
        while (true) {
            if (arrayList2.size() <= 0 && arrayList3.size() <= 0) {
                break;
            }
            if (z) {
                if (aVar2 != null) {
                    arrayList4.add(aVar2);
                }
                if (arrayList2.size() > 0) {
                    arrayList4.add(arrayList2.get(0));
                    arrayList2.remove(0);
                }
            } else {
                if (arrayList2.size() > 0) {
                    arrayList4.add(arrayList2.get(0));
                    arrayList2.remove(0);
                }
                if (aVar2 != null) {
                    arrayList4.add(aVar2);
                }
            }
            if (arrayList3.size() > 0) {
                arrayList4.add(arrayList3.get(0));
                arrayList3.remove(0);
            }
        }
        int size = arrayList4.size();
        if (size > 0 && (aVar = (a) arrayList4.get(size - 1)) != null && !c(aVar.a) && aVar2 != null) {
            arrayList4.add(aVar2);
        }
        return arrayList4;
    }

    private void a(ArrayList<a> arrayList) {
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<a> it = arrayList.iterator();
            String str = "";
            while (it.hasNext()) {
                a next = it.next();
                str = str + " \n Nearest IP: " + next.a + " Port: " + next.b + " Q Channel: " + next.c;
            }
            TXCLog.e("TXCIntelligentRoute", str);
        }
    }
}
