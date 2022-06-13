package com.tencent.thumbplayer.tplayer;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import com.tencent.thumbplayer.adapter.a.b.c;
import com.tencent.thumbplayer.api.ITPSurface;
import com.tencent.thumbplayer.api.ITPSurfaceListener;
import com.tencent.thumbplayer.core.player.ITPNativePlayerSurfaceCallback;
import com.tencent.thumbplayer.core.player.TPNativePlayerSurface;
import com.tencent.thumbplayer.core.player.TPNativePlayerSurfaceRenderInfo;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class e implements ITPSurface {
    private TPNativePlayerSurface a;
    private ITPSurfaceListener b = null;
    private ITPNativePlayerSurfaceCallback c = new ITPNativePlayerSurfaceCallback() { // from class: com.tencent.thumbplayer.tplayer.e.1
        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerSurfaceCallback
        public void onRenderInfo(TPNativePlayerSurfaceRenderInfo tPNativePlayerSurfaceRenderInfo) {
            ITPSurfaceListener iTPSurfaceListener = e.this.b;
            if (iTPSurfaceListener != null) {
                iTPSurfaceListener.onRenderInfo(c.a(tPNativePlayerSurfaceRenderInfo));
            }
        }
    };

    public e(SurfaceTexture surfaceTexture) {
        this.a = null;
        this.a = new TPNativePlayerSurface(surfaceTexture);
        this.a.setTPSurfaceCallback(this.c);
    }

    public Surface a() {
        return this.a;
    }

    protected void finalize() {
        this.a.release();
        super.finalize();
    }

    @Override // com.tencent.thumbplayer.api.ITPSurface
    public void setSurfaceListener(ITPSurfaceListener iTPSurfaceListener) {
        this.b = iTPSurfaceListener;
    }
}
