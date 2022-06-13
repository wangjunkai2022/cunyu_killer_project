package com.tencent.thumbplayer.core.player;

import com.tencent.thumbplayer.core.common.TPSubtitleFrame;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPNativePlayerSubtitleFrameCallback {
    public static final int FLAG_EOS = 1;

    void onSubtitleFrame(TPSubtitleFrame tPSubtitleFrame, int i);
}
