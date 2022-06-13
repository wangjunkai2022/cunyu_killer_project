package org.chromium.support_lib_boundary;

import android.net.Uri;
import android.webkit.WebView;
import java.lang.reflect.InvocationHandler;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface WebMessageListenerBoundaryInterface extends FeatureFlagHolderBoundaryInterface {
    void onPostMessage(WebView webView, InvocationHandler invocationHandler, Uri uri, boolean z, InvocationHandler invocationHandler2);
}
