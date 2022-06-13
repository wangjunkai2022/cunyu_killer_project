package org.chromium.support_lib_boundary;

import android.webkit.WebView;
import java.lang.reflect.InvocationHandler;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface WebViewRendererClientBoundaryInterface extends FeatureFlagHolderBoundaryInterface {
    void onRendererResponsive(WebView webView, InvocationHandler invocationHandler);

    void onRendererUnresponsive(WebView webView, InvocationHandler invocationHandler);
}
