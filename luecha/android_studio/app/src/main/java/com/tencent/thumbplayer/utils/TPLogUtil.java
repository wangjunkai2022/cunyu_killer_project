package com.tencent.thumbplayer.utils;

import android.text.TextUtils;
import android.util.Log;
import com.tencent.thumbplayer.api.TPPlayerMgr;
import java.util.MissingFormatArgumentException;

/* loaded from: classes5.dex */
public class TPLogUtil {
    public static final int DEBUG = 50;
    public static final int ERROR = 10;
    public static final int INFO = 40;
    public static final int VERBOSE = 60;
    public static final int WARNING = 20;
    private static boolean isDebug = true;
    private static int logPrintLevel = 50;
    private static TPPlayerMgr.OnLogListener onLogListener;

    public static void d(String str, String str2) {
        printTag(50, str, str2, new Object[0]);
    }

    public static void e(String str, String str2) {
        printTag(10, str, str2, new Object[0]);
    }

    public static void e(String str, Throwable th) {
        e(str, th, "");
    }

    public static void e(String str, Throwable th, String str2) {
        String str3;
        if (!TextUtils.isEmpty(str2)) {
            str3 = str2 + "\n";
        } else {
            str3 = "";
        }
        if (th != null) {
            str3 = str3 + Log.getStackTraceString(th);
        }
        printTag(10, str, str3, new Object[0]);
    }

    public static void i(String str, String str2) {
        printTag(40, str, str2, new Object[0]);
    }

    private static void logToLogListener(int i, String str, String str2) {
        if (i == 10) {
            onLogListener.e(str, str2);
        } else if (i == 20) {
            onLogListener.w(str, str2);
        } else if (i == 40) {
            onLogListener.i(str, str2);
        } else if (i == 50) {
            onLogListener.d(str, str2);
        } else if (i == 60) {
            onLogListener.v(str, str2);
        }
    }

    private static void printTag(int i, String str, String str2, Object... objArr) {
        if (i == 20) {
            i = 10;
        }
        if (objArr != null) {
            try {
                if (objArr.length != 0) {
                    str2 = String.format(str2, objArr);
                }
            } catch (OutOfMemoryError e) {
                e.printStackTrace();
                return;
            } catch (MissingFormatArgumentException e2) {
                e2.printStackTrace();
                return;
            } catch (Exception e3) {
                e3.printStackTrace();
                return;
            }
        }
        if (onLogListener != null) {
            if (i <= logPrintLevel) {
                logToLogListener(i, str, str2);
            }
        } else if (isDebug && i <= logPrintLevel) {
            Log.println(toSysLevel(i), str, str2);
        }
    }

    public static void setDebugEnable(boolean z) {
        isDebug = z;
    }

    public static void setLogPrintLevel(int i) {
        logPrintLevel = i;
    }

    public static void setOnLogListener(TPPlayerMgr.OnLogListener onLogListener2) {
        onLogListener = onLogListener2;
    }

    private static int toSysLevel(int i) {
        if (i == 10) {
            return 6;
        }
        if (i == 20) {
            return 5;
        }
        if (i == 40) {
            return 4;
        }
        if (i != 50) {
            return i != 60 ? 0 : 2;
        }
        return 3;
    }

    public static void v(String str, String str2) {
        printTag(60, str, str2, new Object[0]);
    }

    public static void w(String str, String str2) {
        printTag(20, str, str2, new Object[0]);
    }
}
