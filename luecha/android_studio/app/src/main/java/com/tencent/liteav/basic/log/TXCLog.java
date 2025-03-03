package com.tencent.liteav.basic.log;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.basic.util.h;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;

/* loaded from: classes5.dex */
public class TXCLog {
    public static final int LOG_ASYNC = 0;
    public static final int LOG_DEBUG = 1;
    public static final int LOG_ERROR = 4;
    public static final int LOG_FATAL = 5;
    public static final int LOG_INFO = 2;
    public static final int LOG_NONE = 6;
    public static final int LOG_SYNC = 1;
    public static final int LOG_VERBOSE = 0;
    public static final int LOG_WARNING = 3;
    private static boolean mEnableCompress = true;
    private static String mLogCacheDir = "";
    public static String mLogDir = "";
    private static final Object mLogLock = new Object();
    private static boolean mHasInit = false;
    private static a mListener = null;
    private static int mLogLevel = 0;
    private static boolean mEnableConsole = true;
    private static boolean mEnableCallback = false;
    private static boolean mEnableLogToFile = true;

    /* loaded from: classes5.dex */
    public interface a {
        void a(int i, String str, String str2);
    }

    private static native void nativeEnableCallback(boolean z);

    private static native void nativeLog(int i, String str, String str2, int i2, String str3, String str4);

    private static native void nativeLogClose();

    private static native void nativeLogInit();

    private static native void nativeLogOpen(int i, String str, String str2, String str3, boolean z);

    private static native void nativeLogSetConsole(boolean z);

    private static native void nativeLogSetLevel(int i);

    private static native void nativeLogToFileEnabled(boolean z);

    public static boolean init() {
        File externalFilesDir;
        if (mHasInit) {
            return true;
        }
        synchronized (mLogLock) {
            if (mHasInit) {
                return true;
            }
            boolean f = h.f();
            Context appContext = TXCCommonUtil.getAppContext();
            if (f && appContext != null) {
                if (TextUtils.isEmpty(mLogDir) && (externalFilesDir = appContext.getExternalFilesDir(null)) != null) {
                    mLogDir = externalFilesDir.getAbsolutePath() + "/log/liteav";
                }
                mLogCacheDir = appContext.getFilesDir().getAbsolutePath() + "/log/liteav";
                Log.i("TXCLog", "TXCLog init log file path : " + mLogDir + ", cache : " + mLogCacheDir);
                nativeLogInit();
                nativeLogSetLevel(mLogLevel);
                nativeLogSetConsole(mEnableConsole);
                nativeLogOpen(0, mLogDir, mLogCacheDir, "LiteAV", mEnableCompress);
                nativeEnableCallback(mEnableCallback);
                nativeLogToFileEnabled(mEnableLogToFile);
                mHasInit = true;
            }
            return mHasInit;
        }
    }

    public static void log(int i, String str, String str2) {
        if (init()) {
            nativeLog(i, str, "", 0, "", str2);
        }
        log_callback(i, str, str2);
    }

    public static void setLevel(int i) {
        mLogLevel = i;
        if (mHasInit) {
            nativeLogSetLevel(mLogLevel);
        }
    }

    public static void setLogDirPath(String str) {
        if (!TextUtils.isEmpty(str) && !str.equalsIgnoreCase(mLogDir)) {
            mLogDir = str;
            if (mHasInit) {
                Log.i("TXCLog", "TXCLog setLogDirPath " + str);
                nativeLogClose();
                nativeLogOpen(0, mLogDir, mLogCacheDir, "LiteAV", mEnableCompress);
            }
        }
    }

    public static void sliceLogFile() {
        if (mHasInit) {
            Log.i("TXCLog", "TXCLog sliceLogFile");
            nativeLogOpen(0, mLogDir, mLogCacheDir, "LiteAV", mEnableCompress);
        }
    }

    public static void copyLogFile() {
        if (mHasInit) {
            Log.i("TXCLog", "TXCLog copyLogFile");
            nativeLogOpen(0, mLogDir, mLogCacheDir, "LiteAV", mEnableCompress);
        }
    }

    public static void setLogCompressEnabled(boolean z) {
        if (mEnableCompress != z) {
            mEnableCompress = z;
            if (mHasInit) {
                nativeLogClose();
                nativeLogOpen(0, mLogDir, mLogCacheDir, "LiteAV", mEnableCompress);
            }
        }
    }

    public static void setConsoleEnabled(boolean z) {
        mEnableConsole = z;
        if (mHasInit) {
            nativeLogSetConsole(mEnableConsole);
        }
    }

    public static void setLogToFileEnabled(boolean z) {
        mEnableLogToFile = z;
        if (mHasInit) {
            nativeLogToFileEnabled(z);
        }
    }

    public static void setListener(a aVar) {
        mListener = aVar;
        mEnableCallback = mListener != null;
        if (mHasInit) {
            nativeEnableCallback(mEnableCallback);
        }
    }

    public static void v(String str, String str2, Object... objArr) {
        log(0, str, String.format(str2, objArr));
    }

    public static void d(String str, String str2, Object... objArr) {
        log(1, str, String.format(str2, objArr));
    }

    public static void i(String str, String str2, Object... objArr) {
        log(2, str, String.format(str2, objArr));
    }

    public static void w(String str, String str2, Object... objArr) {
        log(3, str, String.format(str2, objArr));
    }

    public static void e(String str, String str2, Object... objArr) {
        log(4, str, String.format(str2, objArr));
    }

    public static void v(String str, String str2) {
        log(0, str, str2);
    }

    public static void d(String str, String str2) {
        log(1, str, str2);
    }

    public static void i(String str, String str2) {
        log(2, str, str2);
    }

    public static void w(String str, String str2) {
        log(3, str, str2);
    }

    public static void e(String str, String str2) {
        log(4, str, str2);
    }

    public static void e(String str, String str2, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
            cause.printStackTrace(printWriter);
        }
        printWriter.close();
        e(str, str2 + "\n" + stringWriter.toString());
    }

    private static void log_callback(int i, String str, String str2) {
        a aVar = mListener;
        if (aVar != null) {
            aVar.a(i, str, str2);
        }
    }
}
