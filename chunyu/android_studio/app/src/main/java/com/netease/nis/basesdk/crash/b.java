package com.netease.nis.basesdk.crash;

import android.text.TextUtils;
import com.netease.nis.basesdk.Logger;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CrashStore.java */
/* loaded from: classes2.dex */
public class b {
    private static final b b = new b();
    private String a;

    /* compiled from: CrashStore.java */
    /* loaded from: classes2.dex */
    class a implements FilenameFilter {
        a(b bVar) {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (!str.startsWith("tombstone_")) {
                return false;
            }
            return str.endsWith(".java.crash");
        }
    }

    /* compiled from: CrashStore.java */
    /* renamed from: com.netease.nis.basesdk.crash.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0014b implements Comparator<File> {
        C0014b(b bVar) {
        }

        /* renamed from: a */
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    }

    private b() {
    }

    public static b a() {
        return b;
    }

    public void b(String str) {
        this.a = str;
        c.b().b(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0041, code lost:
        if (r2 == null) goto L_0x0046;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.String c(java.lang.String r7) {
        /*
            r6 = this;
            java.lang.String r0 = "parse log file failed"
            java.lang.String r1 = "JavaCrashCrashStore"
            boolean r2 = android.text.TextUtils.isEmpty(r7)
            java.lang.String r3 = ""
            if (r2 == 0) goto L_0x000d
            return r3
        L_0x000d:
            r2 = 0
            java.io.BufferedReader r4 = new java.io.BufferedReader     // Catch: FileNotFoundException -> 0x003e, IOException -> 0x0038, all -> 0x0036
            java.io.FileReader r5 = new java.io.FileReader     // Catch: FileNotFoundException -> 0x003e, IOException -> 0x0038, all -> 0x0036
            r5.<init>(r7)     // Catch: FileNotFoundException -> 0x003e, IOException -> 0x0038, all -> 0x0036
            r4.<init>(r5)     // Catch: FileNotFoundException -> 0x003e, IOException -> 0x0038, all -> 0x0036
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: FileNotFoundException -> 0x0034, IOException -> 0x0032, all -> 0x002f
            r7.<init>()     // Catch: FileNotFoundException -> 0x0034, IOException -> 0x0032, all -> 0x002f
        L_0x001d:
            java.lang.String r2 = r4.readLine()     // Catch: FileNotFoundException -> 0x0034, IOException -> 0x0032, all -> 0x002f
            if (r2 == 0) goto L_0x0027
            r7.append(r2)     // Catch: FileNotFoundException -> 0x0034, IOException -> 0x0032, all -> 0x002f
            goto L_0x001d
        L_0x0027:
            java.lang.String r7 = r7.toString()     // Catch: FileNotFoundException -> 0x0034, IOException -> 0x0032, all -> 0x002f
            r4.close()     // Catch: IOException -> 0x002e
        L_0x002e:
            return r7
        L_0x002f:
            r7 = move-exception
            r2 = r4
            goto L_0x0047
        L_0x0032:
            r2 = r4
            goto L_0x0038
        L_0x0034:
            r2 = r4
            goto L_0x003e
        L_0x0036:
            r7 = move-exception
            goto L_0x0047
        L_0x0038:
            com.netease.nis.basesdk.Logger.e(r1, r0)     // Catch: all -> 0x0036
            if (r2 == 0) goto L_0x0046
            goto L_0x0043
        L_0x003e:
            com.netease.nis.basesdk.Logger.e(r1, r0)     // Catch: all -> 0x0036
            if (r2 == 0) goto L_0x0046
        L_0x0043:
            r2.close()     // Catch: IOException -> 0x0046
        L_0x0046:
            return r3
        L_0x0047:
            if (r2 == 0) goto L_0x004c
            r2.close()     // Catch: IOException -> 0x004c
        L_0x004c:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.nis.basesdk.crash.b.c(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0065, code lost:
        if (r2 == null) goto L_0x0071;
     */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.io.File d(java.lang.String r12) {
        /*
            r11 = this;
            java.lang.String r0 = "JavaCrashCrashStore"
            java.util.Date r1 = new java.util.Date
            r1.<init>()
            r2 = 0
            java.util.Locale r3 = java.util.Locale.US     // Catch: Exception -> 0x0039
            java.lang.String r4 = "%s/%s_%020d_%s"
            r5 = 4
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: Exception -> 0x0039
            r6 = 0
            java.lang.String r7 = r11.a     // Catch: Exception -> 0x0039
            r5[r6] = r7     // Catch: Exception -> 0x0039
            r6 = 1
            java.lang.String r7 = "tombstone"
            r5[r6] = r7     // Catch: Exception -> 0x0039
            r6 = 2
            long r7 = r1.getTime()     // Catch: Exception -> 0x0039
            r9 = 1000(0x3e8, double:4.94E-321)
            long r7 = r7 * r9
            java.lang.Long r1 = java.lang.Long.valueOf(r7)     // Catch: Exception -> 0x0039
            r5[r6] = r1     // Catch: Exception -> 0x0039
            r1 = 3
            java.lang.String r6 = ".java.crash"
            r5[r1] = r6     // Catch: Exception -> 0x0039
            java.lang.String r1 = java.lang.String.format(r3, r4, r5)     // Catch: Exception -> 0x0039
            com.netease.nis.basesdk.crash.c r3 = com.netease.nis.basesdk.crash.c.b()     // Catch: Exception -> 0x0039
            java.io.File r1 = r3.a(r1)     // Catch: Exception -> 0x0039
            goto L_0x003f
        L_0x0039:
            java.lang.String r1 = "createLogFile failed"
            com.netease.nis.basesdk.Logger.e(r0, r1)
            r1 = r2
        L_0x003f:
            if (r1 == 0) goto L_0x0071
            java.io.RandomAccessFile r3 = new java.io.RandomAccessFile     // Catch: Exception -> 0x0060, all -> 0x005e
            java.lang.String r4 = "rws"
            r3.<init>(r1, r4)     // Catch: Exception -> 0x0060, all -> 0x005e
            boolean r2 = android.text.TextUtils.isEmpty(r12)     // Catch: Exception -> 0x005c, all -> 0x0059
            if (r2 != 0) goto L_0x0057
            java.lang.String r2 = "UTF-8"
            byte[] r12 = r12.getBytes(r2)     // Catch: Exception -> 0x005c, all -> 0x0059
            r3.write(r12)     // Catch: Exception -> 0x005c, all -> 0x0059
        L_0x0057:
            r2 = r3
            goto L_0x0067
        L_0x0059:
            r12 = move-exception
            r2 = r3
            goto L_0x006b
        L_0x005c:
            r2 = r3
            goto L_0x0060
        L_0x005e:
            r12 = move-exception
            goto L_0x006b
        L_0x0060:
            java.lang.String r12 = "write log file failed"
            com.netease.nis.basesdk.Logger.e(r0, r12)     // Catch: all -> 0x005e
            if (r2 == 0) goto L_0x0071
        L_0x0067:
            r2.close()     // Catch: Exception -> 0x0071
            goto L_0x0071
        L_0x006b:
            if (r2 == 0) goto L_0x0070
            r2.close()     // Catch: Exception -> 0x0070
        L_0x0070:
            throw r12
        L_0x0071:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netease.nis.basesdk.crash.b.d(java.lang.String):java.io.File");
    }

    public void a(String str) {
        if (c.b().a(new File(str))) {
            Logger.d("delete file success");
        }
    }

    public File[] b() {
        if (TextUtils.isEmpty(this.a)) {
            return new File[0];
        }
        File file = new File(this.a);
        if (!file.exists() || !file.isDirectory()) {
            return new File[0];
        }
        File[] listFiles = file.listFiles(new a(this));
        if (listFiles == null) {
            return new File[0];
        }
        Arrays.sort(listFiles, new C0014b(this));
        return listFiles;
    }
}
