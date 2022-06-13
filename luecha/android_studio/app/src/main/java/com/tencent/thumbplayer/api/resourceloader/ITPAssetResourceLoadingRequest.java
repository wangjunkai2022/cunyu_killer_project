package com.tencent.thumbplayer.api.resourceloader;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPAssetResourceLoadingRequest {
    void finishLoading();

    TPAssetResourceLoadingContentInformationRequest getContentInformation();

    ITPAssetResourceLoadingDataRequest getLoadingDataRequest();

    boolean isCancelled();

    boolean isFinished();
}
