package com.tencent.thumbplayer.core.player;

import com.tencent.thumbplayer.core.common.TPPostProcessFrame;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ITPNativePlayerPostProcessFrameCallback {
    public static final int EVENT_EOS = 1;
    public static final int EVENT_FLUSH = 2;

    TPPostProcessFrame onPostProcessFrame(TPPostProcessFrame tPPostProcessFrame, int i);
}
