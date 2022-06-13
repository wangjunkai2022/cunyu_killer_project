package com.tencent.thumbplayer.core.player;

import android.view.Surface;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPNativePlayerUtils {
    static boolean isTPNativePlayerSurface(Surface surface) {
        return surface instanceof TPNativePlayerSurface;
    }
}
