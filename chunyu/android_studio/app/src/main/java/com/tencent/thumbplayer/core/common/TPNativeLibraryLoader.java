package com.tencent.thumbplayer.core.common;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public class TPNativeLibraryLoader {
    private static final String DEFAULT_LIB_PLAYER_CORE_VERSION = "2.27.0.1016.min";
    private static final String MAIN_PLAYER_CORE_VERSION = "2.27.0";
    private static final String mLibIjkPlayerCorePrefix = "ijkhlscache-master";
    private static final boolean mLibNameHasArchSuffix = false;
    private static final String mLibPlayerCorePrefix = "TPCore-master";
    private static final int mPlayerCoreSupportMinAndroidAPILevel = 14;
    private static Object mIsLibLoadedLock = new Object();
    private static boolean mIsLibLoaded = false;
    private static ITPNativeLibraryExternalLoader mLibLoader = null;

    private static native String _getPlayerCoreVersion();

    public static String getLibVersion() {
        return getPlayerCoreVersion();
    }

    public static String getPlayerCoreVersion() {
        try {
            return _getPlayerCoreVersion();
        } catch (Throwable unused) {
            TPNativeLog.printLog(2, "getPlayerCoreVersion: *.so is not loaded yet, return the hard-coded version number:2.27.0.1016.min");
            return DEFAULT_LIB_PLAYER_CORE_VERSION;
        }
    }

    public static boolean isLibLoaded() {
        boolean z;
        try {
            loadLibIfNeeded(null);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, "TPNativeLibraryLoader isLibLoaded error:" + th.getMessage());
        }
        synchronized (mIsLibLoadedLock) {
            z = mIsLibLoaded;
        }
        return z;
    }

    private static boolean isMatchJavaAndPlayerCore(String str, String str2) {
        TPNativeLog.printLog(2, "javaVersion:" + str + ", coreVersion:" + str2);
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        if (split.length < 3 || split2.length < 3) {
            return false;
        }
        for (int i = 0; i < 3; i++) {
            if (!split[i].matches(split2[i])) {
                return false;
            }
        }
        return true;
    }

    private static boolean loadLib(Context context) {
        String playerCoreVersion;
        TPNativeLog.printLog(2, "loadLib cpu arch:" + TPSystemInfo.getCpuArchitecture());
        boolean z = false;
        if (TPSystemInfo.getApiLevel() < 14) {
            TPNativeLog.printLog(3, "so load failed, current api level " + TPSystemInfo.getApiLevel() + " is less than 14");
            return false;
        }
        if (!(TPSystemInfo.getCpuArchitecture() == 3 || TPSystemInfo.getCpuArchitecture() == 4 || TPSystemInfo.getCpuArchitecture() == 0)) {
            String str = mLibPlayerCorePrefix + "";
            String str2 = mLibIjkPlayerCorePrefix + "";
            ITPNativeLibraryExternalLoader iTPNativeLibraryExternalLoader = mLibLoader;
            if (iTPNativeLibraryExternalLoader != null) {
                z = iTPNativeLibraryExternalLoader.loadLib(str, DEFAULT_LIB_PLAYER_CORE_VERSION);
                mLibLoader.loadLib(str2, DEFAULT_LIB_PLAYER_CORE_VERSION);
            } else {
                z = loadLibDefault(str, context);
                loadLibDefault(str2, context);
            }
            if (z && !(z = isMatchJavaAndPlayerCore(MAIN_PLAYER_CORE_VERSION, (playerCoreVersion = getPlayerCoreVersion())))) {
                TPNativeLog.printLog(4, "nativePlayerCoreVer(" + playerCoreVersion + ") doesn't match javaPlayerCoreVer:(" + MAIN_PLAYER_CORE_VERSION + ")");
            }
            if (z) {
                TPNativeLog.printLog(2, "Native libs loaded successfully");
            } else {
                TPNativeLog.printLog(4, "Failed to load native libs");
            }
        }
        return z;
    }

    private static boolean loadLibDefault(String str, Context context) {
        boolean z = false;
        try {
            TPNativeLog.printLog(2, "loadLibDefault loading " + str);
            System.loadLibrary(str);
            z = true;
            TPNativeLog.printLog(2, "loadLibDefault " + str + " loaded successfully");
        } catch (Throwable th) {
            TPNativeLog.printLog(4, "loadLibDefault failed to load " + str + "," + th.getMessage());
        }
        if (!z && context != null && TPSystemInfo.getCpuArchitecture() >= 6) {
            try {
                TPNativeLog.printLog(2, "loadLibDefault try to load " + str + " from APK");
                z = TPLoadLibFromApk.load(str, TPNativeLibraryLoader.class.getClassLoader(), context);
                if (z) {
                    TPNativeLog.printLog(2, "loadLibDefault loaded " + str + " from APK successfully");
                } else {
                    TPNativeLog.printLog(4, "loadLibDefault loaded " + str + " from APK failed");
                }
            } catch (Throwable th2) {
                str = "loadLibDefault loaded " + str + " from APK failed," + th2.getMessage();
                TPNativeLog.printLog(4, str);
            }
        }
        return z;
    }

    public static void loadLibIfNeeded(Context context) {
        synchronized (mIsLibLoadedLock) {
            if (!mIsLibLoaded) {
                mIsLibLoaded = loadLib(context);
                TPNativeLog.printLog(2, mIsLibLoaded ? "TPNativeLibraryLoader load lib successfully" : "TPNativeLibraryLoader load lib failed");
            }
            if (!mIsLibLoaded) {
                throw new UnsupportedOperationException("Failed to load native library");
            }
        }
    }

    public static void setLibLoader(ITPNativeLibraryExternalLoader iTPNativeLibraryExternalLoader) {
        mLibLoader = iTPNativeLibraryExternalLoader;
    }
}
