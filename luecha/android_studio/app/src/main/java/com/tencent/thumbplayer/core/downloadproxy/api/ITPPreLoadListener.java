package com.tencent.thumbplayer.core.downloadproxy.api;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPPreLoadListener {
    void onPrepareDownloadProgressUpdate(int i, int i2, long j, long j2, String str);

    void onPrepareError(int i, int i2, String str);

    void onPrepareOK();
}
