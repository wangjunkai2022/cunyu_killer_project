package io.flutter.view;

import android.graphics.SurfaceTexture;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface TextureRegistry {

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface SurfaceTextureEntry {
        long id();

        void release();

        SurfaceTexture surfaceTexture();
    }

    SurfaceTextureEntry createSurfaceTexture();

    SurfaceTextureEntry registerSurfaceTexture(SurfaceTexture surfaceTexture);
}
