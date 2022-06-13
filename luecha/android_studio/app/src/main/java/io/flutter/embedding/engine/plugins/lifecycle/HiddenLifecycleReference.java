package io.flutter.embedding.engine.plugins.lifecycle;

import androidx.lifecycle.Lifecycle;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class HiddenLifecycleReference {
    private final Lifecycle lifecycle;

    public HiddenLifecycleReference(Lifecycle lifecycle) {
        this.lifecycle = lifecycle;
    }

    public Lifecycle getLifecycle() {
        return this.lifecycle;
    }
}
