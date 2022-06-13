package io.flutter.embedding.engine;

import android.view.Surface;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class FlutterOverlaySurface {
    private final int id;
    private final Surface surface;

    public FlutterOverlaySurface(int i, Surface surface) {
        this.id = i;
        this.surface = surface;
    }

    public int getId() {
        return this.id;
    }

    public Surface getSurface() {
        return this.surface;
    }
}
