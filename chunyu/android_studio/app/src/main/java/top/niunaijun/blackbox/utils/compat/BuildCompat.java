package top.niunaijun.blackbox.utils.compat;

import android.os.Build;

/* loaded from: classes3.dex */
public class BuildCompat {
    private static ROMType sRomType;

    /* loaded from: classes3.dex */
    public enum ROMType {
        EMUI,
        MIUI,
        FLYME,
        COLOR_OS,
        LETV,
        VIVO,
        _360,
        SAMSUNG,
        OTHER
    }

    public static int getPreviewSDKInt() {
        if (Build.VERSION.SDK_INT < 23) {
            return 0;
        }
        try {
            return Build.VERSION.PREVIEW_SDK_INT;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static boolean isS() {
        if (Build.VERSION.SDK_INT < 31) {
            return Build.VERSION.SDK_INT >= 30 && Build.VERSION.PREVIEW_SDK_INT == 1;
        }
        return true;
    }

    public static boolean isR() {
        if (Build.VERSION.SDK_INT < 30) {
            return Build.VERSION.SDK_INT >= 29 && Build.VERSION.PREVIEW_SDK_INT == 1;
        }
        return true;
    }

    public static boolean isQ() {
        if (Build.VERSION.SDK_INT < 29) {
            return Build.VERSION.SDK_INT >= 28 && Build.VERSION.PREVIEW_SDK_INT == 1;
        }
        return true;
    }

    public static boolean isPie() {
        if (Build.VERSION.SDK_INT < 28) {
            return Build.VERSION.SDK_INT >= 27 && Build.VERSION.PREVIEW_SDK_INT == 1;
        }
        return true;
    }

    public static boolean isOreo() {
        if (Build.VERSION.SDK_INT < 26) {
            return Build.VERSION.SDK_INT >= 25 && Build.VERSION.PREVIEW_SDK_INT == 1;
        }
        return true;
    }

    public static boolean isN() {
        if (Build.VERSION.SDK_INT < 24) {
            return Build.VERSION.SDK_INT >= 23 && Build.VERSION.PREVIEW_SDK_INT == 1;
        }
        return true;
    }

    public static boolean isN_MR1() {
        if (Build.VERSION.SDK_INT < 25) {
            return Build.VERSION.SDK_INT >= 24 && Build.VERSION.PREVIEW_SDK_INT == 1;
        }
        return true;
    }

    public static boolean isM() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static boolean isL() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public static boolean isL_MR1() {
        return Build.VERSION.SDK_INT >= 22;
    }

    public static boolean isSamsung() {
        return "samsung".equalsIgnoreCase(Build.BRAND) || "samsung".equalsIgnoreCase(Build.MANUFACTURER);
    }

    public static boolean isEMUI() {
        if (Build.DISPLAY.toUpperCase().startsWith("EMUI")) {
            return true;
        }
        String str = SystemPropertiesCompat.get("ro.build.version.emui");
        if (str == null || !str.contains("EmotionUI")) {
            return false;
        }
        return true;
    }

    public static boolean isMIUI() {
        return SystemPropertiesCompat.getInt("ro.miui.ui.version.code", 0) > 0;
    }

    public static boolean isFlyme() {
        return Build.DISPLAY.toLowerCase().contains("flyme");
    }

    public static boolean isColorOS() {
        return SystemPropertiesCompat.isExist("ro.build.version.opporom") || SystemPropertiesCompat.isExist("ro.rom.different.version");
    }

    public static boolean is360UI() {
        String str = SystemPropertiesCompat.get("ro.build.uiversion");
        return str != null && str.toUpperCase().contains("360UI");
    }

    public static boolean isLetv() {
        return Build.MANUFACTURER.equalsIgnoreCase("Letv");
    }

    public static boolean isVivo() {
        return SystemPropertiesCompat.isExist("ro.vivo.os.build.display.id");
    }

    public static ROMType getROMType() {
        if (sRomType == null) {
            if (isEMUI()) {
                sRomType = ROMType.EMUI;
            } else if (isMIUI()) {
                sRomType = ROMType.MIUI;
            } else if (isFlyme()) {
                sRomType = ROMType.FLYME;
            } else if (isColorOS()) {
                sRomType = ROMType.COLOR_OS;
            } else if (is360UI()) {
                sRomType = ROMType._360;
            } else if (isLetv()) {
                sRomType = ROMType.LETV;
            } else if (isVivo()) {
                sRomType = ROMType.VIVO;
            } else if (isSamsung()) {
                sRomType = ROMType.SAMSUNG;
            } else {
                sRomType = ROMType.OTHER;
            }
        }
        return sRomType;
    }
}
