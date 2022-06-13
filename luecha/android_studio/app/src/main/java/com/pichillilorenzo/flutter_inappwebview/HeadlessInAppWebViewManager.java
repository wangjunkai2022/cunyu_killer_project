package com.pichillilorenzo.flutter_inappwebview;

import android.app.Activity;
import com.pichillilorenzo.flutter_inappwebview.InAppWebView.FlutterWebView;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class HeadlessInAppWebViewManager implements MethodChannel.MethodCallHandler {
    protected static final String LOG_TAG = "HeadlessInAppWebViewManager";
    public MethodChannel channel;
    Map<String, FlutterWebView> flutterWebViews = new HashMap();

    public HeadlessInAppWebViewManager(BinaryMessenger binaryMessenger) {
        this.channel = new MethodChannel(binaryMessenger, "com.pichillilorenzo/flutter_headless_inappwebview");
        this.channel.setMethodCallHandler(this);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c;
        Activity activity = Shared.activity;
        String str = (String) methodCall.argument("uuid");
        String str2 = methodCall.method;
        int hashCode = str2.hashCode();
        if (hashCode != 368876996) {
            if (hashCode == 454282817 && str2.equals("disposeHeadlessWebView")) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str2.equals("createHeadlessWebView")) {
                c = 0;
            }
            c = 65535;
        }
        if (c == 0) {
            createHeadlessWebView(activity, str, (HashMap) methodCall.argument("params"));
            result.success(true);
        } else if (c != 1) {
            result.notImplemented();
        } else {
            disposeHeadlessWebView(str);
            result.success(true);
        }
    }

    public void createHeadlessWebView(Activity activity, String str, HashMap<String, Object> hashMap) {
        this.flutterWebViews.put(str, new FlutterWebView(Shared.messenger, activity, str, hashMap, null));
    }

    public void disposeHeadlessWebView(String str) {
        if (this.flutterWebViews.containsKey(str)) {
            this.flutterWebViews.get(str).dispose();
            this.flutterWebViews.remove(str);
        }
    }

    public void dispose() {
        this.channel.setMethodCallHandler(null);
    }
}
