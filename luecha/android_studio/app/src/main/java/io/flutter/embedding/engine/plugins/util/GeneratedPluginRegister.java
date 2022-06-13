package io.flutter.embedding.engine.plugins.util;

import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class GeneratedPluginRegister {
    private static final String TAG = "GeneratedPluginsRegister";

    public static void registerGeneratedPlugins(FlutterEngine flutterEngine) {
        try {
            Class.forName("io.flutter.plugins.GeneratedPluginRegistrant").getDeclaredMethod("registerWith", FlutterEngine.class).invoke(null, flutterEngine);
        } catch (Exception e) {
            Log.e("GeneratedPluginsRegister", "Tried to automatically register plugins with FlutterEngine (" + flutterEngine + ") but could not find or invoke the GeneratedPluginRegistrant.");
            Log.e("GeneratedPluginsRegister", "Received exception while registering", e);
        }
    }
}
