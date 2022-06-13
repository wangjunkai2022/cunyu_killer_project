package com.example.super_network_kit;

import android.content.Context;
import android.os.Build;
import com.example.super_network_kit.WsManager;
import com.example.super_network_kit.listener.WsStatusListener;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.tekartik.sqflite.Constant;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okio.ByteString;

/* loaded from: classes4.dex */
public class SuperNetworkKitPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {
    private MethodChannel channel;
    private int connIndex;
    private Context mContext;
    private HashMap<Integer, WsManager> wsMgrMap = new HashMap<>();

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.mContext = flutterPluginBinding.getApplicationContext();
        this.channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "super_network_kit");
        this.channel.setMethodCallHandler(this);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String str = methodCall.method;
        HashMap hashMap = (HashMap) methodCall.arguments;
        if (str.equals("sendString")) {
            result.success(Integer.valueOf(sendString(((Integer) hashMap.get("connID")).intValue(), hashMap.get("data").toString()) ? 1 : 0));
        } else if (str.equals("initConnection")) {
            String replace = ((String) hashMap.get(ImagesContract.URL)).replace("nobase64=1", "nobase64=0");
            String str2 = (String) hashMap.get("salt");
            boolean z = false;
            if (((Integer) hashMap.get("enableZip")).intValue() != 0) {
                z = true;
            }
            result.success(Integer.valueOf(initConnection(replace, str2, z)));
        } else if (str.equals(TtmlNode.START)) {
            result.success(Integer.valueOf(start(((Integer) hashMap.get("connID")).intValue()) ? 1 : 0));
        } else if (str.equals(NotificationAction.ACTION_STOP)) {
            result.success(Integer.valueOf(stop(((Integer) hashMap.get("connID")).intValue()) ? 1 : 0));
        } else if (str.equals("freeConnection")) {
            result.success(Integer.valueOf(freeConnection(((Integer) hashMap.get("connID")).intValue()) ? 1 : 0));
        } else if (str.equals("isConnected")) {
            result.success(Integer.valueOf(isConnected(((Integer) hashMap.get("connID")).intValue()) ? 1 : 0));
        } else if (methodCall.method.equals(Constant.METHOD_GET_PLATFORM_VERSION)) {
            result.success("Android " + Build.VERSION.RELEASE);
        } else {
            result.notImplemented();
        }
    }

    private int initConnection(String str, String str2, boolean z) {
        int i = this.connIndex + 1;
        this.connIndex = i;
        WsManager build = new WsManager.Builder(this.mContext).wsUrl(str).needReconnect(true).client(new OkHttpClient().newBuilder().pingInterval(15, TimeUnit.SECONDS).retryOnConnectionFailure(true).build()).enableZip(z).salt(str2).build();
        this.wsMgrMap.put(Integer.valueOf(i), build);
        final String str3 = "onOpen:" + i;
        final String str4 = "onMessage:" + i;
        final String str5 = "onClosed:" + i;
        final String str6 = "onFailure:" + i;
        build.setWsStatusListener(new WsStatusListener() { // from class: com.example.super_network_kit.SuperNetworkKitPlugin.1
            @Override // com.example.super_network_kit.listener.WsStatusListener
            public void onOpen(Response response) {
                super.onOpen(response);
                SuperNetworkKitPlugin.this.channel.invokeMethod(str3, null);
            }

            @Override // com.example.super_network_kit.listener.WsStatusListener
            public void onMessage(String str7) {
                super.onMessage(str7);
                SuperNetworkKitPlugin.this.channel.invokeMethod(str4, str7);
            }

            @Override // com.example.super_network_kit.listener.WsStatusListener
            public void onMessage(ByteString byteString) {
                super.onMessage(byteString);
                SuperNetworkKitPlugin.this.channel.invokeMethod(str4, byteString.string(Charset.forName("UTF8")));
            }

            @Override // com.example.super_network_kit.listener.WsStatusListener
            public void onReconnect() {
                super.onReconnect();
            }

            @Override // com.example.super_network_kit.listener.WsStatusListener
            public void onClosed(int i2, String str7) {
                super.onClosed(i2, str7);
                SuperNetworkKitPlugin.this.channel.invokeMethod(str5, str7);
            }

            @Override // com.example.super_network_kit.listener.WsStatusListener
            public void onFailure(Throwable th, Response response) {
                super.onFailure(th, response);
                SuperNetworkKitPlugin.this.channel.invokeMethod(str6, th.getMessage());
            }
        });
        return i;
    }

    private boolean start(int i) {
        WsManager wsManager = this.wsMgrMap.get(Integer.valueOf(i));
        if (wsManager == null) {
            return false;
        }
        wsManager.startConnect();
        return true;
    }

    private boolean stop(int i) {
        WsManager wsManager = this.wsMgrMap.get(Integer.valueOf(i));
        if (wsManager == null) {
            return false;
        }
        wsManager.stopConnect();
        return true;
    }

    private boolean freeConnection(int i) {
        WsManager wsManager = this.wsMgrMap.get(Integer.valueOf(i));
        if (wsManager == null) {
            return false;
        }
        wsManager.stopConnect();
        this.wsMgrMap.remove(Integer.valueOf(i));
        return true;
    }

    private boolean isConnected(int i) {
        WsManager wsManager = this.wsMgrMap.get(Integer.valueOf(i));
        if (wsManager == null) {
            return false;
        }
        return wsManager.isWsConnected();
    }

    private boolean sendString(int i, String str) {
        WsManager wsManager = this.wsMgrMap.get(Integer.valueOf(i));
        if (wsManager == null) {
            return false;
        }
        return wsManager.sendMessage(str);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.channel.setMethodCallHandler(null);
    }
}
