package flutter.plugins.vibrate;

import android.content.Context;
import android.os.Vibrator;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;

/* loaded from: classes2.dex */
public class VibratePlugin implements FlutterPlugin {
    private MethodChannel methodChannel;

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Context applicationContext = flutterPluginBinding.getApplicationContext();
        BinaryMessenger binaryMessenger = flutterPluginBinding.getBinaryMessenger();
        VibrateMethodCallHandler vibrateMethodCallHandler = new VibrateMethodCallHandler((Vibrator) applicationContext.getSystemService("vibrator"));
        this.methodChannel = new MethodChannel(binaryMessenger, "vibrate");
        this.methodChannel.setMethodCallHandler(vibrateMethodCallHandler);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.methodChannel.setMethodCallHandler(null);
        this.methodChannel = null;
    }
}
