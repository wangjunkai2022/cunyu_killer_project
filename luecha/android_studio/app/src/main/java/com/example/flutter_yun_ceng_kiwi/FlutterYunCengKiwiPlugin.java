package com.example.flutter_yun_ceng_kiwi;

import android.os.Build;
import com.kiwi.sdk.Kiwi;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class FlutterYunCengKiwiPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {
    private MethodChannel channel;

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.channel = new MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "flutter_yun_ceng_kiwi");
        this.channel.setMethodCallHandler(this);
    }

    public static void registerWith(PluginRegistry.Registrar registrar) {
        new MethodChannel(registrar.messenger(), "flutter_yun_ceng_kiwi").setMethodCallHandler(new FlutterYunCengKiwiPlugin());
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if (methodCall.method.equals("getPlatformVersion")) {
            result.success("Android " + Build.VERSION.RELEASE);
        } else if (methodCall.method.equals("initEx")) {
            try {
                result.success(Integer.valueOf(Kiwi.Init((String) ((HashMap) methodCall.arguments).get("appKey"))));
            } catch (Exception e) {
                result.error("-1", e.getMessage(), e.getStackTrace());
            }
        } else if (methodCall.method.equals("restartAllServer")) {
            try {
                Kiwi.RestartAllServer();
                result.success(0);
            } catch (Exception e2) {
                result.error("-1", e2.getMessage(), e2.getStackTrace());
            }
        } else if (methodCall.method.equals("getProxyTcpByDomain")) {
            try {
                HashMap hashMap = (HashMap) methodCall.arguments;
                String str = (String) hashMap.get("token");
                String str2 = (String) hashMap.get("ddomain");
                String str3 = (String) hashMap.get("dport");
                StringBuffer stringBuffer = new StringBuffer();
                StringBuffer stringBuffer2 = new StringBuffer();
                int ServerToLocal = Kiwi.ServerToLocal((String) hashMap.get("group_name"), stringBuffer, stringBuffer2);
                HashMap hashMap2 = new HashMap();
                hashMap2.put("target_ip", stringBuffer.toString());
                hashMap2.put("target_port", stringBuffer2.toString());
                hashMap2.put("code", String.valueOf(ServerToLocal));
                result.success(hashMap2);
            } catch (Exception e3) {
                result.error("-2", e3.getMessage(), e3.getStackTrace());
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
