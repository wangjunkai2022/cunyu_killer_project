package top.niunaijun.blackbox.utils;

import android.util.Log;

/* loaded from: classes3.dex */
public final class Slog {
    public static final int LOG_ID_SYSTEM = 3;

    private Slog() {
    }

    public static int v(String str, String str2) {
        return Log.println(2, str, str2);
    }

    public static int v(String str, String str2, Throwable th) {
        return Log.println(2, str, str2 + '\n' + Log.getStackTraceString(th));
    }

    public static int d(String str, String str2) {
        return Log.println(3, str, str2);
    }

    public static int d(String str, String str2, Throwable th) {
        return Log.println(3, str, str2 + '\n' + Log.getStackTraceString(th));
    }

    public static int i(String str, String str2) {
        return Log.println(4, str, str2);
    }

    public static int i(String str, String str2, Throwable th) {
        return Log.println(4, str, str2 + '\n' + Log.getStackTraceString(th));
    }

    public static int w(String str, String str2) {
        return Log.println(5, str, str2);
    }

    public static int w(String str, String str2, Throwable th) {
        return Log.println(5, str, str2 + '\n' + Log.getStackTraceString(th));
    }

    public static int w(String str, Throwable th) {
        return Log.println(5, str, Log.getStackTraceString(th));
    }

    public static int e(String str, String str2) {
        return Log.println(6, str, str2);
    }

    public static int e(String str, String str2, Throwable th) {
        return Log.println(6, str, str2 + '\n' + Log.getStackTraceString(th));
    }

    public static int println(int i, String str, String str2) {
        return Log.println(i, str, str2);
    }
}
