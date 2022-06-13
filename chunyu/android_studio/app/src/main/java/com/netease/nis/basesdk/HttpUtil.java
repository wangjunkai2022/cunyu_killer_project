package com.netease.nis.basesdk;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.common.net.HttpHeaders;
import com.tencent.thumbplayer.core.common.TPScreenRefreshRateDetector;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public class HttpUtil {
    private static final Handler a = new Handler(Looper.getMainLooper());
    private static final ExecutorService b = Executors.newSingleThreadExecutor();

    /* loaded from: classes2.dex */
    public interface ResponseCallBack {
        void onError(int i, String str);

        void onSuccess(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ ResponseCallBack b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.netease.nis.basesdk.HttpUtil$a$a */
        /* loaded from: classes2.dex */
        public class C0007a implements ResponseCallBack {

            /* renamed from: com.netease.nis.basesdk.HttpUtil$a$a$a */
            /* loaded from: classes2.dex */
            class RunnableC0008a implements Runnable {
                final /* synthetic */ String a;

                RunnableC0008a(String str) {
                    C0007a.this = r1;
                    this.a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.b.onSuccess(this.a);
                }
            }

            /* renamed from: com.netease.nis.basesdk.HttpUtil$a$a$b */
            /* loaded from: classes2.dex */
            class b implements Runnable {
                final /* synthetic */ int a;
                final /* synthetic */ String b;

                b(int i, String str) {
                    C0007a.this = r1;
                    this.a = i;
                    this.b = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.b.onError(this.a, this.b);
                }
            }

            C0007a() {
                a.this = r1;
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onError(int i, String str) {
                HttpUtil.a.post(new b(i, str));
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onSuccess(String str) {
                HttpUtil.a.post(new RunnableC0008a(str));
            }
        }

        a(String str, ResponseCallBack responseCallBack) {
            this.a = str;
            this.b = responseCallBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpUtil.doHttpRequest(this.a, false, false, null, null, null, new C0007a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ ResponseCallBack b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements ResponseCallBack {

            /* renamed from: com.netease.nis.basesdk.HttpUtil$b$a$a */
            /* loaded from: classes2.dex */
            class RunnableC0009a implements Runnable {
                final /* synthetic */ String a;

                RunnableC0009a(String str) {
                    a.this = r1;
                    this.a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    b.this.b.onSuccess(this.a);
                }
            }

            /* renamed from: com.netease.nis.basesdk.HttpUtil$b$a$b */
            /* loaded from: classes2.dex */
            class RunnableC0010b implements Runnable {
                final /* synthetic */ int a;
                final /* synthetic */ String b;

                RunnableC0010b(int i, String str) {
                    a.this = r1;
                    this.a = i;
                    this.b = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    b.this.b.onError(this.a, this.b);
                }
            }

            a() {
                b.this = r1;
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onError(int i, String str) {
                HttpUtil.a.post(new RunnableC0010b(i, str));
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onSuccess(String str) {
                HttpUtil.a.post(new RunnableC0009a(str));
            }
        }

        b(String str, ResponseCallBack responseCallBack) {
            this.a = str;
            this.b = responseCallBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpUtil.doHttpRequest(this.a, false, true, null, null, null, new a());
        }
    }

    /* loaded from: classes2.dex */
    class c extends ConnectivityManager.NetworkCallback {
        final /* synthetic */ Timer a;
        final /* synthetic */ boolean[] b;
        final /* synthetic */ String c;
        final /* synthetic */ ResponseCallBack d;
        final /* synthetic */ ConnectivityManager e;

        c(Timer timer, boolean[] zArr, String str, ResponseCallBack responseCallBack, ConnectivityManager connectivityManager) {
            this.a = timer;
            this.b = zArr;
            this.c = str;
            this.d = responseCallBack;
            this.e = connectivityManager;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            super.onAvailable(network);
            Logger.d("切换网络成功");
            this.a.cancel();
            this.a.purge();
            if (!this.b[0]) {
                HttpUtil.doHttpRequest(this.c, false, false, null, null, network, this.d);
                this.b[0] = true;
            }
            this.e.unregisterNetworkCallback(this);
        }
    }

    /* loaded from: classes2.dex */
    class d extends TimerTask {
        final /* synthetic */ ConnectivityManager a;
        final /* synthetic */ ConnectivityManager.NetworkCallback b;
        final /* synthetic */ ResponseCallBack c;

        d(ConnectivityManager connectivityManager, ConnectivityManager.NetworkCallback networkCallback, ResponseCallBack responseCallBack) {
            this.a = connectivityManager;
            this.b = networkCallback;
            this.c = responseCallBack;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.a.unregisterNetworkCallback(this.b);
            this.c.onError(10002, "当前状态为wifi和数据流量同时开启，切换到数据流量超时，请重试");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ ResponseCallBack c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements ResponseCallBack {

            /* renamed from: com.netease.nis.basesdk.HttpUtil$e$a$a */
            /* loaded from: classes2.dex */
            class RunnableC0011a implements Runnable {
                final /* synthetic */ String a;

                RunnableC0011a(String str) {
                    a.this = r1;
                    this.a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    e.this.c.onSuccess(this.a);
                }
            }

            /* loaded from: classes2.dex */
            class b implements Runnable {
                final /* synthetic */ int a;
                final /* synthetic */ String b;

                b(int i, String str) {
                    a.this = r1;
                    this.a = i;
                    this.b = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    e.this.c.onError(this.a, this.b);
                }
            }

            a() {
                e.this = r1;
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onError(int i, String str) {
                HttpUtil.a.post(new b(i, str));
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onSuccess(String str) {
                HttpUtil.a.post(new RunnableC0011a(str));
            }
        }

        e(String str, String str2, ResponseCallBack responseCallBack) {
            this.a = str;
            this.b = str2;
            this.c = responseCallBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpUtil.doHttpRequest(this.a, true, true, this.b, null, null, new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ Map b;
        final /* synthetic */ Map c;
        final /* synthetic */ ResponseCallBack d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements ResponseCallBack {

            /* renamed from: com.netease.nis.basesdk.HttpUtil$f$a$a */
            /* loaded from: classes2.dex */
            class RunnableC0012a implements Runnable {
                final /* synthetic */ String a;

                RunnableC0012a(String str) {
                    a.this = r1;
                    this.a = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    f.this.d.onSuccess(this.a);
                }
            }

            /* loaded from: classes2.dex */
            class b implements Runnable {
                final /* synthetic */ int a;
                final /* synthetic */ String b;

                b(int i, String str) {
                    a.this = r1;
                    this.a = i;
                    this.b = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    f.this.d.onError(this.a, this.b);
                }
            }

            a() {
                f.this = r1;
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onError(int i, String str) {
                HttpUtil.a.post(new b(i, str));
            }

            @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
            public void onSuccess(String str) {
                HttpUtil.a.post(new RunnableC0012a(str));
            }
        }

        f(String str, Map map, Map map2, ResponseCallBack responseCallBack) {
            this.a = str;
            this.b = map;
            this.c = map2;
            this.d = responseCallBack;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Logger.i("post request url:" + this.a + " args:" + HttpUtil.b(this.b, "utf-8"));
                HttpUtil.doHttpRequest(this.a, true, false, HttpUtil.b(this.b, "utf-8"), this.c, null, new a());
            } catch (Exception e) {
                e.printStackTrace();
                ResponseCallBack responseCallBack = this.d;
                responseCallBack.onError(TPScreenRefreshRateDetector.DISPLAY_CHANGE, "网络请求出现异常:" + e.toString());
            }
        }
    }

    public static String b(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        if (map == null || map.size() == 0) {
            return sb.toString();
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(URLEncoder.encode(entry.getValue(), str));
            sb.append("&");
        }
        return sb.substring(0, sb.length() - 1);
    }

    public static void doGetRequestByForm(String str, ResponseCallBack responseCallBack) {
        Logger.i("get request url:" + str);
        b.execute(new a(str, responseCallBack));
    }

    public static void doGetRequestByJson(String str, ResponseCallBack responseCallBack) {
        Logger.i("get request url:" + str);
        b.execute(new b(str, responseCallBack));
    }

    public static void doGetRequestByMobileNet(Context context, String str, ResponseCallBack responseCallBack) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (Build.VERSION.SDK_INT >= 21) {
            Logger.d("system api version >= 21");
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addCapability(12);
            builder.addTransportType(0);
            NetworkRequest build = builder.build();
            Timer timer = new Timer();
            c cVar = new c(timer, new boolean[]{false}, str, responseCallBack, connectivityManager);
            connectivityManager.requestNetwork(build, cVar);
            timer.schedule(new d(connectivityManager, cVar, responseCallBack), 7000);
            return;
        }
        Logger.d("system api version < 21");
        if (connectivityManager != null) {
            try {
                connectivityManager.getClass().getMethod("startUsingNetworkFeature", Integer.TYPE, String.class).invoke(0, "enableHIPRI");
            } catch (Exception unused) {
            }
        }
        for (int i = 0; i < 20; i++) {
            if (connectivityManager != null) {
                if (connectivityManager.getNetworkInfo(5).getState().compareTo(NetworkInfo.State.CONNECTED) == 0) {
                    break;
                }
                try {
                    Thread.sleep(500);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
        }
        int lookupHost = NetworkUtil.lookupHost(NetworkUtil.extractAddressFromUrl(str));
        try {
            if (connectivityManager != null) {
                Class<?> cls = connectivityManager.getClass();
                Class<?> cls2 = Integer.TYPE;
                if (((Boolean) cls.getMethod("requestRouteToHost", cls2, cls2).invoke(5, Integer.valueOf(lookupHost))).booleanValue()) {
                    doHttpRequest(str, false, false, null, null, null, responseCallBack);
                    return;
                }
                responseCallBack.onError(AacUtil.AAC_HE_V2_MAX_RATE_BYTES_PER_SECOND, "当前状态为wifi和数据流量同时开启，切换到数据流量超时,请重试");
                Logger.d("当前状态为wifi和数据流量同时开启，切换到数据流量失败,系统API < 21");
                return;
            }
            responseCallBack.onError(AacUtil.AAC_HE_V2_MAX_RATE_BYTES_PER_SECOND, "当前状态为wifi和数据流量同时开启，切换到数据流量超时,请重试");
            Logger.d("当前状态为wifi和数据流量同时开启，切换到数据流量失败,系统API < 21");
        } catch (Exception unused2) {
        }
    }

    public static void doHttpRequest(String str, boolean z, boolean z2, String str2, Map<String, String> map, Network network, ResponseCallBack responseCallBack) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        try {
            httpURLConnection = null;
            try {
                URL url = new URL(str);
                if (network == null || Build.VERSION.SDK_INT < 21) {
                    httpURLConnection2 = (HttpURLConnection) url.openConnection();
                } else {
                    httpURLConnection2 = (HttpURLConnection) network.openConnection(url);
                }
                httpURLConnection = httpURLConnection2;
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setReadTimeout(10000);
                httpURLConnection.setDoInput(true);
                if (z) {
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
                    httpURLConnection.setDoOutput(true);
                } else {
                    httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
                    httpURLConnection.setDoOutput(false);
                }
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setInstanceFollowRedirects(true);
                if (z2) {
                    httpURLConnection.setRequestProperty("Content-Type", "application/json");
                } else {
                    httpURLConnection.setRequestProperty("Content-Type", ShareTarget.ENCODING_TYPE_URL_ENCODED);
                }
                httpURLConnection.setRequestProperty("connection", "Keep-Alive");
                if (map != null) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                    }
                }
                if (str2 != null) {
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    byte[] bytes = str2.getBytes("UTF-8");
                    dataOutputStream.write(bytes, 0, bytes.length);
                    dataOutputStream.flush();
                    dataOutputStream.close();
                }
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() == 200) {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb.append(new String(readLine.getBytes("UTF-8")));
                    }
                    String sb2 = sb.toString();
                    bufferedReader.close();
                    responseCallBack.onSuccess(sb2);
                } else if (httpURLConnection.getResponseCode() == 302) {
                    String headerField = httpURLConnection.getHeaderField(HttpHeaders.LOCATION);
                    if (headerField == null || headerField.isEmpty()) {
                        responseCallBack.onError(httpURLConnection.getResponseCode(), "获取重定向url失败");
                    } else {
                        httpURLConnection.disconnect();
                        doHttpRequest(headerField, z, z2, str2, null, network, responseCallBack);
                    }
                } else {
                    responseCallBack.onError(httpURLConnection.getResponseCode(), "与服务端建立连接失败");
                }
                if (httpURLConnection == null) {
                    return;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                responseCallBack.onError(TPScreenRefreshRateDetector.DISPLAY_CHANGE, "网络连接出现异常:" + e2.toString());
                if (0 == 0) {
                    return;
                }
            }
            httpURLConnection.disconnect();
        } catch (Throwable th) {
            if (0 != 0) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    public static void doPostRequestByForm(String str, Map<String, String> map, Map<String, String> map2, ResponseCallBack responseCallBack) {
        b.execute(new f(str, map, map2, responseCallBack));
    }

    public static void doPostRequestByJson(String str, String str2, ResponseCallBack responseCallBack) {
        Logger.i("post request url:" + str + " args:" + str2);
        b.execute(new e(str, str2, responseCallBack));
    }
}
