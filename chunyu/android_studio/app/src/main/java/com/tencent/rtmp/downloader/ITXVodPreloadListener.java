package com.tencent.rtmp.downloader;

/* loaded from: classes2.dex */
public interface ITXVodPreloadListener {
    void onComplete(int i, String str);

    void onError(int i, String str, int i2, String str2);
}
