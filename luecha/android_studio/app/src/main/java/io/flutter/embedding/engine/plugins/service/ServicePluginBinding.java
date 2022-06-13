package io.flutter.embedding.engine.plugins.service;

import android.app.Service;
import io.flutter.embedding.engine.plugins.service.ServiceAware;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ServicePluginBinding {
    void addOnModeChangeListener(ServiceAware.OnModeChangeListener onModeChangeListener);

    Object getLifecycle();

    Service getService();

    void removeOnModeChangeListener(ServiceAware.OnModeChangeListener onModeChangeListener);
}
