package com.example.super_player_kit;

import android.app.Activity;
import android.util.Log;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;

/* loaded from: classes2.dex */
public class SuperPlayerKitPlugin implements FlutterPlugin, ActivityAware {
    private static final String TAG = SuperPlayerKitPlugin.class.getName();
    private static Activity _activity;

    public static Activity getActivity() {
        return _activity;
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Log.i(TAG, "onAttachedToEngine");
        flutterPluginBinding.getPlatformViewRegistry().registerViewFactory("SuperPlayerKit", new SuperPlayerKitFactory(flutterPluginBinding.getBinaryMessenger()));
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Log.i(TAG, "onDetachedFromEngine");
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        Log.i(TAG, "onAttachedToActivity");
        _activity = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        Log.i(TAG, "onDetachedFromActivityForConfigChanges");
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        Log.i(TAG, "onReattachedToActivityForConfigChanges");
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        Log.i(TAG, "onDetachedFromActivity");
    }
}
