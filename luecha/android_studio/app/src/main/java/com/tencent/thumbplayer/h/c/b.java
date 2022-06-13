package com.tencent.thumbplayer.h.c;

import android.graphics.SurfaceTexture;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class b extends SurfaceTexture {
    private a a;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
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
