package xyz.ipig.native_dialog;

import android.app.Activity;
import android.os.Build;
import com.tekartik.sqflite.Constant;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class NativeDialogPlugin implements FlutterPlugin, ActivityAware, MethodChannel.MethodCallHandler {
    private static Activity _activity;
    private MethodChannel channel;
    private PromptDialog promptDialog;

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.channel = new MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "native_dialog");
        this.channel.setMethodCallHandler(this);
    }

    public static void registerWith(PluginRegistry.Registrar registrar) {
        new MethodChannel(registrar.messenger(), "native_dialog").setMethodCallHandler(new NativeDialogPlugin());
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        _activity = activityPluginBinding.getActivity();
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String str = methodCall.method;
        HashMap hashMap = (HashMap) methodCall.arguments;
        if (str.equals(Constant.METHOD_GET_PLATFORM_VERSION)) {
            result.success("Android " + Build.VERSION.RELEASE);
        } else if (str.equals("loadingDialog")) {
            loadDialog(hashMap.get("version").toString(), hashMap.get("content").toString(), hashMap.get("status").toString());
            result.success("loadDialog success");
        } else {
            result.notImplemented();
        }
    }

    private void loadDialog(String str, String str2, String str3) {
        if (this.promptDialog == null) {
            this.promptDialog = new PromptDialog(_activity);
        }
        if ("1".equals(str3)) {
            this.promptDialog.dismissImmediately();
            return;
        }
        PromptDialog promptDialog = this.promptDialog;
        promptDialog.showLoading("" + str + "-" + str2, false);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.channel.setMethodCallHandler(null);
    }
}
