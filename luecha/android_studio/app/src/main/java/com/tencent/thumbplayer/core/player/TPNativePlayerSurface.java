package com.tencent.thumbplayer.core.player;

import android.graphics.SurfaceTexture;
import android.view.Surface;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPNativePlayerSurface extends Surface {
    private ITPNativePlayerSurfaceCallback mSurfaceCallback;

    public TPNativePlayerSurface(SurfaceTexture surfaceTexture) {
        super(surfaceTexture);
    }

    public void setTPSurfaceCallback(ITPNativePlayerSurfaceCallback iTPNativePlayerSurfaceCallback) {
        this.mSurfaceCallback = iTPNativePlayerSurfaceCallback;
    }
}
