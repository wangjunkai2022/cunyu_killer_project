package com.tencent.thumbplayer.config;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.thumbplayer.core.config.TPPlayerCoreConfig;
import com.tencent.thumbplayer.utils.TPLogUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPPlayerConfig {
    private static String DOT = "\\.";
    public static final boolean ISOTT = false;
    private static final String TAG = "TPPlayerConfig";
    public static final String VERSION = "2.27.0.1123";
    private static String appVersion = "";
    private static String appVersionName = null;
    public static String beacon_log_host = "";
    public static String beacon_policy_host = "";
    private static long buildNum = -1;
    private static String host_config = "";
    private static boolean mEnableDataReport = false;
    private static String mGuid = "";
    private static String mOutNetIp = "";
    private static int mPlatform = -1;
    private static String mProxyCacheDir = null;
    private static String mProxyDataDir = null;
    private static long mProxyMaxStorageSizeMB = 0;
    private static int mProxyServiceType = -1;
    private static boolean mUseP2P = true;
    private static boolean mUserIsVip = false;
    private static String mUserUin = null;
    private static String mUserUpc = "";
    private static int mUserUpcState;

    public static String getAppBigVersion(Context context) {
        if (!TextUtils.isEmpty(appVersion)) {
            return appVersion;
        }
        String appVersionName2 = getAppVersionName(context);
        if (!TextUtils.isEmpty(appVersionName2)) {
            String[] split = appVersionName2.split(DOT);
            if (split != null && split.length == 4) {
                appVersionName2 = appVersionName2.substring(0, appVersionName2.lastIndexOf("."));
            }
        } else {
            appVersionName2 = "0.0.0";
        }
        appVersion = appVersionName2;
        return appVersionName2;
    }

    public static String getAppVersionName(Context context) {
        if (!TextUtils.isEmpty(appVersionName)) {
            return appVersionName;
        }
        if (context == null) {
            return "";
        }
        try {
            appVersionName = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            String str = appVersionName;
            return str == null ? "" : str;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static long getBuildNumber(Context context) {
        long j = buildNum;
        if (-1 != j) {
            return j;
        }
        try {
            buildNum = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).getLongVersionCode();
            return buildNum;
        } catch (Throwable unused) {
            TPLogUtil.e("TPPlayerConfig", "getLongVersionCode less api 28");
            return buildNum;
        }
    }

    public static String getGuid() {
        return mGuid;
    }

    public static boolean getMediaDrmReuseEnable() {
        return TPPlayerCoreConfig.getMediaDrmReuseEnable();
    }

    public static String getOutNetIp() {
        return mOutNetIp;
    }

    public static int getPlatform() {
        return mPlatform;
    }

    public static String getProxyCacheDir() {
        return mProxyCacheDir;
    }

    public static String getProxyConfigDir() {
        if (TextUtils.isEmpty(host_config)) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject(host_config);
            return !jSONObject.has("httpproxy_config") ? "" : jSONObject.getString("httpproxy_config");
        } catch (JSONException e) {
            TPLogUtil.e("TPPlayerConfig", e);
            return "";
        }
    }

    public static String getProxyDataDir() {
        return mProxyDataDir;
    }

    public static long getProxyMaxStorageSizeMB() {
        return mProxyMaxStorageSizeMB;
    }

    public static int getProxyServiceType() {
        int i;
        return (mProxyServiceType != -1 || (i = mPlatform) == -1) ? mProxyServiceType : i;
    }

    public static String getUserUin() {
        return mUserUin;
    }

    public static String getUserUpc() {
        return mUserUpc;
    }

    public static int getUserUpcState() {
        return mUserUpcState;
    }

    public static int getVideoMediaCodecCoexistMaxCnt() {
        return TPPlayerCoreConfig.getVideoMediaCodecCoexistMaxCnt();
    }

    public static boolean isDataReportEnable() {
        return mEnableDataReport;
    }

    public static boolean isUseP2P() {
        return mUseP2P;
    }

    public static boolean isUserIsVip() {
        return mUserIsVip;
    }

    public static void parseHostConfig(String str) {
        if (TextUtils.isEmpty(str)) {
            TPLogUtil.w("TPPlayerConfig", "parseHostConfig, config is null.");
            return;
        }
        host_config = str;
        TPLogUtil.i("TPPlayerConfig", "parseHostConfig:" + str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("player_host_config")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("player_host_config");
                if (jSONObject2.has("beacon_policy_host")) {
                    beacon_policy_host = jSONObject2.getString("beacon_policy_host");
                }
                if (jSONObject2.has("beacon_log_host")) {
                    beacon_log_host = jSONObject2.getString("beacon_log_host");
                }
            }
        } catch (Throwable th) {
            TPLogUtil.w("TPPlayerConfig", "parseHostConfig exception: " + th.toString());
        }
    }

    public static void setDataReportEnable(boolean z) {
        mEnableDataReport = z;
    }

    public static void setDebugEnable(boolean z) {
        TPLogUtil.setDebugEnable(z);
    }

    public static void setGuid(String str) {
        mGuid = str;
    }

    public static void setMediaDrmReuseEnable(boolean z) {
        TPPlayerCoreConfig.setMediaDrmReuseEnable(z);
    }

    public static void setOutNetIp(String str) {
        mOutNetIp = str;
    }

    public static void setP2PEnable(boolean z) {
        mUseP2P = z;
    }

    public static void setPlatform(int i) {
        mPlatform = i;
    }

    public static void setProxyCacheDir(String str) {
        mProxyCacheDir = str;
    }

    public static void setProxyDataDir(String str) {
        mProxyDataDir = str;
    }

    public static void setProxyMaxStorageSizeMB(long j) {
        mProxyMaxStorageSizeMB = j;
    }

    public static void setProxyServiceType(int i) {
        mProxyServiceType = i;
    }

    public static void setUserIsVip(boolean z) {
        mUserIsVip = z;
    }

    public static void setUserUin(String str) {
        mUserUin = str;
    }

    public static void setUserUpc(String str) {
        mUserUpc = str;
    }

    public static void setUserUpcState(int i) {
        mUserUpcState = i;
    }

    public static void setVideoMediaCodecCoexistMaxCnt(int i) {
        TPPlayerCoreConfig.setVideoMediaCodecCoexistMaxCnt(i);
    }
}
