package com.tencent.thumbplayer.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.SparseIntArray;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class h {
    private static int a = -1;
    private static boolean b = false;
    private static int c = -1;
    private static String d = "";
    private static final SparseIntArray e = new SparseIntArray();

    static {
        e.put(1, 2);
        e.put(2, 2);
        e.put(4, 2);
        e.put(7, 2);
        e.put(11, 2);
        e.put(3, 3);
        e.put(5, 3);
        e.put(6, 3);
        e.put(8, 3);
        e.put(9, 3);
        e.put(10, 3);
        e.put(12, 3);
        e.put(14, 3);
        e.put(15, 3);
        e.put(13, 4);
    }

    public static int a(Context context) {
        int i = a;
        if (i > 0 && !b) {
            return i;
        }
        if (context == null) {
            return 0;
        }
        a = g(context);
        return a;
    }

    private static int a(Context context, int i) {
        return Build.VERSION.SDK_INT >= 29 ? h(context) : b(context, i);
    }

    private static String a(long j) {
        return (j & 255) + "." + ((j >> 8) & 255) + "." + ((j >> 16) & 255) + "." + ((j >> 24) & 255);
    }

    private static boolean a() {
        return Build.VERSION.SDK_INT >= 23;
    }

    private static boolean a(Context context, String str) {
        if (!a()) {
            return true;
        }
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        if ("android.permission.WRITE_SETTINGS".equals(str)) {
            return Settings.System.canWrite(context);
        }
        try {
            return context.checkSelfPermission(str) == 0;
        } catch (Exception e2) {
            TPLogUtil.e("TPNetWorkUtils", e2.getMessage());
            return false;
        }
    }

    private static int b(Context context, int i) {
        if (d(context) == 20) {
            TPLogUtil.i("TPNetWorkUtils", "get5GNetworkTypeIfNeed netWorkType==5");
            return 5;
        }
        Integer valueOf = Integer.valueOf(e.get(i));
        if (valueOf == null) {
            return 0;
        }
        return valueOf.intValue();
    }

    public static void b(Context context) {
        b = true;
        c(context);
        k(context);
        a(context);
        b = false;
    }

    private static boolean b() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces == null) {
                return false;
            }
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress nextElement = inetAddresses.nextElement();
                    if (!nextElement.isLoopbackAddress()) {
                        d = nextElement.getHostAddress();
                        return true;
                    }
                }
            }
        } catch (SocketException e2) {
            TPLogUtil.e("TPNetWorkUtils", e2.getMessage());
        }
        return false;
    }

    public static boolean c(Context context) {
        int i = c;
        if (i != -1 && !b) {
            return i == 1;
        }
        if (context != null) {
            try {
                NetworkInfo f = f(context);
                c = 0;
                if (f != null && f.getState() == NetworkInfo.State.CONNECTED) {
                    c = 1;
                }
            } catch (Exception e2) {
                TPLogUtil.e("TPNetWorkUtils", e2.getMessage());
            }
        }
        return c == 1;
    }

    private static int d(Context context) {
        Throwable th;
        TelephonyManager telephonyManager;
        int i = 0;
        try {
            telephonyManager = (TelephonyManager) context.getSystemService("phone");
        } catch (Throwable th2) {
            th = th2;
        }
        if (telephonyManager == null) {
            TPLogUtil.e("TPNetWorkUtils", "get5GNetworkTypeIfNeed TelephonyManager is null");
            return 0;
        } else if (context.checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
            TPLogUtil.e("TPNetWorkUtils", "get5GNetworkTypeIfNeed no permission");
            return 0;
        } else if (Build.VERSION.SDK_INT < 29) {
            TPLogUtil.e("TPNetWorkUtils", "get5GNetworkTypeIfNeed less api 29");
            return 0;
        } else {
            int networkType = telephonyManager.getNetworkType();
            try {
            } catch (Throwable th3) {
                th = th3;
                i = networkType;
                TPLogUtil.e("TPNetWorkUtils", th.getMessage());
                return i;
            }
            if (networkType != 13) {
                TPLogUtil.i("TPNetWorkUtils", "get5GNetworkTypeIfNeed not NETWORK_TYPE_LTE");
                return networkType;
            }
            ServiceState serviceState = telephonyManager.getServiceState();
            if (serviceState == null) {
                TPLogUtil.e("TPNetWorkUtils", "get5GNetworkTypeIfNeed serviceState is null");
                return networkType;
            }
            int intValue = ((Integer) k.a(serviceState, "android.telephony.ServiceState", "getNrState", new Class[0], new Object[0])).intValue();
            if (intValue != 2 && intValue != 3) {
                return networkType;
            }
            i = 20;
            TPLogUtil.i("TPNetWorkUtils", "get5GNetworkTypeIfNeed networkType is 20, 5G");
            return i;
        }
    }

    private static ConnectivityManager e(Context context) {
        if (context == null) {
            return null;
        }
        return (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
    }

    private static NetworkInfo f(Context context) {
        ConnectivityManager e2 = e(context);
        if (e2 == null) {
            return null;
        }
        return e2.getActiveNetworkInfo();
    }

    private static int g(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
                return 0;
            }
            int type = activeNetworkInfo.getType();
            return type != 0 ? type != 1 ? 0 : 1 : a(context, activeNetworkInfo.getSubtype());
        } catch (Throwable th) {
            TPLogUtil.e("TPNetWorkUtils", th.getMessage());
            return 0;
        }
    }

    private static int h(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (a(context, "android.permission.READ_PHONE_STATE")) {
                return b(context, telephonyManager.getDataNetworkType());
            }
            TPLogUtil.e("TPNetWorkUtils", "getNetWorkClassAPI29 fail: no phone permission");
            return 0;
        } catch (Throwable th) {
            TPLogUtil.e("TPNetWorkUtils", th.getMessage());
            return 0;
        }
    }

    private static WifiManager i(Context context) {
        if (context != null) {
            return (WifiManager) context.getApplicationContext().getSystemService("wifi");
        }
        return null;
    }

    private static WifiInfo j(Context context) {
        WifiManager i = i(context);
        if (i == null || !i.isWifiEnabled() || i.getWifiState() != 3) {
            return null;
        }
        return i.getConnectionInfo();
    }

    private static void k(Context context) {
        try {
        } catch (Throwable th) {
            TPLogUtil.e("TPNetWorkUtils", th.getMessage());
        }
        if (i(context) != null) {
            WifiInfo j = j(context);
            if (j != null) {
                int ipAddress = j.getIpAddress();
                if (ipAddress == 0) {
                    d = "";
                    return;
                } else {
                    d = a((long) ipAddress);
                    return;
                }
            }
            if (!b()) {
                d = "";
            }
        }
    }
}
