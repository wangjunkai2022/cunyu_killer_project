package io.flutter.plugin.platform;

import android.view.View;
import io.flutter.view.AccessibilityBridge;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface PlatformViewsAccessibilityDelegate {
    void attachAccessibilityBridge(AccessibilityBridge accessibilityBridge);

    void detachAccessibilityBridge();

    View getPlatformViewById(Integer num);

    boolean usesVirtualDisplay(Integer num);
}
