package com.tencent.thumbplayer.api.richmedia;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPRichMediaAsyncRequesterListener {
    void onFeatureDataRequestFailure(ITPRichMediaAsyncRequester iTPRichMediaAsyncRequester, int i, int i2, int i3);

    void onFeatureDataRequestSuccess(ITPRichMediaAsyncRequester iTPRichMediaAsyncRequester, int i, int i2, TPRichMediaFeatureData tPRichMediaFeatureData);

    void onRequesterError(ITPRichMediaAsyncRequester iTPRichMediaAsyncRequester, int i);

    void onRequesterPrepared(ITPRichMediaAsyncRequester iTPRichMediaAsyncRequester);
}
