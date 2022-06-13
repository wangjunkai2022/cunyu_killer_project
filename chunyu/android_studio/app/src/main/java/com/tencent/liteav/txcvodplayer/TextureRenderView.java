package com.tencent.liteav.txcvodplayer;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.liteav.txcplayer.c;
import com.tencent.liteav.txcplayer.d;
import com.tencent.liteav.txcvodplayer.a;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class TextureRenderView extends TextureView implements a {
    private static final String TAG = "TextureRenderView";
    private b mMeasureHelper;
    private b mSurfaceCallback;

    @Override // com.tencent.liteav.txcvodplayer.a
    public View getView() {
        return this;
    }

    @Override // com.tencent.liteav.txcvodplayer.a
    public boolean shouldWaitForResize() {
        return false;
    }

    public TextureRenderView(Context context) {
        super(context);
        initView(context);
    }

    public TextureRenderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initView(context);
    }

    public TextureRenderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initView(context);
    }

    public TextureRenderView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        initView(context);
    }

    private void initView(Context context) {
        this.mMeasureHelper = new b(this);
        this.mSurfaceCallback = new b(this);
        setSurfaceTextureListener(this.mSurfaceCallback);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        try {
            this.mSurfaceCallback.a();
            super.onDetachedFromWindow();
            this.mSurfaceCallback.b();
        } catch (Exception unused) {
        }
    }

    @Override // android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mSurfaceCallback.c();
    }

    @Override // com.tencent.liteav.txcvodplayer.a
    public void setVideoSize(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.mMeasureHelper.a(i, i2);
            requestLayout();
        }
    }

    @Override // com.tencent.liteav.txcvodplayer.a
    public void setVideoSampleAspectRatio(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.mMeasureHelper.b(i, i2);
            requestLayout();
        }
    }

    @Override // com.tencent.liteav.txcvodplayer.a
    public void setVideoRotation(int i) {
        this.mMeasureHelper.a(i);
        setRotation((float) i);
    }

    @Override // com.tencent.liteav.txcvodplayer.a
    public void setAspectRatio(int i) {
        this.mMeasureHelper.b(i);
        requestLayout();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        this.mMeasureHelper.c(i, i2);
        setMeasuredDimension(this.mMeasureHelper.a(), this.mMeasureHelper.b());
    }

    public a.b getSurfaceHolder() {
        return new a(this, this.mSurfaceCallback.a, this.mSurfaceCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a implements a.b {
        private TextureRenderView a;
        private SurfaceTexture b;
        private d c;
        private Surface d;

        public a(TextureRenderView textureRenderView, SurfaceTexture surfaceTexture, d dVar) {
            this.a = textureRenderView;
            this.b = surfaceTexture;
            this.c = dVar;
        }

        @Override // com.tencent.liteav.txcvodplayer.a.b
        public void a(ITXVCubePlayer iTXVCubePlayer) {
            if (iTXVCubePlayer != null) {
                if (TXCBuild.VersionInt() < 16 || !(iTXVCubePlayer instanceof c)) {
                    this.d = b();
                    iTXVCubePlayer.setSurface(this.d);
                    return;
                }
                c cVar = (c) iTXVCubePlayer;
                this.a.mSurfaceCallback.a(false);
                if (this.a.getSurfaceTexture() != null) {
                    this.b = this.a.getSurfaceTexture();
                }
                try {
                    SurfaceTexture surfaceTexture = cVar.getSurfaceTexture();
                    if (surfaceTexture != null) {
                        cVar.setSurfaceTextureHost(this.a.mSurfaceCallback);
                        if (this.a.getSurfaceTexture() != surfaceTexture) {
                            this.a.setSurfaceTexture(surfaceTexture);
                        }
                        this.a.mSurfaceCallback.b(surfaceTexture);
                    } else {
                        if (this.d != null) {
                            iTXVCubePlayer.setSurface(this.d);
                        }
                        cVar.setSurfaceTexture(this.b);
                        cVar.setSurfaceTextureHost(this.a.mSurfaceCallback);
                    }
                    this.d = iTXVCubePlayer.getSurface();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        @Override // com.tencent.liteav.txcvodplayer.a.b
        public a a() {
            return this.a;
        }

        @Override // com.tencent.liteav.txcvodplayer.a.b
        public Surface b() {
            SurfaceTexture surfaceTexture = this.b;
            if (surfaceTexture == null) {
                return null;
            }
            if (this.d == null) {
                this.d = new Surface(surfaceTexture);
            }
            return this.d;
        }

        @Override // com.tencent.liteav.txcvodplayer.a.b
        public Surface c() {
            return this.d;
        }
    }

    @Override // com.tencent.liteav.txcvodplayer.a
    public void addRenderCallback(a.AbstractC0029a aVar) {
        this.mSurfaceCallback.a(aVar);
    }

    @Override // com.tencent.liteav.txcvodplayer.a
    public void removeRenderCallback(a.AbstractC0029a aVar) {
        this.mSurfaceCallback.b(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b implements TextureView.SurfaceTextureListener, d {
        private SurfaceTexture a;
        private boolean b;
        private int c;
        private int d;
        private WeakReference<TextureRenderView> h;
        private boolean e = true;
        private boolean f = false;
        private boolean g = false;
        private Map<a.AbstractC0029a, Object> i = new ConcurrentHashMap();

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        public b(TextureRenderView textureRenderView) {
            this.h = new WeakReference<>(textureRenderView);
        }

        public void a(boolean z) {
            this.e = z;
        }

        public void b(SurfaceTexture surfaceTexture) {
            this.a = surfaceTexture;
        }

        public void a(a.AbstractC0029a aVar) {
            a aVar2;
            this.i.put(aVar, aVar);
            if (this.a != null) {
                aVar2 = new a(this.h.get(), this.a, this);
                aVar.a(aVar2, this.c, this.d);
            } else {
                aVar2 = null;
            }
            if (this.b) {
                if (aVar2 == null) {
                    aVar2 = new a(this.h.get(), this.a, this);
                }
                aVar.a(aVar2, 0, this.c, this.d);
            }
        }

        public void b(a.AbstractC0029a aVar) {
            this.i.remove(aVar);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            this.a = surfaceTexture;
            this.b = false;
            this.c = 0;
            this.d = 0;
            a aVar = new a(this.h.get(), surfaceTexture, this);
            for (a.AbstractC0029a aVar2 : this.i.keySet()) {
                aVar2.a(aVar, 0, 0);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            this.a = surfaceTexture;
            this.b = true;
            this.c = i;
            this.d = i2;
            a aVar = new a(this.h.get(), surfaceTexture, this);
            for (a.AbstractC0029a aVar2 : this.i.keySet()) {
                aVar2.a(aVar, 0, i, i2);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            this.a = surfaceTexture;
            this.b = false;
            this.c = 0;
            this.d = 0;
            a aVar = new a(this.h.get(), surfaceTexture, this);
            for (a.AbstractC0029a aVar2 : this.i.keySet()) {
                aVar2.a(aVar);
            }
            TXCLog.i(TextureRenderView.TAG, "onSurfaceTextureDestroyed: destroy: " + this.e);
            return this.e;
        }

        @Override // com.tencent.liteav.txcplayer.d
        public void a(SurfaceTexture surfaceTexture) {
            if (surfaceTexture == null) {
                TXCLog.i(TextureRenderView.TAG, "releaseSurfaceTexture: null");
            } else if (this.g) {
                if (surfaceTexture != this.a) {
                    TXCLog.i(TextureRenderView.TAG, "releaseSurfaceTexture: didDetachFromWindow(): release different SurfaceTexture");
                    surfaceTexture.release();
                } else if (!this.e) {
                    TXCLog.i(TextureRenderView.TAG, "releaseSurfaceTexture: didDetachFromWindow(): release detached SurfaceTexture");
                    surfaceTexture.release();
                } else {
                    TXCLog.i(TextureRenderView.TAG, "releaseSurfaceTexture: didDetachFromWindow(): already released by TextureView");
                }
            } else if (this.f) {
                if (surfaceTexture != this.a) {
                    TXCLog.i(TextureRenderView.TAG, "releaseSurfaceTexture: willDetachFromWindow(): release different SurfaceTexture");
                    surfaceTexture.release();
                } else if (!this.e) {
                    TXCLog.i(TextureRenderView.TAG, "releaseSurfaceTexture: willDetachFromWindow(): re-attach SurfaceTexture to TextureView");
                    a(true);
                } else {
                    TXCLog.i(TextureRenderView.TAG, "releaseSurfaceTexture: willDetachFromWindow(): will released by TextureView");
                }
            } else if (surfaceTexture != this.a) {
                TXCLog.i(TextureRenderView.TAG, "releaseSurfaceTexture: alive: release different SurfaceTexture");
                surfaceTexture.release();
            } else if (!this.e) {
                TXCLog.i(TextureRenderView.TAG, "releaseSurfaceTexture: alive: re-attach SurfaceTexture to TextureView");
                a(true);
            } else {
                TXCLog.i(TextureRenderView.TAG, "releaseSurfaceTexture: alive: will released by TextureView");
            }
        }

        public void a() {
            TXCLog.i(TextureRenderView.TAG, "willDetachFromWindow()");
            this.f = true;
        }

        public void b() {
            TXCLog.i(TextureRenderView.TAG, "didDetachFromWindow()");
            this.g = true;
        }

        public void c() {
            TXCLog.i(TextureRenderView.TAG, "onAttachFromWindow()");
            this.f = false;
            this.g = false;
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(TextureRenderView.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(TextureRenderView.class.getName());
    }
}
