package com.tencent.thumbplayer.api.richmedia;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPRichMediaSynchronizerListener {
    void onDeselectFeatureSuccess(ITPRichMediaSynchronizer iTPRichMediaSynchronizer, int i);

    void onRichMediaError(ITPRichMediaSynchronizer iTPRichMediaSynchronizer, int i);

    void onRichMediaFeatureData(ITPRichMediaSynchronizer iTPRichMediaSynchronizer, int i, TPRichMediaFeatureData tPRichMediaFeatureData);

    void onRichMediaFeatureFailure(ITPRichMediaSynchronizer iTPRichMediaSynchronizer, int i, int i2);

    void onRichMediaInfo(ITPRichMediaSynchronizer iTPRichMediaSynchronizer, int i, long j, long j2, long j3, Object obj);

    void onRichMediaPrepared(ITPRichMediaSynchronizer iTPRichMediaSynchronizer);

    void onSelectFeatureSuccess(ITPRichMediaSynchronizer iTPRichMediaSynchronizer, int i);
}
