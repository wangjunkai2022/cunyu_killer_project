package com.netease.nis.captcha;

import android.content.Context;
import android.content.res.Configuration;
import android.net.http.SslError;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class CaptchaWebView extends WebView {
    private CaptchaListener a;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public class b extends WebViewClient {
        private b() {
        }

        private void a(String str) {
            Log.d("Captcha.WebView", String.format("WebViewClient's [%s] method has callback", str));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            a("onReceivedError");
            c.a("error code is:%s error description is:%s", Integer.valueOf(webResourceError.getErrorCode()), webResourceError.getDescription());
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (CaptchaWebView.this.a != null) {
                CaptchaListener captchaListener = CaptchaWebView.this.a;
                int errorCode = webResourceError.getErrorCode();
                captchaListener.onError(errorCode, "[onReceivedError]error code:" + webResourceError.getErrorCode() + "error desc:" + ((Object) webResourceError.getDescription()));
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            if (webResourceRequest.isForMainFrame() && !webResourceRequest.getUrl().getPath().endsWith("/favicon.ico")) {
                a("onReceivedHttpError");
                c.a("[onReceivedHttpError] status code is:%s error reason is:%s", Integer.valueOf(webResourceResponse.getStatusCode()), webResourceResponse.getReasonPhrase());
            }
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (CaptchaWebView.this.a != null) {
                CaptchaListener captchaListener = CaptchaWebView.this.a;
                int statusCode = webResourceResponse.getStatusCode();
                captchaListener.onError(statusCode, "[onReceivedHttpError]error code:" + webResourceResponse.getStatusCode() + "error desc:" + webResourceResponse.getReasonPhrase());
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            a("onReceivedSslError" + sslError.toString());
            if (CaptchaWebView.this.a != null) {
                CaptchaWebView.this.a.onError(sslError.getPrimaryError(), "[onReceivedSslError]");
            }
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
    }

    public CaptchaWebView(Context context) {
        super(a(context));
        a();
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        scrollTo(0, 0);
    }

    public void setCaptchaListener(CaptchaListener captchaListener) {
        this.a = captchaListener;
    }

    private void a() {
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setDomStorageEnabled(true);
        settings.setSavePassword(false);
        settings.setAllowFileAccess(false);
        settings.setTextZoom(100);
        int i = Build.VERSION.SDK_INT;
        if (i >= 16) {
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
        }
        if (i < 19) {
            removeJavascriptInterface("searchBoxJavaBridge_");
            removeJavascriptInterface("accessibility");
            removeJavascriptInterface("accessibilityTraversal");
        }
        settings.setGeolocationEnabled(false);
        settings.setAllowContentAccess(false);
        settings.setDatabaseEnabled(true);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setWebChromeClient(new WebChromeClient());
        setWebViewClient(new b());
        resumeTimers();
        setBackgroundColor(0);
    }

    public CaptchaWebView(Context context, AttributeSet attributeSet) {
        super(a(context), attributeSet);
        a();
    }

    public CaptchaWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private static Context a(Context context) {
        int i = Build.VERSION.SDK_INT;
        return (i < 21 || i >= 23) ? context : context.createConfigurationContext(new Configuration());
    }
}
