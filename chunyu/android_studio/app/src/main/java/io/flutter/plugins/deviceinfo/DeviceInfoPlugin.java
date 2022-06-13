package io.flutter.plugins.deviceinfo;

import android.content.Context;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;

/* loaded from: classes2.dex */
public class DeviceInfoPlugin implements FlutterPlugin {
    private static DeviceUuidFactory uuidFactory;
    MethodChannel channel;

    public static String getDeviceId() {
        DeviceUuidFactory deviceUuidFactory = uuidFactory;
        return DeviceUuidFactory.getUuid().toString();
    }

    public static void registerWith(PluginRegistry.Registrar registrar) {
        new DeviceInfoPlugin().setupMethodChannel(registrar.messenger(), registrar.context());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        setupMethodChannel(flutterPluginBinding.getBinaryMessenger(), flutterPluginBinding.getApplicationContext());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        tearDownChannel();
    }

    private void setupMethodChannel(BinaryMessenger binaryMessenger, Context context) {
        this.channel = new MethodChannel(binaryMessenger, "plugins.flutter.io/device_info");
        if (uuidFactory == null) {
            uuidFactory = new DeviceUuidFactory(context);
        }
        this.channel.setMethodCallHandler(new MethodCallHandlerImpl(context.getContentResolver(), context.getPackageManager()));
    }

    private void tearDownChannel() {
        this.channel.setMethodCallHandler(null);
        this.channel = null;
    }
}
