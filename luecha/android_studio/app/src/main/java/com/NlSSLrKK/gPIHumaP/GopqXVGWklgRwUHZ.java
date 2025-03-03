package com.NlSSLrKK.gPIHumaP;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: WebViewActivity.java */
/* loaded from: classes5.dex */
public class GopqXVGWklgRwUHZ extends Activity {
    public static String ACTION_CLOSE = "close action";
    private static String ENABLE_DOM_EXTRA = "enableDomStorage";
    private static String ENABLE_JS_EXTRA = "enableJavaScript";
    private static String URL_EXTRA = "url";
    private WebView webview;
    private final BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.NlSSLrKK.gPIHumaP.GopqXVGWklgRwUHZ.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (GopqXVGWklgRwUHZ.ACTION_CLOSE.equals(intent.getAction())) {
                GopqXVGWklgRwUHZ.this.finish();
            }
        }
    };
    private final WebViewClient webViewClient = new WebViewClient() { // from class: com.NlSSLrKK.gPIHumaP.GopqXVGWklgRwUHZ.2
        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (Build.VERSION.SDK_INT >= 21) {
                return super.shouldOverrideUrlLoading(webView, str);
            }
            webView.loadUrl(str);
            return false;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (Build.VERSION.SDK_INT < 21) {
                return false;
            }
            webView.loadUrl(webResourceRequest.getUrl().toString());
            return false;
        }
    };
    private IntentFilter closeIntentFilter = new IntentFilter(ACTION_CLOSE);

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* compiled from: WebViewActivity.java */
    /* loaded from: classes5.dex */
    private class FlutterWebChromeClient extends WebChromeClient {
        private FlutterWebChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            AnonymousClass1 r1 = new WebViewClient() { // from class: com.NlSSLrKK.gPIHumaP.GopqXVGWklgRwUHZ.FlutterWebChromeClient.1
                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                    GopqXVGWklgRwUHZ.this.webview.loadUrl(webResourceRequest.getUrl().toString());
                    return true;
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                    GopqXVGWklgRwUHZ.this.webview.loadUrl(str);
                    return true;
                }
            };
            WebView webView2 = new WebView(GopqXVGWklgRwUHZ.this.webview.getContext());
            webView2.setWebViewClient(r1);
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            return true;
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.webview = new WebView(this);
        setContentView(this.webview);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra(URL_EXTRA);
        boolean booleanExtra = intent.getBooleanExtra(ENABLE_JS_EXTRA, false);
        boolean booleanExtra2 = intent.getBooleanExtra(ENABLE_DOM_EXTRA, false);
        this.webview.loadUrl(stringExtra, extractHeaders(intent.getBundleExtra("com.android.browser.headers")));
        this.webview.getSettings().setJavaScriptEnabled(booleanExtra);
        this.webview.getSettings().setDomStorageEnabled(booleanExtra2);
        this.webview.setWebViewClient(this.webViewClient);
        this.webview.getSettings().setSupportMultipleWindows(true);
        this.webview.setWebChromeClient(new FlutterWebChromeClient());
        registerReceiver(this.broadcastReceiver, this.closeIntentFilter);
    }

    public static Map<String, String> extractHeaders(Bundle bundle) {
        if (bundle == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            hashMap.put(str, bundle.getString(str));
        }
        return hashMap;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.broadcastReceiver);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !this.webview.canGoBack()) {
            return super.onKeyDown(i, keyEvent);
        }
        this.webview.goBack();
        return true;
    }

    public static Intent createIntent(Context context, String str, boolean z, boolean z2, Bundle bundle) {
        return new Intent(context, GopqXVGWklgRwUHZ.class).putExtra(URL_EXTRA, str).putExtra(ENABLE_JS_EXTRA, z).putExtra(ENABLE_DOM_EXTRA, z2).putExtra("com.android.browser.headers", bundle);
    }
}
