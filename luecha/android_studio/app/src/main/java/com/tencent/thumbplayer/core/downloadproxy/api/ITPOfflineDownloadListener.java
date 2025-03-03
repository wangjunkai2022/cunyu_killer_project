package com.tencent.thumbplayer.core.downloadproxy.api;

import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPOfflineDownloadListener {
    void onDownloadCdnUrlExpired(Map<String, String> map);

    void onDownloadCdnUrlInfoUpdate(String str, String str2, String str3, String str4);

    void onDownloadCdnUrlUpdate(String str);

    void onDownloadError(int i, int i2, String str);

    void onDownloadFinish();

    void onDownloadProgressUpdate(int i, int i2, long j, long j2, String str);

    void onDownloadProtocolUpdate(String str, String str2);

    void onDownloadStatusUpdate(int i);
}
