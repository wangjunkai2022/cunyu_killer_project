package com.tencent.thumbplayer.api;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.thumbplayer.adapter.a.b.a;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMapUtil;
import com.tencent.thumbplayer.b.a.c;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.common.ITPNativeLibraryExternalLoader;
import com.tencent.thumbplayer.core.common.ITPNativeLogCallback;
import com.tencent.thumbplayer.core.common.TPNativeLibraryLoader;
import com.tencent.thumbplayer.core.common.TPNativeLog;
import com.tencent.thumbplayer.core.common.TPThumbplayerCapabilityHelper;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyNativeLibLoader;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPProxyAdapter;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyHelper;
import com.tencent.thumbplayer.core.player.TPNativePlayer;
import com.tencent.thumbplayer.d.b;
import com.tencent.thumbplayer.d.g;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.d;
import com.tencent.thumbplayer.utils.f;
import com.tencent.thumbplayer.utils.i;
import com.tencent.thumbplayer.utils.o;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* loaded from: classes2.dex */
public class TPPlayerMgr {
    public static final String BEACON_LOG_HOST_KEY = "beacon_log_host";
    public static final String BEACON_POLICY_HOST_KEY = "beacon_policy_host";
    public static final int EVENT_ID_APP_ENTER_BACKGROUND = 100001;
    public static final int EVENT_ID_APP_ENTER_FOREGROUND = 100002;
    public static final int INVALID_SUGGEST_BITRATE = -1;
    public static final String PLYAER_HOST_KEY = "player_host_config";
    public static final String PROPERTY_MEDIA_DRM_REUSE_BEFORE_INIT_SDK = "PROPERTY_MediaDrmReuse";
    public static final String PROPERTY_VIDEO_MEDIACODEC_CO_EXIST_MAX_CNT = "PROPERTY_VideoMediaCodecCoexistMaxCnt";
    public static final String PROXY_HOST_KEY = "httpproxy_config";
    private static final String TAG = "TPThumbPlayer[TPPlayerMgr.java]";
    public static final String TP_DOWNLOAD_PROXY_MODULE_NAME = "DownloadProxy";
    public static final String TP_PLAYERCORE_MODULE_NAME = "TPCore";
    private static Context mAppContext;
    private static boolean mIsInit;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface BooleanProperty {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface EventId {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface IntegerProperty {
    }

    /* loaded from: classes2.dex */
    public interface OnLogListener {
        int d(String str, String str2);

        int e(String str, String str2);

        int i(String str, String str2);

        int v(String str, String str2);

        int w(String str, String str2);
    }

    public static Context getAppContext() {
        return mAppContext;
    }

    public static String getLibVersion(String str) {
        if (mIsInit) {
            if (!TextUtils.isEmpty(str)) {
                if (str.equals(TP_DOWNLOAD_PROXY_MODULE_NAME)) {
                    return TPDownloadProxyHelper.getNativeLibVersion();
                }
                if (str.equals(TP_PLAYERCORE_MODULE_NAME)) {
                    return TPNativeLibraryLoader.getLibVersion();
                }
            }
            throw new IllegalArgumentException("libName:" + str);
        }
        throw new IllegalStateException("player not initialized");
    }

    public static int getOfflineRecordDurationMs(String str, String str2) {
        return TPDownloadProxyHelper.getRecordDuration(str, str2);
    }

    public static String getOfflineRecordVinfo(String str, String str2) {
        return TPDownloadProxyHelper.checkVideoStatus(str, str2);
    }

    public static boolean getPropertyBoolean(String str) {
        if (TextUtils.equals(PROPERTY_MEDIA_DRM_REUSE_BEFORE_INIT_SDK, str)) {
            return TPPlayerConfig.getMediaDrmReuseEnable();
        }
        return true;
    }

    public static int getPropertyInteger(String str) {
        if (TextUtils.equals(PROPERTY_VIDEO_MEDIACODEC_CO_EXIST_MAX_CNT, str)) {
            return TPPlayerConfig.getVideoMediaCodecCoexistMaxCnt();
        }
        return 0;
    }

    public static int getSuggestedBitrate() {
        ITPDownloadProxy a;
        b a2 = g.a().a(TPPlayerConfig.getProxyServiceType());
        if (a2 == null || (a = a2.a()) == null) {
            return -1;
        }
        return com.tencent.thumbplayer.utils.b.a(a.getNativeInfo(0), -1);
    }

    public static String getThumbPlayerVersion() {
        return TPPlayerConfig.VERSION;
    }

    private static Future<Boolean> initAsyncWithWait() {
        return o.a().c().submit(new Callable<Boolean>() { // from class: com.tencent.thumbplayer.api.TPPlayerMgr.2
            @Override // java.util.concurrent.Callable
            public Boolean call() {
                TPPlayerMgr.initInAsyncThread();
                return true;
            }
        });
    }

    private static void initAsyncWithoutWait() {
        o.a().d().execute(new Runnable() { // from class: com.tencent.thumbplayer.api.TPPlayerMgr.3
            @Override // java.lang.Runnable
            public void run() {
                d dVar = new d();
                dVar.a();
                TPNativeKeyMapUtil.init();
                TPLogUtil.i(TPPlayerMgr.TAG, "Init SDK, initAsyncWithoutWait  nativeKeyMap init, times: " + dVar.c());
                TPThumbplayerCapabilityHelper.init(TPPlayerMgr.mAppContext, true);
                TPLogUtil.i(TPPlayerMgr.TAG, "Init SDK, initAsyncWithoutWait  TPThumbplayerCapabilityHelper init, times: " + dVar.e());
                i.a().a(TPPlayerMgr.mAppContext);
                new c().a();
                try {
                    TPNativePlayer.playerCoreNativeSetup(TPPlayerMgr.mAppContext);
                } catch (UnsupportedOperationException e) {
                    TPLogUtil.e(TPPlayerMgr.TAG, e);
                }
                TPLogUtil.i(TPPlayerMgr.TAG, "Init SDK, initAsyncWithoutWait all times: " + dVar.d());
            }
        });
    }

    public static void initInAsyncThread() {
        d dVar = new d();
        dVar.a();
        com.tencent.thumbplayer.b.a.b.a(mAppContext.getApplicationContext());
        TPLogUtil.i(TAG, "Init SDK, initAsyncWithWait  TPBeaconReportWrapper init, times: " + dVar.e());
        a.a(mAppContext);
        TPLogUtil.i(TAG, "Init SDK, initAsyncWithWait  TPDrmCapability init, times: " + dVar.e());
        TPLogUtil.i(TAG, "Init SDK, initAsyncWithWait all times: " + dVar.d());
    }

    public static void initSdk(Context context, String str, int i) {
        String str2;
        String str3;
        StringBuilder sb;
        if (mIsInit) {
            str2 = "Init SDK, has init sdk";
        } else {
            mIsInit = true;
            d dVar = new d();
            dVar.a();
            preInitSync(context, str, i);
            Future<Boolean> initAsyncWithWait = initAsyncWithWait();
            initSync();
            initAsyncWithoutWait();
            dVar.b();
            try {
                if (initAsyncWithWait.get().booleanValue()) {
                    TPLogUtil.i(TAG, "Init SDK, TPPlayer  wait initSync finish, times: " + dVar.c());
                }
            } catch (InterruptedException unused) {
                sb = new StringBuilder();
                str3 = "Init SDK, TPPlayer wait initSync InterruptedException, times: ";
                sb.append(str3);
                sb.append(dVar.c());
                TPLogUtil.e(TAG, sb.toString());
                str2 = "Init SDK, TPPlayer all times: " + dVar.d();
                TPLogUtil.i(TAG, str2);
            } catch (ExecutionException unused2) {
                sb = new StringBuilder();
                str3 = "Init SDK, TPPlayer wait initSync ExecutionException, times: ";
                sb.append(str3);
                sb.append(dVar.c());
                TPLogUtil.e(TAG, sb.toString());
                str2 = "Init SDK, TPPlayer all times: " + dVar.d();
                TPLogUtil.i(TAG, str2);
            }
            str2 = "Init SDK, TPPlayer all times: " + dVar.d();
        }
        TPLogUtil.i(TAG, str2);
    }

    private static void initSync() {
        d dVar = new d();
        dVar.a();
        try {
            TPNativeLibraryLoader.loadLibIfNeeded(mAppContext);
        } catch (UnsupportedOperationException e) {
            TPLogUtil.e(TAG, e);
        }
        TPLogUtil.i(TAG, "Init SDK, initSync so load times: " + dVar.d());
    }

    public static boolean isProxyEnable() {
        return TPPlayerConfig.isUseP2P() && TPDownloadProxyHelper.isReadyForPlay();
    }

    public static boolean isThumbPlayerEnable() {
        return TPNativeLibraryLoader.isLibLoaded();
    }

    public static void postEvent(int i, int i2, int i3, Object obj) {
        f.a(i, i2, i3, obj);
    }

    private static void preInitSync(Context context, String str, int i) {
        d dVar = new d();
        dVar.a();
        mAppContext = context.getApplicationContext();
        TPPlayerConfig.setGuid(str);
        TPPlayerConfig.setPlatform(i);
        TPNativeLog.setLogCallback(new ITPNativeLogCallback() { // from class: com.tencent.thumbplayer.api.TPPlayerMgr.1
            @Override // com.tencent.thumbplayer.core.common.ITPNativeLogCallback
            public void onPrintLog(int i2, String str2, String str3) {
                if (i2 == 0) {
                    TPLogUtil.v(str2, str3);
                } else if (i2 == 1) {
                    TPLogUtil.d(str2, str3);
                } else if (i2 == 2) {
                    TPLogUtil.i(str2, str3);
                } else if (i2 == 3) {
                    TPLogUtil.w(str2, str3);
                } else if (i2 == 4) {
                    TPLogUtil.e(str2, str3);
                }
            }
        });
        TPLogUtil.i(TAG, "Init SDK, preInitSync all times: " + dVar.d());
    }

    public static void setDataReportEnable(boolean z) {
        TPLogUtil.i(TAG, "set data report enable : " + z);
        TPPlayerConfig.setDataReportEnable(z);
        g.a().a(z);
    }

    public static void setDebugEnable(boolean z) {
        TPPlayerConfig.setDebugEnable(z);
    }

    public static void setHost(String str) {
        TPPlayerConfig.parseHostConfig(str);
    }

    public static void setLibLoader(final ITPModuleLoader iTPModuleLoader) {
        if (!mIsInit) {
            TPNativeLibraryLoader.setLibLoader(new ITPNativeLibraryExternalLoader() { // from class: com.tencent.thumbplayer.api.TPPlayerMgr.4
                @Override // com.tencent.thumbplayer.core.common.ITPNativeLibraryExternalLoader
                public boolean loadLib(String str, String str2) {
                    ITPModuleLoader iTPModuleLoader2 = iTPModuleLoader;
                    if (iTPModuleLoader2 == null) {
                        return false;
                    }
                    try {
                        iTPModuleLoader2.loadLibrary(str, str2);
                        return true;
                    } catch (Throwable th) {
                        TPLogUtil.e(TPPlayerMgr.TAG, th);
                        return false;
                    }
                }
            });
            TPDownloadProxyHelper.setNativeLibLoader(new ITPDLProxyNativeLibLoader() { // from class: com.tencent.thumbplayer.api.TPPlayerMgr.5
                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyNativeLibLoader
                public boolean loadLib(String str, String str2) {
                    ITPModuleLoader iTPModuleLoader2 = iTPModuleLoader;
                    if (iTPModuleLoader2 == null) {
                        return false;
                    }
                    try {
                        iTPModuleLoader2.loadLibrary(str, str2);
                        return true;
                    } catch (Throwable th) {
                        TPLogUtil.e(TPPlayerMgr.TAG, th);
                        return false;
                    }
                }
            });
            return;
        }
        throw new IllegalStateException("player has init");
    }

    public static void setOnLogListener(OnLogListener onLogListener) {
        TPLogUtil.setOnLogListener(onLogListener);
    }

    public static void setOutNetIP(String str) {
        TPPlayerConfig.setOutNetIp(str);
    }

    public static void setPropertyBool(String str, boolean z) {
        if (TextUtils.equals(PROPERTY_MEDIA_DRM_REUSE_BEFORE_INIT_SDK, str)) {
            TPPlayerConfig.setMediaDrmReuseEnable(z);
        }
    }

    public static void setPropertyInteger(String str, int i) {
        if (TextUtils.equals(PROPERTY_VIDEO_MEDIACODEC_CO_EXIST_MAX_CNT, str)) {
            TPPlayerConfig.setVideoMediaCodecCoexistMaxCnt(i);
        }
    }

    public static void setProxyEnable(boolean z) {
        TPPlayerConfig.setP2PEnable(z);
    }

    public static void setProxyMaxStorageSizeMB(long j) {
        TPLogUtil.i(TAG, "setProxyMaxStorageSize: " + j + " MB.");
        TPPlayerConfig.setProxyMaxStorageSizeMB(j);
        g.a().a(j);
    }

    public static void setProxyServiceType(int i) {
        TPPlayerConfig.setProxyServiceType(i);
    }

    public static void setTPProxyAdapter(ITPProxyAdapter iTPProxyAdapter) {
        TPDownloadProxyHelper.setTPProxyAdapter(iTPProxyAdapter);
    }

    public static void setUpcInfo(String str, int i) {
        TPPlayerConfig.setUserUpc(str);
        TPPlayerConfig.setUserUpcState(i);
        f.a(100003, i, 0, str);
    }

    public static void setUserInfo(String str, boolean z) {
        TPPlayerConfig.setUserUin(str);
        TPPlayerConfig.setUserIsVip(z);
    }
}
