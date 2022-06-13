package com.tencent.thumbplayer.core.downloadproxy.apiinner;

import android.net.Network;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.core.downloadproxy.jni.TPDownloadProxyNative;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPCGIRequester;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyUtils;
import com.tencent.thumbplayer.core.downloadproxy.utils.TVKThreadUtil;
import java.io.FileDescriptor;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class TPListenerManager {
    private static final String FILE_NAME = "TPListenerManager";
    private static final int MSG_CONFIG_URL = 2011;
    private static final int MSG_CURRENT_CDN_URL = 5;
    private static final int MSG_CURRENT_CDN_URL_INFO = 6;
    private static final int MSG_DOWNLOAD_PROTOCOL = 9;
    private static final int MSG_DOWNLOAD_STATUS = 8;
    private static final int MSG_ERROR = 4;
    private static final int MSG_FINISH = 3;
    private static final int MSG_MULTI_NETWORK = 2012;
    private static final int MSG_NOTIFY_FLV_PRELOAD_STATUS = 2009;
    private static final int MSG_NOTIFY_HTTP_HEADER = 2006;
    private static final int MSG_NOTIFY_LOSE_PACKAGE_CEHCK = 2004;
    private static final int MSG_NOTIFY_M3U8_CONTENT = 2007;
    private static final int MSG_NOTIFY_PLAYER_SWITCH_DEFINITION = 2003;
    private static final int MSG_NOTIFY_SOCKET_FD = 2008;
    private static final int MSG_PLAY_VIDEO_NOT_FOUND = 101;
    private static final int MSG_PREPARE_FINISH = 50;
    private static final int MSG_PROGRESS = 2;
    private static final int MSG_PROXY_CANCEL_READ_DATA = 202;
    private static final int MSG_PROXY_GET_CONTENT_TYPE = 205;
    private static final int MSG_PROXY_GET_DATA_FILE_PATH = 204;
    private static final int MSG_PROXY_GET_DATA_TOTAL_SIZE = 203;
    private static final int MSG_PROXY_READ_DATA = 201;
    private static final int MSG_PROXY_START_READ_DATA = 200;
    private static final int MSG_QUIC_DOWNLOAD_STATUS = 3001;
    private static final int MSG_REPORT_QUIC_QUALITY = 3002;
    private static final int MSG_REPORT_URL = 2010;
    private static final int MSG_URL_EXPIRED = 7;
    private static final int MSG_WUJI_CONFIG_URL = 2013;
    private static final String THREAD_NAME = "TVKDL-Listener";
    private ITPDownloadListener mITPDownloadListener;
    private Handler mMsgHandler;
    private HandlerThread mMsgHandlerThread;
    private Network mNetwork;
    private Map<Integer, ITPOfflineDownloadListener> mOfflineDownloadListenerMap;
    private Map<Integer, ITPPlayListener> mPlayListenerMap;
    private Map<Integer, ITPPreLoadListener> mPreLoadListenerMap;
    private Runnable updatePlayerInfo;
    private static final Object PLAY_LISTENER_MAP_MUTEX = new Object();
    private static final Object PRELOAD_LISTENER_MAP_MUTEX = new Object();
    private static final Object OFFLINE_LISTENER_MAP_MUTEX = new Object();

    private TPListenerManager() {
        this.mNetwork = null;
        this.mITPDownloadListener = null;
        this.mPlayListenerMap = new HashMap();
        this.mPreLoadListenerMap = new HashMap();
        this.mOfflineDownloadListenerMap = new HashMap();
        this.updatePlayerInfo = new Runnable() { // from class: com.tencent.thumbplayer.core.downloadproxy.apiinner.TPListenerManager.1
            @Override // java.lang.Runnable
            public void run() {
                Map map;
                synchronized (TPListenerManager.PLAY_LISTENER_MAP_MUTEX) {
                    map = TPListenerManager.this.mPlayListenerMap;
                }
                try {
                    for (Map.Entry entry : map.entrySet()) {
                        int intValue = ((Integer) entry.getKey()).intValue();
                        ITPPlayListener iTPPlayListener = (ITPPlayListener) entry.getValue();
                        TPDownloadProxyNative.getInstance().updateTaskInfo(intValue, TPDownloadProxyEnum.TASKINFO_PLAY_OFFSET, String.valueOf(iTPPlayListener.getCurrentPlayOffset()));
                        TPDownloadProxyNative.getInstance().updatePlayerPlayMsg(intValue, (int) (iTPPlayListener.getCurrentPosition() / 1000), (int) (iTPPlayListener.getPlayerBufferLength() / 1000), (int) (iTPPlayListener.getAdvRemainTime() / 1000));
                    }
                } finally {
                    try {
                    } finally {
                    }
                }
            }
        };
    }

    /* loaded from: classes2.dex */
    public static class SingletonHolder {
        private static final TPListenerManager INSTANCE = new TPListenerManager();

        private SingletonHolder() {
        }
    }

    public static TPListenerManager getInstance() {
        return SingletonHolder.INSTANCE;
    }

    public void initHandler() {
        if (this.mMsgHandlerThread == null) {
            this.mMsgHandlerThread = new HandlerThread(THREAD_NAME);
            this.mMsgHandlerThread.start();
            this.mMsgHandler = new Handler(this.mMsgHandlerThread.getLooper());
            this.mMsgHandler.postDelayed(this.updatePlayerInfo, 1000);
        }
    }

    public void setPlayListener(int i, ITPPlayListener iTPPlayListener) {
        if (i > 0 && iTPPlayListener != null) {
            synchronized (PLAY_LISTENER_MAP_MUTEX) {
                this.mPlayListenerMap.put(Integer.valueOf(i), iTPPlayListener);
            }
        }
    }

    public void removePlayListener(int i) {
        if (i > 0) {
            synchronized (PLAY_LISTENER_MAP_MUTEX) {
                this.mPlayListenerMap.remove(Integer.valueOf(i));
            }
        }
    }

    public void removeAllPlayListener() {
        synchronized (PLAY_LISTENER_MAP_MUTEX) {
            this.mPlayListenerMap.clear();
        }
    }

    public ITPPlayListener getPlaylistener(int i) {
        ITPPlayListener iTPPlayListener;
        synchronized (PLAY_LISTENER_MAP_MUTEX) {
            iTPPlayListener = this.mPlayListenerMap.get(Integer.valueOf(i));
        }
        return iTPPlayListener;
    }

    public void setPreLoadListener(int i, ITPPreLoadListener iTPPreLoadListener) {
        if (i > 0 && iTPPreLoadListener != null) {
            synchronized (PRELOAD_LISTENER_MAP_MUTEX) {
                this.mPreLoadListenerMap.put(Integer.valueOf(i), iTPPreLoadListener);
            }
        }
    }

    public void removePreLoadListener(int i) {
        if (i > 0) {
            synchronized (PRELOAD_LISTENER_MAP_MUTEX) {
                this.mPreLoadListenerMap.remove(Integer.valueOf(i));
            }
        }
    }

    public void removeAllPreLoadListener() {
        synchronized (PRELOAD_LISTENER_MAP_MUTEX) {
            this.mPreLoadListenerMap.clear();
        }
    }

    public ITPPreLoadListener getPreLoadListener(int i) {
        ITPPreLoadListener iTPPreLoadListener;
        synchronized (PRELOAD_LISTENER_MAP_MUTEX) {
            iTPPreLoadListener = this.mPreLoadListenerMap.get(Integer.valueOf(i));
        }
        return iTPPreLoadListener;
    }

    public void setOfflineDownloadListener(int i, ITPOfflineDownloadListener iTPOfflineDownloadListener) {
        if (i > 0 && iTPOfflineDownloadListener != null) {
            synchronized (OFFLINE_LISTENER_MAP_MUTEX) {
                this.mOfflineDownloadListenerMap.put(Integer.valueOf(i), iTPOfflineDownloadListener);
            }
        }
    }

    public void removeOfflineDownloadListener(int i) {
        if (i > 0) {
            synchronized (OFFLINE_LISTENER_MAP_MUTEX) {
                this.mOfflineDownloadListenerMap.remove(Integer.valueOf(i));
            }
        }
    }

    public void setNetwork(Network network) {
        TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network, set network");
        this.mNetwork = network;
    }

    public void setITPDownloadListener(ITPDownloadListener iTPDownloadListener) {
        this.mITPDownloadListener = iTPDownloadListener;
    }

    public ITPOfflineDownloadListener getOfflineDownloadListener(int i) {
        ITPOfflineDownloadListener iTPOfflineDownloadListener;
        synchronized (OFFLINE_LISTENER_MAP_MUTEX) {
            iTPOfflineDownloadListener = this.mOfflineDownloadListenerMap.get(Integer.valueOf(i));
        }
        return iTPOfflineDownloadListener;
    }

    public synchronized void handleCallbackMessage(final int i, final int i2, final Object obj, final Object obj2, final Object obj3, final Object obj4, final Object obj5) {
        if (2008 == i) {
            if (this.mNetwork == null) {
                TPDLProxyLog.e(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network, network is null");
                return;
            }
            String byteArrayToString = TPDLProxyUtils.byteArrayToString((byte[]) obj);
            int parseInt = Integer.parseInt(byteArrayToString);
            FileDescriptor fileDescriptor = new FileDescriptor();
            Field declaredField = FileDescriptor.class.getDeclaredField("descriptor");
            declaredField.setAccessible(true);
            declaredField.setInt(fileDescriptor, parseInt);
            TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network, bind begin, sock fd: " + parseInt);
            if (Build.VERSION.SDK_INT >= 23) {
                this.mNetwork.bindSocket(fileDescriptor);
                TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network, bind socket success, sock fd: " + parseInt);
            }
            TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "cellular_network, sock call back end, sock fd: " + parseInt + ", str_sock: " + byteArrayToString);
        } else if (i == 2010 || i == 2011 || i == 2013) {
            TPCGIRequester.getInstance().addRequestItem(TPDLProxyUtils.byteArrayToString((byte[]) obj), i);
        } else {
            this.mMsgHandler.post(new Runnable() { // from class: com.tencent.thumbplayer.core.downloadproxy.apiinner.TPListenerManager.2
                @Override // java.lang.Runnable
                public void run() {
                    TPListenerManager.this.dispatchCallbackMessage(i, i2, obj, obj2, obj3, obj4, obj5);
                }
            });
        }
    }

    public int handleIntCallbackMessage(int i, int i2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        ITPPlayListener playlistener = getPlaylistener(i2);
        if (playlistener == null) {
            return 0;
        }
        if (i == 200) {
            return playlistener.onStartReadData(i2, TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.objectToLong(obj2, 0), TPDLProxyUtils.objectToLong(obj3, -1));
        }
        if (i == 202) {
            return playlistener.onStopReadData(i2, TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.objectToInt(obj2, 0));
        }
        if (i == 201) {
            return playlistener.onReadData(i2, TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.objectToLong(obj2, 0), (long) TPDLProxyUtils.objectToInt(obj3, 0));
        }
        return 0;
    }

    public String handleStringCallbackMessage(int i, int i2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        ITPPlayListener playlistener = getPlaylistener(i2);
        if (playlistener != null) {
            if (i == 205) {
                return playlistener.getContentType(i2, TPDLProxyUtils.byteArrayToString((byte[]) obj));
            }
            if (i == 203) {
                return String.valueOf(playlistener.getDataTotalSize(i2, TPDLProxyUtils.byteArrayToString((byte[]) obj)));
            }
            if (i == 204) {
                return playlistener.getDataFilePath(i2, TPDLProxyUtils.byteArrayToString((byte[]) obj));
            }
        }
        return "";
    }

    public void dispatchCallbackMessage(int i, int i2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        ITPPlayListener playlistener = getPlaylistener(i2);
        if (playlistener != null) {
            dispatchPlayMessage(playlistener, i, i2, obj, obj2, obj3, obj4, obj5);
            return;
        }
        ITPPreLoadListener preLoadListener = getPreLoadListener(i2);
        if (preLoadListener != null) {
            dispatchPreLoadMessage(preLoadListener, i, i2, obj, obj2, obj3, obj4, obj5);
            return;
        }
        ITPOfflineDownloadListener offlineDownloadListener = getOfflineDownloadListener(i2);
        if (offlineDownloadListener != null) {
            dispatchOfflineDownloadMessage(offlineDownloadListener, i, i2, obj, obj2, obj3, obj4, obj5);
        } else if (this.mITPDownloadListener != null && i == 3002) {
            this.mITPDownloadListener.onQuicQualityReportUpdate(TPDLProxyUtils.byteArrayToString((byte[]) obj));
        }
    }

    private void dispatchPlayMessage(ITPPlayListener iTPPlayListener, int i, int i2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        Object obj6;
        if (iTPPlayListener != null) {
            if (i == 101) {
                String byteArrayToString = TPDLProxyUtils.byteArrayToString((byte[]) obj);
                long objectToLong = TPDLProxyUtils.objectToLong(obj2, 0);
                HashMap hashMap = new HashMap();
                if (!TextUtils.isEmpty(byteArrayToString)) {
                    hashMap.put("exttag", byteArrayToString);
                    hashMap.put("randnum", String.valueOf(objectToLong));
                }
                iTPPlayListener.onPlayCallback(1, hashMap, null, null, null);
            } else if (i == 2009) {
                int objectToInt = TPDLProxyUtils.objectToInt(obj, 0);
                if (obj2 == null) {
                    obj6 = null;
                } else {
                    obj6 = (byte[]) obj2;
                }
                iTPPlayListener.onPlayCallback(5, Integer.valueOf(objectToInt), obj6, TPDLProxyUtils.byteArrayToString((byte[]) obj3), Integer.valueOf(TPDLProxyUtils.objectToInt(obj4, 0)));
            } else if (i == 2012) {
                String byteArrayToString2 = TPDLProxyUtils.byteArrayToString((byte[]) obj);
                iTPPlayListener.onPlayCallback(7, byteArrayToString2, null, null, null);
                TPDLProxyLog.i(FILE_NAME, 0, ITPDLProxyLogListener.COMMON_TAG, "MSG_MULTI_NETWORK: " + byteArrayToString2);
            } else if (i == 3001) {
                iTPPlayListener.onPlayCallback(6, TPDLProxyUtils.byteArrayToString((byte[]) obj), null, null, null);
            } else if (i == 2003) {
                iTPPlayListener.onPlayCallback(2, TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.byteArrayToString((byte[]) obj2), Integer.valueOf(TPDLProxyUtils.objectToInt(obj3, 0)), null);
            } else if (i != 2004) {
                if (i == 2006) {
                    iTPPlayListener.onPlayCallback(3, TPDLProxyUtils.byteArrayToString((byte[]) obj), null, null, null);
                } else if (i != 2007) {
                    switch (i) {
                        case 2:
                            iTPPlayListener.onDownloadProgressUpdate(TPDLProxyUtils.objectToInt(obj, 0), TPDLProxyUtils.objectToInt(obj2, 0), TPDLProxyUtils.objectToLong(obj3, 0), TPDLProxyUtils.objectToLong(obj4, 0), TPDLProxyUtils.byteArrayToString((byte[]) obj5));
                            break;
                        case 3:
                            iTPPlayListener.onDownloadFinish();
                            break;
                        case 5:
                            iTPPlayListener.onDownloadCdnUrlUpdate(TPDLProxyUtils.byteArrayToString((byte[]) obj));
                            break;
                        case 6:
                            iTPPlayListener.onDownloadCdnUrlInfoUpdate(TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.byteArrayToString((byte[]) obj2), TPDLProxyUtils.byteArrayToString((byte[]) obj3), TPDLProxyUtils.byteArrayToString((byte[]) obj4));
                            break;
                        case 7:
                            String byteArrayToString3 = TPDLProxyUtils.byteArrayToString((byte[]) obj);
                            long objectToLong2 = TPDLProxyUtils.objectToLong(obj2, 0);
                            Map<String, String> hashMap2 = new HashMap<>();
                            if (!TextUtils.isEmpty(byteArrayToString3)) {
                                hashMap2.put("exttag", byteArrayToString3);
                                hashMap2.put("randnum", String.valueOf(objectToLong2));
                            }
                            iTPPlayListener.onDownloadCdnUrlExpired(hashMap2);
                            break;
                        case 8:
                            iTPPlayListener.onDownloadStatusUpdate(TPDLProxyUtils.objectToInt(obj, 0));
                            break;
                        case 9:
                            iTPPlayListener.onDownloadProtocolUpdate(TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.byteArrayToString((byte[]) obj2));
                            break;
                    }
                } else {
                    iTPPlayListener.onPlayCallback(4, TPDLProxyUtils.byteArrayToString((byte[]) obj), null, null, null);
                }
            } else {
                final int objectToInt2 = TPDLProxyUtils.objectToInt(obj2, 0);
                TVKThreadUtil.getScheduledExecutorServiceInstance().execute(new Runnable() { // from class: com.tencent.thumbplayer.core.downloadproxy.apiinner.TPListenerManager.3
                    @Override // java.lang.Runnable
                    public void run() {
                        TPDownloadProxyNative.getInstance().setUserData(TPDownloadProxyEnum.USER_LOSS_PACKAGE_INFO, TPDLProxyUtils.losePackageCheck(objectToInt2));
                    }
                });
            }
        }
    }

    private void dispatchPreLoadMessage(ITPPreLoadListener iTPPreLoadListener, int i, int i2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        if (iTPPreLoadListener != null) {
            if (i == 2) {
                iTPPreLoadListener.onPrepareDownloadProgressUpdate(TPDLProxyUtils.objectToInt(obj, 0), TPDLProxyUtils.objectToInt(obj2, 0), TPDLProxyUtils.objectToLong(obj3, 0), TPDLProxyUtils.objectToLong(obj4, 0), TPDLProxyUtils.byteArrayToString((byte[]) obj5));
            } else if (i == 4) {
                iTPPreLoadListener.onPrepareError(((Integer) obj).intValue(), ((Integer) obj2).intValue(), TPDLProxyUtils.byteArrayToString((byte[]) obj3));
            } else if (i == 50) {
                iTPPreLoadListener.onPrepareOK();
            }
        }
    }

    private void dispatchOfflineDownloadMessage(ITPOfflineDownloadListener iTPOfflineDownloadListener, int i, int i2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        if (iTPOfflineDownloadListener != null) {
            switch (i) {
                case 2:
                    iTPOfflineDownloadListener.onDownloadProgressUpdate(TPDLProxyUtils.objectToInt(obj, 0), TPDLProxyUtils.objectToInt(obj2, 0), TPDLProxyUtils.objectToLong(obj3, 0), TPDLProxyUtils.objectToLong(obj4, 0), TPDLProxyUtils.byteArrayToString((byte[]) obj5));
                    return;
                case 3:
                    iTPOfflineDownloadListener.onDownloadFinish();
                    return;
                case 4:
                    iTPOfflineDownloadListener.onDownloadError(((Integer) obj).intValue(), ((Integer) obj2).intValue(), TPDLProxyUtils.byteArrayToString((byte[]) obj3));
                    return;
                case 5:
                    iTPOfflineDownloadListener.onDownloadCdnUrlUpdate(TPDLProxyUtils.byteArrayToString((byte[]) obj));
                    return;
                case 6:
                    iTPOfflineDownloadListener.onDownloadCdnUrlInfoUpdate(TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.byteArrayToString((byte[]) obj2), TPDLProxyUtils.byteArrayToString((byte[]) obj3), TPDLProxyUtils.byteArrayToString((byte[]) obj4));
                    return;
                case 7:
                    String byteArrayToString = TPDLProxyUtils.byteArrayToString((byte[]) obj);
                    long objectToLong = TPDLProxyUtils.objectToLong(obj2, 0);
                    HashMap hashMap = new HashMap();
                    if (!TextUtils.isEmpty(byteArrayToString)) {
                        hashMap.put("exttag", byteArrayToString);
                        hashMap.put("randnum", String.valueOf(objectToLong));
                    }
                    iTPOfflineDownloadListener.onDownloadCdnUrlExpired(hashMap);
                    return;
                case 8:
                    iTPOfflineDownloadListener.onDownloadStatusUpdate(TPDLProxyUtils.objectToInt(obj, 0));
                    return;
                case 9:
                    iTPOfflineDownloadListener.onDownloadProtocolUpdate(TPDLProxyUtils.byteArrayToString((byte[]) obj), TPDLProxyUtils.byteArrayToString((byte[]) obj2));
                    return;
                default:
                    return;
            }
        }
    }
}
