package com.tencent.liteav.basic.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.tencent.liteav.basic.log.TXCLog;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: FileUtil.java */
/* loaded from: classes5.dex */
public class c {
    public static boolean a(long j) {
        return true;
    }

    public static boolean a(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnectedOrConnecting()) {
            return false;
        }
        return true;
    }

    public static long a(File file) {
        return a(file, 5);
    }

    public static long a(File file, int i) {
        long j;
        long j2 = 0;
        if (i <= 0) {
            return 0;
        }
        try {
            File[] listFiles = file.listFiles();
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    j = a(file2, i - 1);
                } else {
                    j = file2.length();
                }
                j2 += j;
            }
        } catch (Exception e) {
            TXCLog.i("FileUtil", "getFolderSize exception " + e.toString());
        }
        return j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static void a(android.content.Context r2, java.lang.String r3, java.lang.String r4) {
        /*
            android.content.res.AssetManager r2 = r2.getAssets()
            r0 = 0
            java.io.InputStream r2 = r2.open(r3)     // Catch: IOException -> 0x002a, all -> 0x0027
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: IOException -> 0x0023, all -> 0x001f
            r3.<init>(r4)     // Catch: IOException -> 0x0023, all -> 0x001f
            a(r2, r3)     // Catch: IOException -> 0x001d, all -> 0x001b
            a(r2)
        L_0x0014:
            r3.flush()     // Catch: IOException -> 0x0039
            r3.close()     // Catch: IOException -> 0x0039
            goto L_0x0039
        L_0x001b:
            r4 = move-exception
            goto L_0x0021
        L_0x001d:
            r4 = move-exception
            goto L_0x0025
        L_0x001f:
            r4 = move-exception
            r3 = r0
        L_0x0021:
            r0 = r2
            goto L_0x003b
        L_0x0023:
            r4 = move-exception
            r3 = r0
        L_0x0025:
            r0 = r2
            goto L_0x002c
        L_0x0027:
            r4 = move-exception
            r3 = r0
            goto L_0x003b
        L_0x002a:
            r4 = move-exception
            r3 = r0
        L_0x002c:
            java.lang.String r2 = "FileUtil"
            java.lang.String r1 = "copy asset file failed."
            com.tencent.liteav.basic.log.TXCLog.e(r2, r1, r4)     // Catch: all -> 0x003a
            a(r0)
            if (r3 == 0) goto L_0x0039
            goto L_0x0014
        L_0x0039:
            return
        L_0x003a:
            r4 = move-exception
        L_0x003b:
            a(r0)
            if (r3 == 0) goto L_0x0046
            r3.flush()     // Catch: IOException -> 0x0046
            r3.close()     // Catch: IOException -> 0x0046
        L_0x0046:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.basic.util.c.a(android.content.Context, java.lang.String, java.lang.String):void");
    }

    public static void a(InputStream inputStream, String str) throws IOException {
        Throwable th;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(str);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            a(inputStream, fileOutputStream);
            a(fileOutputStream);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            a(fileOutputStream2);
            throw th;
        }
    }

    public static void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        if (!file.exists() || !file.isFile()) {
            return false;
        }
        return true;
    }

    public static String b(String str) {
        Throwable th;
        IOException e;
        File file = new File(str);
        StringBuilder sb = new StringBuilder("");
        BufferedReader bufferedReader = null;
        if (!file.isFile()) {
            return null;
        }
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
                while (true) {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine != null) {
                            sb.append(readLine);
                        } else {
                            bufferedReader2.close();
                            String sb2 = sb.toString();
                            try {
                                bufferedReader2.close();
                                return sb2;
                            } catch (IOException e2) {
                                throw new RuntimeException("IOException occurred. ", e2);
                            }
                        }
                    } catch (IOException e3) {
                        e = e3;
                        bufferedReader = bufferedReader2;
                        throw new RuntimeException("IOException occurred. ", e);
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e4) {
                                throw new RuntimeException("IOException occurred. ", e4);
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e5) {
                e = e5;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void a(String str, byte[] bArr) {
        Throwable th;
        FileOutputStream fileOutputStream;
        Exception e;
        BufferedOutputStream bufferedOutputStream;
        try {
            BufferedOutputStream bufferedOutputStream2 = null;
            try {
                fileOutputStream = new FileOutputStream(new File(str));
                try {
                    try {
                        bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                    } catch (Exception e2) {
                        e = e2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e3) {
                e = e3;
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
            try {
                bufferedOutputStream.write(bArr);
                bufferedOutputStream.close();
            } catch (Exception e4) {
                e = e4;
                bufferedOutputStream2 = bufferedOutputStream;
                TXCLog.e("FileUtil", "write file failed.", e);
                if (bufferedOutputStream2 != null) {
                    bufferedOutputStream2.close();
                }
                if (fileOutputStream == null) {
                    return;
                }
                fileOutputStream.close();
            } catch (Throwable th4) {
                th = th4;
                bufferedOutputStream2 = bufferedOutputStream;
                if (bufferedOutputStream2 != null) {
                    try {
                        bufferedOutputStream2.close();
                    } catch (Exception unused) {
                        throw th;
                    }
                }
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                throw th;
            }
            fileOutputStream.close();
        } catch (Exception unused2) {
        }
    }

    public static boolean a(Context context, String str) {
        try {
            for (String str2 : context.getAssets().list("")) {
                if (str2.equals(str.trim())) {
                    TXCLog.i("isAssetFileExists", str + " exist");
                    return true;
                }
            }
            TXCLog.i("isAssetFileExists", str + " not exist");
            return false;
        } catch (IOException unused) {
            TXCLog.i("isAssetFileExists", str + " not exist");
            return false;
        }
    }

    public static String b(Context context, String str) {
        InputStream inputStream = null;
        try {
            try {
                inputStream = context.getAssets().open(str);
                byte[] bArr = new byte[inputStream.available()];
                if (inputStream.read(bArr) <= 0) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    return "";
                }
                inputStream.close();
                String str2 = new String(bArr, "utf-8");
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                return str2;
            } catch (IOException e) {
                TXCLog.e("FileUtil", "read asset file failed.", e);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                return "";
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
