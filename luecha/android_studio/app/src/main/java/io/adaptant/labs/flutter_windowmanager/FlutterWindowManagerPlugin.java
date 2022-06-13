package io.adaptant.labs.flutter_windowmanager;

import android.app.Activity;
import android.os.Build;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class FlutterWindowManagerPlugin implements MethodChannel.MethodCallHandler, FlutterPlugin, ActivityAware {
    private Activity activity;

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
    }

    public FlutterWindowManagerPlugin() {
    }

    private FlutterWindowManagerPlugin(Activity activity) {
        this.activity = activity;
    }

    @Deprecated
    public static void registerWith(PluginRegistry.Registrar registrar) {
        new FlutterWindowManagerPlugin(registrar.activity()).registerWith(registrar.messenger());
    }

    private void registerWith(BinaryMessenger binaryMessenger) {
        new MethodChannel(binaryMessenger, "flutter_windowmanager").setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        registerWith(flutterPluginBinding.getBinaryMessenger());
    }

    private boolean validLayoutParam(int i) {
        if (i == 1 || i == 2) {
            return true;
        }
        switch (i) {
            case Integer.MIN_VALUE:
                return Build.VERSION.SDK_INT >= 21;
            case 4:
                return Build.VERSION.SDK_INT < 15;
            case 8:
            case 16:
            case 32:
            case 128:
            case 256:
            case 512:
            case 1024:
            case 2048:
            case 8192:
            case 16384:
            case 32768:
            case 65536:
            case 131072:
            case 262144:
            case 1048576:
            case 8388608:
            case 16777216:
                return true;
            case 64:
                return Build.VERSION.SDK_INT < 20;
            case 4096:
                return Build.VERSION.SDK_INT < 17;
            case 524288:
                return Build.VERSION.SDK_INT < 27;
            case 2097152:
                return Build.VERSION.SDK_INT < 27;
            case 4194304:
                return Build.VERSION.SDK_INT >= 5 && Build.VERSION.SDK_INT < 26;
            case 33554432:
                return Build.VERSION.SDK_INT >= 18;
            case 67108864:
            case 134217728:
                return Build.VERSION.SDK_INT >= 19;
            case 268435456:
                return Build.VERSION.SDK_INT >= 19;
            case 1073741824:
                return Build.VERSION.SDK_INT >= 22;
            default:
                return false;
        }
    }

    private boolean validLayoutParams(MethodChannel.Result result, int i) {
        for (int i2 = 0; i2 < 32; i2++) {
            int i3 = 1 << i2;
            if ((i & i3) == 1 && !validLayoutParam(i3)) {
                result.error("FlutterWindowManagerPlugin", "FlutterWindowManagerPlugin: invalid flag specification: " + Integer.toHexString(i3), null);
                return false;
            }
        }
        return true;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        int intValue = ((Integer) methodCall.argument("flags")).intValue();
        if (this.activity == null) {
            result.error("FlutterWindowManagerPlugin", "FlutterWindowManagerPlugin: ignored flag state change, current activity is null", null);
        }
        if (validLayoutParams(result, intValue)) {
            String str = methodCall.method;
            char c = 65535;
            int hashCode = str.hashCode();
            if (hashCode != -1259158938) {
                if (hashCode == -756142022 && str.equals("clearFlags")) {
                    c = 1;
                }
            } else if (str.equals("addFlags")) {
                c = 0;
            }
            if (c == 0) {
                this.activity.getWindow().addFlags(intValue);
                result.success(true);
            } else if (c != 1) {
                result.notImplemented();
            } else {
                this.activity.getWindow().clearFlags(intValue);
                result.success(true);
            }
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        this.activity = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        this.activity = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        onAttachedToActivity(activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.activity = null;
    }
}
