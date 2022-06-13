.class public Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;
.super Ljava/lang/Object;
.source "WebViewCacheInterceptor.java"

# interfaces
.implements Lren/yale/android/cachewebviewlib/WebViewRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;
    }
.end annotation


# static fields
.field public static final KEY_CACHE:Ljava/lang/String; = "WebResourceInterceptor-Key-Cache"


# instance fields
.field private mAssetsDir:Ljava/lang/String;

.field private mCacheExtensionConfig:Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;

.field private mCacheFile:Ljava/io/File;

.field private mCacheSize:J

.field private mCacheType:Lren/yale/android/cachewebviewlib/CacheType;

.field private mConnectTimeout:J

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mDns:Lokhttp3/Dns;

.field private mHttpClient:Lokhttp3/OkHttpClient;

.field private mIsSuffixMod:Z

.field private mOrigin:Ljava/lang/String;

.field private mReadTimeout:J

.field private mReferer:Ljava/lang/String;

.field private mResourceInterceptor:Lren/yale/android/cachewebviewlib/ResourceInterceptor;

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mTrustAllHostname:Z

.field private mUserAgent:Ljava/lang/String;

.field private mX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mAssetsDir:Ljava/lang/String;

    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mTrustAllHostname:Z

    .line 52
    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 53
    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 54
    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mDns:Lokhttp3/Dns;

    .line 56
    iput-boolean v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mIsSuffixMod:Z

    .line 59
    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mHttpClient:Lokhttp3/OkHttpClient;

    const-string v0, ""

    .line 60
    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mOrigin:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mUserAgent:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$000(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;

    move-result-object v0

    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheExtensionConfig:Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;

    .line 69
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$100(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheFile:Ljava/io/File;

    .line 70
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$200(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheSize:J

    .line 71
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$300(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lren/yale/android/cachewebviewlib/CacheType;

    move-result-object v0

    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheType:Lren/yale/android/cachewebviewlib/CacheType;

    .line 72
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$400(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mConnectTimeout:J

    .line 73
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$500(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mReadTimeout:J

    .line 74
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$600(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$700(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mDebug:Z

    .line 76
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$800(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mAssetsDir:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$900(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 78
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$1000(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 79
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$1100(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mTrustAllHostname:Z

    .line 80
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$1200(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lren/yale/android/cachewebviewlib/ResourceInterceptor;

    move-result-object v0

    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mResourceInterceptor:Lren/yale/android/cachewebviewlib/ResourceInterceptor;

    .line 81
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$1300(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mIsSuffixMod:Z

    .line 82
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->access$1400(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lokhttp3/Dns;

    move-result-object p1

    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mDns:Lokhttp3/Dns;

    .line 84
    invoke-direct {p0}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->initHttpClient()V

    .line 85
    invoke-direct {p0}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->isEnableAssets()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-direct {p0}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->initAssetsLoader()V

    :cond_0
    return-void
.end method

.method private buildHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    iget-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mOrigin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mOrigin:Ljava/lang/String;

    const-string v2, "Origin"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    iget-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    iget-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    const-string v2, "Referer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_1
    iget-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mUserAgent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    iget-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mUserAgent:Ljava/lang/String;

    const-string v2, "User-Agent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private checkUrl(Ljava/lang/String;)Z
    .locals 2

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "http"

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 159
    :cond_1
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mResourceInterceptor:Lren/yale/android/cachewebviewlib/ResourceInterceptor;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lren/yale/android/cachewebviewlib/ResourceInterceptor;->interceptor(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 163
    :cond_2
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/utils/MimeTypeMapUtils;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 169
    :cond_3
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheExtensionConfig:Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;

    invoke-virtual {v0, p1}, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->isMedia(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 172
    :cond_4
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheExtensionConfig:Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;

    invoke-virtual {v0, p1}, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->canCache(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private initAssetsLoader()V
    .locals 2

    .line 95
    invoke-static {}, Lren/yale/android/cachewebviewlib/AssetsLoader;->getInstance()Lren/yale/android/cachewebviewlib/AssetsLoader;

    move-result-object v0

    iget-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lren/yale/android/cachewebviewlib/AssetsLoader;->init(Landroid/content/Context;)Lren/yale/android/cachewebviewlib/AssetsLoader;

    move-result-object v0

    iget-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mAssetsDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lren/yale/android/cachewebviewlib/AssetsLoader;->setDir(Ljava/lang/String;)Lren/yale/android/cachewebviewlib/AssetsLoader;

    move-result-object v0

    iget-boolean v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mIsSuffixMod:Z

    invoke-virtual {v0, v1}, Lren/yale/android/cachewebviewlib/AssetsLoader;->isAssetsSuffixMod(Z)Lren/yale/android/cachewebviewlib/AssetsLoader;

    return-void
.end method

.method private initHttpClient()V
    .locals 4

    .line 100
    new-instance v0, Lokhttp3/Cache;

    iget-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheFile:Ljava/io/File;

    iget-wide v2, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheSize:J

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 101
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 102
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-wide v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mConnectTimeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 103
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-wide v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mReadTimeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 104
    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lren/yale/android/cachewebviewlib/HttpCacheInterceptor;

    invoke-direct {v1}, Lren/yale/android/cachewebviewlib/HttpCacheInterceptor;-><init>()V

    .line 105
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 106
    iget-boolean v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mTrustAllHostname:Z

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$1;

    invoke-direct {v1, p0}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$1;-><init>(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 114
    :cond_0
    iget-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 117
    :cond_1
    iget-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mDns:Lokhttp3/Dns;

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 120
    :cond_2
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private interceptRequest(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheType:Lren/yale/android/cachewebviewlib/CacheType;

    sget-object v1, Lren/yale/android/cachewebviewlib/CacheType;->NORMAL:Lren/yale/android/cachewebviewlib/CacheType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 268
    :cond_0
    invoke-direct {p0, p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->checkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 272
    :cond_1
    invoke-direct {p0}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->isEnableAssets()Z

    move-result v0

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 273
    invoke-static {}, Lren/yale/android/cachewebviewlib/AssetsLoader;->getInstance()Lren/yale/android/cachewebviewlib/AssetsLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lren/yale/android/cachewebviewlib/AssetsLoader;->getResByUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string v2, "from assets: %s"

    .line 275
    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-boolean v2, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mDebug:Z

    invoke-static {p2, v2}, Lren/yale/android/cachewebviewlib/CacheWebViewLog;->d(Ljava/lang/String;Z)V

    .line 276
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/utils/MimeTypeMapUtils;->getMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 277
    new-instance p2, Landroid/webkit/WebResourceResponse;

    invoke-direct {p2, p1, v1, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2

    .line 283
    :cond_2
    :try_start_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 284
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 286
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/utils/MimeTypeMapUtils;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 288
    iget-object v6, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheExtensionConfig:Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;

    invoke-virtual {v6, v5}, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->isHtml(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "WebResourceInterceptor-Key-Cache"

    .line 289
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheType:Lren/yale/android/cachewebviewlib/CacheType;

    invoke-virtual {v7}, Lren/yale/android/cachewebviewlib/CacheType;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_3
    invoke-virtual {p0, v0, p2}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->addHeader(Lokhttp3/Request$Builder;Ljava/util/Map;)V

    .line 293
    iget-object p2, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lren/yale/android/cachewebviewlib/utils/NetUtils;->isConnected(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 294
    sget-object p2, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 296
    :cond_4
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    .line 297
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    invoke-interface {p2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p2

    .line 298
    invoke-virtual {p2}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "from cache: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 300
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mDebug:Z

    invoke-static {v0, v3}, Lren/yale/android/cachewebviewlib/CacheWebViewLog;->d(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    const-string v0, "from server: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 302
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mDebug:Z

    invoke-static {v0, v3}, Lren/yale/android/cachewebviewlib/CacheWebViewLog;->d(Ljava/lang/String;Z)V

    .line 304
    :goto_0
    invoke-static {p1}, Lren/yale/android/cachewebviewlib/utils/MimeTypeMapUtils;->getMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 305
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, p1, v1, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 306
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v1, 0x1f8

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lren/yale/android/cachewebviewlib/utils/NetUtils;->isConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    return-object v2

    .line 309
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_8

    .line 310
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "OK"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 315
    :cond_7
    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebResourceResponse;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    :try_start_2
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lren/yale/android/cachewebviewlib/utils/NetUtils;->multimapToSingle(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    return-object v2

    :cond_8
    :goto_1
    return-object v0

    :catch_1
    move-exception p1

    .line 323
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v2
.end method

.method private isEnableAssets()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mAssetsDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addHeader(Lokhttp3/Request$Builder;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 259
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearCache()V
    .locals 2

    .line 223
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lren/yale/android/cachewebviewlib/utils/FileUtil;->deleteDirs(Ljava/lang/String;Z)V

    .line 224
    invoke-static {}, Lren/yale/android/cachewebviewlib/AssetsLoader;->getInstance()Lren/yale/android/cachewebviewlib/AssetsLoader;

    move-result-object v0

    invoke-virtual {v0}, Lren/yale/android/cachewebviewlib/AssetsLoader;->clear()V

    return-void
.end method

.method public enableForce(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 231
    sget-object p1, Lren/yale/android/cachewebviewlib/CacheType;->FORCE:Lren/yale/android/cachewebviewlib/CacheType;

    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheType:Lren/yale/android/cachewebviewlib/CacheType;

    goto :goto_0

    .line 233
    :cond_0
    sget-object p1, Lren/yale/android/cachewebviewlib/CacheType;->NORMAL:Lren/yale/android/cachewebviewlib/CacheType;

    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheType:Lren/yale/android/cachewebviewlib/CacheType;

    :goto_0
    return-void
.end method

.method public getCacheFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 239
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheFile:Ljava/io/File;

    invoke-static {v0, p1}, Lren/yale/android/cachewebviewlib/utils/OKHttpFile;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getCachePath()Ljava/io/File;
    .locals 1

    .line 250
    iget-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mCacheFile:Ljava/io/File;

    return-object v0
.end method

.method public initAssetsData()V
    .locals 1

    .line 244
    invoke-static {}, Lren/yale/android/cachewebviewlib/AssetsLoader;->getInstance()Lren/yale/android/cachewebviewlib/AssetsLoader;

    move-result-object v0

    invoke-virtual {v0}, Lren/yale/android/cachewebviewlib/AssetsLoader;->initData()Lren/yale/android/cachewebviewlib/AssetsLoader;

    return-void
.end method

.method public interceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 127
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->interceptRequest(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public interceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 147
    invoke-direct {p0}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->buildHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->interceptRequest(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method isValidUrl(Ljava/lang/String;)Z
    .locals 0

    .line 441
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 181
    invoke-virtual {p0, p2}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    .line 186
    iget-object p2, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    invoke-static {p2}, Lren/yale/android/cachewebviewlib/utils/NetUtils;->getOriginUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mOrigin:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public loadUrl(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    .line 212
    invoke-virtual {p0, p2}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 216
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    .line 217
    iget-object p2, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    invoke-static {p2}, Lren/yale/android/cachewebviewlib/utils/NetUtils;->getOriginUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mOrigin:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 192
    invoke-virtual {p0, p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    .line 196
    iget-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    invoke-static {p1}, Lren/yale/android/cachewebviewlib/utils/NetUtils;->getOriginUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mOrigin:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mUserAgent:Ljava/lang/String;

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
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

    .line 202
    invoke-virtual {p0, p1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->isValidUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 205
    :cond_0
    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    .line 206
    iget-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mReferer:Ljava/lang/String;

    invoke-static {p1}, Lren/yale/android/cachewebviewlib/utils/NetUtils;->getOriginUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mOrigin:Ljava/lang/String;

    .line 207
    iput-object p3, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->mUserAgent:Ljava/lang/String;

    return-void
.end method
