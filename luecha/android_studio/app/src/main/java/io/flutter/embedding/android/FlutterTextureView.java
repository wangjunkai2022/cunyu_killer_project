package io.flutter.embedding.android;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import io.flutter.Log;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.embedding.engine.renderer.RenderSurface;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class FlutterTextureView extends TextureView implements RenderSurface {
    private static final String TAG = "FlutterTextureView";
    private FlutterRenderer flutterRenderer;
    private boolean isAttachedToFlutterRenderer;
    private boolean isPaused;
    private boolean isSurfaceAvailableForRendering;
    private Surface renderSurface;
    private final TextureView.SurfaceTextureListener surfaceTextureListener;

    public FlutterTextureView(Context context) {
        this(context, null);
    }

    public FlutterTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isSurfaceAvailableForRendering = false;
        this.isAttachedToFlutterRenderer = false;
        this.isPaused = false;
        this.surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: io.flutter.embedding.android.FlutterTextureView.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                Log.v("FlutterTextureView", "SurfaceTextureListener.onSurfaceTextureAvailable()");
                FlutterTextureView.this.isSurfaceAvailableForRendering = true;
                if (FlutterTextureView.this.isAttachedToFlutterRenderer) {
                    FlutterTextureView.this.connectSurfaceToRenderer();
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
                Log.v("FlutterTextureView", "SurfaceTextureListener.onSurfaceTextureSizeChanged()");
                if (FlutterTextureView.this.isAttachedToFlutterRenderer) {
                    FlutterTextureView.this.changeSurfaceSize(i, i2);
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                Log.v("FlutterTextureView", "SurfaceTextureListener.onSurfaceTextureDestroyed()");
                FlutterTextureView.this.isSurfaceAvailableForRendering = false;
                if (FlutterTextureView.this.isAttachedToFlutterRenderer) {
                    FlutterTextureView.this.disconnectSurfaceFromRenderer();
                }
                if (FlutterTextureView.this.renderSurface == null) {
                    return true;
                }
                FlutterTextureView.this.renderSurface.release();
                FlutterTextureView.this.renderSurface = null;
                return true;
            }
        };
        init();
    }

    private void init() {
        setSurfaceTextureListener(this.surfaceTextureListener);
    }

    @Override // io.flutter.embedding.engine.renderer.RenderSurface
    public FlutterRenderer getAttachedRenderer() {
        return this.flutterRenderer;
    }

    @Override // io.flutter.embedding.engine.renderer.RenderSurface
    public void attachToRenderer(FlutterRenderer flutterRenderer) {
        Log.v("FlutterTextureView", "Attaching to FlutterRenderer.");
        if (this.flutterRenderer != null) {
            Log.v("FlutterTextureView", "Already connected to a FlutterRenderer. Detaching from old one and attaching to new one.");
            this.flutterRenderer.stopRenderingToSurface();
        }
        this.flutterRenderer = flutterRenderer;
        this.isAttachedToFlutterRenderer = true;
        if (this.isSurfaceAvailableForRendering) {
            Log.v("FlutterTextureView", "Surface is available for rendering. Connecting FlutterRenderer to Android surface.");
            connectSurfaceToRenderer();
        }
    }

    @Override // io.flutter.embedding.engine.renderer.RenderSurface
    public void detachFromRenderer() {
        if (this.flutterRenderer != null) {
            if (getWindowToken() != null) {
                Log.v("FlutterTextureView", "Disconnecting FlutterRenderer from Android surface.");
                disconnectSurfaceFromRenderer();
            }
            this.flutterRenderer = null;
            this.isAttachedToFlutterRenderer = false;
            return;
        }
        Log.w("FlutterTextureView", "detachFromRenderer() invoked when no FlutterRenderer was attached.");
    }

    @Override // io.flutter.embedding.engine.renderer.RenderSurface
    public void pause() {
        if (this.flutterRenderer != null) {
            this.flutterRenderer = null;
            this.isPaused = true;
            this.isAttachedToFlutterRenderer = false;
            return;
        }
        Log.w("FlutterTextureView", "pause() invoked when no FlutterRenderer was attached.");
    }

    public void setRenderSurface(Surface surface) {
        this.renderSurface = surface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectSurfaceToRenderer() {
        if (this.flutterRenderer == null || getSurfaceTexture() == null) {
            throw new IllegalStateException("connectSurfaceToRenderer() should only be called when flutterRenderer and getSurfaceTexture() are non-null.");
        }
        Surface surface = this.renderSurface;
        if (surface != null) {
            surface.release();
            this.renderSurface = null;
        }
        this.renderSurface = new Surface(getSurfaceTexture());
        this.flutterRenderer.startRenderingToSurface(this.renderSurface, this.isPaused);
        this.isPaused = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeSurfaceSize(int i, int i2) {
        if (this.flutterRenderer != null) {
            Log.v("FlutterTextureView", "Notifying FlutterRenderer that Android surface size has changed to " + i + " x " + i2);
            this.flutterRenderer.surfaceChanged(i, i2);
            return;
        }
        throw new IllegalStateException("changeSurfaceSize() should only be called when flutterRenderer is non-null.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnectSurfaceFromRenderer() {
        FlutterRenderer flutterRenderer = this.flutterRenderer;
        if (flutterRenderer != null) {
            flutterRenderer.stopRenderingToSurface();
            Surface surface = this.renderSurface;
            if (surface != null) {
                surface.release();
                this.renderSurface = null;
                return;
            }
            return;
        }
        throw new IllegalStateException("disconnectSurfaceFromRenderer() should only be called when flutterRenderer is non-null.");
    }
}
