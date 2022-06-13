package com.appinstall.sdk;

import java.io.BufferedInputStream;

/* loaded from: classes4.dex */
public class an {

    /* loaded from: classes4.dex */
    private static class a {
        private static final an a = new an();
    }

    private an() {
    }

    public static an a() {
        return a.a;
    }

    private static String a(BufferedInputStream bufferedInputStream) {
        int read;
        if (bufferedInputStream == null) {
            return "";
        }
        byte[] bArr = new byte[512];
        StringBuilder sb = new StringBuilder();
        do {
            try {
                read = bufferedInputStream.read(bArr);
                if (read > 0) {
                    sb.append(new String(bArr, 0, read));
                    continue;
                }
            } catch (Exception unused) {
            }
        } while (read >= 512);
        return sb.toString();
    }

    public String a(String str) {
        try {
            Object invoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            if (invoke != null) {
                return (String) invoke;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0066 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.String b(java.lang.String r6) {
        /*
            r5 = this;
            r0 = 0
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: Exception -> 0x0061, all -> 0x004e
            java.lang.String r2 = "sh"
            java.lang.Process r1 = r1.exec(r2)     // Catch: Exception -> 0x0061, all -> 0x004e
            java.io.BufferedOutputStream r2 = new java.io.BufferedOutputStream     // Catch: Exception -> 0x004c, all -> 0x0049
            java.io.OutputStream r3 = r1.getOutputStream()     // Catch: Exception -> 0x004c, all -> 0x0049
            r2.<init>(r3)     // Catch: Exception -> 0x004c, all -> 0x0049
            java.io.BufferedInputStream r3 = new java.io.BufferedInputStream     // Catch: Exception -> 0x0047, all -> 0x0045
            java.io.InputStream r4 = r1.getInputStream()     // Catch: Exception -> 0x0047, all -> 0x0045
            r3.<init>(r4)     // Catch: Exception -> 0x0047, all -> 0x0045
            byte[] r6 = r6.getBytes()     // Catch: Exception -> 0x0064, all -> 0x0042
            r2.write(r6)     // Catch: Exception -> 0x0064, all -> 0x0042
            r6 = 10
            r2.write(r6)     // Catch: Exception -> 0x0064, all -> 0x0042
            r2.flush()     // Catch: Exception -> 0x0064, all -> 0x0042
            r2.close()     // Catch: Exception -> 0x0064, all -> 0x0042
            r1.waitFor()     // Catch: Exception -> 0x0064, all -> 0x0042
            java.lang.String r6 = a(r3)     // Catch: Exception -> 0x0064, all -> 0x0042
            r2.close()     // Catch: IOException -> 0x0039
        L_0x0039:
            r3.close()     // Catch: IOException -> 0x003c
        L_0x003c:
            if (r1 == 0) goto L_0x0041
            r1.destroy()
        L_0x0041:
            return r6
        L_0x0042:
            r6 = move-exception
            r0 = r3
            goto L_0x0051
        L_0x0045:
            r6 = move-exception
            goto L_0x0051
        L_0x0047:
            r3 = r0
            goto L_0x0064
        L_0x0049:
            r6 = move-exception
            r2 = r0
            goto L_0x0051
        L_0x004c:
            r2 = r0
            goto L_0x0063
        L_0x004e:
            r6 = move-exception
            r1 = r0
            r2 = r1
        L_0x0051:
            if (r2 == 0) goto L_0x0056
            r2.close()     // Catch: IOException -> 0x0056
        L_0x0056:
            if (r0 == 0) goto L_0x005b
            r0.close()     // Catch: IOException -> 0x005b
        L_0x005b:
            if (r1 == 0) goto L_0x0060
            r1.destroy()
        L_0x0060:
            throw r6
        L_0x0061:
            r1 = r0
            r2 = r1
        L_0x0063:
            r3 = r2
        L_0x0064:
            if (r2 == 0) goto L_0x0069
            r2.close()     // Catch: IOException -> 0x0069
        L_0x0069:
            if (r3 == 0) goto L_0x006e
            r3.close()     // Catch: IOException -> 0x006e
        L_0x006e:
            if (r1 == 0) goto L_0x0073
            r1.destroy()
        L_0x0073:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appinstall.sdk.an.b(java.lang.String):java.lang.String");
    }
}
