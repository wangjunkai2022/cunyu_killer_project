package com.pichillilorenzo.flutter_inappwebview;

import android.app.Activity;
import android.content.Context;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.PluginRegistry;

/* loaded from: classes5.dex */
public class Shared {
    public static Activity activity;
    public static ActivityPluginBinding activityPluginBinding;
    public static Context applicationContext;
    public static FlutterPlugin.FlutterAssets flutterAssets;
    public static BinaryMessenger messenger;
    public static PluginRegistry.Registrar registrar;
}
