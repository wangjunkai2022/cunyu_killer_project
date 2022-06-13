package com.tencent.rtmp.downloader;

import com.tencent.rtmp.downloader.a.b;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public class TXVodDownloadManager {
    public static final int DOWNLOAD_403FORBIDDEN = -5008;
    public static final int DOWNLOAD_AUTH_FAILED = -5001;
    public static final int DOWNLOAD_DISCONNECT = -5005;
    public static final int DOWNLOAD_FORMAT_ERROR = -5004;
    public static final int DOWNLOAD_HLS_KEY_ERROR = -5006;
    public static final int DOWNLOAD_NO_FILE = -5003;
    public static final int DOWNLOAD_PATH_ERROR = -5007;
    public static final int DOWNLOAD_SUCCESS = 0;
    private static final String TAG = "TXVodDownloadManager";
    private static b instance;

    public static TXVodDownloadManager getInstance() {
        if (instance == null) {
            instance = b.a();
        }
        return instance;
    }

    public void setDownloadPath(String str) {
        instance.a(str);
    }

    public void setHeaders(Map<String, String> map) {
        instance.a(map);
    }

    public void setListener(ITXVodDownloadListener iTXVodDownloadListener) {
        instance.a(iTXVodDownloadListener);
    }

    @Deprecated
    public TXVodDownloadMediaInfo startDownloadUrl(String str) {
        return instance.a(str, "default");
    }

    public TXVodDownloadMediaInfo startDownloadUrl(String str, String str2) {
        return instance.a(str, str2);
    }

    public TXVodDownloadMediaInfo startDownload(TXVodDownloadDataSource tXVodDownloadDataSource) {
        return instance.a(tXVodDownloadDataSource);
    }

    public void stopDownload(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        instance.a(tXVodDownloadMediaInfo);
    }

    @Deprecated
    public boolean deleteDownloadFile(String str) {
        return instance.b(str);
    }

    public boolean deleteDownloadMediaInfo(TXVodDownloadMediaInfo tXVodDownloadMediaInfo) {
        return instance.b(tXVodDownloadMediaInfo);
    }

    public List<TXVodDownloadMediaInfo> getDownloadMediaInfoList() {
        return instance.b();
    }

    public TXVodDownloadMediaInfo getDownloadMediaInfo(int i, String str, int i2) {
        return instance.a(i, str, i2);
    }

    public TXVodDownloadMediaInfo getDownloadMediaInfo(String str) {
        return instance.c(str);
    }
}
