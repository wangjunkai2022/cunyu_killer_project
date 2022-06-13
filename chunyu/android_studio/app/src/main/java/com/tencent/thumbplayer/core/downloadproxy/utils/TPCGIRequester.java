package com.tencent.thumbplayer.core.downloadproxy.utils;

import com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes2.dex */
public class TPCGIRequester {
    private static final String FILE_NAME = "TPCGIRequester";
    private static final int MAX_RETRY_TIMES = 3;
    private static final int MSG_CONFIG_URL = 2011;
    private static final int MSG_REPORT_URL = 2010;
    private static final int MSG_WUJI_CONFIG_URL = 2013;
    private static final int RETRY_INTERVAL = 3000;
    private static final int TIMEOUT = 3000;
    private static volatile ExecutorService mCustomExecutor;
    private static TPCGIRequester mRequester;
    private LinkedBlockingQueue<TPRequestItem> mRetryQueue = new LinkedBlockingQueue<>();
    private LinkedBlockingQueue<TPRequestItem> mRequestQueue = new LinkedBlockingQueue<>();
    private TimerTask mTimerTask = new TimerTask() { // from class: com.tencent.thumbplayer.core.downloadproxy.utils.TPCGIRequester.1
        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            while (TPCGIRequester.this.mRetryQueue.peek() != null && System.currentTimeMillis() - ((TPRequestItem) TPCGIRequester.this.mRetryQueue.peek()).getRequestFailedTime() > 3000) {
                TPCGIRequester tPCGIRequester = TPCGIRequester.this;
                tPCGIRequester.addNotifyReqQueue((TPRequestItem) tPCGIRequester.mRetryQueue.poll());
            }
        }
    };

    private TPCGIRequester() {
        new Timer(true).scheduleAtFixedRate(this.mTimerTask, 0, 1000);
        process();
    }

    public static TPCGIRequester getInstance() {
        if (mRequester == null) {
            synchronized (TPCGIRequester.class) {
                if (mRequester == null) {
                    mRequester = new TPCGIRequester();
                }
            }
        }
        return mRequester;
    }

    public void addRequestItem(String str, int i) {
        if (str.isEmpty()) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "request url null");
        } else {
            addNotifyReqQueue(new TPRequestItem(str, i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addNotifyReqQueue(TPRequestItem tPRequestItem) {
        try {
            this.mRequestQueue.put(tPRequestItem);
        } catch (Throwable th) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "RequestQueue add failed:" + th.toString());
        }
    }

    private static ExecutorService obtainThreadExcutor() {
        if (mCustomExecutor == null) {
            synchronized (TPCGIRequester.class) {
                if (mCustomExecutor == null) {
                    mCustomExecutor = Executors.newSingleThreadExecutor();
                }
            }
        }
        return mCustomExecutor;
    }

    private void process() {
        obtainThreadExcutor().execute(new Runnable() { // from class: com.tencent.thumbplayer.core.downloadproxy.utils.TPCGIRequester.2
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    try {
                        TPRequestItem tPRequestItem = (TPRequestItem) TPCGIRequester.this.mRequestQueue.take();
                        if (!TPCGIRequester.this.handleRequestItem(tPRequestItem)) {
                            tPRequestItem.updateFailedTime();
                            TPCGIRequester.this.addRetryRequestItem(tPRequestItem);
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e(TPCGIRequester.FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "request queue take failed: " + th.toString());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ea A[DONT_GENERATE] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public boolean handleRequestItem(com.tencent.thumbplayer.core.downloadproxy.utils.TPRequestItem r12) {
        /*
            r11 = this;
            java.lang.String r0 = "tpdlnative"
            java.lang.String r1 = "TPCGIRequester"
            java.lang.String r2 = r12.getUrl()
            r3 = 0
            r4 = 0
            java.net.URL r5 = new java.net.URL     // Catch: all -> 0x00cd
            r5.<init>(r2)     // Catch: all -> 0x00cd
            java.net.URLConnection r2 = r5.openConnection()     // Catch: all -> 0x00cd
            java.net.HttpURLConnection r2 = (java.net.HttpURLConnection) r2     // Catch: all -> 0x00cd
            java.lang.String r4 = "GET"
            r2.setRequestMethod(r4)     // Catch: all -> 0x00cb
            r4 = 3000(0xbb8, float:4.204E-42)
            r2.setConnectTimeout(r4)     // Catch: all -> 0x00cb
            r2.connect()     // Catch: all -> 0x00cb
            int r4 = r2.getResponseCode()     // Catch: all -> 0x00cb
            r5 = 200(0xc8, float:2.8E-43)
            if (r4 == r5) goto L_0x002e
            r5 = 206(0xce, float:2.89E-43)
            if (r4 != r5) goto L_0x00c3
        L_0x002e:
            r4 = 1
            int r5 = r12.getRequestType()     // Catch: all -> 0x00c9
            r6 = 2011(0x7db, float:2.818E-42)
            r7 = 2013(0x7dd, float:2.821E-42)
            if (r5 == r6) goto L_0x003f
            int r5 = r12.getRequestType()     // Catch: all -> 0x00c9
            if (r5 != r7) goto L_0x00c2
        L_0x003f:
            java.lang.StringBuffer r5 = new java.lang.StringBuffer     // Catch: all -> 0x00c9
            r5.<init>()     // Catch: all -> 0x00c9
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: all -> 0x00c9
            java.io.InputStreamReader r8 = new java.io.InputStreamReader     // Catch: all -> 0x00c9
            java.io.InputStream r9 = r2.getInputStream()     // Catch: all -> 0x00c9
            java.lang.String r10 = "UTF-8"
            r8.<init>(r9, r10)     // Catch: all -> 0x00c9
            r6.<init>(r8)     // Catch: all -> 0x00c9
        L_0x0054:
            java.lang.String r8 = r6.readLine()     // Catch: all -> 0x00c9
            if (r8 == 0) goto L_0x0063
            r5.append(r8)     // Catch: all -> 0x00c9
            java.lang.String r8 = "\n"
            r5.append(r8)     // Catch: all -> 0x00c9
            goto L_0x0054
        L_0x0063:
            r6.close()     // Catch: all -> 0x00c9
            java.lang.String r5 = r5.toString()     // Catch: all -> 0x00c9
            java.lang.String r6 = "QZOutputJson="
            java.lang.String r8 = ""
            java.lang.String r5 = r5.replace(r6, r8)     // Catch: all -> 0x00c9
            org.json.JSONObject r6 = new org.json.JSONObject     // Catch: all -> 0x00c9
            r6.<init>(r5)     // Catch: all -> 0x00c9
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: all -> 0x00c9
            r8.<init>()     // Catch: all -> 0x00c9
            java.lang.String r9 = "start update config. responce data: "
            r8.append(r9)     // Catch: all -> 0x00c9
            r8.append(r5)     // Catch: all -> 0x00c9
            java.lang.String r5 = r8.toString()     // Catch: all -> 0x00c9
            com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog.i(r1, r3, r0, r5)     // Catch: all -> 0x00c9
            int r12 = r12.getRequestType()     // Catch: all -> 0x00c9
            java.lang.String r5 = "proxy_config"
            if (r12 != r7) goto L_0x00a9
            java.lang.String r12 = "code"
            int r12 = r6.getInt(r12)     // Catch: all -> 0x00c9
            if (r12 != 0) goto L_0x00c2
            java.lang.String r12 = "data"
            java.lang.String r12 = r6.getString(r12)     // Catch: all -> 0x00c9
            com.tencent.thumbplayer.core.downloadproxy.jni.TPDownloadProxyNative r6 = com.tencent.thumbplayer.core.downloadproxy.jni.TPDownloadProxyNative.getInstance()     // Catch: all -> 0x00c9
            r6.setUserData(r5, r12)     // Catch: all -> 0x00c9
            goto L_0x00c2
        L_0x00a9:
            java.lang.String r12 = "ret"
            int r12 = r6.getInt(r12)     // Catch: all -> 0x00c9
            if (r12 != 0) goto L_0x00c2
            java.lang.String r12 = "config"
            org.json.JSONObject r12 = r6.getJSONObject(r12)     // Catch: all -> 0x00c9
            java.lang.String r12 = r12.toString()     // Catch: all -> 0x00c9
            com.tencent.thumbplayer.core.downloadproxy.jni.TPDownloadProxyNative r6 = com.tencent.thumbplayer.core.downloadproxy.jni.TPDownloadProxyNative.getInstance()     // Catch: all -> 0x00c9
            r6.setUserData(r5, r12)     // Catch: all -> 0x00c9
        L_0x00c2:
            r3 = r4
        L_0x00c3:
            if (r2 == 0) goto L_0x00ee
            r2.disconnect()
            goto L_0x00ee
        L_0x00c9:
            r12 = move-exception
            goto L_0x00d0
        L_0x00cb:
            r12 = move-exception
            goto L_0x00cf
        L_0x00cd:
            r12 = move-exception
            r2 = r4
        L_0x00cf:
            r4 = r3
        L_0x00d0:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: all -> 0x00ef
            r5.<init>()     // Catch: all -> 0x00ef
            java.lang.String r6 = "Send Request Routine error:"
            r5.append(r6)     // Catch: all -> 0x00ef
            java.lang.String r12 = r12.toString()     // Catch: all -> 0x00ef
            r5.append(r12)     // Catch: all -> 0x00ef
            java.lang.String r12 = r5.toString()     // Catch: all -> 0x00ef
            com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog.e(r1, r3, r0, r12)     // Catch: all -> 0x00ef
            if (r2 == 0) goto L_0x00ed
            r2.disconnect()
        L_0x00ed:
            r3 = r4
        L_0x00ee:
            return r3
        L_0x00ef:
            r12 = move-exception
            if (r2 == 0) goto L_0x00f5
            r2.disconnect()
        L_0x00f5:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.downloadproxy.utils.TPCGIRequester.handleRequestItem(com.tencent.thumbplayer.core.downloadproxy.utils.TPRequestItem):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addRetryRequestItem(TPRequestItem tPRequestItem) {
        try {
            if (tPRequestItem.getRequestTimes() <= 3) {
                this.mRetryQueue.put(tPRequestItem);
            }
        } catch (Throwable th) {
            TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "retry queue add failed" + th.toString());
        }
    }
}
