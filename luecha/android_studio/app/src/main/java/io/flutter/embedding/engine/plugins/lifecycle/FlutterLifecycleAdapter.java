package io.flutter.embedding.engine.plugins.lifecycle;

import androidx.lifecycle.Lifecycle;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class FlutterLifecycleAdapter {
    private static final String TAG = "FlutterLifecycleAdapter";

    public static Lifecycle getActivityLifecycle(ActivityPluginBinding activityPluginBinding) {
        return ((HiddenLifecycleReference) activityPluginBinding.getLifecycle()).getLifecycle();
    }
}
