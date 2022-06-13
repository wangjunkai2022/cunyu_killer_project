package com.pichillilorenzo.flutter_inappwebview;

import android.content.pm.PackageInfo;
import android.os.Build;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class InAppWebViewStatic implements MethodChannel.MethodCallHandler {
    protected static final String LOG_TAG = "InAppWebViewStatic";
    public MethodChannel channel;

    public InAppWebViewStatic(BinaryMessenger binaryMessenger) {
        this.channel = new MethodChannel(binaryMessenger, "com.pichillilorenzo/flutter_inappwebview_static");
        this.channel.setMethodCallHandler(this);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, final MethodChannel.Result result) {
        char c;
        String str = methodCall.method;
        switch (str.hashCode()) {
            case -1600358415:
                if (str.equals("setSafeBrowsingWhitelist")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -436220260:
                if (str.equals("clearClientCertPreferences")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 258673215:
                if (str.equals("getSafeBrowsingPrivacyPolicyUrl")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 643643439:
                if (str.equals("getDefaultUserAgent")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1586319888:
                if (str.equals("getCurrentWebViewPackage")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            result.success(WebSettings.getDefaultUserAgent(Shared.applicationContext));
        } else if (c != 1) {
            if (c != 2) {
                if (c != 3) {
                    if (c != 4) {
                        result.notImplemented();
                    } else if (Build.VERSION.SDK_INT >= 26) {
                        result.success(convertWebViewPackageToMap(WebViewCompat.getCurrentWebViewPackage(Shared.activity)));
                    } else {
                        result.success(null);
                    }
                } else if (Build.VERSION.SDK_INT < 27 || !WebViewFeature.isFeatureSupported("SAFE_BROWSING_WHITELIST")) {
                    result.success(false);
                } else {
                    WebViewCompat.setSafeBrowsingWhitelist((List) methodCall.argument("hosts"), new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebViewStatic.2
                        public void onReceiveValue(Boolean bool) {
                            result.success(bool);
                        }
                    });
                }
            } else if (Build.VERSION.SDK_INT < 27 || !WebViewFeature.isFeatureSupported("SAFE_BROWSING_PRIVACY_POLICY_URL")) {
                result.success(null);
            } else {
                result.success(WebViewCompat.getSafeBrowsingPrivacyPolicyUrl().toString());
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            WebView.clearClientCertPreferences(new Runnable() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebViewStatic.1
                @Override // java.lang.Runnable
                public void run() {
                    result.success(true);
                }
            });
        } else {
            result.success(false);
        }
    }

    public Map<String, Object> convertWebViewPackageToMap(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("versionName", packageInfo.versionName);
        hashMap.put("packageName", packageInfo.packageName);
        return hashMap;
    }

    public void dispose() {
        this.channel.setMethodCallHandler(null);
    }
}
