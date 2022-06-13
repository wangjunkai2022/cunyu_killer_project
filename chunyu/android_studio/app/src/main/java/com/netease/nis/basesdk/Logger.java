package com.netease.nis.basesdk;

import android.util.Log;

/* loaded from: classes2.dex */
public class Logger {
    private static String a = "BASE_SDK_LOG";
    private static boolean b;

    private static String a() {
        Thread currentThread = Thread.currentThread();
        StackTraceElement[] stackTrace = currentThread.getStackTrace();
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (!stackTraceElement.getClassName().equals(Thread.class.getName()) && !stackTraceElement.getClassName().equals(Logger.class.getName())) {
                return "[Thread:" + currentThread.getName() + ", Class:" + stackTraceElement.getClassName() + ", Function:" + stackTraceElement.getMethodName() + "]";
            }
        }
        return null;
    }

    public static String buildLog(String str) {
        return str + "---->" + a();
    }

    public static void d(String str) {
        d(a, str);
    }

    public static void e(String str) {
        e(a, str);
    }

    public static void enableLog(boolean z) {
        b = z;
    }

    public static void i(String str) {
        i(a, str);
    }

    public static void setTag(String str) {
        a = str;
    }

    public static void w(String str) {
        w(a, str);
    }

    public static void d(String str, String str2) {
        if (b) {
            String str3 = a;
            if (!str3.equals(str)) {
                str3 = a + "." + str;
            }
            Log.d(str3, str2);
        }
    }

    public static void e(String str, String str2) {
        if (b) {
            String str3 = a;
            if (!str3.equals(str)) {
                str3 = a + "." + str;
            }
            Log.e(str3, str2);
        }
    }

    public static void i(String str, String str2) {
        if (b) {
            String str3 = a;
            if (!str3.equals(str)) {
                str3 = a + "." + str;
            }
            Log.i(str3, buildLog(str2));
        }
    }

    public static void w(String str, String str2) {
        if (b) {
            String str3 = a;
            if (!str3.equals(str)) {
                str3 = a + "." + str;
            }
            Log.w(str3, str2);
        }
    }
}
