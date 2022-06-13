package com.tencent.liteav.txcvodplayer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.liteav.txcplayer.c;
import com.tencent.liteav.txcvodplayer.a;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class SurfaceRenderView extends SurfaceView implements a {
    private b a;
    private b b;

    @Override // com.tencent.liteav.txcvodplayer.a
    public View getView() {
        return this;
    }

    @Override // com.tencent.liteav.txcvodplayer.a
    public boolean shouldWaitForResize() {
        return true;
    }

    public SurfaceRenderView(Context context) {
        super(context);
        a(context);
    }

    public SurfaceRenderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public SurfaceRenderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        this.a = new b(this);
        this.b = new b(this);
        getHolder().addCallback(this.b);
        getHolder().setType(0);
    }

    @Override // com.tencent.liteav.txcvodplayer.a
    public void setVideoSize(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.a.a(i, i2);
            getHolder().setFixedSize(i, i2);
            requestLayout();
        }
    }

    @Override // com.tencent.liteav.txcvodplayer.a
    public void setVideoSampleAspectRatio(int i, int i2) {
        if (i > 0 && i2 > 0) {
            this.a.b(i, i2);
            requestLayout();
        }
    }

    @Override // com.tencent.liteav.txcvodplayer.a
    public void setVideoRotation(int i) {
        TXCLog.e("", "SurfaceView doesn't support rotation (" + i + ")!\n");
    }

    @Override // com.tencent.liteav.txcvodplayer.a
    public void setAspectRatio(int i) {
        this.a.b(i);
        requestLayout();
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i, int i2) {
        this.a.c(i, i2);
        setMeasuredDimension(this.a.a(), this.a.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a implements a.b {
        private SurfaceRenderView a;
        private SurfaceHolder b;

        public a(SurfaceRenderView surfaceRenderView, SurfaceHolder surfaceHolder) {
            this.a = surfaceRenderView;
            this.b = surfaceHolder;
        }

        @Override // com.tencent.liteav.txcvodplayer.a.b
        public void a(ITXVCubePlayer iTXVCubePlayer) {
            if (iTXVCubePlayer != null) {
                if (TXCBuild.VersionInt() >= 16 && (iTXVCubePlayer instanceof c)) {
                    ((c) iTXVCubePlayer).setSurfaceTexture(null);
                }
                iTXVCubePlayer.setDisplay(this.b);
            }
        }

        @Override // com.tencent.liteav.txcvodplayer.a.b
        public a a() {
            return this.a;
        }

        @Override // com.tencent.liteav.txcvodplayer.a.b
        public Surface b() {
            SurfaceHolder surfaceHolder = this.b;
            if (surfaceHolder == null) {
                return null;
            }
            return surfaceHolder.getSurface();
        }

        @Override // com.tencent.liteav.txcvodplayer.a.b
        public Surface c() {
            return b();
        }
    }

    @Override // com.tencent.liteav.txcvodplayer.a
    public void addRenderCallback(a.AbstractC0029a aVar) {
        this.b.a(aVar);
    }

    @Override // com.tencent.liteav.txcvodplayer.a
    public void removeRenderCallback(a.AbstractC0029a aVar) {
        this.b.b(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b implements SurfaceHolder.Callback {
        private SurfaceHolder a;
        private boolean b;
        private int c;
        private int d;
        private int e;
        private WeakReference<SurfaceRenderView> f;
        private Map<a.AbstractC0029a, Object> g = new ConcurrentHashMap();

        public b(SurfaceRenderView surfaceRenderView) {
            this.f = new WeakReference<>(surfaceRenderView);
        }

        public void a(a.AbstractC0029a aVar) {
            a aVar2;
            this.g.put(aVar, aVar);
            if (this.a != null) {
                aVar2 = new a(this.f.get(), this.a);
                aVar.a(aVar2, this.d, this.e);
            } else {
                aVar2 = null;
            }
            if (this.b) {
                if (aVar2 == null) {
                    aVar2 = new a(this.f.get(), this.a);
                }
                aVar.a(aVar2, this.c, this.d, this.e);
            }
        }

        public void b(a.AbstractC0029a aVar) {
            this.g.remove(aVar);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            this.a = surfaceHolder;
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = 0;
            a aVar = new a(this.f.get(), this.a);
            for (a.AbstractC0029a aVar2 : this.g.keySet()) {
                aVar2.a(aVar, 0, 0);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            this.a = null;
            this.b = false;
            this.c = 0;
            this.d = 0;
            this.e = 0;
            a aVar = new a(this.f.get(), this.a);
            for (a.AbstractC0029a aVar2 : this.g.keySet()) {
                aVar2.a(aVar);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            this.a = surfaceHolder;
            this.b = true;
            this.c = i;
            this.d = i2;
            this.e = i3;
            a aVar = new a(this.f.get(), this.a);
            for (a.AbstractC0029a aVar2 : this.g.keySet()) {
                aVar2.a(aVar, i, i2, i3);
            }
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(SurfaceRenderView.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (TXCBuild.VersionInt() >= 14) {
            accessibilityNodeInfo.setClassName(SurfaceRenderView.class.getName());
        }
    }
}
