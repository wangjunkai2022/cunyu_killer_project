package com.tencent.thumbplayer.core.subtitle;

import com.tencent.thumbplayer.core.common.TPSubtitleFrame;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPSubtitleParserCallback {
    long onGetCurrentPlayPositionMs();

    void onLoadResult(int i);

    void onSelectResult(int i, long j);

    void onSubtitleFrame(TPSubtitleFrame tPSubtitleFrame);

    void onSubtitleNote(String str);
}
