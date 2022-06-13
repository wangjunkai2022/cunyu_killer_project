package com.tencent.liteav.basic.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.tencent.liteav.basic.log.TXCLog;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/* loaded from: classes5.dex */
public class TXCCommonUtil {
    private static final String TAG = "TXCCommonUtil";
    private static String mAppID = "";
    private static Map<String, String> mExtIDMap = null;
    private static String mStrAppVersion = "";
    private static String mUserId = "";
    public static String pituLicencePath = "YTFaceSDK.licence";
    private static Context sApplicationContext;
    public static int ENV_PRIORITY_FUNCTION = 1;
    public static int ENV_PRIORITY_SDKAPPID = ENV_PRIORITY_FUNCTION + 1;
    public static int ENV_PRIORITY_API = ENV_PRIORITY_SDKAPPID + 1;

    private static native String nativeGetConfigCenterKey();

    private static native String nativeGetCurEnvProxyDomain();

    private static native int nativeGetCurEnvProxySDKAppId();

    private static native String nativeGetCurEnvServerConfigUrl();

    private static native int nativeGetSDKID();

    private static native String nativeGetSDKVersion();

    private static native int nativeSetGlobalEnv(String str, int i);

    private static native int nativeSetSocks5Proxy(String str, int i, String str2, String str3);

    static {
        h.f();
    }

    public static int[] getSDKVersion() {
        String[] split = nativeGetSDKVersion().split("\\.");
        int[] iArr = new int[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                iArr[i] = Integer.parseInt(split[i]);
            } catch (NumberFormatException e) {
                TXCLog.e("TXCCommonUtil", "parse version failed.", e);
                iArr[i] = 0;
            }
        }
        return iArr;
    }

    public static String getSDKVersionStr() {
        return nativeGetSDKVersion();
    }

    public static int getSDKID() {
        return nativeGetSDKID();
    }

    public static String getConfigCenterKey() {
        return nativeGetConfigCenterKey();
    }

    public static String getFileExtension(String str) {
        int lastIndexOf;
        if (str == null || str.length() <= 0 || (lastIndexOf = str.lastIndexOf(46)) <= -1 || lastIndexOf >= str.length() - 1) {
            return null;
        }
        return str.substring(lastIndexOf + 1);
    }

    public static void setAppContext(Context context) {
        if (context != null) {
            sApplicationContext = context.getApplicationContext();
        }
    }

    public static Context getAppContext() {
        return sApplicationContext;
    }

    public static void sleep(int i) {
        try {
            Thread.sleep((long) i);
        } catch (InterruptedException unused) {
        }
    }

    public static String getStreamIDByStreamUrl(String str) {
        if (!(str == null || str.length() == 0)) {
            int indexOf = str.indexOf("?");
            if (indexOf != -1) {
                str = str.substring(0, indexOf);
            }
            if (!(str == null || str.length() == 0)) {
                int lastIndexOf = str.lastIndexOf("/");
                if (lastIndexOf != -1) {
                    str = str.substring(lastIndexOf + 1);
                }
                if (!(str == null || str.length() == 0)) {
                    int indexOf2 = str.indexOf(".");
                    if (indexOf2 != -1) {
                        str = str.substring(0, indexOf2);
                    }
                    if (str != null && str.length() != 0) {
                        return str;
                    }
                }
            }
        }
        return null;
    }

    public static String getAppNameByStreamUrl(String str) {
        if (!(str == null || str.length() == 0)) {
            int indexOf = str.indexOf("?");
            if (indexOf != -1) {
                str = str.substring(0, indexOf);
            }
            if (!(str == null || str.length() == 0)) {
                int lastIndexOf = str.lastIndexOf("/");
                if (lastIndexOf != -1) {
                    str = str.substring(0, lastIndexOf);
                }
                if (!(str == null || str.length() == 0)) {
                    int lastIndexOf2 = str.lastIndexOf("/");
                    if (lastIndexOf2 != -1) {
                        str = str.substring(lastIndexOf2 + 1);
                    }
                    if (str != null && str.length() != 0) {
                        return str;
                    }
                }
            }
        }
        return null;
    }

    public static void setAppVersion(String str) {
        mStrAppVersion = str;
    }

    public static void setPituLicencePath(String str) {
        pituLicencePath = str;
    }

    public static String getAppVersion() {
        return mStrAppVersion;
    }

    public static void setAppID(String str) {
        mAppID = str;
    }

    public static String getAppID() {
        return mAppID;
    }

    public static String getUserId() {
        return mUserId;
    }

    public static void setUserId(String str) {
        mUserId = str;
    }

    public static String getMD5(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuffer stringBuffer = new StringBuffer("");
            for (byte b : digest) {
                int i = b;
                if (b < 0) {
                    i = b + 256;
                }
                if (i < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i == 1 ? 1 : 0));
            }
            return stringBuffer.toString();
        } catch (Exception unused) {
            return str;
        }
    }

    public static byte[] getMD5(byte[] bArr) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bArr);
            return instance.digest();
        } catch (Exception unused) {
            return null;
        }
    }

    public static void saveString(String str, String str2) {
        Context context = sApplicationContext;
        if (context != null) {
            try {
                SharedPreferences.Editor edit = context.getSharedPreferences("TXCCommonConfig", 0).edit();
                edit.putString(str, str2);
                edit.commit();
            } catch (Exception e) {
                TXCLog.e("TXCCommonUtil", "save string failed", e);
            }
        }
    }

    public static String loadString(String str) {
        Context context = sApplicationContext;
        if (context == null) {
            return "";
        }
        try {
            return context.getSharedPreferences("TXCCommonConfig", 0).getString(str, "");
        } catch (Exception e) {
            TXCLog.e("TXCCommonUtil", "load string failed.", e);
            return "";
        }
    }

    public static void saveUInt64(String str, long j) {
        Context context = sApplicationContext;
        if (context != null) {
            try {
                SharedPreferences.Editor edit = context.getSharedPreferences("TXCCommonConfig", 0).edit();
                edit.putLong(str, j);
                edit.commit();
            } catch (Exception e) {
                TXCLog.e("TXCCommonUtil", "save uint64 failed.", e);
            }
        }
    }

    public static long loadUInt64(String str) {
        Context context = sApplicationContext;
        if (context == null) {
            return 0;
        }
        try {
            return context.getSharedPreferences("TXCCommonConfig", 0).getLong(str, 0);
        } catch (Exception e) {
            TXCLog.e("TXCCommonUtil", "load uint64 failed.", e);
            return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.util.zip.ZipOutputStream] */
    /* JADX WARN: Type inference failed for: r10v4 */
    public static void zip(ArrayList<String> arrayList, String str) {
        Throwable th;
        ZipOutputStream zipOutputStream;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        Throwable th2;
        Exception e;
        byte[] bArr;
        try {
            try {
                File file = new File((String) str);
                str = 0;
                fileInputStream = null;
                try {
                    zipOutputStream = new ZipOutputStream(new FileOutputStream(file));
                } catch (FileNotFoundException unused) {
                }
            } catch (Throwable th3) {
                th = th3;
                zipOutputStream = str;
            }
            try {
                zipOutputStream.setComment("LiteAV log");
                Iterator<String> it = arrayList.iterator();
                while (it.hasNext()) {
                    File file2 = new File(it.next());
                    try {
                    } catch (Exception e2) {
                        e = e2;
                        fileInputStream2 = fileInputStream;
                    } catch (Throwable th4) {
                        th2 = th4;
                        fileInputStream2 = fileInputStream;
                    }
                    if (file2.length() != 0 && file2.length() <= 8388608) {
                        fileInputStream2 = new FileInputStream(file2);
                        try {
                            try {
                                zipOutputStream.putNextEntry(new ZipEntry(file2.getName()));
                                bArr = new byte[8192];
                            } catch (Throwable th5) {
                                th2 = th5;
                                try {
                                    fileInputStream2.close();
                                } catch (Exception unused2) {
                                }
                                throw th2;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            TXCLog.e("TXCCommonUtil", "zip failed.", e);
                            try {
                                break;
                                fileInputStream2.close();
                            } catch (Exception unused3) {
                            }
                            fileInputStream = fileInputStream2;
                        }
                        while (true) {
                            int read = fileInputStream2.read(bArr);
                            if (read != -1) {
                                zipOutputStream.write(bArr, 0, read);
                            }
                            break;
                        }
                        fileInputStream2.close();
                        fileInputStream = fileInputStream2;
                    }
                    try {
                        fileInputStream.close();
                    } catch (Exception unused4) {
                    }
                }
                zipOutputStream.close();
            } catch (FileNotFoundException unused5) {
                str = zipOutputStream;
                TXCLog.w("TXCCommonUtil", "zip log error");
                str.close();
            } catch (Throwable th6) {
                th = th6;
                try {
                    zipOutputStream.close();
                } catch (Exception unused6) {
                }
                throw th;
            }
        } catch (Exception unused7) {
        }
    }

    public static String getLogUploadPath() {
        File externalFilesDir;
        Context context = sApplicationContext;
        if (context == null || (externalFilesDir = context.getExternalFilesDir(null)) == null) {
            return "";
        }
        return externalFilesDir.getAbsolutePath() + "/log/liteav";
    }

    public static int getGateway() {
        Context context = sApplicationContext;
        if (context == null) {
            return 0;
        }
        try {
            return ((WifiManager) context.getSystemService("wifi")).getDhcpInfo().gateway;
        } catch (Exception e) {
            TXCLog.e("TXCCommonUtil", "getGateway error ", e);
            return 0;
        }
    }

    public static boolean equals(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static String getAppPackageName() {
        return h.c(sApplicationContext);
    }

    public static String getAppFilePath() {
        Context context = sApplicationContext;
        String absolutePath = context != null ? context.getFilesDir().getAbsolutePath() : "/sdcard/liteav";
        File file = new File(absolutePath);
        if (!file.exists()) {
            file.mkdirs();
        }
        return absolutePath;
    }

    public static String tryEncodeUrl(String str) {
        try {
            if (isUrlEncoded(str)) {
                TXCLog.w("TXCCommonUtil", "URL has been encoded");
                return str;
            }
            byte[] bytes = str.getBytes("UTF-8");
            StringBuilder sb = new StringBuilder(bytes.length);
            for (int i = 0; i < bytes.length; i++) {
                int i2 = bytes[i] < 0 ? bytes[i] + 256 : bytes[i];
                if (!(i2 <= 32 || i2 >= 127 || i2 == 34 || i2 == 37 || i2 == 60 || i2 == 62 || i2 == 91 || i2 == 125 || i2 == 92 || i2 == 93 || i2 == 94 || i2 == 96 || i2 == 123 || i2 == 124)) {
                    sb.append((char) i2);
                }
                sb.append(String.format("%%%02X", Integer.valueOf(i2 == 1 ? 1 : 0)));
            }
            return sb.toString();
        } catch (Exception e) {
            TXCLog.e("TXCCommonUtil", "tryEncodeUrl failed.", e);
            return str;
        }
    }

    public static boolean isUrlEncoded(String str) {
        if (str == null) {
            return true;
        }
        try {
            return !str.replace("+", " ").equals(URLDecoder.decode(str, "UTF-8").replace("+", " "));
        } catch (Exception e) {
            TXCLog.e("TXCCommonUtil", "isUrlEncoded error : ", e);
            return false;
        }
    }

    public static int setGlobalEnv(String str, int i) {
        return nativeSetGlobalEnv(str, i);
    }

    public static int setSocks5Proxy(String str, int i, String str2, String str3) {
        return nativeSetSocks5Proxy(str, i, str2, str3);
    }

    public static String getCurEnvServerConfigUrl() {
        return nativeGetCurEnvServerConfigUrl();
    }

    public static String getCurEnvProxyDomain() {
        return nativeGetCurEnvProxyDomain();
    }

    public static int getCurEnvProxySDKAppId() {
        return nativeGetCurEnvProxySDKAppId();
    }

    public static final String getDeviceInfo() {
        try {
            return TXCBuild.Brand() + "_" + TXCBuild.Model() + "_" + TXCBuild.Version();
        } catch (Exception unused) {
            return "unknown_device";
        }
    }

    public static ClassLoader getClassLoader() {
        return TXCCommonUtil.class.getClassLoader();
    }

    /* JADX WARN: Finally extract failed */
    public static boolean unzip(String str, String str2) {
        Throwable th;
        ZipInputStream zipInputStream;
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                zipInputStream = new ZipInputStream(new BufferedInputStream(fileInputStream));
                while (true) {
                    try {
                        ZipEntry nextEntry = zipInputStream.getNextEntry();
                        if (nextEntry != null) {
                            File file = new File(str2, nextEntry.getName());
                            if (nextEntry.isDirectory()) {
                                file.mkdirs();
                            } else {
                                file.getParentFile().mkdirs();
                                c.a(zipInputStream, file.getAbsolutePath());
                                zipInputStream.closeEntry();
                            }
                        } else {
                            c.a(fileInputStream);
                            c.a(zipInputStream);
                            return true;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            TXCLog.e("TXCCommonUtil", "unzip " + str + " failed.", th);
                            c.a(fileInputStream);
                            c.a(zipInputStream);
                            return false;
                        } catch (Throwable th3) {
                            c.a(fileInputStream);
                            c.a(zipInputStream);
                            throw th3;
                        }
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                zipInputStream = null;
            }
        } catch (Throwable th5) {
            th = th5;
            fileInputStream = null;
            zipInputStream = null;
        }
    }

    public static Map<String, String> getExtIDMap() {
        return mExtIDMap;
    }

    public static boolean setExtID(String str, String str2) {
        TXCLog.i("TXCCommonUtil", "setExtID: [" + str + " : " + str2 + "]");
        if (!Arrays.asList("businessId", "buildModel", "buildBrand", "buildManufacturer", "buildHardware", "buildVersion", "buildVersionRelease", "buildVersionInt", "buildVersionSDKInt", "buildVersionIncremental", "buildBoard").contains(str)) {
            return false;
        }
        if (str.equals("buildModel")) {
            TXCBuild.SetModel(str2);
            return true;
        } else if (str.equals("buildBrand")) {
            TXCBuild.SetBrand(str2);
            return true;
        } else if (str.equals("buildManufacturer")) {
            TXCBuild.SetManufacturer(str2);
            return true;
        } else if (str.equals("buildHardware")) {
            TXCBuild.SetHardware(str2);
            return true;
        } else if (str.equals("buildVersion") || str.equals("buildVersionRelease")) {
            TXCBuild.SetVersion(str2);
            return true;
        } else if (str.equals("buildVersionIncremental")) {
            TXCBuild.SetVersionIncremental(str2);
            return true;
        } else if (str.equals("buildVersionInt") || str.equals("buildVersionSDKInt")) {
            try {
                TXCBuild.SetVersionInt(Integer.parseInt(str2));
                return true;
            } catch (Exception unused) {
                return false;
            }
        } else if (str.equals("buildBoard")) {
            TXCBuild.SetBoard(str2);
            return true;
        } else {
            if (mExtIDMap == null) {
                mExtIDMap = new ConcurrentHashMap();
            }
            mExtIDMap.put(str, str2);
            return true;
        }
    }

    public static boolean equalURL(String str, String str2) {
        try {
            if (TextUtils.equals(str, str2) || TextUtils.equals(URLDecoder.decode(str, "UTF-8"), str2)) {
                return true;
            }
            if (TextUtils.equals(str, URLDecoder.decode(str2, "UTF-8"))) {
                return true;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
