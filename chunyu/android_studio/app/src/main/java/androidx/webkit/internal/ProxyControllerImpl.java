package androidx.webkit.internal;

import androidx.webkit.ProxyConfig;
import androidx.webkit.ProxyController;
import androidx.webkit.WebViewFeature;
import java.lang.reflect.Array;
import java.util.List;
import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.ProxyControllerBoundaryInterface;

/* loaded from: classes4.dex */
public class ProxyControllerImpl extends ProxyController {
    private ProxyControllerBoundaryInterface mBoundaryInterface;

    @Override // androidx.webkit.ProxyController
    public void setProxyOverride(ProxyConfig proxyConfig, Executor executor, Runnable runnable) {
        if (WebViewFeatureInternal.getFeature(WebViewFeature.PROXY_OVERRIDE).isSupportedByWebView()) {
            List<ProxyConfig.ProxyRule> proxyRules = proxyConfig.getProxyRules();
            String[][] strArr = (String[][]) Array.newInstance(String.class, proxyRules.size(), 2);
            for (int i = 0; i < proxyRules.size(); i++) {
                strArr[i][0] = proxyRules.get(0).getSchemeFilter();
                strArr[i][1] = proxyRules.get(0).getUrl();
            }
            getBoundaryInterface().setProxyOverride(strArr, (String[]) proxyConfig.getBypassRules().toArray(new String[0]), runnable, executor);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    @Override // androidx.webkit.ProxyController
    public void clearProxyOverride(Executor executor, Runnable runnable) {
        if (WebViewFeatureInternal.getFeature(WebViewFeature.PROXY_OVERRIDE).isSupportedByWebView()) {
            getBoundaryInterface().clearProxyOverride(runnable, executor);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    private ProxyControllerBoundaryInterface getBoundaryInterface() {
        if (this.mBoundaryInterface == null) {
            this.mBoundaryInterface = WebViewGlueCommunicator.getFactory().getProxyController();
        }
        return this.mBoundaryInterface;
    }
}
