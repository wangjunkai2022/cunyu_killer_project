package org.chromium.support_lib_boundary;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.lang.reflect.InvocationHandler;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface WebViewClientBoundaryInterface extends FeatureFlagHolderBoundaryInterface {
    @Override // org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    void onPageCommitVisible(WebView webView, String str);

    void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, InvocationHandler invocationHandler);

    @Override // org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse);

    void onSafeBrowsingHit(WebView webView, WebResourceRequest webResourceRequest, int i, InvocationHandler invocationHandler);

    @Override // org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest);
}
