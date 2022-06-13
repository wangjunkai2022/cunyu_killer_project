package com.wx.gesture_recognition;

import android.os.Build;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class GestureRecognitionPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {
    private static MethodChannel channel;

    public static void registerWith(PluginRegistry.Registrar registrar) {
        new GestureRecognitionPlugin().onAttachedToEngine(registrar.messenger());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        onAttachedToEngine(flutterPluginBinding.getBinaryMessenger());
    }

    private void onAttachedToEngine(BinaryMessenger binaryMessenger) {
        channel = new MethodChannel(binaryMessenger, "gesture_recognition");
        channel.setMethodCallHandler(new GestureRecognitionPlugin());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        channel.setMethodCallHandler(null);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if (methodCall.method.equals("getPlatformVersion")) {
            result.success("Android " + Build.VERSION.RELEASE);
            return;
        }
        result.notImplemented();
    }
}
