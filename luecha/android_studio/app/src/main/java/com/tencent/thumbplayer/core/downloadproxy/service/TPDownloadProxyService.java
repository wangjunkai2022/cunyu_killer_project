package com.tencent.thumbplayer.core.downloadproxy.service;

import android.app.ActivityManager;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl;
import com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPlayListenerAidl;
import com.tencent.thumbplayer.core.downloadproxy.aidl.ITPPreLoadListenerAidl;
import com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadParamAidl;
import com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDLProxyInitParam;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadParam;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyFactory;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyHelper;
import com.tencent.thumbplayer.core.downloadproxy.apiinner.TPListenerManager;
import com.tencent.thumbplayer.core.downloadproxy.jni.TPDownloadProxyNative;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyLog;
import com.tencent.thumbplayer.core.downloadproxy.utils.TPDLProxyUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPDownloadProxyService extends Service {
    private static final String FILE_NAME = "TPDownloadProxyService";
    private int pid = -1;
    private TPDownloadProxyFactoryAidl.Stub downloadProxyFactory = null;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (this.downloadProxyFactory == null) {
            this.downloadProxyFactory = new DownloadProxyFactory();
        }
        isExistMainProcess();
        return this.downloadProxyFactory;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        TPDLProxyLog.i("TPDownloadProxyService", 0, "tpdlnative", "on unbind!");
        super.onUnbind(intent);
        if (isExistMainProcess()) {
            return true;
        }
        try {
            TPDownloadProxyNative.getInstance().stopAllDownload(3);
            TPListenerManager.getInstance().removeAllPlayListener();
            TPListenerManager.getInstance().removeAllPreLoadListener();
            return true;
        } catch (Throwable th) {
            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", th.toString());
            return true;
        }
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        TPDLProxyLog.i("TPDownloadProxyService", 0, "tpdlnative", "on rebind!");
        isExistMainProcess();
        super.onRebind(intent);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        return 2;
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private class DownloadProxyFactory extends TPDownloadProxyFactoryAidl.Stub {
        private HashMap<Integer, ITPDownloadProxyAidl> mvTPDownloadProxyMap;

        private DownloadProxyFactory() {
            this.mvTPDownloadProxyMap = new HashMap<>();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl
        public synchronized ITPDownloadProxyAidl getTPDownloadProxy(int i) {
            ITPDownloadProxyAidl iTPDownloadProxyAidl;
            iTPDownloadProxyAidl = this.mvTPDownloadProxyMap.get(Integer.valueOf(i));
            if (iTPDownloadProxyAidl == null) {
                iTPDownloadProxyAidl = new DownloadProxy(i);
                this.mvTPDownloadProxyMap.put(Integer.valueOf(i), iTPDownloadProxyAidl);
            }
            return iTPDownloadProxyAidl;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl
        public boolean isReadyForPlay() {
            return TPDownloadProxyFactory.isReadyForPlay();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl
        public boolean isReadyForDownload() {
            return TPDownloadProxyFactory.isReadyForDownload();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.TPDownloadProxyFactoryAidl
        public String getNativeVersion() {
            return TPDownloadProxyFactory.getNativeVersion();
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private class DownloadProxy extends ITPDownloadProxyAidl.Stub {
        private ITPDownloadProxy downloadProxy;

        public DownloadProxy(int i) {
            this.downloadProxy = null;
            this.downloadProxy = TPDownloadProxyFactory.getTPDownloadProxy(i);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public int init(String str) {
            try {
                TPDLProxyInitParam tPDLProxyInitParam = (TPDLProxyInitParam) TPDLProxyUtils.serializeToObject(str);
                if (tPDLProxyInitParam != null) {
                    return this.downloadProxy.init(TPDownloadProxyHelper.getContext(), tPDLProxyInitParam);
                }
                TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "param is null");
                return -1;
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "init failed, error:" + th.toString());
                return -2;
            }
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public int startPlay(String str, TPDownloadParamAidl tPDownloadParamAidl, final ITPPlayListenerAidl iTPPlayListenerAidl) {
            try {
                return this.downloadProxy.startPlay(str, new TPDownloadParam(tPDownloadParamAidl.getUrlList(), tPDownloadParamAidl.getDlType(), tPDownloadParamAidl.getExtInfoMap()), new ITPPlayListener() { // from class: com.tencent.thumbplayer.core.downloadproxy.service.TPDownloadProxyService.DownloadProxy.1
                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public void onDownloadProgressUpdate(int i, int i2, long j, long j2, String str2) {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                iTPPlayListenerAidl.onDownloadProgressUpdate(i, i2, j, j2, str2);
                            }
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownlaodProgressUpdate failed, error:" + th.toString());
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public void onDownloadFinish() {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                iTPPlayListenerAidl.onDownloadFinish();
                            }
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownlaodFinish failed, error:" + th.toString());
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public void onDownloadError(int i, int i2, String str2) {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                iTPPlayListenerAidl.onDownloadError(i, i2, str2);
                            }
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownloadError failed, error:" + th.toString());
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public Object onPlayCallback(int i, Object obj, Object obj2, Object obj3, Object obj4) {
                        try {
                            ArrayList arrayList = new ArrayList();
                            if (obj != null) {
                                arrayList.add(obj);
                            }
                            if (obj2 != null) {
                                arrayList.add(obj2);
                            }
                            if (obj3 != null) {
                                arrayList.add(obj3);
                            }
                            if (iTPPlayListenerAidl == null) {
                                return null;
                            }
                            iTPPlayListenerAidl.onPlayCallback(i, arrayList);
                            return null;
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onPlayCallback failed, error:" + th.toString());
                            return null;
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public void onDownloadCdnUrlUpdate(String str2) {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                iTPPlayListenerAidl.onDownloadCdnUrlUpdate(str2);
                            }
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownloadCdnUrlUpdate failed, error:" + th.toString());
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public void onDownloadCdnUrlInfoUpdate(String str2, String str3, String str4, String str5) {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                iTPPlayListenerAidl.onDownloadCdnUrlInfoUpdate(str2, str3, str4, str5);
                            }
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownloadCdnUrlInfoUpdate failed, error:" + th.toString());
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public void onDownloadCdnUrlExpired(Map<String, String> map) {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                iTPPlayListenerAidl.onDownloadCdnUrlExpired(map);
                            }
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownloadCdnUrlExpired failed, error:" + th.toString());
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public void onDownloadStatusUpdate(int i) {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                iTPPlayListenerAidl.onDownloadStatusUpdate(i);
                            }
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownloadStatusUpdate failed, error:" + th.toString());
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public void onDownloadProtocolUpdate(String str2, String str3) {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                iTPPlayListenerAidl.onDownloadProtocolUpdate(str2, str3);
                            }
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownloadProtocolUpdate failed, error:" + th.toString());
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public long getPlayerBufferLength() {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                return iTPPlayListenerAidl.getPlayerBufferLength();
                            }
                            return -1;
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getPlayerBufferLength failed, error:" + th.toString());
                            return -1;
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public long getCurrentPosition() {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                return iTPPlayListenerAidl.getCurrentPosition();
                            }
                            return -1;
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getCurrentPosition failed, error:" + th.toString());
                            return -1;
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public long getCurrentPlayOffset() {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                return iTPPlayListenerAidl.getCurrentPlayOffset();
                            }
                            return -1;
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getCurrentPlayOffset failed, error:" + th.toString());
                            return -1;
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public int getCurrentPlayClipNo() {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                return iTPPlayListenerAidl.getCurrentPlayClipNo();
                            }
                            return -1;
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getCurrentPlayClipInfo failed, error:" + th.toString());
                            return -1;
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public long getAdvRemainTime() {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                return iTPPlayListenerAidl.getAdvRemainTime();
                            }
                            return -1;
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getAdvRemainTime failed, error:" + th.toString());
                            return -1;
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public Object getPlayInfo(long j) {
                        try {
                            return iTPPlayListenerAidl.getPlayInfo(Long.toString(j));
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getPlayInfo type failed, error:" + th.toString());
                            return null;
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public Object getPlayInfo(String str2) {
                        try {
                            return iTPPlayListenerAidl.getPlayInfo(str2);
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getPlayInfo key failed, error:" + th.toString());
                            return null;
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public int onStartReadData(int i, String str2, long j, long j2) {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                return iTPPlayListenerAidl.onStartReadData(i, str2, j, j2);
                            }
                            return -1;
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onStartReadData key failed, error:" + th.toString());
                            return -1;
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public int onReadData(int i, String str2, long j, long j2) {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                return iTPPlayListenerAidl.onReadData(i, str2, j, j2);
                            }
                            return -1;
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onReadData key failed, error:" + th.toString());
                            return -1;
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public int onStopReadData(int i, String str2, int i2) {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                return iTPPlayListenerAidl.onStopReadData(i, str2, i2);
                            }
                            return -1;
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onStopReadData key failed, error:" + th.toString());
                            return -1;
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public long getDataTotalSize(int i, String str2) {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                return iTPPlayListenerAidl.getDataTotalSize(i, str2);
                            }
                            return -1;
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getDataTotalSize key failed, error:" + th.toString());
                            return -1;
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public String getDataFilePath(int i, String str2) {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                return iTPPlayListenerAidl.getDataFilePath(i, str2);
                            }
                            return "";
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getDataFilePath key failed, error:" + th.toString());
                            return "";
                        }
                    }

                    @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                    public String getContentType(int i, String str2) {
                        try {
                            if (iTPPlayListenerAidl != null) {
                                return iTPPlayListenerAidl.getContentType(i, str2);
                            }
                            return "";
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getContentType key failed, error:" + th.toString());
                            return "";
                        }
                    }
                });
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "startPlay failed, error:" + th.toString());
                return -1;
            }
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public int startClipPlay(String str, int i, final ITPPlayListenerAidl iTPPlayListenerAidl) {
            return this.downloadProxy.startClipPlay(str, i, new ITPPlayListener() { // from class: com.tencent.thumbplayer.core.downloadproxy.service.TPDownloadProxyService.DownloadProxy.2
                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public void onDownloadProgressUpdate(int i2, int i3, long j, long j2, String str2) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            iTPPlayListenerAidl.onDownloadProgressUpdate(i2, i3, j, j2, str2);
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownloadProgressUpdate failed, error:" + th.toString());
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public void onDownloadFinish() {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            iTPPlayListenerAidl.onDownloadFinish();
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownloadFinish failed, error:" + th.toString());
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public void onDownloadError(int i2, int i3, String str2) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            iTPPlayListenerAidl.onDownloadError(i2, i3, str2);
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownloadError failed, error:" + th.toString());
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public Object onPlayCallback(int i2, Object obj, Object obj2, Object obj3, Object obj4) {
                    try {
                        ArrayList arrayList = new ArrayList();
                        if (obj != null) {
                            arrayList.add(obj);
                        }
                        if (obj != null) {
                            arrayList.add(obj2);
                        }
                        if (obj != null) {
                            arrayList.add(obj3);
                        }
                        if (iTPPlayListenerAidl == null) {
                            return null;
                        }
                        iTPPlayListenerAidl.onPlayCallback(i2, arrayList);
                        return null;
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onPlayCallback failed, error:" + th.toString());
                        return null;
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public void onDownloadCdnUrlUpdate(String str2) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            iTPPlayListenerAidl.onDownloadCdnUrlUpdate(str2);
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownloadCdnUrlUpdate failed, error:" + th.toString());
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public void onDownloadCdnUrlInfoUpdate(String str2, String str3, String str4, String str5) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            iTPPlayListenerAidl.onDownloadCdnUrlInfoUpdate(str2, str3, str4, str5);
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownloadCdnUrlInfoUpdate failed, error:" + th.toString());
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public void onDownloadCdnUrlExpired(Map<String, String> map) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            iTPPlayListenerAidl.onDownloadCdnUrlExpired(map);
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownloadCdnUrlExpired failed, error:" + th.toString());
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public void onDownloadStatusUpdate(int i2) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            iTPPlayListenerAidl.onDownloadStatusUpdate(i2);
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownloadStatusUpdate failed, error:" + th.toString());
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public void onDownloadProtocolUpdate(String str2, String str3) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            iTPPlayListenerAidl.onDownloadProtocolUpdate(str2, str3);
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onDownloadProtocolUpdate failed, error:" + th.toString());
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public long getPlayerBufferLength() {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            return iTPPlayListenerAidl.getPlayerBufferLength();
                        }
                        return -1;
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getPlayerBufferLength failed, error:" + th.toString());
                        return -1;
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public long getCurrentPosition() {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            return iTPPlayListenerAidl.getCurrentPosition();
                        }
                        return -1;
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getCurrentPosition failed, error:" + th.toString());
                        return -1;
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public long getCurrentPlayOffset() {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            return iTPPlayListenerAidl.getCurrentPlayOffset();
                        }
                        return -1;
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getCurrentPlayOffset failed, error:" + th.toString());
                        return -1;
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public int getCurrentPlayClipNo() {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            return iTPPlayListenerAidl.getCurrentPlayClipNo();
                        }
                        return -1;
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getCurrentPlayClipNo failed, error:" + th.toString());
                        return -1;
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public long getAdvRemainTime() {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            return iTPPlayListenerAidl.getAdvRemainTime();
                        }
                        return -1;
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getAdvRemainTime failed, error:" + th.toString());
                        return -1;
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public Object getPlayInfo(long j) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            return iTPPlayListenerAidl.getPlayInfo(Long.toString(j));
                        }
                        return null;
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getPlayInfo type failed, error:" + th.toString());
                        return null;
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public Object getPlayInfo(String str2) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            return iTPPlayListenerAidl.getPlayInfo(str2);
                        }
                        return null;
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getPlayInfo key failed, error:" + th.toString());
                        return null;
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public int onStartReadData(int i2, String str2, long j, long j2) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            return iTPPlayListenerAidl.onStartReadData(i2, str2, j, j2);
                        }
                        return -1;
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onStartReadData key failed, error:" + th.toString());
                        return -1;
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public int onReadData(int i2, String str2, long j, long j2) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            return iTPPlayListenerAidl.onReadData(i2, str2, j, j2);
                        }
                        return -1;
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onReadData key failed, error:" + th.toString());
                        return -1;
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public int onStopReadData(int i2, String str2, int i3) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            return iTPPlayListenerAidl.onStopReadData(i2, str2, i3);
                        }
                        return -1;
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onStopReadData key failed, error:" + th.toString());
                        return -1;
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public long getDataTotalSize(int i2, String str2) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            return iTPPlayListenerAidl.getDataTotalSize(i2, str2);
                        }
                        return -1;
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getDataTotalSize key failed, error:" + th.toString());
                        return -1;
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public String getDataFilePath(int i2, String str2) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            return iTPPlayListenerAidl.getDataFilePath(i2, str2);
                        }
                        return "";
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getDataFilePath key failed, error:" + th.toString());
                        return "";
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPlayListener
                public String getContentType(int i2, String str2) {
                    try {
                        if (iTPPlayListenerAidl != null) {
                            return iTPPlayListenerAidl.getContentType(i2, str2);
                        }
                        return "";
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getContentType key failed, error:" + th.toString());
                        return "";
                    }
                }
            });
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public boolean setClipInfo(int i, int i2, String str, TPDownloadParamAidl tPDownloadParamAidl) {
            return this.downloadProxy.setClipInfo(i, i2, str, new TPDownloadParam(tPDownloadParamAidl.getUrlList(), tPDownloadParamAidl.getDlType(), tPDownloadParamAidl.getExtInfoMap()));
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public String getPlayUrl(int i, int i2) {
            return this.downloadProxy.getPlayUrl(i, i2);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public String getClipPlayUrl(int i, int i2, int i3) {
            return this.downloadProxy.getClipPlayUrl(i, i2, i3);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public String getPlayErrorCodeStr(int i) {
            return this.downloadProxy.getPlayErrorCodeStr(i);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public void stopPlay(int i) {
            this.downloadProxy.stopPlay(i);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public int pauseDownload(int i) {
            return this.downloadProxy.pauseDownload(i);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public int resumeDownload(int i) {
            return this.downloadProxy.resumeDownload(i);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public int startPreload(String str, TPDownloadParamAidl tPDownloadParamAidl, final ITPPreLoadListenerAidl iTPPreLoadListenerAidl) {
            return this.downloadProxy.startPreload(str, new TPDownloadParam(tPDownloadParamAidl.getUrlList(), tPDownloadParamAidl.getDlType(), tPDownloadParamAidl.getExtInfoMap()), new ITPPreLoadListener() { // from class: com.tencent.thumbplayer.core.downloadproxy.service.TPDownloadProxyService.DownloadProxy.3
                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
                public void onPrepareOK() {
                    try {
                        if (iTPPreLoadListenerAidl != null) {
                            iTPPreLoadListenerAidl.onPrepareOK();
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onPrepareOK failed, error:" + th.toString());
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
                public void onPrepareError(int i, int i2, String str2) {
                    try {
                        if (iTPPreLoadListenerAidl != null) {
                            iTPPreLoadListenerAidl.onPrepareError(i, i2, str2);
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onPrepareError failed, error:" + th.toString());
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
                public void onPrepareDownloadProgressUpdate(int i, int i2, long j, long j2, String str2) {
                    try {
                        if (iTPPreLoadListenerAidl != null) {
                            iTPPreLoadListenerAidl.onPrepareDownloadProgressUpdate(i, i2, j, j2, str2);
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onPrepareDownloadProgressUpdate failed, error:" + th.toString());
                    }
                }
            });
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public int startClipPreload(String str, int i, final ITPPreLoadListenerAidl iTPPreLoadListenerAidl) {
            return this.downloadProxy.startClipPreload(str, i, new ITPPreLoadListener() { // from class: com.tencent.thumbplayer.core.downloadproxy.service.TPDownloadProxyService.DownloadProxy.4
                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
                public void onPrepareOK() {
                    try {
                        if (iTPPreLoadListenerAidl != null) {
                            iTPPreLoadListenerAidl.onPrepareOK();
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onPrepareOK failed, error:" + th.toString());
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
                public void onPrepareError(int i2, int i3, String str2) {
                    try {
                        if (iTPPreLoadListenerAidl != null) {
                            iTPPreLoadListenerAidl.onPrepareError(i2, i3, str2);
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onPrepareError failed, error:" + th.toString());
                    }
                }

                @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
                public void onPrepareDownloadProgressUpdate(int i2, int i3, long j, long j2, String str2) {
                    try {
                        if (iTPPreLoadListenerAidl != null) {
                            iTPPreLoadListenerAidl.onPrepareDownloadProgressUpdate(i2, i3, j, j2, str2);
                        }
                    } catch (Throwable th) {
                        TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "onPrepareDownloadProgressUpdate failed, error:" + th.toString());
                    }
                }
            });
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public void stopPreload(int i) {
            this.downloadProxy.stopPreload(i);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public void startTask(int i) {
            this.downloadProxy.startTask(i);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public void setUserData(Map map) {
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    if (entry != null) {
                        try {
                            if (entry.getValue() != null) {
                                this.downloadProxy.setUserData((String) entry.getKey(), entry.getValue());
                            }
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "setUserData failed, error:" + th.toString());
                        }
                    }
                }
            }
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public String getNativeInfo(int i) {
            try {
                return this.downloadProxy.getNativeInfo(i);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getNativeInfo failed, error:" + th.toString());
                return null;
            }
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public int checkResourceStatus(String str, String str2, int i) {
            try {
                return this.downloadProxy.checkResourceStatus(str, str2, i);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "checkResourceStatus failed, error:" + th.toString());
                return -1;
            }
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public long getResourceSize(String str, String str2) {
            try {
                return this.downloadProxy.getResourceSize(str, str2);
            } catch (Throwable th) {
                TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "getResourceSize failed, error:" + th.toString());
                return -1;
            }
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public void pushEvent(int i) {
            this.downloadProxy.pushEvent(i);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public void setPlayState(int i, int i2) {
            this.downloadProxy.setPlayState(i, i2);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public void setMaxStorageSizeMB(long j) {
            this.downloadProxy.setMaxStorageSizeMB(j);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.aidl.ITPDownloadProxyAidl
        public void updateTaskInfo(int i, Map map) {
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    if (entry != null) {
                        try {
                            if (entry.getValue() != null) {
                                this.downloadProxy.updateTaskInfo(i, (String) entry.getKey(), entry.getValue());
                            }
                        } catch (Throwable th) {
                            TPDLProxyLog.e("TPDownloadProxyService", 0, "tpdlnative", "updateTaskInfo failed, error:" + th.toString());
                        }
                    }
                }
            }
        }
    }

    private boolean isExistMainProcess() {
        try {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) getSystemService("activity")).getRunningAppProcesses()) {
                String str = runningAppProcessInfo.processName;
                if (!TextUtils.isEmpty(str) && str.equals(getPackageName())) {
                    if (this.pid == -1 || this.pid == runningAppProcessInfo.pid) {
                        this.pid = runningAppProcessInfo.pid;
                        TPDLProxyLog.i("TPDownloadProxyService", 0, "tpdlnative", "app main exist!");
                        return true;
                    }
                    this.pid = runningAppProcessInfo.pid;
                    return false;
                }
            }
        } catch (Throwable th) {
            TPDLProxyLog.i("TPDownloadProxyService", 0, "tpdlnative", "isExistMainProcess failed, error:" + th.toString());
        }
        return false;
    }
}
