package io.flutter.embedding.engine.renderer;

import android.graphics.SurfaceTexture;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class SurfaceTextureWrapper {
    private boolean attached;
    private boolean released = false;
    private SurfaceTexture surfaceTexture;

    public SurfaceTextureWrapper(SurfaceTexture surfaceTexture) {
        this.surfaceTexture = surfaceTexture;
    }

    public SurfaceTexture surfaceTexture() {
        return this.surfaceTexture;
    }

    public void updateTexImage() {
        synchronized (this) {
            if (!this.released) {
                this.surfaceTexture.updateTexImage();
            }
        }
    }

    public void release() {
        synchronized (this) {
            if (!this.released) {
                this.surfaceTexture.release();
                this.released = true;
                this.attached = false;
            }
        }
    }

    public void attachToGLContext(int i) {
        synchronized (this) {
            if (!this.released) {
                if (this.attached) {
                    this.surfaceTexture.detachFromGLContext();
                }
                this.surfaceTexture.attachToGLContext(i);
                this.attached = true;
            }
        }
    }

    public void detachFromGLContext() {
        synchronized (this) {
            if (this.attached && !this.released) {
                this.surfaceTexture.detachFromGLContext();
                this.attached = false;
            }
        }
    }

    public void getTransformMatrix(float[] fArr) {
        this.surfaceTexture.getTransformMatrix(fArr);
    }
}
