package com.netease.nis.basesdk.webview;

import android.content.Context;
import android.content.res.Configuration;
import android.net.http.SslError;
import android.os.Build;
import android.util.AttributeSet;
import android.webkit.JsPromptResult;
import android.webkit.SslErrorHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class NisWebView extends WebView {
    private WebChromeClient a;
    private WebViewClient b;
    private String c;
    private boolean d;
    private WebChromeClient e;
    private WebViewClient f;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    class a implements Runnable {
        final /* synthetic */ StringBuilder a;

        a(StringBuilder sb) {
            this.a = sb;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT >= 19) {
                NisWebView.this.evaluateJavascript(this.a.toString(), null);
            } else {
                NisWebView.this.loadUrl(this.a.toString());
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    class b implements Runnable {
        final /* synthetic */ StringBuilder a;
        final /* synthetic */ ValueCallback b;

        b(StringBuilder sb, ValueCallback valueCallback) {
            this.a = sb;
            this.b = valueCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT >= 19) {
                NisWebView.this.evaluateJavascript(this.a.toString(), this.b);
                return;
            }
            NisWebView nisWebView = NisWebView.this;
            nisWebView.loadUrl("javascript:onJsPrompt(" + this.a.toString() + ")");
            this.b.onReceiveValue(NisWebView.this.c);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    class c extends WebChromeClient {
        c() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            NisWebView.this.c = str2;
            if (NisWebView.this.a != null) {
                return NisWebView.this.a.onJsPrompt(webView, str, str2, str3, jsPromptResult);
            }
            return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    class d extends WebViewClient {
        d() {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            if (NisWebView.this.d) {
                sslErrorHandler.proceed();
            } else {
                sslErrorHandler.cancel();
            }
            if (NisWebView.this.b != null) {
                NisWebView.this.b.onReceivedSslError(webView, sslErrorHandler, sslError);
            } else {
                super.onReceivedSslError(webView, sslErrorHandler, sslError);
            }
        }
    }

    public NisWebView(Context context) {
        this(context, null);
    }

    public void callJsMethod(String str, Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("javascript:");
        sb.append(str);
        sb.append("(");
        for (Object obj : objArr) {
            sb.append(obj);
            sb.append(",");
        }
        sb.append(")");
        post(new a(sb));
    }

    public void enableDebugMode() {
        this.d = true;
    }

    @Override // android.webkit.WebView
    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.a = webChromeClient;
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
        this.b = webViewClient;
    }

    public NisWebView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NisWebView(Context context, AttributeSet attributeSet, int i) {
        super(a(context), attributeSet, i);
        this.d = false;
        this.e = new c();
        this.f = new d();
        a();
    }

    private static Context a(Context context) {
        int i = Build.VERSION.SDK_INT;
        return (i < 21 || i >= 23) ? context : context.createConfigurationContext(new Configuration());
    }

    private void a() {
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(true);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setWebChromeClient(this.e);
        setWebViewClient(this.f);
        resumeTimers();
    }

    public void callJsMethod(String str, Object[] objArr, ValueCallback<String> valueCallback) {
        StringBuilder sb = new StringBuilder();
        sb.append("javascript:");
        sb.append(str);
        sb.append("(");
        for (Object obj : objArr) {
            sb.append(obj);
            sb.append(",");
        }
        sb.append(")");
        post(new b(sb, valueCallback));
    }
}
