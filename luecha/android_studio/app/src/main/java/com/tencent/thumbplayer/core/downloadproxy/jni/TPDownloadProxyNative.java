package com.tencent.thumbplayer.core.downloadproxy.jni;

import android.content.Context;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyNativeLibLoader;
import com.tencent.thumbplayer.core.downloadproxy.apiinner.TPListenerManager;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyUtils;

/* loaded from: classes5.dex */
public class TPDownloadProxyNative {
    private static final String FILE_NAME = "TPDownloadProxyNative";
    private static Context appContext;
    private static boolean isLoadDownloadProxySucceed;
    private ITPDLProxyNativeLibLoader mLibLoader;

    public native int checkResourceStatus(String str, String str2, int i);

    public native int createDownloadTask(int i, String str, int i2, int i3);

    public native int deInitService(int i);

    public native int deleteCache(String str, String str2);

    public native byte[] getClipPlayUrl(int i, int i2, int i3);

    public native byte[] getErrorCodeStr(int i);

    public native byte[] getHLSOfflineExttag(String str, String str2, int i, long j);

    public native byte[] getNativeInfo(int i);

    public native long getResourceSize(String str, String str2);

    public native byte[] getVersion();

    public native int initService(int i, String str, String str2, String str3);

    public native boolean isNativeReadyForWork();

    public native int pauseDownload(int i);

    public native void pushEvent(int i);

    public native int resumeDownload(int i);

    public native int setClipInfo(int i, int i2, String str, int i3, String str2, String str3, String str4);

    public native int setMaxStorageSizeMB(int i, long j);

    public native void setPlayerState(int i, int i2);

    public native void setUserData(String str, String str2);

    public native int startDownload(int i);

    public native int stopAllDownload(int i);

    public native int stopDownload(int i);

    public native void updatePlayerPlayMsg(int i, int i2, int i3, int i4);

    public native int updateStoragePath(int i, String str);

    public native void updateTaskInfo(int i, String str, String str2);

    public native long verifyOfflineCacheSync(String str, int i, String str2, String str3);

    private TPDownloadProxyNative() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class SingletonHolder {
        private static final TPDownloadProxyNative INSTANCE = new TPDownloadProxyNative();

        private SingletonHolder() {
        }
    }

    public static TPDownloadProxyNative getInstance() {
        return SingletonHolder.INSTANCE;
    }

    private static void nativeMessageCallback(int i, int i2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        TPListenerManager.getInstance().handleCallbackMessage(i, i2, obj, obj2, obj3, obj4, obj5);
    }

    private static int nativeIntMessageCallback(int i, int i2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return TPListenerManager.getInstance().handleIntCallbackMessage(i, i2, obj, obj2, obj3, obj4, obj5);
    }

    private static String nativeStringMessageCallback(int i, int i2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return TPListenerManager.getInstance().handleStringCallbackMessage(i, i2, obj, obj2, obj3, obj4, obj5);
    }

    private static void nativeLogCallback(int i, byte[] bArr, int i2, byte[] bArr2, byte[] bArr3) {
        if (i == 6) {
            TPDLProxyLog.e(TPDLProxyUtils.byteArrayToString(bArr), i2, TPDLProxyUtils.byteArrayToString(bArr2), TPDLProxyUtils.byteArrayToString(bArr3));
        } else if (i == 5) {
            TPDLProxyLog.w(TPDLProxyUtils.byteArrayToString(bArr), i2, TPDLProxyUtils.byteArrayToString(bArr2), TPDLProxyUtils.byteArrayToString(bArr3));
        } else if (i == 4) {
            TPDLProxyLog.i(TPDLProxyUtils.byteArrayToString(bArr), i2, TPDLProxyUtils.byteArrayToString(bArr2), TPDLProxyUtils.byteArrayToString(bArr3));
        } else if (i == 3) {
            TPDLProxyLog.d(TPDLProxyUtils.byteArrayToString(bArr), i2, TPDLProxyUtils.byteArrayToString(bArr2), TPDLProxyUtils.byteArrayToString(bArr3));
        } else {
            TPDLProxyLog.i(TPDLProxyUtils.byteArrayToString(bArr), i2, TPDLProxyUtils.byteArrayToString(bArr2), TPDLProxyUtils.byteArrayToString(bArr3));
        }
    }

    public boolean isNativeLoaded() {
        if (!isLoadDownloadProxySucceed) {
            try {
                if (this.mLibLoader != null) {
                    isLoadDownloadProxySucceed = this.mLibLoader.loadLib("DownloadProxy", getNativeVersion());
                    StringBuilder sb = new StringBuilder();
                    sb.append("third module so load ret:");
                    sb.append(isLoadDownloadProxySucceed ? "0" : "1");
                    TPDLProxyLog.i("TPDownloadProxyNative", 0, "tpdlnative", sb.toString());
                }
            } catch (Throwable th) {
                isLoadDownloadProxySucceed = false;
                TPDLProxyLog.e("TPDownloadProxyNative", 0, "tpdlnative", "third module so load failed, error:" + th.toString());
            }
            try {
                if (!isLoadDownloadProxySucceed) {
                    System.loadLibrary("DownloadProxy");
                    isLoadDownloadProxySucceed = true;
                    TPDLProxyLog.i("TPDownloadProxyNative", 0, "tpdlnative", "system so load success!");
                }
            } catch (Throwable th2) {
                isLoadDownloadProxySucceed = false;
                TPDLProxyLog.e("TPDownloadProxyNative", 0, "tpdlnative", "system so load failed, error:" + th2.toString());
            }
        }
        return isLoadDownloadProxySucceed;
    }

    public String getNativeVersion() {
        String byteArrayToString = isLoadDownloadProxySucceed ? TPDLProxyUtils.byteArrayToString(getVersion()) : "1.8.0.00751";
        TPDLProxyLog.i("TPDownloadProxyNative", 0, "tpdlnative", "get native version:" + byteArrayToString);
        return byteArrayToString;
    }

    public void setLibLoader(ITPDLProxyNativeLibLoader iTPDLProxyNativeLibLoader) {
        TPDLProxyLog.i("TPDownloadProxyNative", 0, "tpdlnative", "set third module so loader!!!");
        this.mLibLoader = iTPDLProxyNativeLibLoader;
    }

    public void setAppContext(Context context) {
        if (context != null) {
            appContext = context.getApplicationContext();
        }
    }

    public Context getAppContext() {
        return appContext;
    }

    public boolean isReadyForWork() {
        if (isLoadDownloadProxySucceed) {
            return isNativeReadyForWork();
        }
        return false;
    }
}
