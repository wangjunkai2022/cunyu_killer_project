package com.tencent.thumbplayer.core.richmedia;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPNativeRichMediaProcessorCallback {
    void onDeselectFeatureSuccess(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i);

    void onRichMediaError(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i);

    void onRichMediaFeatureData(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i, TPNativeRichMediaFeatureData tPNativeRichMediaFeatureData);

    void onRichMediaFeatureFailure(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i, int i2);

    void onRichMediaInfo(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i, long j, long j2, long j3, Object obj);

    void onRichMediaPrepared(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor);

    void onSelectFeatureSuccess(ITPNativeRichMediaProcessor iTPNativeRichMediaProcessor, int i);
}
