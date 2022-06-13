package com.appinstall.sdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;

/* loaded from: classes2.dex */
public class bd {
    private final Context a;
    private String b;
    private Pair c;
    private final cg d = cg.a("AdIn");

    public bd(Context context) {
        this.a = context;
    }

    private boolean a(String str) {
        return TextUtils.isEmpty(str) || str.equals(ce.u) || str.equals(ce.v);
    }

    private boolean b(String str) {
        return TextUtils.isEmpty(str) || str.equals(ce.w);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0024 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0025 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.String a() {
        /*
            r11 = this;
            java.lang.String r0 = r11.b
            if (r0 == 0) goto L_0x0005
            return r0
        L_0x0005:
            r0 = 0
            android.content.Context r1 = r11.a     // Catch: SecurityException | Exception -> 0x001d
            java.lang.String r2 = com.appinstall.sdk.ce.q     // Catch: SecurityException | Exception -> 0x001d
            java.lang.Object r1 = r1.getSystemService(r2)     // Catch: SecurityException | Exception -> 0x001d
            android.net.wifi.WifiManager r1 = (android.net.wifi.WifiManager) r1     // Catch: SecurityException | Exception -> 0x001d
            if (r1 == 0) goto L_0x001d
            android.net.wifi.WifiInfo r1 = r1.getConnectionInfo()     // Catch: SecurityException | Exception -> 0x001d
            if (r1 == 0) goto L_0x001d
            java.lang.String r1 = r1.getMacAddress()     // Catch: SecurityException | Exception -> 0x001d
            goto L_0x001e
        L_0x001d:
            r1 = r0
        L_0x001e:
            boolean r2 = r11.b(r1)
            if (r2 != 0) goto L_0x0025
            return r1
        L_0x0025:
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: IOException | Exception -> 0x003a
            java.io.FileReader r3 = new java.io.FileReader     // Catch: IOException | Exception -> 0x003a
            java.io.File r4 = new java.io.File     // Catch: IOException | Exception -> 0x003a
            java.lang.String r5 = com.appinstall.sdk.ce.s     // Catch: IOException | Exception -> 0x003a
            r4.<init>(r5)     // Catch: IOException | Exception -> 0x003a
            r3.<init>(r4)     // Catch: IOException | Exception -> 0x003a
            r2.<init>(r3)     // Catch: IOException | Exception -> 0x003a
            java.lang.String r1 = r2.readLine()     // Catch: IOException | Exception -> 0x003a
        L_0x003a:
            boolean r2 = r11.b(r1)
            if (r2 != 0) goto L_0x0041
            return r1
        L_0x0041:
            java.util.Enumeration r2 = java.net.NetworkInterface.getNetworkInterfaces()     // Catch: Exception -> 0x009f
            java.util.ArrayList r2 = java.util.Collections.list(r2)     // Catch: Exception -> 0x009f
            java.util.Iterator r2 = r2.iterator()     // Catch: Exception -> 0x009f
        L_0x004d:
            boolean r3 = r2.hasNext()     // Catch: Exception -> 0x009f
            if (r3 == 0) goto L_0x009f
            java.lang.Object r3 = r2.next()     // Catch: Exception -> 0x009f
            java.net.NetworkInterface r3 = (java.net.NetworkInterface) r3     // Catch: Exception -> 0x009f
            java.lang.String r4 = com.appinstall.sdk.ce.r     // Catch: Exception -> 0x009f
            java.lang.String r5 = r3.getName()     // Catch: Exception -> 0x009f
            boolean r4 = r4.equalsIgnoreCase(r5)     // Catch: Exception -> 0x009f
            if (r4 == 0) goto L_0x004d
            byte[] r3 = r3.getHardwareAddress()     // Catch: Exception -> 0x009f
            if (r3 == 0) goto L_0x004d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: Exception -> 0x009f
            r4.<init>()     // Catch: Exception -> 0x009f
            int r5 = r3.length     // Catch: Exception -> 0x009f
            r6 = 0
            r7 = r6
        L_0x0073:
            r8 = 1
            if (r7 >= r5) goto L_0x008c
            byte r9 = r3[r7]     // Catch: Exception -> 0x009f
            java.lang.String r10 = "%02X:"
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch: Exception -> 0x009f
            java.lang.Byte r9 = java.lang.Byte.valueOf(r9)     // Catch: Exception -> 0x009f
            r8[r6] = r9     // Catch: Exception -> 0x009f
            java.lang.String r8 = java.lang.String.format(r10, r8)     // Catch: Exception -> 0x009f
            r4.append(r8)     // Catch: Exception -> 0x009f
            int r7 = r7 + 1
            goto L_0x0073
        L_0x008c:
            int r3 = r4.length()     // Catch: Exception -> 0x009f
            if (r3 <= 0) goto L_0x009a
            int r3 = r4.length()     // Catch: Exception -> 0x009f
            int r3 = r3 - r8
            r4.deleteCharAt(r3)     // Catch: Exception -> 0x009f
        L_0x009a:
            java.lang.String r1 = r4.toString()     // Catch: Exception -> 0x009f
            goto L_0x004d
        L_0x009f:
            boolean r2 = r11.b(r1)
            if (r2 == 0) goto L_0x00a6
            goto L_0x00a7
        L_0x00a6:
            r0 = r1
        L_0x00a7:
            if (r0 != 0) goto L_0x00ab
            java.lang.String r0 = ""
        L_0x00ab:
            r11.b = r0
            java.lang.String r0 = r11.b
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appinstall.sdk.bd.a():java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0053  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public android.util.Pair b() {
        /*
            r6 = this;
            android.util.Pair r0 = r6.c
            if (r0 == 0) goto L_0x0005
            return r0
        L_0x0005:
            android.content.Context r0 = r6.a
            boolean r0 = com.appinstall.sdk.ci.a(r0)
            r1 = 0
            if (r0 == 0) goto L_0x0044
            android.content.Context r0 = r6.a
            java.lang.String r2 = "phone"
            java.lang.Object r0 = r0.getSystemService(r2)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch: SecurityException | Exception -> 0x0041
            r3 = 26
            if (r2 < r3) goto L_0x0038
            java.lang.String r2 = r0.getImei()     // Catch: SecurityException | Exception -> 0x0041
            r3 = 1
            java.lang.String r3 = r0.getImei(r3)     // Catch: SecurityException | Exception -> 0x0042
            r4 = 2
            java.lang.String r0 = r0.getImei(r4)     // Catch: SecurityException | Exception -> 0x0042
            boolean r4 = android.text.TextUtils.equals(r2, r3)     // Catch: SecurityException | Exception -> 0x0042
            if (r4 == 0) goto L_0x0033
            goto L_0x0034
        L_0x0033:
            r0 = r3
        L_0x0034:
            r5 = r2
            r2 = r0
            r0 = r5
            goto L_0x003d
        L_0x0038:
            java.lang.String r0 = r0.getDeviceId()     // Catch: SecurityException | Exception -> 0x0041, SecurityException | Exception -> 0x0041
            r2 = r1
        L_0x003d:
            r5 = r2
            r2 = r0
            r0 = r5
            goto L_0x0046
        L_0x0041:
            r2 = r1
        L_0x0042:
            r0 = r1
            goto L_0x0046
        L_0x0044:
            r0 = r1
            r2 = r0
        L_0x0046:
            boolean r3 = r6.a(r2)
            if (r3 == 0) goto L_0x004d
            r2 = r1
        L_0x004d:
            boolean r3 = r6.a(r0)
            if (r3 == 0) goto L_0x0054
            r0 = r1
        L_0x0054:
            android.util.Pair r1 = new android.util.Pair
            r1.<init>(r2, r0)
            r6.c = r1
            android.util.Pair r0 = r6.c
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appinstall.sdk.bd.b():android.util.Pair");
    }
}
