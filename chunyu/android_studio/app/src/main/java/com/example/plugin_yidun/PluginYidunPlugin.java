package com.example.plugin_yidun;

import android.content.Context;
import android.os.Build;
import com.netease.mobsec.GetTokenCallback;
import com.netease.mobsec.InitCallback;
import com.netease.mobsec.WatchMan;
import com.netease.mobsec.WatchManConf;
import com.tekartik.sqflite.Constant;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class PluginYidunPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {
    private MethodChannel channel;
    private String codeval;
    private Context context;
    private String token;

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.context = flutterPluginBinding.getApplicationContext();
        this.channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "plugin_yidun");
        this.channel.setMethodCallHandler(this);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if (methodCall.method.equals(Constant.METHOD_GET_PLATFORM_VERSION)) {
            result.success("Android " + Build.VERSION.RELEASE);
        } else if (methodCall.method.equals("initYd")) {
            try {
                WatchManConf watchManConf = new WatchManConf();
                watchManConf.setCollectApk(true);
                watchManConf.setCollectSensor(true);
                WatchMan.init(this.context, (String) ((HashMap) methodCall.arguments).get(Constant.PARAM_ERROR_CODE), watchManConf, new InitCallback() { // from class: com.example.plugin_yidun.PluginYidunPlugin.1
                    @Override // com.netease.mobsec.InitCallback
                    public void onResult(int i, String str) {
                        PluginYidunPlugin.this.codeval = String.valueOf(i);
                        if (i == 200) {
                            PluginYidunPlugin.this.channel.invokeMethod("checkToken", "1");
                        }
                    }
                });
                result.success(this.codeval);
            } catch (Exception e) {
                result.error("-1", e.getMessage(), e.getStackTrace());
            }
        } else if (methodCall.method.equals("getYdToken")) {
            try {
                WatchMan.getToken(new GetTokenCallback() { // from class: com.example.plugin_yidun.PluginYidunPlugin.2
                    @Override // com.netease.mobsec.GetTokenCallback
                    public void onResult(int i, String str, String str2) {
                        PluginYidunPlugin.this.token = str2;
                    }
                });
                result.success(this.token);
            } catch (Exception e2) {
                result.error("-2", e2.getMessage(), e2.getStackTrace());
            }
        } else {
            result.notImplemented();
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.channel.setMethodCallHandler(null);
    }
}
