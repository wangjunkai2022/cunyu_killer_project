package io.flutter.embedding.engine.plugins.service;

import android.app.Service;
import androidx.lifecycle.Lifecycle;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ServiceControlSurface {
    void attachToService(Service service, Lifecycle lifecycle, boolean z);

    void detachFromService();

    void onMoveToBackground();

    void onMoveToForeground();
}
