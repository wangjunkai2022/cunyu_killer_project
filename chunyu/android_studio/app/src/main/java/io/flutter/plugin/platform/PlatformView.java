package io.flutter.plugin.platform;

import android.view.View;

/* loaded from: classes2.dex */
public interface PlatformView {

    /* renamed from: io.flutter.plugin.platform.PlatformView$-CC  reason: invalid class name */
    /* loaded from: classes2.dex */
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
