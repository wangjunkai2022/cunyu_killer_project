package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.util.Log;
import android.webkit.WebView;
import androidx.webkit.WebViewFeature;
import androidx.webkit.WebViewRenderProcess;
import androidx.webkit.WebViewRenderProcessClient;
import com.google.android.gms.common.internal.ImagesContract;
import com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class InAppWebViewRenderProcessClient extends WebViewRenderProcessClient {
    protected static final String LOG_TAG = "IAWRenderProcessClient";
    public MethodChannel channel;
    private FlutterWebView flutterWebView;
    private InAppBrowserActivity inAppBrowserActivity;

    public InAppWebViewRenderProcessClient(Object obj) {
        if (obj instanceof InAppBrowserActivity) {
            this.inAppBrowserActivity = (InAppBrowserActivity) obj;
        } else if (obj instanceof FlutterWebView) {
            this.flutterWebView = (FlutterWebView) obj;
        }
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        this.channel = inAppBrowserActivity != null ? inAppBrowserActivity.channel : this.flutterWebView.channel;
    }

    @Override // androidx.webkit.WebViewRenderProcessClient
    public void onRenderProcessUnresponsive(WebView webView, final WebViewRenderProcess webViewRenderProcess) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, webView.getUrl());
        this.channel.invokeMethod("onRenderProcessUnresponsive", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewRenderProcessClient.1
            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void notImplemented() {
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void success(Object obj) {
                Integer num = (Integer) ((Map) obj).get("action");
                if (num != null && webViewRenderProcess != null && num.intValue() == 0 && WebViewFeature.isFeatureSupported("WEB_VIEW_RENDERER_TERMINATE")) {
                    webViewRenderProcess.terminate();
                }
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void error(String str, String str2, Object obj) {
                Log.d(InAppWebViewRenderProcessClient.LOG_TAG, "ERROR: " + str + " " + str2);
            }
        });
    }

    @Override // androidx.webkit.WebViewRenderProcessClient
    public void onRenderProcessResponsive(WebView webView, final WebViewRenderProcess webViewRenderProcess) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.inAppBrowserActivity;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(ImagesContract.URL, webView.getUrl());
        this.channel.invokeMethod("onRenderProcessResponsive", hashMap, new MethodChannel.Result() { // from class: com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebViewRenderProcessClient.2
            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void notImplemented() {
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void success(Object obj) {
                Integer num = (Integer) ((Map) obj).get("action");
                if (num != null && webViewRenderProcess != null && num.intValue() == 0 && WebViewFeature.isFeatureSupported("WEB_VIEW_RENDERER_TERMINATE")) {
                    webViewRenderProcess.terminate();
                }
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void error(String str, String str2, Object obj) {
                Log.d(InAppWebViewRenderProcessClient.LOG_TAG, "ERROR: " + str + " " + str2);
            }
        });
    }
}
