package com.tencent.liteav.basic.util;

import android.os.Build;
import com.tencent.liteav.basic.log.TXCLog;

/* loaded from: classes5.dex */
public class TXCBuild {
    private static String BOARD = "";
    private static String BRAND = "";
    private static String HARDWARE = "";
    private static String MANUFACTURER = "";
    private static String MODEL = "";
    private static final String TAG = "TXCBuild";
    private static String VERSION = "";
    private static String VERSION_INCREMENTAL = "";
    private static int VERSION_INT;

    public static void SetModel(String str) {
        synchronized (TXCBuild.class) {
            MODEL = str;
        }
    }

    public static String Model() {
        String str = MODEL;
        if (str == null || str.isEmpty()) {
            synchronized (TXCBuild.class) {
                if (MODEL == null || MODEL.isEmpty()) {
                    MODEL = Build.MODEL;
                    TXCLog.i("TXCBuild", "get MODEL by Build.MODEL :" + MODEL);
                }
            }
        }
        return MODEL;
    }

    public static void SetBrand(String str) {
        synchronized (TXCBuild.class) {
            BRAND = str;
        }
    }

    public static String Brand() {
        String str = BRAND;
        if (str == null || str.isEmpty()) {
            synchronized (TXCBuild.class) {
                if (BRAND == null || BRAND.isEmpty()) {
                    BRAND = Build.BRAND;
                    TXCLog.i("TXCBuild", "get BRAND by Build.BRAND :" + BRAND);
                }
            }
        }
        return BRAND;
    }

    public static void SetManufacturer(String str) {
        synchronized (TXCBuild.class) {
            MANUFACTURER = str;
        }
    }

    public static String Manufacturer() {
        String str = MANUFACTURER;
        if (str == null || str.isEmpty()) {
            synchronized (TXCBuild.class) {
                if (MANUFACTURER == null || MANUFACTURER.isEmpty()) {
                    MANUFACTURER = Build.MANUFACTURER;
                    TXCLog.i("TXCBuild", "get MANUFACTURER by Build.MANUFACTURER :" + MANUFACTURER);
                }
            }
        }
        return MANUFACTURER;
    }

    public static void SetHardware(String str) {
        synchronized (TXCBuild.class) {
            HARDWARE = str;
        }
    }

    public static String Hardware() {
        String str = HARDWARE;
        if (str == null || str.isEmpty()) {
            synchronized (TXCBuild.class) {
                if (HARDWARE == null || HARDWARE.isEmpty()) {
                    HARDWARE = Build.HARDWARE;
                    TXCLog.i("TXCBuild", "get HARDWARE by Build.HARDWARE :" + HARDWARE);
                }
            }
        }
        return HARDWARE;
    }

    public static void SetVersion(String str) {
        synchronized (TXCBuild.class) {
            VERSION = str;
        }
    }

    public static String Version() {
        String str = VERSION;
        if (str == null || str.isEmpty()) {
            synchronized (TXCBuild.class) {
                if (VERSION == null || VERSION.isEmpty()) {
                    VERSION = Build.VERSION.RELEASE;
                    TXCLog.i("TXCBuild", "get VERSION by Build.VERSION.RELEASE :" + VERSION);
                }
            }
        }
        return VERSION;
    }

    public static void SetVersionInt(int i) {
        synchronized (TXCBuild.class) {
            VERSION_INT = i;
        }
    }

    public static int VersionInt() {
        if (VERSION_INT == 0) {
            synchronized (TXCBuild.class) {
                if (VERSION_INT == 0) {
                    VERSION_INT = Build.VERSION.SDK_INT;
                    TXCLog.i("TXCBuild", "get VERSION_INT by Build.VERSION.SDK_INT :" + VERSION_INT);
                }
            }
        }
        return VERSION_INT;
    }

    public static void SetVersionIncremental(String str) {
        synchronized (TXCBuild.class) {
            VERSION_INCREMENTAL = str;
        }
    }

    public static String VersionIncremental() {
        String str = VERSION_INCREMENTAL;
        if (str == null || str.isEmpty()) {
            synchronized (TXCBuild.class) {
                if (VERSION_INCREMENTAL == null || VERSION_INCREMENTAL.isEmpty()) {
                    VERSION_INCREMENTAL = Build.VERSION.INCREMENTAL;
                    TXCLog.i("TXCBuild", "get VERSION_INCREMENTAL by Build.VERSION.INCREMENTAL :" + VERSION_INCREMENTAL);
                }
            }
        }
        return VERSION_INCREMENTAL;
    }

    public static void SetBoard(String str) {
        synchronized (TXCBuild.class) {
            BOARD = str;
        }
    }

    public static String Board() {
        String str = BOARD;
        if (str == null || str.isEmpty()) {
            synchronized (TXCBuild.class) {
                if (BOARD == null || BOARD.isEmpty()) {
                    BOARD = Build.BOARD;
                    TXCLog.i("TXCBuild", "get BOARD by Build.BOARD :" + BOARD);
                }
            }
        }
        return BOARD;
    }
}
