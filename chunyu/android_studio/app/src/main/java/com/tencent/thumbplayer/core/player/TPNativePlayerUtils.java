package com.tencent.thumbplayer.core.player;

import android.view.Surface;

/* loaded from: classes2.dex */
public class TPNativePlayerUtils {
    static boolean isTPNativePlayerSurface(Surface surface) {
        return surface instanceof TPNativePlayerSurface;
    }
}
