package org.chromium.support_lib_boundary;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public interface ServiceWorkerClientBoundaryInterface extends FeatureFlagHolderBoundaryInterface {
    WebResourceResponse shouldInterceptRequest(WebResourceRequest webResourceRequest);
}
