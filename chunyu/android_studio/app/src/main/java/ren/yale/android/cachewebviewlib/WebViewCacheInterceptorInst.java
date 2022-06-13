package ren.yale.android.cachewebviewlib;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.File;
import java.io.InputStream;
import java.util.Map;
import ren.yale.android.cachewebviewlib.WebViewCacheInterceptor;

/* loaded from: classes2.dex */
public class WebViewCacheInterceptorInst implements WebViewRequestInterceptor {
    private static volatile WebViewCacheInterceptorInst webViewCacheInterceptorInst;
    private WebViewRequestInterceptor mInterceptor;

    public void init(WebViewCacheInterceptor.Builder builder) {
        if (builder != null) {
            this.mInterceptor = builder.build();
        }
    }

    public static WebViewCacheInterceptorInst getInstance() {
        if (webViewCacheInterceptorInst == null) {
            synchronized (WebViewCacheInterceptorInst.class) {
                if (webViewCacheInterceptorInst == null) {
                    webViewCacheInterceptorInst = new WebViewCacheInterceptorInst();
                }
            }
        }
        return webViewCacheInterceptorInst;
    }

    @Override // ren.yale.android.cachewebviewlib.WebViewRequestInterceptor
    public WebResourceResponse interceptRequest(WebResourceRequest webResourceRequest) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor == null) {
            return null;
        }
        return webViewRequestInterceptor.interceptRequest(webResourceRequest);
    }

    @Override // ren.yale.android.cachewebviewlib.WebViewRequestInterceptor
    public WebResourceResponse interceptRequest(String str) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor == null) {
            return null;
        }
        return webViewRequestInterceptor.interceptRequest(str);
    }

    @Override // ren.yale.android.cachewebviewlib.WebViewRequestInterceptor
    public void loadUrl(WebView webView, String str) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor != null) {
            webViewRequestInterceptor.loadUrl(webView, str);
        }
    }

    @Override // ren.yale.android.cachewebviewlib.WebViewRequestInterceptor
    public void loadUrl(String str, String str2) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor != null) {
            webViewRequestInterceptor.loadUrl(str, str2);
        }
    }

    @Override // ren.yale.android.cachewebviewlib.WebViewRequestInterceptor
    public void loadUrl(String str, Map<String, String> map, String str2) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor != null) {
            webViewRequestInterceptor.loadUrl(str, map, str2);
        }
    }

    @Override // ren.yale.android.cachewebviewlib.WebViewRequestInterceptor
    public void loadUrl(WebView webView, String str, Map<String, String> map) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor != null) {
            webViewRequestInterceptor.loadUrl(webView, str, map);
        }
    }

    @Override // ren.yale.android.cachewebviewlib.WebViewRequestInterceptor
    public void clearCache() {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor != null) {
            webViewRequestInterceptor.clearCache();
        }
    }

    @Override // ren.yale.android.cachewebviewlib.WebViewRequestInterceptor
    public void enableForce(boolean z) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor != null) {
            webViewRequestInterceptor.enableForce(z);
        }
    }

    @Override // ren.yale.android.cachewebviewlib.WebViewRequestInterceptor
    public InputStream getCacheFile(String str) {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor == null) {
            return null;
        }
        return webViewRequestInterceptor.getCacheFile(str);
    }

    @Override // ren.yale.android.cachewebviewlib.WebViewRequestInterceptor
    public void initAssetsData() {
        AssetsLoader.getInstance().initData();
    }

    @Override // ren.yale.android.cachewebviewlib.WebViewRequestInterceptor
    public File getCachePath() {
        WebViewRequestInterceptor webViewRequestInterceptor = this.mInterceptor;
        if (webViewRequestInterceptor == null) {
            return null;
        }
        return webViewRequestInterceptor.getCachePath();
    }
}
