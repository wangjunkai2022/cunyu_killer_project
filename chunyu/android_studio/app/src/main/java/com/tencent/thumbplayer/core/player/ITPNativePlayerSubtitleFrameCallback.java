package com.tencent.thumbplayer.core.player;

import com.tencent.thumbplayer.core.common.TPSubtitleFrame;

/* loaded from: classes2.dex */
public interface ITPNativePlayerSubtitleFrameCallback {
    public static final int FLAG_EOS = 1;

    void onSubtitleFrame(TPSubtitleFrame tPSubtitleFrame, int i);
}
