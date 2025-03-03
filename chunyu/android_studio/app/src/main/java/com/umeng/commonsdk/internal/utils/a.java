package com.umeng.commonsdk.internal.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.File;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.json.JSONArray;

/* compiled from: ApplicationLayerUtil.java */
/* loaded from: classes3.dex */
public class a {

    /* compiled from: ApplicationLayerUtil.java */
    /* renamed from: com.umeng.commonsdk.internal.utils.a$a */
    /* loaded from: classes3.dex */
    public static class C0059a {
        public String a;
        public String b;
    }

    /* compiled from: ApplicationLayerUtil.java */
    /* loaded from: classes3.dex */
    public static class b {
        public int a;
        public String b;
        public String c;
        public int d;
        public int e;
        public int f;
        public int g;
        public String h;
        public int i;
        public int j;
        public int k;
        public long l;
    }

    public static String m(Context context) {
        if (context == null) {
        }
        return null;
    }

    public static String n(Context context) {
        return null;
    }

    public static long a(Context context, String str) {
        if (context == null) {
            return 0;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).firstInstallTime;
        } catch (PackageManager.NameNotFoundException e) {
            UMCrashManager.reportCrash(context, e);
            ULog.e("getAppFirstInstallTime" + e.getMessage());
            return 0;
        }
    }

    public static long b(Context context, String str) {
        if (context == null) {
            return 0;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).lastUpdateTime;
        } catch (PackageManager.NameNotFoundException e) {
            UMCrashManager.reportCrash(context, e);
            ULog.e("getAppLastUpdateTime:" + e.getMessage());
            return 0;
        }
    }

    public static String c(Context context, String str) {
        try {
            return context.getPackageManager().getInstallerPackageName(str);
        } catch (Exception e) {
            UMCrashManager.reportCrash(context, e);
            ULog.e("getAppInstaller:" + e.getMessage());
            return null;
        }
    }

    public static int d(Context context, String str) {
        if (context == null) {
            return 0;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(str, 0).applicationInfo;
            if (applicationInfo != null) {
                return applicationInfo.uid;
            }
            return 0;
        } catch (PackageManager.NameNotFoundException e) {
            UMCrashManager.reportCrash(context, e);
            ULog.e("getAppUid:" + e.getMessage());
            return 0;
        }
    }

    public static boolean a() {
        return h.a();
    }

    public static String b() {
        return new SimpleDateFormat().format(new Date());
    }

    public static float a(Context context) {
        if (context == null) {
            return 0.0f;
        }
        Configuration configuration = new Configuration();
        try {
            configuration.updateFrom(context.getResources().getConfiguration());
            return configuration.fontScale;
        } catch (Exception e) {
            ULog.e("getFontSize:" + e.getMessage());
            return 0.0f;
        }
    }

    public static WifiInfo b(Context context) {
        WifiManager wifiManager;
        if (context == null || !DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null) {
            return null;
        }
        return wifiManager.getConnectionInfo();
    }

    public static void c(Context context) {
        WifiInfo b2;
        if (context != null && (b2 = b(context)) != null) {
            b bVar = new b();
            bVar.a = b2.describeContents();
            bVar.b = b2.getBSSID();
            bVar.c = b2.getSSID();
            if (Build.VERSION.SDK_INT >= 21) {
                bVar.d = b2.getFrequency();
            } else {
                bVar.d = -1;
            }
            boolean z = true;
            if (b2.getHiddenSSID()) {
                bVar.e = 1;
            } else {
                bVar.e = 0;
            }
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.H)) {
                bVar.f = b2.getIpAddress();
            }
            bVar.g = b2.getLinkSpeed();
            bVar.h = DeviceConfig.getMac(context);
            bVar.i = b2.getNetworkId();
            bVar.j = b2.getRssi();
            bVar.k = f(context);
            bVar.l = System.currentTimeMillis();
            if (b2 != null) {
                try {
                    JSONArray a = f.a(context);
                    if (a != null && a.length() > 0) {
                        for (int i = 0; i < a.length(); i++) {
                            String optString = a.optJSONObject(i).optString(TPDownloadProxyEnum.USER_SSID, null);
                            if (optString != null && optString.equals(bVar.c)) {
                                break;
                            }
                        }
                    }
                    z = false;
                    if (!z) {
                        f.a(context, bVar);
                    }
                } catch (Exception e) {
                    ULog.e("wifiChange:" + e.getMessage());
                }
            }
        }
    }

    public static JSONArray d(Context context) {
        if (context == null) {
            return null;
        }
        return f.a(context);
    }

    public static void e(Context context) {
        if (context != null) {
            f.b(context);
        }
    }

    public static int f(Context context) {
        WifiManager wifiManager;
        if (context == null || !DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (WifiManager) context.getSystemService("wifi")) == null) {
            return -1;
        }
        return wifiManager.getWifiState();
    }

    public static int g(Context context) {
        if (context == null) {
            return 0;
        }
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
    }

    public static int h(Context context) {
        if (context == null) {
            return 0;
        }
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
    }

    public static DisplayMetrics i(Context context) {
        if (context == null) {
            return null;
        }
        return context.getResources().getDisplayMetrics();
    }

    public static String c() {
        return g.a("df");
    }

    public static List<InputMethodInfo> j(Context context) {
        InputMethodManager inputMethodManager;
        if (context == null || (inputMethodManager = (InputMethodManager) context.getSystemService("input_method")) == null) {
            return null;
        }
        return inputMethodManager.getInputMethodList();
    }

    public static List<C0059a> k(Context context) {
        String[] list;
        if (context == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            File file = new File(Environment.getExternalStorageDirectory() + "/Android/data/");
            if (file.isDirectory() && (list = file.list()) != null && list.length > 0) {
                for (String str : list) {
                    if (str != null && !str.startsWith(".")) {
                        C0059a aVar = new C0059a();
                        aVar.a = str;
                        aVar.b = e(context, str);
                        arrayList.add(aVar);
                    }
                }
            }
        } catch (Exception e) {
            ULog.e("getAppList:" + e.getMessage());
        }
        return arrayList;
    }

    private static String e(Context context, String str) {
        if (context == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 128);
            if (applicationInfo != null) {
                return (String) applicationInfo.loadLabel(context.getPackageManager());
            }
            return null;
        } catch (Exception e) {
            ULog.e("getLabel:" + e.getMessage());
            return null;
        }
    }

    public static ActivityManager.MemoryInfo l(Context context) {
        ActivityManager activityManager;
        if (context == null || (activityManager = (ActivityManager) context.getSystemService("activity")) == null) {
            return null;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    public static long d() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    public static String e() {
        try {
            Method declaredMethod = Build.class.getDeclaredMethod("getString", String.class);
            declaredMethod.setAccessible(true);
            String obj = declaredMethod.invoke(null, "net.hostname").toString();
            if (obj == null || obj.equalsIgnoreCase("")) {
                return obj;
            }
            return HelperUtils.getUmengMD5(obj);
        } catch (Exception e) {
            ULog.e("getHostName:" + e.getMessage());
            return null;
        }
    }
}
