package com.appinstall.sdk;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/* loaded from: classes4.dex */
public class at {
    private final File a;

    public at(Context context, String str) {
        this.a = new File(context.getFilesDir(), str);
    }

    public void a(String str) {
        Throwable th;
        FileWriter fileWriter;
        BufferedWriter bufferedWriter;
        Exception e;
        BufferedWriter bufferedWriter2;
        try {
            try {
                bufferedWriter = null;
                try {
                    fileWriter = new FileWriter(this.a, true);
                    try {
                        bufferedWriter2 = new BufferedWriter(fileWriter);
                    } catch (Exception e2) {
                        e = e2;
                    }
                } catch (Exception e3) {
                    e = e3;
                    fileWriter = null;
                } catch (Throwable th2) {
                    th = th2;
                    fileWriter = null;
                }
            } catch (Throwable th3) {
                th = th3;
            }
            try {
                bufferedWriter2.write(str);
                bufferedWriter2.newLine();
                bufferedWriter2.flush();
                bufferedWriter2.close();
                fileWriter.close();
            } catch (Exception e4) {
                e = e4;
                bufferedWriter = bufferedWriter2;
                e.printStackTrace();
                if (bufferedWriter != null) {
                    bufferedWriter.close();
                }
                if (fileWriter != null) {
                    fileWriter.close();
                }
            } catch (Throwable th4) {
                th = th4;
                bufferedWriter = bufferedWriter2;
                if (bufferedWriter != null) {
                    try {
                        bufferedWriter.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                        throw th;
                    }
                }
                if (fileWriter != null) {
                    fileWriter.close();
                }
                throw th;
            }
        } catch (IOException e6) {
            e6.printStackTrace();
        }
    }

    public boolean a() {
        try {
            return this.a.length() >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean b() {
        try {
            if (this.a.exists()) {
                return this.a.length() > 0;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void c() {
        try {
            if (!this.a.exists()) {
                File parentFile = this.a.getParentFile();
                if (parentFile != null && !parentFile.exists()) {
                    parentFile.mkdirs();
                }
                this.a.createNewFile();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void d() {
        try {
            if (this.a.exists()) {
                this.a.delete();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0066 A[Catch: IOException -> 0x0062, TRY_LEAVE, TryCatch #3 {IOException -> 0x0062, blocks: (B:36:0x005e, B:40:0x0066), top: B:43:0x005e }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.StringBuilder] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public java.lang.String e() {
        /*
            r5 = this;
            boolean r0 = r5.b()
            if (r0 != 0) goto L_0x0009
            java.lang.String r0 = ""
            return r0
        L_0x0009:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 0
            java.io.FileReader r2 = new java.io.FileReader     // Catch: Exception -> 0x0040, all -> 0x003d
            java.io.File r3 = r5.a     // Catch: Exception -> 0x0040, all -> 0x003d
            r2.<init>(r3)     // Catch: Exception -> 0x0040, all -> 0x003d
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: Exception -> 0x0037, all -> 0x0033
            r3.<init>(r2)     // Catch: Exception -> 0x0037, all -> 0x0033
        L_0x001b:
            java.lang.String r1 = r3.readLine()     // Catch: Exception -> 0x002e, all -> 0x002c
            if (r1 == 0) goto L_0x0025
            r0.append(r1)     // Catch: Exception -> 0x002e, all -> 0x002c
            goto L_0x001b
        L_0x0025:
            r2.close()     // Catch: IOException -> 0x004b
            r3.close()     // Catch: IOException -> 0x004b
            goto L_0x0056
        L_0x002c:
            r0 = move-exception
            goto L_0x0035
        L_0x002e:
            r1 = move-exception
            r4 = r2
            r2 = r1
            r1 = r4
            goto L_0x0042
        L_0x0033:
            r0 = move-exception
            r3 = r1
        L_0x0035:
            r1 = r2
            goto L_0x005c
        L_0x0037:
            r3 = move-exception
            r4 = r3
            r3 = r1
            r1 = r2
            r2 = r4
            goto L_0x0042
        L_0x003d:
            r0 = move-exception
            r3 = r1
            goto L_0x005c
        L_0x0040:
            r2 = move-exception
            r3 = r1
        L_0x0042:
            r2.printStackTrace()     // Catch: all -> 0x005b
            if (r1 == 0) goto L_0x004d
            r1.close()     // Catch: IOException -> 0x004b
            goto L_0x004d
        L_0x004b:
            r1 = move-exception
            goto L_0x0053
        L_0x004d:
            if (r3 == 0) goto L_0x0056
            r3.close()     // Catch: IOException -> 0x004b
            goto L_0x0056
        L_0x0053:
            r1.printStackTrace()
        L_0x0056:
            java.lang.String r0 = r0.toString()
            return r0
        L_0x005b:
            r0 = move-exception
        L_0x005c:
            if (r1 == 0) goto L_0x0064
            r1.close()     // Catch: IOException -> 0x0062
            goto L_0x0064
        L_0x0062:
            r1 = move-exception
            goto L_0x006a
        L_0x0064:
            if (r3 == 0) goto L_0x006d
            r3.close()     // Catch: IOException -> 0x0062
            goto L_0x006d
        L_0x006a:
            r1.printStackTrace()
        L_0x006d:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appinstall.sdk.at.e():java.lang.String");
    }
}
