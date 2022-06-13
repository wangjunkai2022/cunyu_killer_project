package com.tencent.thumbplayer.core.downloadproxy.api;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl;
import com.tencent.thumbplayer.core.downloadproxy.client.TPDownloadProxyClient;
import com.tencent.thumbplayer.core.downloadproxy.jni.TPDownloadProxyNative;
import com.tencent.thumbplayer.core.downloadproxy.service.TPDownloadProxyService;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public class TPDownloadProxyFactory {
    private static final String FILE_NAME = "TPDownloadProxyFactory";
    private static TPDownloadProxyFactoryAidl downloadProxyFactoryAidl;
    private static Object mMapObject = new Object();
    private static HashMap<Integer, ITPDownloadProxy> mvTPDownloadProxyMap = new HashMap<>();
    private static HashMap<Integer, TPDownloadProxyClient> mvTPDownloadProxyClientMap = new HashMap<>();
    private static boolean mUseService = false;
    private static boolean mCanUseAIDL = false;
    private static boolean mIsReadyForDownload = false;
    private static TPDLProxyBindServiceCallback mCallback = null;
    private static ServiceConnection mConnection = new ServiceConnection() { // from class: com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyFactory.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            TPDownloadProxyFactoryAidl unused = TPDownloadProxyFactory.downloadProxyFactoryAidl = TPDownloadProxyFactoryAidl.Stub.asInterface(iBinder);
            try {
                for (Map.Entry entry : TPDownloadProxyFactory.mvTPDownloadProxyClientMap.entrySet()) {
                    ((TPDownloadProxyClient) entry.getValue()).updateAidl(TPDownloadProxyFactory.downloadProxyFactoryAidl.getTPDownloadProxy(((Integer) entry.getKey()).intValue()));
                }
            } catch (Throwable th) {
                TPDLProxyLog.i("TPDownloadProxyFactory", 0, "tpdlnative", "onServiceConnected failed, error:" + th.toString());
            }
            TPDLProxyLog.i("TPDownloadProxyFactory", 0, "tpdlnative", "on service connected!");
            if (TPDownloadProxyFactory.downloadProxyFactoryAidl == null) {
                TPDLProxyLog.i("TPDownloadProxyFactory", 0, "tpdlnative", "on service connected, aidl is null!");
                return;
            }
            TPDLProxyLog.i("TPDownloadProxyFactory", 0, "tpdlnative", "on service connected, aidl not null!");
            TPDownloadProxyFactory.setCanUseAIDL(true);
            if (TPDownloadProxyFactory.mCallback != null) {
                TPDownloadProxyFactory.mCallback.onBindSuccess();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            TPDLProxyLog.i("TPDownloadProxyFactory", 0, "tpdlnative", "on service disconnected");
            TPDownloadProxyFactoryAidl unused = TPDownloadProxyFactory.downloadProxyFactoryAidl = null;
            TPDownloadProxyFactory.setCanUseAIDL(false);
            TPDownloadProxyFactory.ensurePlayManagerService(TPDownloadProxyFactory.mCallback);
        }
    };

    public static void setUseService(boolean z) {
        mUseService = z;
    }

    public static boolean getUseService() {
        return mUseService;
    }

    public static ITPDownloadProxy getTPDownloadProxy(int i) {
        ITPDownloadProxy iTPDownloadProxy;
        if (i <= 0) {
            TPDLProxyLog.e("TPDownloadProxyFactory", 0, "tpdlnative", "getTPDownloadProxy is invalid, serviceType:" + i);
            return null;
        } else if (!mUseService) {
            synchronized (mMapObject) {
                iTPDownloadProxy = mvTPDownloadProxyMap.get(Integer.valueOf(i));
                if (iTPDownloadProxy == null) {
                    iTPDownloadProxy = new TPDownloadProxy(i);
                    mvTPDownloadProxyMap.put(Integer.valueOf(i), iTPDownloadProxy);
                }
            }
            return iTPDownloadProxy;
        } else if (mCanUseAIDL) {
            try {
                return getTPDownloadProxyService(i);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxyFactory", 0, "tpdlnative", "getTPDownloadProxy failed, error:" + th.toString());
                return null;
            }
        } else {
            TPDLProxyLog.e("TPDownloadProxyFactory", 0, "tpdlnative", "getTPDownloadProxy failed, can't use aidl!");
            return null;
        }
    }

    private static synchronized ITPDownloadProxy getTPDownloadProxyService(int i) {
        TPDownloadProxyClient tPDownloadProxyClient;
        synchronized (TPDownloadProxyFactory.class) {
            if (downloadProxyFactoryAidl != null) {
                synchronized (mvTPDownloadProxyClientMap) {
                    tPDownloadProxyClient = mvTPDownloadProxyClientMap.get(Integer.valueOf(i));
                    if (tPDownloadProxyClient == null) {
                        try {
                            tPDownloadProxyClient = new TPDownloadProxyClient(downloadProxyFactoryAidl.getTPDownloadProxy(i));
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyFactory", 0, "tpdlnative", "getTPDownloadProxyService failed, error:" + th.toString());
                        }
                    }
                    mvTPDownloadProxyClientMap.put(Integer.valueOf(i), tPDownloadProxyClient);
                }
                return tPDownloadProxyClient;
            }
            TPDLProxyLog.e("TPDownloadProxyFactory", 0, "tpdlnative", "getTPDownloadProxyService failed, aidl is null!");
            return null;
        }
    }

    public static boolean ensurePlayManagerService(TPDLProxyBindServiceCallback tPDLProxyBindServiceCallback) {
        Context context = TPDownloadProxyHelper.getContext();
        if (context == null) {
            TPDLProxyLog.i("TPDownloadProxyFactory", 0, "tpdlnative", "ensurePlayManagerService get context null!");
            return false;
        }
        mCallback = tPDLProxyBindServiceCallback;
        StringBuilder sb = new StringBuilder();
        sb.append("ensurePlayManagerService ");
        sb.append(context == null ? "context is null" : "ok");
        TPDLProxyLog.i("TPDownloadProxyFactory", 0, "tpdlnative", sb.toString());
        try {
            Intent intent = new Intent(context, TPDownloadProxyService.class);
            context.startService(intent);
            if (!context.bindService(intent, mConnection, 1)) {
                TPDLProxyLog.e("TPDownloadProxyFactory", 0, "tpdlnative", "ensurePlayManagerService bind service failed!");
            }
            return true;
        } catch (Throwable th) {
            TPDLProxyLog.e("TPDownloadProxyFactory", 0, "tpdlnative", "ensurePlayManagerService failed, error:" + th.toString());
            return false;
        }
    }

    public static synchronized void setCanUseAIDL(boolean z) {
        synchronized (TPDownloadProxyFactory.class) {
            mCanUseAIDL = z;
        }
    }

    public static synchronized boolean getCanUseAIDL() {
        boolean z;
        synchronized (TPDownloadProxyFactory.class) {
            z = mCanUseAIDL;
        }
        return z;
    }

    public static synchronized boolean isReadyForPlay() {
        synchronized (TPDownloadProxyFactory.class) {
            boolean z = false;
            if (!mUseService) {
                boolean isReadyForWork = TPDownloadProxyNative.getInstance().isReadyForWork();
                TPDLProxyLog.i("TPDownloadProxyFactory", 0, "tpdlnative", "isReadyForPlay ret:" + isReadyForWork);
                return isReadyForWork;
            } else if (!mCanUseAIDL) {
                return false;
            } else {
                if (downloadProxyFactoryAidl != null) {
                    z = downloadProxyFactoryAidl.isReadyForPlay();
                }
                return z;
            }
        }
    }

    public static synchronized void setReadyForDownload(boolean z) {
        synchronized (TPDownloadProxyFactory.class) {
            mIsReadyForDownload = z;
        }
    }

    public static synchronized boolean isReadyForDownload() {
        synchronized (TPDownloadProxyFactory.class) {
            boolean z = false;
            if (!mUseService) {
                TPDLProxyLog.i("TPDownloadProxyFactory", 0, "tpdlnative", "isReadyForDownload ret:" + mIsReadyForDownload);
                return mIsReadyForDownload;
            } else if (!mCanUseAIDL) {
                return false;
            } else {
                if (downloadProxyFactoryAidl != null) {
                    z = downloadProxyFactoryAidl.isReadyForDownload();
                }
                return z;
            }
        }
    }

    public static synchronized boolean canUseService() {
        synchronized (TPDownloadProxyFactory.class) {
            if (!mUseService) {
                return true;
            }
            if (!mCanUseAIDL) {
                return false;
            }
            if (downloadProxyFactoryAidl == null) {
                return false;
            }
            downloadProxyFactoryAidl.isReadyForPlay();
            return true;
        }
    }

    public static String getNativeVersion() {
        if (!mUseService) {
            return TPDownloadProxyNative.getInstance().getNativeVersion();
        }
        if (!mCanUseAIDL) {
            return TPDownloadProxyNative.getInstance().getNativeVersion();
        }
        TPDownloadProxyFactoryAidl tPDownloadProxyFactoryAidl = downloadProxyFactoryAidl;
        if (tPDownloadProxyFactoryAidl != null) {
            try {
                return tPDownloadProxyFactoryAidl.getNativeVersion();
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxyFactory", 0, "tpdlnative", "getNativeVersion failed, error:" + th.toString());
            }
        }
        return TPDownloadProxyNative.getInstance().getNativeVersion();
    }
}
