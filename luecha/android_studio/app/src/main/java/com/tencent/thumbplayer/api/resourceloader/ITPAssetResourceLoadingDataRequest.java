package com.tencent.thumbplayer.api.resourceloader;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPAssetResourceLoadingDataRequest {
    long getCurrentOffset();

    long getRequestedLength();

    long getRequestedOffset();

    void notifyDataReady(long j, long j2);

    void respondWithData(byte[] bArr);
}
