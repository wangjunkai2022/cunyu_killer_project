package org.chromium.support_lib_boundary;

import android.webkit.WebView;
import java.lang.reflect.InvocationHandler;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface WebViewProviderFactoryBoundaryInterface {
    InvocationHandler createWebView(WebView webView);

    InvocationHandler getProxyController();

    InvocationHandler getServiceWorkerController();

    InvocationHandler getStatics();

    String[] getSupportedFeatures();

    InvocationHandler getTracingController();

    InvocationHandler getWebkitToCompatConverter();

    void setSupportLibraryVersion(String str);
}
