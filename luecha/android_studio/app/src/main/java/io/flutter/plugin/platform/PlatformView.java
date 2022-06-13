package io.flutter.plugin.platform;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface PlatformView {

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* renamed from: io.flutter.plugin.platform.PlatformView$-CC  reason: invalid class name */
    /* loaded from: classes5.dex */
    public final /* synthetic */ class CC {
        public static void $default$onFlutterViewAttached(PlatformView platformView, View view) {
        }

        public static void $default$onFlutterViewDetached(PlatformView platformView) {
        }

        public static void $default$onInputConnectionLocked(PlatformView platformView) {
        }

        public static void $default$onInputConnectionUnlocked(PlatformView platformView) {
        }
    }

    void dispose();

    View getView();

    void onFlutterViewAttached(View view);

    void onFlutterViewDetached();

    void onInputConnectionLocked();

    void onInputConnectionUnlocked();
}
