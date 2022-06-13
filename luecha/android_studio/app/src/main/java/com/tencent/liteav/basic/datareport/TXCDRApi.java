package com.tencent.liteav.basic.datareport;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.basic.util.h;
import java.security.MessageDigest;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXCDRApi {
    private static final String TAG = "TXCDRApi";
    private static String g_simulate_idfa = "";
    private static String mAppName = "";
    private static String mDevId = "";
    private static String mDevType = "";
    private static String mDevUUID = "";
    private static String mNetType = "";
    private static String mPackageName = "";
    private static String mSysVersion = "";
    private static final char[] DIGITS_LOWER = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    static boolean initRpt = false;

    public static native int nativeGetStatusReportInterval();

    private static native void nativeInitDataReport();

    private static native void nativeInitEventInternal(String str, int i, int i2, TXCDRExtInfo tXCDRExtInfo);

    public static native void nativeReportAVRoomEvent(int i, long j, String str, int i2, int i3, String str2, String str3);

    private static native void nativeReportDAUInterval(int i, int i2, String str);

    public static native void nativeReportEvent(String str, int i);

    public static native void nativeReportEvent40003(String str, int i, int i2, String str2, String str3);

    public static native void nativeSetCommonValue(String str, String str2);

    private static native void nativeSetEventValueInterval(String str, int i, String str2, String str3);

    private static native void nativeUninitDataReport();

    public static void InitEvent(Context context, String str, int i, int i2, TXCDRExtInfo tXCDRExtInfo) {
        setCommonInfo(context);
        if (str != null) {
            nativeInitEventInternal(str, i, i2, tXCDRExtInfo);
        }
    }

    public static void txSetEventValue(String str, int i, String str2, String str3) {
        nativeSetEventValueInterval(str, i, str2, str3);
    }

    public static void txSetEventIntValue(String str, int i, String str2, long j) {
        nativeSetEventValueInterval(str, i, str2, "" + j);
    }

    public static void txReportDAU(Context context, int i) {
        if (context != null) {
            setCommonInfo(context);
        }
        nativeReportDAUInterval(i, 0, "");
    }

    public static void txReportDAU(Context context, int i, int i2, String str) {
        if (context != null) {
            setCommonInfo(context);
        }
        nativeReportDAUInterval(i, i2, str);
    }

    public static void reportEvent40003(String str, int i, int i2, String str2, String str3) {
        nativeReportEvent40003(str, i, i2, str2, str3);
    }

    public static void reportAVRoomEvent(int i, long j, String str, int i2, int i3, String str2, String str3) {
        nativeReportAVRoomEvent(i, j, str, i2, i3, str2, str3);
    }

    public static int getStatusReportInterval() {
        return nativeGetStatusReportInterval();
    }

    public static void setCommonInfo(Context context) {
        if (TextUtils.isEmpty(mDevType)) {
            mDevType = TXCBuild.Model();
        }
        mNetType = Integer.toString(h.d(context));
        if (TextUtils.isEmpty(mDevId)) {
            mDevId = getSimulateIDFA(context);
        }
        if (TextUtils.isEmpty(mDevUUID)) {
            mDevUUID = h.f(context);
        }
        if (TextUtils.isEmpty(mPackageName)) {
            mPackageName = h.c(context);
        }
        if (TextUtils.isEmpty(mAppName)) {
            mAppName = h.a(context, mPackageName) + ":" + mPackageName;
        }
        if (TextUtils.isEmpty(mSysVersion)) {
            mSysVersion = String.valueOf(TXCBuild.VersionInt());
        }
        txSetCommonInfo();
    }

    public static void txSetCommonInfo() {
        if (mDevType != null) {
            nativeSetCommonValue(a.f, mDevType);
        }
        if (mNetType != null) {
            nativeSetCommonValue(a.g, mNetType);
        }
        if (mDevId != null) {
            nativeSetCommonValue(a.h, mDevId);
        }
        if (mDevUUID != null) {
            nativeSetCommonValue(a.i, mDevUUID);
        }
        if (mAppName != null) {
            nativeSetCommonValue(a.j, mAppName);
        }
        if (mSysVersion != null) {
            nativeSetCommonValue(a.l, mSysVersion);
        }
    }

    public static void txSetAppVersion(String str) {
        if (str != null) {
            nativeSetCommonValue(a.k, str);
        }
    }

    public static String txCreateToken() {
        return UUID.randomUUID().toString();
    }

    private static String byteArrayToHexString(byte[] bArr) {
        char[] cArr = new char[bArr.length << 1];
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = i + 1;
            char[] cArr2 = DIGITS_LOWER;
            cArr[i] = cArr2[(bArr[i2] & 240) >>> 4];
            i = i3 + 1;
            cArr[i3] = cArr2[bArr[i2] & 15];
        }
        return new String(cArr);
    }

    static {
        h.f();
        nativeInitDataReport();
    }

    public static String string2Md5(String str) {
        String str2;
        if (str == null) {
            return "";
        }
        try {
            str2 = byteArrayToHexString(MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8")));
        } catch (Exception e) {
            TXCLog.e("TXCDRApi", "string2Md5 failed.", e);
            str2 = "";
        }
        if (str2 == null) {
            return "";
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b9 A[LOOP:0: B:37:0x00b2->B:39:0x00b9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e8 A[LOOP:1: B:41:0x00e6->B:42:0x00e8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0179 A[Catch: Exception -> 0x01ad, TryCatch #1 {Exception -> 0x01ad, blocks: (B:48:0x0159, B:50:0x0179, B:51:0x017c, B:53:0x019a, B:54:0x019d), top: B:65:0x0159 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x019a A[Catch: Exception -> 0x01ad, TryCatch #1 {Exception -> 0x01ad, blocks: (B:48:0x0159, B:50:0x0179, B:51:0x017c, B:53:0x019a, B:54:0x019d), top: B:65:0x0159 }] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    public static java.lang.String getSimulateIDFA(android.content.Context r23) {
        /*
        // Method dump skipped, instructions count: 475
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.basic.datareport.TXCDRApi.getSimulateIDFA(android.content.Context):java.lang.String");
    }

    public static String getDevUUID(Context context, String str) {
        return getSimulateIDFA(context);
    }

    public static void initCrashReport(Context context) {
        String sDKVersionStr;
        try {
            synchronized (TXCDRApi.class) {
                if (!(initRpt || context == null || (sDKVersionStr = TXCCommonUtil.getSDKVersionStr()) == null)) {
                    SharedPreferences.Editor edit = context.getSharedPreferences("BuglySdkInfos", 0).edit();
                    edit.putString("8e50744bf0", sDKVersionStr);
                    edit.commit();
                    initRpt = true;
                }
            }
        } catch (Exception e) {
            TXCLog.e("TXCDRApi", "init crash report failed.", e);
        }
    }
}
