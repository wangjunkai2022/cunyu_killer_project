package com.tencent.rtmp.downloader;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITXVodDownloadListener {
    int hlsKeyVerify(TXVodDownloadMediaInfo tXVodDownloadMediaInfo, String str, byte[] bArr);

    void onDownloadError(TXVodDownloadMediaInfo tXVodDownloadMediaInfo, int i, String str);

    void onDownloadFinish(TXVodDownloadMediaInfo tXVodDownloadMediaInfo);

    void onDownloadProgress(TXVodDownloadMediaInfo tXVodDownloadMediaInfo);

    void onDownloadStart(TXVodDownloadMediaInfo tXVodDownloadMediaInfo);

    void onDownloadStop(TXVodDownloadMediaInfo tXVodDownloadMediaInfo);
}
