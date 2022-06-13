package com.tencent.thumbplayer.api.resourceloader;

/* loaded from: classes5.dex */
public interface ITPAssetResourceLoaderListener {
    void didCancelLoadingRequest(ITPAssetResourceLoadingRequest iTPAssetResourceLoadingRequest);

    void fillInContentInformation(TPAssetResourceLoadingContentInformationRequest tPAssetResourceLoadingContentInformationRequest);

    boolean shouldWaitForLoadingOfRequestedResource(ITPAssetResourceLoadingRequest iTPAssetResourceLoadingRequest);
}
