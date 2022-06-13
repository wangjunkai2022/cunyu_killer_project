package com.tencent.thumbplayer.core.common;

import android.app.ActivityManager;
import android.content.Context;
import android.media.AudioManager;
import android.media.audiofx.AudioEffect;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import java.io.File;
import java.io.FileFilter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Method;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public class TPSystemInfo {
    public static final int CHIP_ARM_AARCH64 = 7;
    public static final int CHIP_ARM_LATER = 50;
    public static final int CHIP_ARM_V5 = 3;
    public static final int CHIP_ARM_V6 = 4;
    public static final int CHIP_ARM_V7_NENO = 6;
    public static final int CHIP_ARM_V7_NO_NENO = 5;
    public static final int CHIP_MIPS = 2;
    public static final int CHIP_UNKNOW = 0;
    public static final int CHIP_X86 = 1;
    public static final int CPU_HW_HISI = 2;
    public static final int CPU_HW_MTK = 1;
    public static final int CPU_HW_OTHER = -1;
    public static final int CPU_HW_QUALCOMM = 0;
    public static final int CPU_HW_SUMSUNG = 3;
    public static final int SDK_INT;
    private static long sAppInstallTime;
    private static Method sGetWlanMethod;
    public static int sScreenHeight;
    public static int sScreenWidth;
    private static final String DEVICE_NAME = Build.MODEL;
    private static final String DEVICE_MANUFACTURER = Build.MANUFACTURER;
    private static final String DEVICE_OS_VERSION = Build.VERSION.RELEASE;
    private static final String PRODUCT_DEVICE = Build.DEVICE;
    private static final String PRODUCT_BOARD = Build.BOARD;
    private static String sProcessorName = "N/A";
    private static String sFeature = "";
    private static String sCpuHardware = "";
    private static int sCpuArchitecture = 0;
    private static int sCpuHWProducter = -1;
    private static int sCpuHWProductIdx = -1;
    private static int sAudioBestSampleRate = 0;
    private static int sAudioBestFramesPerBust = 0;
    private static final String[][] sCpuPerfList = {new String[]{"MSM7227", "MSM7627", "MSM7227T", "MSM7627T", "MSM7227A", "MSM7627A", "QSD8250", "QSD8650", "MSM7230", "MSM7630", "APQ8055", "MSM8255", "MSM8655", "MSM8255T", "MSM8655T", "MSM8225", "MSM8625", "MSM8260", "MSM8660", "MSM8x25Q", "MSM8x26", "MSM8x10", "MSM8x12", "MSM8x30", "MSM8260A", "MSM8660A", "MSM8960", "MSM8208", "MSM8916", "MSM8960T", "MSM8909", "MSM8916v2", "MSM8936", "MSM8909v2", "MSM8917", "APQ8064", "APQ8064T", "MSM8920", "MSM8939", "MSM8937", "MSM8939v2", "MSM8940", "MSM8952", "MSM8974", "MSM8x74AA", "MSM8x74AB", "MSM8x74AC", "MSM8953", "APQ8084", "MSM8953Pro", "MSM8992", "MSM8956", "MSM8976", "MSM8976Pro", "MSM8994", "MSM8996", "MSM8996Pro", "MSM8998", "SDM845", "SM8150", "SM8250", "SM8350"}, new String[]{"MT6516", "MT6513", "MT6573", "MT6515M", "MT6515", "MT6575", "MT6572", "MT6577", "MT6589", "MT6582", "MT6592", "MT6595", "MT6735", "MT6750", "MT6753", "MT6752", "MT6755", "MT6755", "MT6755T", "MT6795", "MT6757", "MT675x", "MT6797", "MT6797T"}, new String[]{"K3V2", "K3V2E", "K3V2+", "Kirin910", "Kirin920", "Kirin925", "Kirin928", "Kirin620", "Kirin650", "Kirin655", "Kirin930", "Kirin935", "Kirin950", "Kirin955", "Kirin960", "Kirin970", "Kirin980", "Kirin990"}, new String[]{"S5L8900", "S5PC100", "Exynos3110", "Exynos3475", "Exynos4210", "Exynos4212", "SMDK4x12", "Exynos4412", "Exynos5250", "Exynos5260", "Exynos5410", "Exynos5420", "Exynos5422", "Exynos5430", "Exynos5800", "Exynos5433", "Exynos7580", "Exynos7870", "Exynos7870", "Exynos7420", "Exynos8890"}};
    private static long sMaxCpuFreq = -1;
    private static long sCurrentCpuFreq = -1;
    private static int sNumOfCores = -1;
    private static int sCpuArch = -1;
    private static int sOpenGLVersion = 0;

    static {
        SDK_INT = (Build.VERSION.SDK_INT == 25 && !TextUtils.isEmpty(Build.VERSION.CODENAME) && Build.VERSION.CODENAME.charAt(0) == 'O') ? 26 : Build.VERSION.SDK_INT;
    }

    private static boolean checkPermission(Context context, String str) {
        if (!hasMarshmallow()) {
            return true;
        }
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        if ("android.permission.WRITE_SETTINGS".equals(str)) {
            return Settings.System.canWrite(context);
        }
        try {
            return ContextCompat.checkSelfPermission(context, str) == 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static int getApiLevel() {
        return Build.VERSION.SDK_INT;
    }

    public static int getBestAudioFramesPerBust() {
        return sAudioBestFramesPerBust;
    }

    public static int getBestAudioSampleRate() {
        return sAudioBestSampleRate;
    }

    public static int getCpuArchFromId(int i) {
        if (i != 64) {
            switch (i) {
                case 5:
                    return 3;
                case 6:
                    return 4;
                case 7:
                    return 6;
                case 8:
                case 9:
                case 10:
                    break;
                default:
                    return 0;
            }
        }
        return 7;
    }

    public static int getCpuArchitecture() {
        int cpuArchFromId;
        int i = sCpuArch;
        if (-1 != i) {
            return i;
        }
        TPNativeLog.printLog(2, "getCpuArchitecture Build.CPU_ABI: " + Build.CPU_ABI);
        if (!Build.CPU_ABI.contains("arm64-v8a")) {
            if (Build.CPU_ABI != null && (Build.CPU_ABI.contains("x86") || Build.CPU_ABI.contains("X86"))) {
                cpuArchFromId = 1;
            } else if (Build.CPU_ABI == null || (!Build.CPU_ABI.contains("mips") && !Build.CPU_ABI.contains("Mips"))) {
                if (sCpuArchitecture == 0) {
                    getCpuInfo();
                }
                TPNativeLog.printLog(2, "getCpuArchitecture mCpuArchitecture:" + sCpuArchitecture);
                if (TextUtils.isEmpty(sCpuHardware) || !sCpuHardware.contains("MSM8994")) {
                    if (isARMV5Whitelist()) {
                        sCpuArch = 3;
                    } else {
                        if (TextUtils.isEmpty(sProcessorName) || !sProcessorName.contains("ARMv6")) {
                            if (TextUtils.isEmpty(sProcessorName) || !sProcessorName.contains("AArch64")) {
                                if (sCpuArchitecture != 7 || TextUtils.isEmpty(sFeature) || sFeature.contains("neon") || sFeature.contains("asimd")) {
                                    cpuArchFromId = getCpuArchFromId(sCpuArchitecture);
                                }
                            }
                        }
                        sCpuArch = 4;
                    }
                    return sCpuArch;
                }
            } else {
                sCpuArch = 2;
                return sCpuArch;
            }
            sCpuArch = cpuArchFromId;
            return sCpuArch;
        }
        sCpuArch = 7;
        return sCpuArch;
    }

    private static int getCpuHWProducer(String str) {
        if (str.isEmpty()) {
            return -1;
        }
        if (str.contains("Exynos") || str.contains("SMDK") || str.contains("S5L8900") || str.contains("S5PC100")) {
            return 3;
        }
        if (str.contains("Kirin") || str.contains("K3V")) {
            return 2;
        }
        if (str.contains("MSM") || str.contains("APQ") || str.contains("QSD") || str.contains("SDM") || str.contains("SM")) {
            return 0;
        }
        return str.contains("MT6") ? 1 : -1;
    }

    public static int getCpuHWProductIndex(String str) {
        if (sCpuHWProducter < 0) {
            sCpuHWProducter = getCpuHWProducer(str);
        }
        int i = sCpuHWProducter;
        if (i >= 0 && sCpuHWProductIdx < 0) {
            CharSequence[] charSequenceArr = sCpuPerfList[i];
            int i2 = -1;
            for (int i3 = 0; i3 < charSequenceArr.length; i3++) {
                if (str.contains(charSequenceArr[i3]) && (-1 == i2 || charSequenceArr[i3].length() > charSequenceArr[i2].length())) {
                    i2 = i3;
                }
            }
            sCpuHWProductIdx = i2;
        }
        return sCpuHWProductIdx;
    }

    public static int getCpuHWProducter(String str) {
        if (sCpuHWProducter < 0) {
            sCpuHWProducter = getCpuHWProducer(str);
        }
        return sCpuHWProducter;
    }

    public static String getCpuHarewareName() {
        if (TextUtils.isEmpty(sCpuHardware)) {
            getCpuInfo();
        }
        return sCpuHardware;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: SSATransform
        jadx.core.utils.exceptions.JadxRuntimeException: Not initialized variable reg: 1, insn: 0x0043: INVOKE  (r1 I:int), (r0 I:java.lang.String) type: STATIC call: com.tencent.thumbplayer.core.common.TPNativeLog.printLog(int, java.lang.String):void, block:B:19:0x003f
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVarsInBlock(SSATransform.java:171)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVariables(SSATransform.java:143)
        	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:60)
        	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:41)
        */
    public static void getCpuInfo() {
        /*
            r0 = 0
            r1 = 4
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: all -> 0x0029
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: all -> 0x0029
            java.lang.String r4 = "/proc/cpuinfo"
            r3.<init>(r4)     // Catch: all -> 0x0029
            java.lang.String r4 = "UTF-8"
            r2.<init>(r3, r4)     // Catch: all -> 0x0029
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: all -> 0x0026
            r3.<init>(r2)     // Catch: all -> 0x0026
        L_0x0015:
            java.lang.String r0 = r3.readLine()     // Catch: all -> 0x0027
            if (r0 != 0) goto L_0x0022
            r2.close()     // Catch: IOException -> 0x0037
            r3.close()     // Catch: IOException -> 0x0037
            goto L_0x0046
        L_0x0022:
            parseCpuInfoLine(r0)     // Catch: all -> 0x0027
            goto L_0x0015
        L_0x0026:
            r3 = r0
        L_0x0027:
            r0 = r2
            goto L_0x002a
        L_0x0029:
            r3 = r0
        L_0x002a:
            java.lang.String r2 = "Unknown"
            com.tencent.thumbplayer.core.common.TPSystemInfo.sCpuHardware = r2     // Catch: all -> 0x0047
            r2 = 0
            com.tencent.thumbplayer.core.common.TPSystemInfo.sCpuArchitecture = r2     // Catch: all -> 0x0047
            if (r0 == 0) goto L_0x0039
            r0.close()     // Catch: IOException -> 0x0037
            goto L_0x0039
        L_0x0037:
            r0 = move-exception
            goto L_0x003f
        L_0x0039:
            if (r3 == 0) goto L_0x0046
            r3.close()     // Catch: IOException -> 0x0037
            goto L_0x0046
        L_0x003f:
            java.lang.String r0 = r0.getMessage()
            com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r1, r0)
        L_0x0046:
            return
        L_0x0047:
            r2 = move-exception
            if (r0 == 0) goto L_0x0050
            r0.close()     // Catch: IOException -> 0x004e
            goto L_0x0050
        L_0x004e:
            r0 = move-exception
            goto L_0x0056
        L_0x0050:
            if (r3 == 0) goto L_0x005d
            r3.close()     // Catch: IOException -> 0x004e
            goto L_0x005d
        L_0x0056:
            java.lang.String r0 = r0.getMessage()
            com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r1, r0)
        L_0x005d:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPSystemInfo.getCpuInfo():void");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: SSATransform
        jadx.core.utils.exceptions.JadxRuntimeException: Not initialized variable reg: 5, insn: 0x0039: INVOKE  (r5 I:int), (r0 I:java.lang.String) type: STATIC call: com.tencent.thumbplayer.core.common.TPNativeLog.printLog(int, java.lang.String):void, block:B:14:0x0035
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVarsInBlock(SSATransform.java:171)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVariables(SSATransform.java:143)
        	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:60)
        	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:41)
        */
    public static long getCurrentCpuFreq() {
        /*
        // Method dump skipped, instructions count: 205
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPSystemInfo.getCurrentCpuFreq():long");
    }

    public static String getDeviceManufacturer() {
        return DEVICE_MANUFACTURER;
    }

    public static String getDeviceName() {
        return DEVICE_NAME;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: SSATransform
        jadx.core.utils.exceptions.JadxRuntimeException: Not initialized variable reg: 1, insn: 0x0056: INVOKE  (r1 I:int), (r0 I:java.lang.String) type: STATIC call: com.tencent.thumbplayer.core.common.TPNativeLog.printLog(int, java.lang.String):void, block:B:20:0x0052
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVarsInBlock(SSATransform.java:171)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVariables(SSATransform.java:143)
        	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:60)
        	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:41)
        */
    public static long getMaxCpuFreq() {
        /*
            long r0 = com.tencent.thumbplayer.core.common.TPSystemInfo.sMaxCpuFreq
            r2 = -1
            int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r2 == 0) goto L_0x0009
            return r0
        L_0x0009:
            r0 = 0
            r1 = 4
            r2 = 0
            java.lang.String r4 = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"
            java.io.InputStreamReader r5 = new java.io.InputStreamReader     // Catch: IOException -> 0x006a, all -> 0x005e
            java.io.FileInputStream r6 = new java.io.FileInputStream     // Catch: IOException -> 0x006a, all -> 0x005e
            r6.<init>(r4)     // Catch: IOException -> 0x006a, all -> 0x005e
            java.lang.String r4 = "UTF-8"
            r5.<init>(r6, r4)     // Catch: IOException -> 0x006a, all -> 0x005e
            java.io.BufferedReader r4 = new java.io.BufferedReader     // Catch: IOException -> 0x006b, all -> 0x005f
            r4.<init>(r5)     // Catch: IOException -> 0x006b, all -> 0x005f
            java.lang.String r0 = r4.readLine()     // Catch: IOException -> 0x005c, all -> 0x005a
            if (r0 != 0) goto L_0x003c
            r5.close()     // Catch: IOException -> 0x005c, all -> 0x005a
            r4.close()     // Catch: IOException -> 0x005c, all -> 0x005a
            r5.close()     // Catch: IOException -> 0x0033
            r4.close()     // Catch: IOException -> 0x0033
            goto L_0x003b
        L_0x0033:
            r0 = move-exception
            java.lang.String r0 = r0.getMessage()
            com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r1, r0)
        L_0x003b:
            return r2
        L_0x003c:
            java.lang.String r0 = r0.trim()     // Catch: IOException -> 0x005c, all -> 0x005a
            int r6 = r0.length()     // Catch: IOException -> 0x005c, all -> 0x005a
            if (r6 <= 0) goto L_0x004a
            long r2 = java.lang.Long.parseLong(r0)     // Catch: IOException -> 0x005c, all -> 0x005a
        L_0x004a:
            r5.close()     // Catch: IOException -> 0x0051
            r4.close()     // Catch: IOException -> 0x0051
            goto L_0x0075
        L_0x0051:
            r0 = move-exception
            java.lang.String r0 = r0.getMessage()
            com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r1, r0)
            goto L_0x0075
        L_0x005a:
            r0 = r4
            goto L_0x005f
        L_0x005c:
            r0 = r4
            goto L_0x006b
        L_0x005e:
            r5 = r0
        L_0x005f:
            if (r5 == 0) goto L_0x0064
            r5.close()     // Catch: IOException -> 0x0051
        L_0x0064:
            if (r0 == 0) goto L_0x0075
            r0.close()     // Catch: IOException -> 0x0051
            goto L_0x0075
        L_0x006a:
            r5 = r0
        L_0x006b:
            if (r5 == 0) goto L_0x0070
            r5.close()     // Catch: IOException -> 0x0051
        L_0x0070:
            if (r0 == 0) goto L_0x0075
            r0.close()     // Catch: IOException -> 0x0051
        L_0x0075:
            com.tencent.thumbplayer.core.common.TPSystemInfo.sMaxCpuFreq = r2
            r0 = 2
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r4 = "MaxCpuFreq "
            r1.append(r4)
            long r4 = com.tencent.thumbplayer.core.common.TPSystemInfo.sMaxCpuFreq
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r0, r1)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPSystemInfo.getMaxCpuFreq():long");
    }

    public static int getNumCores() {
        int i = sNumOfCores;
        if (-1 != i) {
            return i;
        }
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new FileFilter() { // from class: com.tencent.thumbplayer.core.common.TPSystemInfo.1CpuFilter
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return Pattern.matches("cpu[0-9]", file.getName());
                }
            });
            if (listFiles == null) {
                sNumOfCores = 1;
                return sNumOfCores;
            }
            sNumOfCores = listFiles.length;
            TPNativeLog.printLog(2, "core num " + sNumOfCores);
            return sNumOfCores;
        } catch (Exception e) {
            TPNativeLog.printLog(4, e.getMessage());
            sNumOfCores = 1;
            return 1;
        }
    }

    public static int getOpenGLSupportVersion(Context context) {
        if (sOpenGLVersion == 0) {
            try {
                ActivityManager activityManager = (ActivityManager) context.getApplicationContext().getSystemService("activity");
                if (activityManager == null) {
                    return sOpenGLVersion;
                }
                sOpenGLVersion = activityManager.getDeviceConfigurationInfo().reqGlEsVersion;
            } catch (Throwable th) {
                TPNativeLog.printLog(4, th.getMessage());
            }
        }
        return sOpenGLVersion;
    }

    public static String getOsVersion() {
        return DEVICE_OS_VERSION;
    }

    public static String getProductBoard() {
        return PRODUCT_BOARD;
    }

    public static String getProductDevice() {
        return PRODUCT_DEVICE;
    }

    public static int getScreenHeight(Context context) {
        if (context == null) {
            return 0;
        }
        int i = sScreenHeight;
        if (i != 0) {
            return i;
        }
        try {
            sScreenHeight = context.getResources().getDisplayMetrics().heightPixels;
        } catch (Throwable unused) {
            sScreenHeight = 0;
        }
        return sScreenHeight;
    }

    public static int getScreenWidth(Context context) {
        if (context == null) {
            return 0;
        }
        int i = sScreenWidth;
        if (i != 0) {
            return i;
        }
        try {
            sScreenWidth = context.getResources().getDisplayMetrics().widthPixels;
        } catch (Throwable unused) {
            sScreenWidth = 0;
        }
        return sScreenWidth;
    }

    public static int getSystemCpuUsage(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return -1;
        }
        float f = -1.0f;
        try {
            String[] split = str.trim().split("\\s+");
            long systemIdleTime = getSystemIdleTime(split);
            long systemUptime = getSystemUptime(split);
            String[] split2 = str2.trim().split("\\s+");
            long systemIdleTime2 = getSystemIdleTime(split2);
            long systemUptime2 = getSystemUptime(split2);
            if (systemIdleTime >= 0 && systemUptime >= 0 && systemIdleTime2 >= 0 && systemUptime2 >= 0) {
                long j = systemIdleTime2 + systemUptime2;
                long j2 = systemIdleTime + systemUptime;
                if (j > j2 && systemUptime2 >= systemUptime) {
                    f = (((float) (systemUptime2 - systemUptime)) / ((float) (j - j2))) * 100.0f;
                }
            }
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
        }
        return (int) f;
    }

    public static long getSystemIdleTime(String[] strArr) {
        try {
            return Long.parseLong(strArr[4]);
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }

    public static long getSystemUptime(String[] strArr) {
        long j = 0;
        for (int i = 1; i < strArr.length; i++) {
            if (4 != i) {
                try {
                    j += Long.parseLong(strArr[i]);
                } catch (Throwable unused) {
                    return -1;
                }
            }
        }
        return j;
    }

    private static boolean hasMarshmallow() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static synchronized void initAudioBestSettings(Context context) {
        synchronized (TPSystemInfo.class) {
            if (context != null) {
                if (sAudioBestSampleRate <= 0) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
                        String property = audioManager.getProperty("android.media.property.OUTPUT_SAMPLE_RATE");
                        String property2 = audioManager.getProperty("android.media.property.OUTPUT_FRAMES_PER_BUFFER");
                        try {
                            sAudioBestSampleRate = Integer.parseInt(property);
                            sAudioBestFramesPerBust = Integer.parseInt(property2);
                        } catch (NumberFormatException e) {
                            TPNativeLog.printLog(4, e.getMessage());
                        }
                    }
                }
            }
        }
    }

    public static boolean isARMV5Whitelist() {
        return getDeviceName().equals("XT882") || getDeviceName().equals("ME860") || getDeviceName().equals("MB860") || getDeviceName().equals("Lenovo P70") || getDeviceName().equals("Lenovo A60") || getDeviceName().equals("Lenovo A366t");
    }

    private static void parseCpuInfoLine(String str) {
        int indexOf;
        int indexOf2;
        if (str.contains("aarch64") || str.contains("AArch64")) {
            sCpuArchitecture = 64;
        }
        if (str.startsWith("Processor")) {
            int indexOf3 = str.indexOf(58);
            if (indexOf3 > 1) {
                sProcessorName = str.substring(indexOf3 + 1, str.length());
                sProcessorName = sProcessorName.trim();
            }
        } else if (str.startsWith("CPU architecture")) {
            if (sCpuArchitecture == 0 && (indexOf2 = str.indexOf(58)) > 1) {
                String trim = str.substring(indexOf2 + 1, str.length()).trim();
                if (trim.length() <= 0 || trim.length() >= 2) {
                    if (trim.length() > 1) {
                        trim = trim.substring(0, 1);
                    } else {
                        return;
                    }
                }
                sCpuArchitecture = (int) Long.parseLong(trim);
            }
        } else if (str.startsWith("Features")) {
            int indexOf4 = str.indexOf(58);
            if (indexOf4 > 1) {
                sFeature = str.substring(indexOf4 + 1, str.length()).trim();
            }
        } else if (str.startsWith("Hardware") && (indexOf = str.indexOf(58)) > 1) {
            sCpuHardware = str.substring(indexOf + 1, str.length()).trim().replace(" ", "");
            TPNativeLog.printLog(2, "hardware " + sCpuHardware);
            getCpuHWProductIndex(sCpuHardware);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: SSATransform
        jadx.core.utils.exceptions.JadxRuntimeException: Not initialized variable reg: 1, insn: 0x004c: IF  (r1 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:30:0x0056, block:B:26:0x004c
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVarsInBlock(SSATransform.java:171)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVariables(SSATransform.java:143)
        	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:60)
        	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:41)
        */
    private static java.lang.String readStringFromFile(
    /*  JADX ERROR: JadxRuntimeException in pass: SSATransform
        jadx.core.utils.exceptions.JadxRuntimeException: Not initialized variable reg: 1, insn: 0x004c: IF  (r1 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:30:0x0056, block:B:26:0x004c
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVarsInBlock(SSATransform.java:171)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVariables(SSATransform.java:143)
        	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:60)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r6v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:228)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:198)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:151)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:364)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:304)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:270)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
        */

    public static String readSystemStat() {
        int i;
        String str;
        Throwable th;
        RandomAccessFile randomAccessFile;
        try {
            str = null;
            i = 4;
            try {
                randomAccessFile = new RandomAccessFile("/proc/stat", "r");
                try {
                    str = randomAccessFile.readLine();
                    randomAccessFile.close();
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        th.printStackTrace();
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                        }
                        return str;
                    } catch (Throwable th3) {
                        if (randomAccessFile != null) {
                            try {
                                randomAccessFile.close();
                            } catch (Throwable th4) {
                                TPNativeLog.printLog(4, th4.getMessage());
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                randomAccessFile = null;
            }
        } catch (Throwable th6) {
            TPNativeLog.printLog(i, th6.getMessage());
        }
        return str;
    }

    public static boolean supportInDeviceDolbyAudioEffect() {
        boolean z;
        Exception e;
        try {
            z = false;
            for (AudioEffect.Descriptor descriptor : AudioEffect.queryEffects()) {
                try {
                    if (descriptor.implementor.contains("Dolby Laboratories")) {
                        z = true;
                    }
                } catch (Exception e2) {
                    e = e2;
                    TPNativeLog.printLog(4, e.getMessage());
                    return z;
                }
            }
        } catch (Exception e3) {
            e = e3;
            z = false;
        }
        return z;
    }

    private static void writeStringToFile(String str, String str2) {
        FileWriter fileWriter = null;
        try {
            File file = new File(str);
            if (file.exists() || !file.createNewFile()) {
                FileWriter fileWriter2 = new FileWriter(file, false);
                try {
                    fileWriter2.write(str2);
                    fileWriter2.flush();
                    fileWriter2.close();
                } catch (Throwable unused) {
                    fileWriter = fileWriter2;
                    if (fileWriter != null) {
                        try {
                            fileWriter.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable unused2) {
        }
    }
}
