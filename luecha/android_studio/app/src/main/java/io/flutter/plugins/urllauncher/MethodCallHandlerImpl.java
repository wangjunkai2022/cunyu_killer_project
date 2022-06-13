package io.flutter.plugins.urllauncher;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.internal.ImagesContract;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.urllauncher.UrlLauncher;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
final class MethodCallHandlerImpl implements MethodChannel.MethodCallHandler {
    private static final String TAG = "MethodCallHandlerImpl";
    private MethodChannel channel;
    private final UrlLauncher urlLauncher;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MethodCallHandlerImpl(UrlLauncher urlLauncher) {
        this.urlLauncher = urlLauncher;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c;
        String str = (String) methodCall.argument(ImagesContract.URL);
        String str2 = methodCall.method;
        int hashCode = str2.hashCode();
        if (hashCode == -1109843021) {
            if (str2.equals("launch")) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode != -185306205) {
            if (hashCode == -121617663 && str2.equals("closeWebView")) {
                c = 2;
            }
            c = 65535;
        } else {
            if (str2.equals("canLaunch")) {
                c = 0;
            }
            c = 65535;
        }
        if (c == 0) {
            onCanLaunch(result, str);
        } else if (c == 1) {
            onLaunch(methodCall, result, str);
        } else if (c != 2) {
            result.notImplemented();
        } else {
            onCloseWebView(result);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startListening(BinaryMessenger binaryMessenger) {
        if (this.channel != null) {
            Log.wtf("MethodCallHandlerImpl", "Setting a method call handler before the last was disposed.");
            stopListening();
        }
        this.channel = new MethodChannel(binaryMessenger, "plugins.flutter.io/url_launcher_android");
        this.channel.setMethodCallHandler(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stopListening() {
        MethodChannel methodChannel = this.channel;
        if (methodChannel == null) {
            Log.d("MethodCallHandlerImpl", "Tried to stop listening when no MethodChannel had been initialized.");
            return;
        }
        methodChannel.setMethodCallHandler(null);
        this.channel = null;
    }

    private void onCanLaunch(MethodChannel.Result result, String str) {
        result.success(Boolean.valueOf(this.urlLauncher.canLaunch(str)));
    }

    private void onLaunch(MethodCall methodCall, MethodChannel.Result result, String str) {
        UrlLauncher.LaunchStatus launch = this.urlLauncher.launch(str, extractBundle((Map) methodCall.argument("headers")), ((Boolean) methodCall.argument("useWebView")).booleanValue(), ((Boolean) methodCall.argument("enableJavaScript")).booleanValue(), ((Boolean) methodCall.argument("enableDomStorage")).booleanValue());
        if (launch == UrlLauncher.LaunchStatus.NO_ACTIVITY) {
            result.error("NO_ACTIVITY", "Launching a URL requires a foreground activity.", null);
        } else if (launch == UrlLauncher.LaunchStatus.ACTIVITY_NOT_FOUND) {
            result.error("ACTIVITY_NOT_FOUND", String.format("No Activity found to handle intent { %s }", str), null);
        } else {
            result.success(true);
        }
    }

    private void onCloseWebView(MethodChannel.Result result) {
        this.urlLauncher.closeWebView();
        result.success(null);
    }

    private static Bundle extractBundle(Map<String, String> map) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            bundle.putString(str, map.get(str));
        }
        return bundle;
    }
}
