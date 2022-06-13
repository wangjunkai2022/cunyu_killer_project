package com.tencent.thumbplayer.h.c;

import android.graphics.SurfaceTexture;

/* loaded from: classes2.dex */
public final class b extends SurfaceTexture {
    private a a;

    /* loaded from: classes2.dex */
    public interface a {
        void a();
    }

    public b(int i) {
        super(i);
    }

    public final void a(a aVar) {
        this.a = aVar;
    }

    @Override // android.graphics.SurfaceTexture
    public void release() {
        super.release();
        a aVar = this.a;
        if (aVar != null) {
            aVar.a();
        }
    }
}
