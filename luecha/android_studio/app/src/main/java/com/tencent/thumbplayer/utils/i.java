package com.tencent.thumbplayer.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class i extends BroadcastReceiver {
    private static String b = "unknown";
    private static int c;
    private static String e;
    private ArrayList<b> f;
    private HandlerThread g;
    private static int a = 0;
    private static int d = a;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static class a {
        private static i a = new i();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface b {
        void a(int i, int i2, int i3, int i4);
    }

    private i() {
        this.f = null;
        if (this.f == null) {
            this.f = new ArrayList<>();
        }
    }

    public static i a() {
        return a.a;
    }

    private synchronized void a(Context context, Handler handler) {
        if (context != null) {
            context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"), null, handler);
        }
    }

    private boolean a(NetworkInfo networkInfo) {
        return networkInfo != null && (networkInfo.isConnected() || networkInfo.isConnectedOrConnecting());
    }

    public static int b() {
        return c;
    }

    private static int b(NetworkInfo networkInfo) {
        if (networkInfo != null) {
            switch (networkInfo.getSubtype()) {
                case 0:
                    break;
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    return 2;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                default:
                    return 3;
                case 13:
                    return 4;
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0064 A[Catch: Exception -> 0x0072, TryCatch #0 {Exception -> 0x0072, blocks: (B:3:0x0002, B:6:0x000e, B:8:0x0020, B:10:0x0026, B:11:0x002a, B:13:0x0030, B:14:0x0034, B:15:0x0037, B:17:0x003d, B:21:0x0046, B:22:0x0048, B:27:0x0051, B:28:0x0055, B:29:0x0058, B:30:0x005a, B:32:0x0064, B:33:0x006c), top: B:36:0x0002 }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private void b(android.content.Context r8) {
        /*
            r7 = this;
            if (r8 == 0) goto L_0x000b
            java.lang.String r0 = "connectivity"
            java.lang.Object r8 = r8.getSystemService(r0)     // Catch: Exception -> 0x0072
            android.net.ConnectivityManager r8 = (android.net.ConnectivityManager) r8     // Catch: Exception -> 0x0072
            goto L_0x000c
        L_0x000b:
            r8 = 0
        L_0x000c:
            if (r8 == 0) goto L_0x0072
            r0 = 0
            android.net.NetworkInfo r1 = r8.getNetworkInfo(r0)     // Catch: Exception -> 0x0072
            r2 = 1
            android.net.NetworkInfo r3 = r8.getNetworkInfo(r2)     // Catch: Exception -> 0x0072
            android.net.NetworkInfo r8 = r8.getActiveNetworkInfo()     // Catch: Exception -> 0x0072
            r4 = 2
            r5 = 3
            if (r8 != 0) goto L_0x0037
            boolean r6 = r7.a(r1)     // Catch: Exception -> 0x0072
            if (r6 == 0) goto L_0x002a
            com.tencent.thumbplayer.utils.i.a = r5     // Catch: Exception -> 0x0072
            r8 = r1
            goto L_0x0048
        L_0x002a:
            boolean r1 = r7.a(r3)     // Catch: Exception -> 0x0072
            if (r1 == 0) goto L_0x0034
            com.tencent.thumbplayer.utils.i.a = r4     // Catch: Exception -> 0x0072
            r8 = r3
            goto L_0x0048
        L_0x0034:
            com.tencent.thumbplayer.utils.i.a = r2     // Catch: Exception -> 0x0072
            goto L_0x0048
        L_0x0037:
            boolean r3 = r7.a(r8)     // Catch: Exception -> 0x0072
            if (r3 == 0) goto L_0x0034
            boolean r1 = r7.a(r1)     // Catch: Exception -> 0x0072
            if (r1 == 0) goto L_0x0045
            r1 = r5
            goto L_0x0046
        L_0x0045:
            r1 = r4
        L_0x0046:
            com.tencent.thumbplayer.utils.i.a = r1     // Catch: Exception -> 0x0072
        L_0x0048:
            int r1 = com.tencent.thumbplayer.utils.i.a     // Catch: Exception -> 0x0072
            if (r1 == r2) goto L_0x0055
            if (r1 == r4) goto L_0x0058
            if (r1 == r5) goto L_0x0051
            goto L_0x005a
        L_0x0051:
            int r0 = b(r8)     // Catch: Exception -> 0x0072
        L_0x0055:
            com.tencent.thumbplayer.utils.i.c = r0     // Catch: Exception -> 0x0072
            goto L_0x005a
        L_0x0058:
            com.tencent.thumbplayer.utils.i.c = r2     // Catch: Exception -> 0x0072
        L_0x005a:
            java.lang.String r8 = r7.c(r8)     // Catch: Exception -> 0x0072
            com.tencent.thumbplayer.utils.i.b = r8     // Catch: Exception -> 0x0072
            int r8 = com.tencent.thumbplayer.utils.i.d     // Catch: Exception -> 0x0072
            if (r8 != 0) goto L_0x006c
            int r8 = com.tencent.thumbplayer.utils.i.a     // Catch: Exception -> 0x0072
            com.tencent.thumbplayer.utils.i.d = r8     // Catch: Exception -> 0x0072
            java.lang.String r8 = com.tencent.thumbplayer.utils.i.b     // Catch: Exception -> 0x0072
            com.tencent.thumbplayer.utils.i.e = r8     // Catch: Exception -> 0x0072
        L_0x006c:
            r7.f()     // Catch: Exception -> 0x0072
            r7.e()     // Catch: Exception -> 0x0072
        L_0x0072:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.utils.i.b(android.content.Context):void");
    }

    public static int c() {
        return a;
    }

    private String c(NetworkInfo networkInfo) {
        String str = null;
        String typeName = networkInfo != null ? networkInfo.getTypeName() : null;
        TPLogUtil.d("TPNetworkChangeMonitor", "getDetailNetworkType, typeName: " + typeName);
        if (typeName != null) {
            if (typeName.toLowerCase(Locale.getDefault()).equals("wifi")) {
                return "wifi";
            }
            String extraInfo = networkInfo.getExtraInfo();
            if (extraInfo != null) {
                str = extraInfo.toLowerCase(Locale.getDefault());
            }
            String str2 = "ctnet";
            if (str != null) {
                if (str.startsWith("cmwap")) {
                    return "cmwap";
                }
                if (str.startsWith("cmnet") || str.startsWith("epc.tmobile.com")) {
                    return "cmnet";
                }
                if (str.startsWith("uniwap")) {
                    return "uniwap";
                }
                if (str.startsWith("uninet")) {
                    return "uninet";
                }
                if (str.startsWith("wap")) {
                    return "wap";
                }
                if (str.startsWith("net")) {
                    return "net";
                }
                if (str.startsWith("ctwap")) {
                    return "ctwap";
                }
                if (!str.startsWith(str2)) {
                    if (str.startsWith("3gwap")) {
                        return "3gwap";
                    }
                    if (str.startsWith("3gnet")) {
                        return "3gnet";
                    }
                    if (str.startsWith("#777")) {
                        String defaultHost = Proxy.getDefaultHost();
                        if (defaultHost != null && defaultHost.length() > 0) {
                            str2 = "ctwap";
                        }
                    }
                }
                return str2;
            }
        }
        return "unknown";
    }

    private static boolean d() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0064 A[Catch: all -> 0x008a, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0008, B:10:0x0016, B:12:0x0064, B:13:0x006a, B:15:0x0070, B:16:0x0080), top: B:21:0x0001 }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private synchronized void e() {
        /*
            r6 = this;
            monitor-enter(r6)
            int r0 = com.tencent.thumbplayer.utils.i.a     // Catch: all -> 0x008a
            int r1 = com.tencent.thumbplayer.utils.i.d     // Catch: all -> 0x008a
            r2 = 0
            if (r0 != r1) goto L_0x0015
            java.lang.String r0 = com.tencent.thumbplayer.utils.i.b     // Catch: all -> 0x008a
            java.lang.String r1 = com.tencent.thumbplayer.utils.i.e     // Catch: all -> 0x008a
            boolean r0 = android.text.TextUtils.equals(r0, r1)     // Catch: all -> 0x008a
            if (r0 != 0) goto L_0x0013
            goto L_0x0015
        L_0x0013:
            r0 = r2
            goto L_0x0016
        L_0x0015:
            r0 = 1
        L_0x0016:
            java.lang.String r1 = "TPNetworkChangeMonitor"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: all -> 0x008a
            r3.<init>()     // Catch: all -> 0x008a
            java.lang.String r4 = "notifyIfNetChanged, isNetChanged: "
            r3.append(r4)     // Catch: all -> 0x008a
            r3.append(r0)     // Catch: all -> 0x008a
            java.lang.String r4 = ",  mListeners:  "
            r3.append(r4)     // Catch: all -> 0x008a
            java.util.ArrayList<com.tencent.thumbplayer.utils.i$b> r4 = r6.f     // Catch: all -> 0x008a
            r3.append(r4)     // Catch: all -> 0x008a
            java.lang.String r3 = r3.toString()     // Catch: all -> 0x008a
            com.tencent.thumbplayer.utils.TPLogUtil.i(r1, r3)     // Catch: all -> 0x008a
            java.lang.String r1 = "TPNetworkChangeMonitor"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: all -> 0x008a
            r3.<init>()     // Catch: all -> 0x008a
            java.lang.String r4 = "onNetworkStatusChanged oldNetStatus: "
            r3.append(r4)     // Catch: all -> 0x008a
            int r4 = com.tencent.thumbplayer.utils.i.d     // Catch: all -> 0x008a
            r3.append(r4)     // Catch: all -> 0x008a
            java.lang.String r4 = ", netStatus: "
            r3.append(r4)     // Catch: all -> 0x008a
            int r4 = com.tencent.thumbplayer.utils.i.a     // Catch: all -> 0x008a
            r3.append(r4)     // Catch: all -> 0x008a
            java.lang.String r4 = ", mobileNetSubType"
            r3.append(r4)     // Catch: all -> 0x008a
            int r4 = com.tencent.thumbplayer.utils.i.c     // Catch: all -> 0x008a
            r3.append(r4)     // Catch: all -> 0x008a
            java.lang.String r3 = r3.toString()     // Catch: all -> 0x008a
            com.tencent.thumbplayer.utils.TPLogUtil.i(r1, r3)     // Catch: all -> 0x008a
            if (r0 == 0) goto L_0x0088
            java.util.ArrayList<com.tencent.thumbplayer.utils.i$b> r0 = r6.f     // Catch: all -> 0x008a
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x008a
        L_0x006a:
            boolean r1 = r0.hasNext()     // Catch: all -> 0x008a
            if (r1 == 0) goto L_0x0080
            java.lang.Object r1 = r0.next()     // Catch: all -> 0x008a
            com.tencent.thumbplayer.utils.i$b r1 = (com.tencent.thumbplayer.utils.i.b) r1     // Catch: all -> 0x008a
            int r3 = com.tencent.thumbplayer.utils.i.d     // Catch: all -> 0x008a
            int r4 = com.tencent.thumbplayer.utils.i.a     // Catch: all -> 0x008a
            int r5 = com.tencent.thumbplayer.utils.i.c     // Catch: all -> 0x008a
            r1.a(r3, r4, r2, r5)     // Catch: all -> 0x008a
            goto L_0x006a
        L_0x0080:
            int r0 = com.tencent.thumbplayer.utils.i.a     // Catch: all -> 0x008a
            com.tencent.thumbplayer.utils.i.d = r0     // Catch: all -> 0x008a
            java.lang.String r0 = com.tencent.thumbplayer.utils.i.b     // Catch: all -> 0x008a
            com.tencent.thumbplayer.utils.i.e = r0     // Catch: all -> 0x008a
        L_0x0088:
            monitor-exit(r6)
            return
        L_0x008a:
            r0 = move-exception
            monitor-exit(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.utils.i.e():void");
    }

    private void f() {
        TPLogUtil.d("TPNetworkChangeMonitor", "-->updateNetStatus(), mNetStatus=" + a + "[wifi: 2, mobile: 3], lastNetStatus=" + d + ", mDetailNetworkType=" + b + ", mobileNetSubType=" + c + "[2G:2 3G:3 4G:4], currentDetailNetType=" + b + ", lastDetailNetType=" + e);
    }

    public synchronized void a(Context context) {
        b.a(context, "context can not be null!");
        if (this.g == null) {
            this.g = o.a().b();
        }
        a(context, new Handler(this.g.getLooper()));
        b(context);
    }

    public synchronized void a(b bVar) {
        if (this.f != null && !this.f.contains(bVar)) {
            this.f.add(bVar);
            TPLogUtil.d("TPNetworkChangeMonitor", "add onNetStatus change listener: " + bVar + ", mListeners: " + this.f.size());
        }
    }

    public synchronized void b(b bVar) {
        if (this.f != null) {
            this.f.remove(bVar);
            TPLogUtil.d("TPNetworkChangeMonitor", "remove netStatusChangeListener, listener: " + bVar + ", mListeners: " + this.f.size());
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        StringBuilder sb = new StringBuilder();
        sb.append("onReceive broadcast action and update net status,onReceive broadcast in ");
        sb.append(d() ? "main" : "work");
        sb.append(" thread.");
        TPLogUtil.d("TPNetworkChangeMonitor", sb.toString());
        b(context);
    }
}
