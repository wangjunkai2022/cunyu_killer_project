package com.tencent.thumbplayer.core.downloadproxy.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Build;
import android.text.TextUtils;
import com.tencent.thumbplayer.core.downloadproxy.apiinner.TPListenerManager;
import com.tencent.thumbplayer.core.downloadproxy.jni.TPDownloadProxyNative;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLFileSystem;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyUtils;
import java.io.File;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPDownloadProxy implements ITPDownloadProxy {
    private static final String FILE_NAME = "TPDownloadProxy";
    private int mServiceType;
    private String mCurrentStoragePath = "";
    private boolean mIsInit = false;
    private Context mContext = null;

    public TPDownloadProxy(int i) {
        this.mServiceType = i;
    }

    private void getCellularNetwork(Context context) {
        if (context == null) {
            TPDLProxyLog.i("TPDownloadProxy", 0, "tpdlnative", "cellular_network, context is null, can not set interface 4g");
        } else if (Build.VERSION.SDK_INT >= 23) {
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addCapability(12);
            builder.addTransportType(0);
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                TPDLProxyLog.i("TPDownloadProxy", 0, "tpdlnative", "cellular_network, connectivityManager is null, can not set interface 4g");
            } else {
                connectivityManager.requestNetwork(builder.build(), new ConnectivityManager.NetworkCallback() { // from class: com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxy.1
                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public void onAvailable(Network network) {
                        super.onAvailable(network);
                        TPListenerManager.getInstance().setNetwork(network);
                        long networkHandle = network.getNetworkHandle();
                        TPDLProxyLog.i("TPDownloadProxy", 0, "tpdlnative", "cellular_network, net_id_t: " + networkHandle);
                        TPDownloadProxy.this.setUserData("cellular_interface_id", Long.valueOf(networkHandle));
                    }

                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public void onLost(Network network) {
                        super.onLost(network);
                        TPDownloadProxy.this.setUserData("cellular_interface_id", 0);
                        TPDLProxyLog.i("TPDownloadProxy", 0, "tpdlnative", "cellular_network failed");
                    }
                });
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public synchronized int init(Context context, TPDLProxyInitParam tPDLProxyInitParam) {
        int i;
        File properCacheDirectory;
        if (this.mIsInit) {
            TPDLProxyLog.i("TPDownloadProxy", 0, "tpdlnative", "download already init");
            return 0;
        }
        TPDownloadProxyNative.getInstance().setAppContext(context);
        if (!TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            return -1;
        }
        if (!TextUtils.isEmpty(tPDLProxyInitParam.getAppVer())) {
            setUserData("app_version_name", tPDLProxyInitParam.getAppVer());
        }
        if (tPDLProxyInitParam.getPlatform() > 0) {
            setUserData("platform", Integer.valueOf(tPDLProxyInitParam.getPlatform()));
        }
        if (!TextUtils.isEmpty(tPDLProxyInitParam.getGuid())) {
            setUserData("guid", tPDLProxyInitParam.getGuid());
        }
        String cacheDir = tPDLProxyInitParam.getCacheDir();
        if (!(!TextUtils.isEmpty(cacheDir) || context == null || (properCacheDirectory = TPDLFileSystem.getProperCacheDirectory(context, "download")) == null)) {
            cacheDir = properCacheDirectory.getAbsolutePath();
        }
        TPListenerManager.getInstance().initHandler();
        if (!TextUtils.isEmpty(tPDLProxyInitParam.getDataDir()) || TextUtils.isEmpty(this.mCurrentStoragePath)) {
            if (!TextUtils.isEmpty(tPDLProxyInitParam.getDataDir())) {
                this.mCurrentStoragePath = tPDLProxyInitParam.getDataDir();
            }
            i = TPDownloadProxyNative.getInstance().initService(this.mServiceType, cacheDir, tPDLProxyInitParam.getDataDir(), tPDLProxyInitParam.getConfigStr());
        } else {
            i = TPDownloadProxyNative.getInstance().initService(this.mServiceType, cacheDir, this.mCurrentStoragePath, tPDLProxyInitParam.getConfigStr());
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        AnonymousClass2 r2 = new BroadcastReceiver() { // from class: com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxy.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if ("android.intent.action.SCREEN_OFF".equals(action)) {
                    TPDownloadProxy.this.pushEvent(20);
                } else if ("android.intent.action.SCREEN_ON".equals(action)) {
                    TPDownloadProxy.this.pushEvent(19);
                }
            }
        };
        if (context != null) {
            context.registerReceiver(r2, intentFilter);
        }
        if (i == 0) {
            this.mIsInit = true;
        }
        this.mContext = context;
        return i;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int deinit() {
        if (!TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            return -1;
        }
        try {
            this.mIsInit = false;
            return TPDownloadProxyNative.getInstance().deInitService(this.mServiceType);
        } catch (Throwable th) {
            TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "deinit failed, error:" + th.toString());
            return -1;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void setLogListener(ITPDLProxyLogListener iTPDLProxyLogListener) {
        TPDLProxyLog.setLogListener(this.mServiceType, iTPDLProxyLogListener);
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startPlay(String str, TPDownloadParam tPDownloadParam, ITPPlayListener iTPPlayListener) {
        Throwable th;
        int dlType = tPDownloadParam.getDlType();
        if (tPDownloadParam.isOffline()) {
            dlType += 300;
        }
        int i = -1;
        if (!TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            return -1;
        }
        try {
            if (tPDownloadParam.isAdaptive() && (dlType == 3 || dlType == 5)) {
                dlType += 400;
            }
            int createDownloadTask = TPDownloadProxyNative.getInstance().createDownloadTask(this.mServiceType, str, dlType, tPDownloadParam.getClipCount());
            try {
                if (!TextUtils.isEmpty(tPDownloadParam.getKeyid())) {
                    str = tPDownloadParam.getKeyid();
                }
                TPDownloadProxyNative.getInstance().setClipInfo(createDownloadTask, tPDownloadParam.getClipNo(), str, dlType, tPDownloadParam.getCdnUrls(), tPDownloadParam.getSavaPath(), tPDownloadParam.getExtraJsonInfo());
                TPListenerManager.getInstance().setPlayListener(createDownloadTask, iTPPlayListener);
                return createDownloadTask;
            } catch (Throwable th2) {
                th = th2;
                i = createDownloadTask;
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "startPlay failed, error:" + th.toString());
                return i;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startClipPlay(String str, int i, ITPPlayListener iTPPlayListener) {
        int i2 = -1;
        if (!TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            return -1;
        }
        try {
            i2 = TPDownloadProxyNative.getInstance().createDownloadTask(this.mServiceType, str, 2, i);
            TPListenerManager.getInstance().setPlayListener(i2, iTPPlayListener);
            return i2;
        } catch (Throwable th) {
            TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "startClipPlay failed, error:" + th.toString());
            return i2;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public boolean setClipInfo(int i, int i2, String str, TPDownloadParam tPDownloadParam) {
        int dlType = tPDownloadParam.getDlType();
        if (tPDownloadParam.isOffline()) {
            dlType += 300;
        }
        if (!TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            return false;
        }
        try {
            if (TPDownloadProxyNative.getInstance().setClipInfo(i, i2, str, dlType, tPDownloadParam.getCdnUrls(), tPDownloadParam.getSavaPath(), tPDownloadParam.getExtraJsonInfo()) >= 0) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "setClipInfo failed, error:" + th.toString());
            return false;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public String getPlayUrl(int i, int i2) {
        String str = "";
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                str = TPDLProxyUtils.byteArrayToString(TPDownloadProxyNative.getInstance().getClipPlayUrl(i, 1, i2));
                if (i2 != 2) {
                    TPDownloadProxyNative.getInstance().startDownload(i);
                }
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "getPlayUrl failed, error:" + th.toString());
            }
        }
        return str;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public String getClipPlayUrl(int i, int i2, int i3) {
        String str = "";
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                str = TPDLProxyUtils.byteArrayToString(TPDownloadProxyNative.getInstance().getClipPlayUrl(i, i2, i3));
                if (i3 != 2) {
                    TPDownloadProxyNative.getInstance().startDownload(i);
                }
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "getClipPlayUrl failed, error:" + th.toString());
            }
        }
        return str;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public String getPlayErrorCodeStr(int i) {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDLProxyUtils.byteArrayToString(TPDownloadProxyNative.getInstance().getErrorCodeStr(i));
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "getPlayErrorCodeStr failed, error:" + th.toString());
            }
        }
        return "";
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void stopPlay(int i) {
        if (i > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().stopDownload(i);
                TPListenerManager.getInstance().removePlayListener(i);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "stopPlay failed, error:" + th.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int pauseDownload(int i) {
        if (i > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDownloadProxyNative.getInstance().pauseDownload(i);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "pauseDownload failed, error:" + th.toString());
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int resumeDownload(int i) {
        if (i > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDownloadProxyNative.getInstance().resumeDownload(i);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "resumeDownload failed, error:" + th.toString());
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startPreload(String str, TPDownloadParam tPDownloadParam, ITPPreLoadListener iTPPreLoadListener) {
        Throwable th;
        int i = -1;
        if (!TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            return -1;
        }
        try {
            int dlType = tPDownloadParam.getDlType() + 200;
            int createDownloadTask = TPDownloadProxyNative.getInstance().createDownloadTask(this.mServiceType, str, dlType, tPDownloadParam.getClipCount());
            try {
                TPListenerManager.getInstance().setPreLoadListener(createDownloadTask, iTPPreLoadListener);
                if (!TextUtils.isEmpty(tPDownloadParam.getKeyid())) {
                    str = tPDownloadParam.getKeyid();
                }
                TPDownloadProxyNative.getInstance().setClipInfo(createDownloadTask, tPDownloadParam.getClipNo(), str, dlType, tPDownloadParam.getCdnUrls(), tPDownloadParam.getSavaPath(), tPDownloadParam.getExtraJsonInfo());
                TPDownloadProxyNative.getInstance().startDownload(createDownloadTask);
                return createDownloadTask;
            } catch (Throwable th2) {
                th = th2;
                i = createDownloadTask;
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "startPreload failed, error:" + th.toString());
                return i;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startClipPreload(String str, int i, ITPPreLoadListener iTPPreLoadListener) {
        int i2 = -1;
        if (!TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            return -1;
        }
        try {
            i2 = TPDownloadProxyNative.getInstance().createDownloadTask(this.mServiceType, str, 202, i);
            TPListenerManager.getInstance().setPreLoadListener(i2, iTPPreLoadListener);
            return i2;
        } catch (Throwable th) {
            TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "startClipPreload failed, error:" + th.toString());
            return i2;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void stopPreload(int i) {
        if (i > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().stopDownload(i);
                TPListenerManager.getInstance().removePreLoadListener(i);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "stopPreload failed, error:" + th.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startOfflineDownload(String str, TPDownloadParam tPDownloadParam, ITPOfflineDownloadListener iTPOfflineDownloadListener) {
        Throwable th;
        int i = -1;
        if (!TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            return -1;
        }
        try {
            int dlType = tPDownloadParam.getDlType() + 100;
            int createDownloadTask = TPDownloadProxyNative.getInstance().createDownloadTask(this.mServiceType, str, dlType, tPDownloadParam.getClipCount());
            try {
                TPListenerManager.getInstance().setOfflineDownloadListener(createDownloadTask, iTPOfflineDownloadListener);
                if (!TextUtils.isEmpty(tPDownloadParam.getKeyid())) {
                    str = tPDownloadParam.getKeyid();
                }
                TPDownloadProxyNative.getInstance().setClipInfo(createDownloadTask, tPDownloadParam.getClipNo(), str, dlType, tPDownloadParam.getCdnUrls(), tPDownloadParam.getSavaPath(), tPDownloadParam.getExtraJsonInfo());
                return createDownloadTask;
            } catch (Throwable th2) {
                th = th2;
                i = createDownloadTask;
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "stopOfflineDownload failed, error:" + th.toString());
                return i;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int startClipOfflineDownload(String str, int i, ITPOfflineDownloadListener iTPOfflineDownloadListener) {
        int i2 = -1;
        if (!TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            return -1;
        }
        try {
            i2 = TPDownloadProxyNative.getInstance().createDownloadTask(this.mServiceType, str, 102, i);
            TPListenerManager.getInstance().setOfflineDownloadListener(i2, iTPOfflineDownloadListener);
            return i2;
        } catch (Throwable th) {
            TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "startClipOfflineDownload failed, error:" + th.toString());
            return i2;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void stopOfflineDownload(int i) {
        if (i > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().stopDownload(i);
                TPListenerManager.getInstance().removeOfflineDownloadListener(i);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "stopOfflineDownload failed, error:" + th.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void startTask(int i) {
        if (i > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().startDownload(i);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "startTask failed, error:" + th.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void updateStoragePath(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                this.mCurrentStoragePath = str;
                TPDownloadProxyNative.getInstance().updateStoragePath(this.mServiceType, str);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "updateStoragePath failed, error:" + th.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void setMaxStorageSizeMB(long j) {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().setMaxStorageSizeMB(this.mServiceType, j);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "setMaxStorageSizeMB failed, error:" + th.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int removeStorageCache(String str) {
        if (!TextUtils.isEmpty(str) && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDownloadProxyNative.getInstance().deleteCache(this.mCurrentStoragePath, str);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "deleteCache failed, error:" + th.toString());
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void setUserData(String str, Object obj) {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                if (str.equalsIgnoreCase("app_version_name")) {
                    TPDownloadProxyNative.getInstance().setUserData("app_version_name", (String) obj);
                } else if (str.equalsIgnoreCase("platform")) {
                    TPDownloadProxyNative.getInstance().setUserData("platform", obj.toString());
                } else if (str.equalsIgnoreCase("guid")) {
                    TPDownloadProxyNative.getInstance().setUserData("guid", (String) obj);
                } else if (str.equalsIgnoreCase("qq_is_vip")) {
                    TPDownloadProxyNative.getInstance().setUserData("qq_is_vip", ((Boolean) obj).booleanValue() ? "1" : "0");
                } else if (str.equalsIgnoreCase("carrier_pesudo_code")) {
                    TPDownloadProxyNative.getInstance().setUserData("carrier_pesudo_code", (String) obj);
                } else if (str.equalsIgnoreCase("carrier_pesudo_state")) {
                    TPDownloadProxyNative.getInstance().setUserData("carrier_pesudo_state", obj.toString());
                } else if (str.equalsIgnoreCase("proxy_config")) {
                    TPDownloadProxyNative.getInstance().setUserData("proxy_config", obj.toString());
                } else {
                    TPDownloadProxyNative.getInstance().setUserData(str, obj.toString());
                }
            } catch (Throwable th) {
                while (true) {
                    TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "setUserData failed, error:" + th.toString());
                    return;
                }
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public String getNativeInfo(int i) {
        if (!TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            return null;
        }
        try {
            return TPDLProxyUtils.byteArrayToString(TPDownloadProxyNative.getInstance().getNativeInfo(i));
        } catch (Throwable th) {
            TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "getNativeInfo failed, error:" + th.toString());
            return null;
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public int checkResourceStatus(String str, String str2, int i) {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDownloadProxyNative.getInstance().checkResourceStatus(str, str2, i);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "checkResourceStatus failed, error:" + th.toString());
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public long getResourceSize(String str, String str2) {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                return TPDownloadProxyNative.getInstance().getResourceSize(str, str2);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "getResourceSize failed, error:" + th.toString());
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void pushEvent(int i) {
        if (TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().pushEvent(i);
                if (9 == i) {
                    TPDLProxyLog.i("TPDownloadProxy", 0, "tpdlnative", "cellular_network, update net interface info");
                    getCellularNetwork(this.mContext);
                }
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "cellular_network pushEvent failed, error:" + th.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void setPlayState(int i, int i2) {
        if (i > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().setPlayerState(i, i2);
                if (i2 == 1) {
                    TPDownloadProxyNative.getInstance().updateTaskInfo(i, "taskinfo_play_offset", String.valueOf(TPListenerManager.getInstance().getPlaylistener(i).getCurrentPlayOffset()));
                    TPDownloadProxyNative.getInstance().updatePlayerPlayMsg(i, (int) (TPListenerManager.getInstance().getPlaylistener(i).getCurrentPosition() / 1000), (int) (TPListenerManager.getInstance().getPlaylistener(i).getPlayerBufferLength() / 1000), (int) (TPListenerManager.getInstance().getPlaylistener(i).getAdvRemainTime() / 1000));
                }
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "setPlayState failed, error:" + th.toString());
            }
        }
    }

    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy
    public void updateTaskInfo(int i, String str, Object obj) {
        if (i > 0 && TPDownloadProxyNative.getInstance().isNativeLoaded()) {
            try {
                TPDownloadProxyNative.getInstance().updateTaskInfo(i, str, obj.toString());
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxy", 0, "tpdlnative", "updateTaskInfo failed, error:" + th.toString());
            }
        }
    }
}
