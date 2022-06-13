package com.tencent.liteav.thumbplayer.downloader;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.txcplayer.b.a;
import com.tencent.liteav.txcplayer.b.b;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDLProxyInitParam;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadParam;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyFactory;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class ThumbPlayerDownloader extends a {
    private static final String THUMB_PLAYER_GUID = "liteav_tbplayer_android_";
    private static final int THUMB_PLAYER_PLATFORM_ID = 2330303;
    private static ThumbPlayerDownloader sInstance;
    private ITPDownloadProxy mTpDownloadProxy = TPDownloadProxyFactory.getTPDownloadProxy(THUMB_PLAYER_PLATFORM_ID);

    private ThumbPlayerDownloader(Context context) {
        if (context != null) {
            File externalFilesDir = context.getExternalFilesDir(null);
            if (externalFilesDir != null) {
                this.mDownloadPath = externalFilesDir.getAbsolutePath() + "/txcache";
                File file = new File(this.mDownloadPath);
                if (!file.exists() || !file.isDirectory()) {
                    file.mkdirs();
                }
            }
            this.mTpDownloadProxy.init(context, new TPDLProxyInitParam(THUMB_PLAYER_PLATFORM_ID, "1.0.0", THUMB_PLAYER_GUID + context.getPackageName(), this.mDownloadPath));
        }
    }

    public static ThumbPlayerDownloader getInstance(Context context) {
        synchronized (ThumbPlayerDownloader.class) {
            if (sInstance == null) {
                sInstance = new ThumbPlayerDownloader(context);
            }
        }
        return sInstance;
    }

    @Override // com.tencent.liteav.txcplayer.b.a
    public void setDownloadPath(String str) {
        super.setDownloadPath(str);
        this.mTpDownloadProxy.updateStoragePath(this.mDownloadPath);
    }

    @Override // com.tencent.liteav.txcplayer.b.a
    public String makePlayPath(String str) {
        if (Uri.parse(str).getPath().endsWith(".m3u8")) {
            return this.mDownloadPath + "/" + TXCCommonUtil.getMD5(str) + ".hls?" + str;
        }
        TXCLog.e(TAG, "Unsupported format");
        return null;
    }

    @Override // com.tencent.liteav.txcplayer.b.a
    public void stop(int i) {
        if (this.mTpDownloadProxy.pauseDownload(i) == 0 && this.mDownloadListener != null) {
            b bVar = new b();
            bVar.a = i;
            this.mDownloadListener.b(this, bVar);
        }
    }

    @Override // com.tencent.liteav.txcplayer.b.a
    public int downloadHls(String str, String str2) {
        if (TextUtils.isEmpty(str2) || !str2.contains(".hls")) {
            return -1;
        }
        String substring = str2.substring(0, str2.indexOf(".hls") + 4);
        String substring2 = substring.substring(substring.lastIndexOf("/") + 1);
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        TPDownloadParam tPDownloadParam = new TPDownloadParam(arrayList, 3, null);
        if (this.mHeaders != null && this.mHeaders.size() > 0) {
            HashMap hashMap = new HashMap();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(this.mHeaders);
            hashMap.put(TPDownloadProxyEnum.DLPARAM_URL_HEADER, arrayList2);
            tPDownloadParam.setExtInfoMap(hashMap);
        }
        final b bVar = new b();
        bVar.b = str;
        int startOfflineDownload = this.mTpDownloadProxy.startOfflineDownload(substring2, tPDownloadParam, new ITPOfflineDownloadListener() { // from class: com.tencent.liteav.thumbplayer.downloader.ThumbPlayerDownloader.1
            @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
            public void onDownloadCdnUrlInfoUpdate(String str3, String str4, String str5, String str6) {
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
            public void onDownloadProgressUpdate(int i, int i2, long j, long j2, String str3) {
                int i3;
                if (j > 1024 && (i3 = (int) j) != bVar.c) {
                    bVar.c = i3;
                }
                b bVar2 = bVar;
                bVar2.d = (int) j2;
                bVar2.e = i2;
                bVar2.h = i;
                if (bVar2.i <= 0 && !TextUtils.isEmpty(str3) && str3.contains("totalDuration")) {
                    String[] split = str3.split(",");
                    int length = split.length;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= length) {
                            break;
                        }
                        String str4 = split[i4];
                        if (str4.contains("totalDuration")) {
                            bVar.i = Integer.valueOf(str4.split(":")[1]).intValue() * 1000;
                            break;
                        }
                        i4++;
                    }
                }
                if (ThumbPlayerDownloader.this.mDownloadListener != null) {
                    ThumbPlayerDownloader.this.mDownloadListener.d(ThumbPlayerDownloader.this, bVar);
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
            public void onDownloadFinish() {
                if (ThumbPlayerDownloader.this.mDownloadListener != null) {
                    ThumbPlayerDownloader.this.mDownloadListener.c(ThumbPlayerDownloader.this, bVar);
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
            public void onDownloadError(int i, int i2, String str3) {
                String str4 = ThumbPlayerDownloader.TAG;
                Log.d(str4, "HLS offline download error! moduleID:" + i + ", errCode:" + i2);
                if (ThumbPlayerDownloader.this.mDownloadListener != null) {
                    ThumbPlayerDownloader.this.mDownloadListener.a(ThumbPlayerDownloader.this, bVar, i2, str3);
                }
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
            public void onDownloadCdnUrlUpdate(String str3) {
                String str4 = ThumbPlayerDownloader.TAG;
                Log.d(str4, "onDownloadCdnUrlUpdate! url:" + str3);
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
            public void onDownloadCdnUrlExpired(Map<String, String> map) {
                Log.d(ThumbPlayerDownloader.TAG, "onDownloadCdnUrlExpired!");
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
            public void onDownloadStatusUpdate(int i) {
                String str3 = ThumbPlayerDownloader.TAG;
                Log.d(str3, "onDownloadStatusUpdate! statusCode:" + i);
            }

            @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPOfflineDownloadListener
            public void onDownloadProtocolUpdate(String str3, String str4) {
                String str5 = ThumbPlayerDownloader.TAG;
                Log.d(str5, "onDownloadProtocolUpdate! protocol:" + str3 + ", protocolVer:" + str4);
            }
        });
        this.mTpDownloadProxy.startTask(startOfflineDownload);
        bVar.a = startOfflineDownload;
        if (this.mDownloadListener != null) {
            this.mDownloadListener.a(this, bVar);
        }
        return startOfflineDownload;
    }

    @Override // com.tencent.liteav.txcplayer.b.a
    public boolean deleteDownloadFile(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String substring = str.substring(0, str.indexOf(".hls") + 4);
        String substring2 = substring.substring(substring.lastIndexOf("/") + 1);
        if (TextUtils.isEmpty(substring2) || this.mTpDownloadProxy.removeStorageCache(substring2) != 0) {
            return false;
        }
        return true;
    }
}
