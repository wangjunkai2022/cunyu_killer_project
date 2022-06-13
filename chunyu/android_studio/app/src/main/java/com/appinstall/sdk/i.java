package com.appinstall.sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Locale;

/* loaded from: classes4.dex */
public class i {
    private static i l;
    private static final Object m = new Object();
    private final Context a;
    private final String b;
    private final Integer d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private final String k;
    private String o;
    private final cg n = cg.a("Inf");
    private final String c = Build.VERSION.RELEASE;

    /* JADX WARN: Removed duplicated region for block: B:16:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0051 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004e  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    private i(android.content.Context r5) {
        /*
            r4 = this;
            r4.<init>()
            java.lang.String r0 = "Inf"
            com.appinstall.sdk.cg r0 = com.appinstall.sdk.cg.a(r0)
            r4.n = r0
            r4.a = r5
            java.lang.String r0 = r5.getPackageName()
            r4.b = r0
            java.lang.String r0 = android.os.Build.VERSION.RELEASE
            r4.c = r0
            android.content.Context r0 = r4.a
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            r1 = 0
            android.content.Context r2 = r4.a     // Catch: NameNotFoundException -> 0x0032
            java.lang.String r2 = r2.getPackageName()     // Catch: NameNotFoundException -> 0x0032
            r3 = 0
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r2, r3)     // Catch: NameNotFoundException -> 0x0032
            int r2 = r0.versionCode     // Catch: NameNotFoundException -> 0x0032
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: NameNotFoundException -> 0x0032
            java.lang.String r0 = r0.versionName     // Catch: NameNotFoundException -> 0x0033
            goto L_0x0034
        L_0x0032:
            r2 = r1
        L_0x0033:
            r0 = r1
        L_0x0034:
            r4.d = r2
            r4.e = r0
            java.lang.String r0 = android.os.Build.MODEL
            r4.f = r0
            java.lang.String r0 = android.os.Build.ID
            r4.g = r0
            java.lang.String r0 = android.os.Build.DISPLAY
            r4.h = r0
            java.lang.String r0 = android.os.Build.BRAND
            r4.i = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 26
            if (r0 >= r2) goto L_0x0051
            java.lang.String r0 = android.os.Build.SERIAL
            goto L_0x005b
        L_0x0051:
            java.lang.String r0 = android.os.Build.getSerial()     // Catch: SecurityException -> 0x005a, Exception -> 0x0056
            goto L_0x005b
        L_0x0056:
            r0 = move-exception
            r0.printStackTrace()
        L_0x005a:
            r0 = r1
        L_0x005b:
            boolean r2 = r4.a(r0)
            if (r2 == 0) goto L_0x0064
            r4.j = r1
            goto L_0x0066
        L_0x0064:
            r4.j = r0
        L_0x0066:
            android.content.ContentResolver r5 = r5.getContentResolver()     // Catch: Exception -> 0x0071
            java.lang.String r0 = "android_id"
            java.lang.String r5 = android.provider.Settings.Secure.getString(r5, r0)     // Catch: Exception -> 0x0071
            goto L_0x0076
        L_0x0071:
            r5 = move-exception
            r5.printStackTrace()
            r5 = r1
        L_0x0076:
            boolean r0 = r4.b(r5)
            if (r0 == 0) goto L_0x007f
            r4.k = r1
            goto L_0x0081
        L_0x007f:
            r4.k = r5
        L_0x0081:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appinstall.sdk.i.<init>(android.content.Context):void");
    }

    public static i a(Context context) {
        synchronized (m) {
            if (l == null) {
                l = new i(context.getApplicationContext());
            }
        }
        return l;
    }

    private boolean a(String str) {
        return TextUtils.isEmpty(str) || str.equalsIgnoreCase(ce.x);
    }

    private boolean b(String str) {
        return TextUtils.isEmpty(str) || str.equalsIgnoreCase(ce.t);
    }

    public String a() {
        String str = this.o;
        if (str != null) {
            return str;
        }
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 64).signatures[0].toByteArray());
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                String upperCase = Integer.toHexString(b & 255).toUpperCase(Locale.US);
                if (upperCase.length() == 1) {
                    sb.append("0");
                }
                sb.append(upperCase);
                sb.append(":");
            }
            String sb2 = sb.toString();
            this.o = sb2.substring(0, sb2.length() - 1);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return this.o;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public Integer d() {
        return this.d;
    }

    public String e() {
        return this.f;
    }

    public String f() {
        return this.g;
    }

    public String g() {
        return this.h;
    }

    public String h() {
        return this.i;
    }

    public String i() {
        return this.j;
    }

    public String j() {
        return this.k;
    }

    public String k() {
        Throwable th;
        FileChannel fileChannel;
        FileChannel fileChannel2;
        FileNotFoundException e;
        IOException e2;
        Exception e3;
        try {
            fileChannel = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            fileChannel2 = new RandomAccessFile(this.a.getApplicationInfo().sourceDir, "r").getChannel();
            try {
                bo a = bp.a(fileChannel2);
                if (a == null) {
                    if (fileChannel2 != null) {
                        try {
                            fileChannel2.close();
                        } catch (IOException unused) {
                        }
                    }
                    return "";
                }
                byte[] c = a.c();
                if (c == null) {
                    if (fileChannel2 != null) {
                        try {
                            fileChannel2.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return "";
                }
                String str = new String(Base64.encode(c, 10), "UTF-8");
                if (fileChannel2 != null) {
                    try {
                        fileChannel2.close();
                    } catch (IOException unused3) {
                    }
                }
                return str;
            } catch (FileNotFoundException e4) {
                e = e4;
                e.printStackTrace();
                if (fileChannel2 == null) {
                    return null;
                }
                try {
                    fileChannel2.close();
                } catch (IOException unused4) {
                    return null;
                }
            } catch (IOException e5) {
                e2 = e5;
                e2.printStackTrace();
                if (fileChannel2 == null) {
                    return null;
                }
                fileChannel2.close();
            } catch (Exception e6) {
                e3 = e6;
                e3.printStackTrace();
                if (fileChannel2 == null) {
                    return null;
                }
                fileChannel2.close();
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            fileChannel2 = null;
        } catch (IOException e8) {
            e2 = e8;
            fileChannel2 = null;
        } catch (Exception e9) {
            e3 = e9;
            fileChannel2 = null;
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
                try {
                    fileChannel.close();
                } catch (IOException unused5) {
                }
            }
            throw th;
        }
    }

    public List l() {
        ArrayList arrayList = new ArrayList();
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces != null) {
                while (networkInterfaces.hasMoreElements()) {
                    NetworkInterface nextElement = networkInterfaces.nextElement();
                    if (!nextElement.isLoopback() && nextElement.isUp()) {
                        Enumeration<InetAddress> inetAddresses = nextElement.getInetAddresses();
                        while (inetAddresses.hasMoreElements()) {
                            arrayList.add(inetAddresses.nextElement().getHostAddress());
                        }
                    }
                }
            }
        } catch (SocketException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return arrayList;
    }
}
