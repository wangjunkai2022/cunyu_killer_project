package com.tencent.liteav.basic.util;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.tencent.liteav.basic.log.TXCLog;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.Authenticator;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.net.ssl.HttpsURLConnection;

/* loaded from: classes2.dex */
public class TXHttpRequest {
    private static final int CON_TIMEOUT = 5000;
    private static final int READ_TIMEOUT = 5000;
    private static final String TAG = "TXHttpRequest";
    private long mNativeHttps;
    private d mSock5ProxyConfig = new d();

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeOnRecvMessage(long j, int i, byte[] bArr, Map<String, String> map, long j2);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class d {
        public String a;
        public int b;
        public String c;
        public String d;

        private d() {
            this.a = "";
            this.b = 0;
            this.c = "";
            this.d = "";
        }
    }

    public void setSocks5Proxy(String str, int i, String str2, String str3) {
        d dVar = this.mSock5ProxyConfig;
        dVar.a = str;
        dVar.b = i;
        dVar.c = str2;
        dVar.d = str3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a extends Authenticator {
        private String a;
        private String b;

        public a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.net.Authenticator
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(this.a, this.b.toCharArray());
        }
    }

    public TXHttpRequest(long j) {
        this.mNativeHttps = 0;
        this.mNativeHttps = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00af, code lost:
        if (0 == 0) goto L_0x00b4;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039 A[Catch: Exception -> 0x0034, all -> 0x0031, TryCatch #1 {Exception -> 0x0034, blocks: (B:4:0x0008, B:6:0x0010, B:8:0x0014, B:15:0x0039, B:16:0x0045, B:17:0x0050, B:19:0x006a, B:22:0x007c, B:23:0x0092), top: B:32:0x0008, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0045 A[Catch: Exception -> 0x0034, all -> 0x0031, TryCatch #1 {Exception -> 0x0034, blocks: (B:4:0x0008, B:6:0x0010, B:8:0x0014, B:15:0x0039, B:16:0x0045, B:17:0x0050, B:19:0x006a, B:22:0x007c, B:23:0x0092), top: B:32:0x0008, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006a A[Catch: Exception -> 0x0034, all -> 0x0031, TryCatch #1 {Exception -> 0x0034, blocks: (B:4:0x0008, B:6:0x0010, B:8:0x0014, B:15:0x0039, B:16:0x0045, B:17:0x0050, B:19:0x006a, B:22:0x007c, B:23:0x0092), top: B:32:0x0008, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007c A[Catch: Exception -> 0x0034, all -> 0x0031, TryCatch #1 {Exception -> 0x0034, blocks: (B:4:0x0008, B:6:0x0010, B:8:0x0014, B:15:0x0039, B:16:0x0045, B:17:0x0050, B:19:0x006a, B:22:0x007c, B:23:0x0092), top: B:32:0x0008, outer: #0 }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static com.tencent.liteav.basic.util.TXHttpRequest.c downloadFileInternal(java.lang.String r7, java.lang.String r8, com.tencent.liteav.basic.util.TXHttpRequest.d r9) {
        /*
            com.tencent.liteav.basic.util.TXHttpRequest$c r0 = new com.tencent.liteav.basic.util.TXHttpRequest$c
            r0.<init>()
            r1 = 0
            if (r9 == 0) goto L_0x0036
            java.lang.String r2 = r9.a     // Catch: Exception -> 0x0034, all -> 0x0031
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch: Exception -> 0x0034, all -> 0x0031
            if (r2 != 0) goto L_0x0036
            int r2 = r9.b     // Catch: Exception -> 0x0034, all -> 0x0031
            if (r2 <= 0) goto L_0x0036
            java.net.Proxy r2 = new java.net.Proxy     // Catch: Exception -> 0x0034, all -> 0x0031
            java.net.Proxy$Type r3 = java.net.Proxy.Type.SOCKS     // Catch: Exception -> 0x0034, all -> 0x0031
            java.net.InetSocketAddress r4 = new java.net.InetSocketAddress     // Catch: Exception -> 0x0034, all -> 0x0031
            java.lang.String r5 = r9.a     // Catch: Exception -> 0x0034, all -> 0x0031
            int r6 = r9.b     // Catch: Exception -> 0x0034, all -> 0x0031
            r4.<init>(r5, r6)     // Catch: Exception -> 0x0034, all -> 0x0031
            r2.<init>(r3, r4)     // Catch: Exception -> 0x0034, all -> 0x0031
            com.tencent.liteav.basic.util.TXHttpRequest$a r3 = new com.tencent.liteav.basic.util.TXHttpRequest$a     // Catch: Exception -> 0x0034, all -> 0x0031
            java.lang.String r4 = r9.c     // Catch: Exception -> 0x0034, all -> 0x0031
            java.lang.String r9 = r9.d     // Catch: Exception -> 0x0034, all -> 0x0031
            r3.<init>(r4, r9)     // Catch: Exception -> 0x0034, all -> 0x0031
            java.net.Authenticator.setDefault(r3)     // Catch: Exception -> 0x0034, all -> 0x0031
            goto L_0x0037
        L_0x0031:
            r7 = move-exception
            goto L_0x00b5
        L_0x0034:
            r8 = move-exception
            goto L_0x0093
        L_0x0036:
            r2 = r1
        L_0x0037:
            if (r2 == 0) goto L_0x0045
            java.net.URL r9 = new java.net.URL     // Catch: Exception -> 0x0034, all -> 0x0031
            r9.<init>(r7)     // Catch: Exception -> 0x0034, all -> 0x0031
            java.net.URLConnection r9 = r9.openConnection(r2)     // Catch: Exception -> 0x0034, all -> 0x0031
            javax.net.ssl.HttpsURLConnection r9 = (javax.net.ssl.HttpsURLConnection) r9     // Catch: Exception -> 0x0034, all -> 0x0031
            goto L_0x0050
        L_0x0045:
            java.net.URL r9 = new java.net.URL     // Catch: Exception -> 0x0034, all -> 0x0031
            r9.<init>(r7)     // Catch: Exception -> 0x0034, all -> 0x0031
            java.net.URLConnection r9 = r9.openConnection()     // Catch: Exception -> 0x0034, all -> 0x0031
            javax.net.ssl.HttpsURLConnection r9 = (javax.net.ssl.HttpsURLConnection) r9     // Catch: Exception -> 0x0034, all -> 0x0031
        L_0x0050:
            r1 = r9
            java.lang.String r9 = "GET"
            r1.setRequestMethod(r9)     // Catch: Exception -> 0x0034, all -> 0x0031
            r9 = 0
            r1.setUseCaches(r9)     // Catch: Exception -> 0x0034, all -> 0x0031
            r2 = 5000(0x1388, float:7.006E-42)
            r1.setConnectTimeout(r2)     // Catch: Exception -> 0x0034, all -> 0x0031
            r1.setReadTimeout(r2)     // Catch: Exception -> 0x0034, all -> 0x0031
            int r2 = r1.getResponseCode()     // Catch: Exception -> 0x0034, all -> 0x0031
            r3 = 200(0xc8, float:2.8E-43)
            if (r2 != r3) goto L_0x007c
            java.util.Map r2 = getHeaders(r1)     // Catch: Exception -> 0x0034, all -> 0x0031
            r0.d = r2     // Catch: Exception -> 0x0034, all -> 0x0031
            java.io.InputStream r2 = r1.getInputStream()     // Catch: Exception -> 0x0034, all -> 0x0031
            com.tencent.liteav.basic.util.c.a(r2, r8)     // Catch: Exception -> 0x0034, all -> 0x0031
            r0.a = r9     // Catch: Exception -> 0x0034, all -> 0x0031
            if (r1 == 0) goto L_0x00b4
            goto L_0x00b1
        L_0x007c:
            java.io.IOException r8 = new java.io.IOException     // Catch: Exception -> 0x0034, all -> 0x0031
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: Exception -> 0x0034, all -> 0x0031
            r9.<init>()     // Catch: Exception -> 0x0034, all -> 0x0031
            java.lang.String r3 = "download file failed with "
            r9.append(r3)     // Catch: Exception -> 0x0034, all -> 0x0031
            r9.append(r2)     // Catch: Exception -> 0x0034, all -> 0x0031
            java.lang.String r9 = r9.toString()     // Catch: Exception -> 0x0034, all -> 0x0031
            r8.<init>(r9)     // Catch: Exception -> 0x0034, all -> 0x0031
            throw r8     // Catch: Exception -> 0x0034, all -> 0x0031
        L_0x0093:
            java.lang.String r9 = r8.getMessage()     // Catch: all -> 0x0031
            r0.b = r9     // Catch: all -> 0x0031
            java.lang.String r9 = "TXHttpRequest"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: all -> 0x0031
            r2.<init>()     // Catch: all -> 0x0031
            java.lang.String r3 = "download file failed. "
            r2.append(r3)     // Catch: all -> 0x0031
            r2.append(r7)     // Catch: all -> 0x0031
            java.lang.String r7 = r2.toString()     // Catch: all -> 0x0031
            com.tencent.liteav.basic.log.TXCLog.e(r9, r7, r8)     // Catch: all -> 0x0031
            if (r1 == 0) goto L_0x00b4
        L_0x00b1:
            r1.disconnect()
        L_0x00b4:
            return r0
        L_0x00b5:
            if (r1 == 0) goto L_0x00ba
            r1.disconnect()
        L_0x00ba:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.basic.util.TXHttpRequest.downloadFileInternal(java.lang.String, java.lang.String, com.tencent.liteav.basic.util.TXHttpRequest$d):com.tencent.liteav.basic.util.TXHttpRequest$c");
    }

    public int sendHttpsRequest(Map<String, String> map, String str, byte[] bArr, boolean z, long j) {
        TXCLog.i(TAG, "sendHttpsRequest->enter action: " + str + ", data size: " + bArr.length);
        asyncPostRequest(map, str.getBytes(), bArr, z, j, this.mSock5ProxyConfig);
        return 0;
    }

    public int downloadFile(final String str, final String str2, final long j) {
        final Handler handler;
        final ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            handler = null;
        } else {
            handler = new Handler(myLooper);
        }
        newSingleThreadExecutor.submit(new Runnable() { // from class: com.tencent.liteav.basic.util.TXHttpRequest.1
            @Override // java.lang.Runnable
            public void run() {
                TXHttpRequest.this.notifyResult(handler, TXHttpRequest.downloadFileInternal(str, str2, TXHttpRequest.this.mSock5ProxyConfig), j);
                newSingleThreadExecutor.shutdown();
            }
        });
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyResult(Handler handler, final c cVar, final long j) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.tencent.liteav.basic.util.TXHttpRequest.2
                @Override // java.lang.Runnable
                public void run() {
                    TXHttpRequest tXHttpRequest = TXHttpRequest.this;
                    tXHttpRequest.nativeOnRecvMessage(tXHttpRequest.mNativeHttps, cVar.a, cVar.c, cVar.d, j);
                }
            });
        } else {
            nativeOnRecvMessage(this.mNativeHttps, cVar.a, cVar.c, cVar.d, j);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static c getHttpsPostRsp(Map<String, String> map, String str, byte[] bArr, boolean z, d dVar) throws Exception {
        Proxy proxy;
        HttpsURLConnection httpsURLConnection;
        TXCLog.i(TAG, "getHttpsPostRsp->request: " + str);
        TXCLog.i(TAG, "getHttpsPostRsp->data: " + bArr.length);
        if (dVar == null || TextUtils.isEmpty(dVar.a) || dVar.b <= 0) {
            proxy = null;
        } else {
            proxy = new Proxy(Proxy.Type.SOCKS, new InetSocketAddress(dVar.a, dVar.b));
            Authenticator.setDefault(new a(dVar.c, dVar.d));
        }
        URL url = new URL(str.replace(" ", "%20"));
        if (proxy != null) {
            httpsURLConnection = (HttpsURLConnection) url.openConnection(proxy);
        } else {
            httpsURLConnection = (HttpsURLConnection) url.openConnection();
        }
        httpsURLConnection.setDoInput(true);
        httpsURLConnection.setDoOutput(true);
        httpsURLConnection.setConnectTimeout(5000);
        httpsURLConnection.setReadTimeout(5000);
        httpsURLConnection.setRequestMethod(ShareTarget.METHOD_POST);
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpsURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        if (z) {
            httpsURLConnection.setRequestProperty("Connection", "Keep-Alive");
        }
        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
        dataOutputStream.write(bArr);
        dataOutputStream.flush();
        dataOutputStream.close();
        int responseCode = httpsURLConnection.getResponseCode();
        c cVar = new c();
        if (responseCode < 200 || responseCode >= 300) {
            TXCLog.i(TAG, "getHttpsPostRsp->response code: " + responseCode);
            throw new Exception("response: " + responseCode);
        }
        InputStream inputStream = httpsURLConnection.getInputStream();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr, 0, bArr.length);
            if (read == -1) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
        byteArrayOutputStream.flush();
        cVar.d = new HashMap();
        for (Map.Entry entry2 : httpsURLConnection.getHeaderFields().entrySet()) {
            if (!TextUtils.isEmpty((CharSequence) entry2.getKey())) {
                cVar.d.put(entry2.getKey(), ((List) entry2.getValue()).get(0));
            }
        }
        inputStream.close();
        if (!z) {
            httpsURLConnection.disconnect();
        }
        cVar.c = byteArrayOutputStream.toByteArray();
        cVar.a = 0;
        TXCLog.i(TAG, "getHttpsPostRsp->rsp size: " + byteArrayOutputStream.size());
        return cVar;
    }

    public void asyncPostRequest(Map<String, String> map, byte[] bArr, byte[] bArr2, boolean z, long j, d dVar) {
        new b(this, map, z, j, dVar).execute(bArr, bArr2);
    }

    private static Map<String, String> getHeaders(HttpsURLConnection httpsURLConnection) {
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : httpsURLConnection.getHeaderFields().entrySet()) {
            if (!TextUtils.isEmpty((CharSequence) entry.getKey())) {
                hashMap.put(entry.getKey(), ((List) entry.getValue()).get(0));
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class c {
        public int a = 1;
        public String b = "";
        public byte[] c = "".getBytes();
        public Map<String, String> d;

        c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b extends AsyncTask<byte[], Void, c> {
        private WeakReference<TXHttpRequest> a;
        private Handler b;
        private Map<String, String> c;
        private boolean d;
        private long e;
        private d f;

        public b(TXHttpRequest tXHttpRequest, Map<String, String> map, boolean z, long j, d dVar) {
            this.b = null;
            this.d = false;
            this.e = 0;
            this.c = map;
            this.a = new WeakReference<>(tXHttpRequest);
            Looper myLooper = Looper.myLooper();
            if (myLooper != null) {
                this.b = new Handler(myLooper);
            } else {
                this.b = null;
            }
            this.d = z;
            this.e = j;
            this.f = dVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public c doInBackground(byte[]... bArr) {
            String str = "|";
            c cVar = new c();
            int i = 1;
            try {
                if (new String(bArr[0]).startsWith("https")) {
                    cVar = TXHttpRequest.getHttpsPostRsp(this.c, new String(bArr[0]), bArr[1], this.d, this.f);
                    cVar.a = 0;
                } else {
                    cVar.a = 1;
                    cVar.b = "http request not support";
                }
            } catch (Exception e) {
                cVar.b = e.toString();
                cVar.a = i;
                TXCLog.i(TXHttpRequest.TAG, "doInBackground Exception e=" + cVar.a + str + cVar.b);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("TXPostRequest->result: ");
            i = cVar.a;
            sb.append(i);
            sb.append(str);
            str = cVar.b;
            sb.append(str);
            TXCLog.i(TXHttpRequest.TAG, sb.toString());
            return cVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public void onPostExecute(final c cVar) {
            super.onPostExecute(cVar);
            final TXHttpRequest tXHttpRequest = this.a.get();
            if (tXHttpRequest != null && tXHttpRequest.mNativeHttps != 0) {
                Handler handler = this.b;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.tencent.liteav.basic.util.TXHttpRequest.b.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TXCLog.i(TXHttpRequest.TAG, "TXPostRequest->recvMsg: " + cVar.a + "|" + cVar.b);
                            TXHttpRequest tXHttpRequest2 = tXHttpRequest;
                            tXHttpRequest2.nativeOnRecvMessage(tXHttpRequest2.mNativeHttps, cVar.a, cVar.c, cVar.d, b.this.e);
                        }
                    });
                    return;
                }
                TXCLog.i(TXHttpRequest.TAG, "TXPostRequest->recvMsg: " + cVar.a + "|" + cVar.b);
                tXHttpRequest.nativeOnRecvMessage(tXHttpRequest.mNativeHttps, cVar.a, cVar.c, cVar.d, this.e);
            }
        }
    }
}
