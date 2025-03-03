package com.tencent.thumbplayer.core.richmedia;

/* loaded from: classes2.dex */
public interface ITPNativeRichMediaProcessor {
    void deselectFeatureAsync(int i);

    TPNativeRichMediaFeatureData getCurrentPositionMsFeatureData(long j, int[] iArr);

    TPNativeRichMediaFeature[] getFeatures();

    void prepareAsync();

    void release();

    void reset();

    void seek(long j);

    void selectFeatureAsync(int i, TPNativeRichMediaRequestExtraInfo tPNativeRichMediaRequestExtraInfo);

    void setInnerProcessorCallback(ITPNativeRichMediaInnerProcessorCallback iTPNativeRichMediaInnerProcessorCallback);

    void setPlaybackRate(float f);

    void setProcessorCallback(ITPNativeRichMediaProcessorCallback iTPNativeRichMediaProcessorCallback);

    void setRichMediaSource(String str);
}
