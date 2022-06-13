.class public interface abstract Lren/yale/android/cachewebviewlib/WebViewRequestInterceptor;
.super Ljava/lang/Object;
.source "WebViewRequestInterceptor.java"


# virtual methods
.method public abstract clearCache()V
.end method

.method public abstract enableForce(Z)V
.end method

.method public abstract getCacheFile(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract getCachePath()Ljava/io/File;
.end method

.method public abstract initAssetsData()V
.end method

.method public abstract interceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract interceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadUrl(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
