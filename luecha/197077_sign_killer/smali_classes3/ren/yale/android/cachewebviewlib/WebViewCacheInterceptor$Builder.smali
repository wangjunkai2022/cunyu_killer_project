.class public Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;
.super Ljava/lang/Object;
.source "WebViewCacheInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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

.field private mIsSuffixMod:Z

.field private mReadTimeout:J

.field private mResourceInterceptor:Lren/yale/android/cachewebviewlib/ResourceInterceptor;

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mTrustAllHostname:Z

.field private mX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x6400000

    .line 331
    iput-wide v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheSize:J

    const-wide/16 v0, 0x14

    .line 332
    iput-wide v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mConnectTimeout:J

    .line 333
    iput-wide v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mReadTimeout:J

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mDebug:Z

    .line 337
    sget-object v0, Lren/yale/android/cachewebviewlib/CacheType;->FORCE:Lren/yale/android/cachewebviewlib/CacheType;

    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheType:Lren/yale/android/cachewebviewlib/CacheType;

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mTrustAllHostname:Z

    const/4 v1, 0x0

    .line 341
    iput-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 342
    iput-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 345
    iput-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mAssetsDir:Ljava/lang/String;

    .line 346
    iput-boolean v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mIsSuffixMod:Z

    .line 347
    iput-object v1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mDns:Lokhttp3/Dns;

    .line 350
    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mContext:Landroid/content/Context;

    .line 351
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CacheWebViewCache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheFile:Ljava/io/File;

    .line 352
    new-instance p1, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;

    invoke-direct {p1}, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;-><init>()V

    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheExtensionConfig:Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;

    return-void
.end method

.method static synthetic access$000(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;
    .locals 0

    .line 328
    iget-object p0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheExtensionConfig:Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;

    return-object p0
.end method

.method static synthetic access$100(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljava/io/File;
    .locals 0

    .line 328
    iget-object p0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1000(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 328
    iget-object p0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method static synthetic access$1100(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Z
    .locals 0

    .line 328
    iget-boolean p0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mTrustAllHostname:Z

    return p0
.end method

.method static synthetic access$1200(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lren/yale/android/cachewebviewlib/ResourceInterceptor;
    .locals 0

    .line 328
    iget-object p0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mResourceInterceptor:Lren/yale/android/cachewebviewlib/ResourceInterceptor;

    return-object p0
.end method

.method static synthetic access$1300(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Z
    .locals 0

    .line 328
    iget-boolean p0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mIsSuffixMod:Z

    return p0
.end method

.method static synthetic access$1400(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lokhttp3/Dns;
    .locals 0

    .line 328
    iget-object p0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mDns:Lokhttp3/Dns;

    return-object p0
.end method

.method static synthetic access$200(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)J
    .locals 2

    .line 328
    iget-wide v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheSize:J

    return-wide v0
.end method

.method static synthetic access$300(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Lren/yale/android/cachewebviewlib/CacheType;
    .locals 0

    .line 328
    iget-object p0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheType:Lren/yale/android/cachewebviewlib/CacheType;

    return-object p0
.end method

.method static synthetic access$400(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)J
    .locals 2

    .line 328
    iget-wide v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mConnectTimeout:J

    return-wide v0
.end method

.method static synthetic access$500(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)J
    .locals 2

    .line 328
    iget-wide v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mReadTimeout:J

    return-wide v0
.end method

.method static synthetic access$600(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Landroid/content/Context;
    .locals 0

    .line 328
    iget-object p0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Z
    .locals 0

    .line 328
    iget-boolean p0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mDebug:Z

    return p0
.end method

.method static synthetic access$800(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljava/lang/String;
    .locals 0

    .line 328
    iget-object p0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mAssetsDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)Ljavax/net/ssl/X509TrustManager;
    .locals 0

    .line 328
    iget-object p0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object p0
.end method


# virtual methods
.method public build()Lren/yale/android/cachewebviewlib/WebViewRequestInterceptor;
    .locals 1

    .line 435
    new-instance v0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;

    invoke-direct {v0, p0}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;-><init>(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)V

    return-object v0
.end method

.method public isAssetsSuffixMod(Z)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0

    .line 419
    iput-boolean p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mIsSuffixMod:Z

    return-object p0
.end method

.method public setAssetsDir(Ljava/lang/String;)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 425
    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mAssetsDir:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setCacheExtensionConfig(Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 403
    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheExtensionConfig:Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;

    :cond_0
    return-object p0
.end method

.method public setCachePath(Ljava/io/File;)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 374
    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheFile:Ljava/io/File;

    :cond_0
    return-object p0
.end method

.method public setCacheSize(J)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 2

    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 381
    iput-wide p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheSize:J

    :cond_0
    return-object p0
.end method

.method public setCacheType(Lren/yale/android/cachewebviewlib/CacheType;)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0

    .line 414
    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mCacheType:Lren/yale/android/cachewebviewlib/CacheType;

    return-object p0
.end method

.method public setConnectTimeoutSecond(J)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 395
    iput-wide p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mConnectTimeout:J

    :cond_0
    return-object p0
.end method

.method public setDebug(Z)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0

    .line 409
    iput-boolean p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mDebug:Z

    return-object p0
.end method

.method public setDns(Lokhttp3/Dns;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mDns:Lokhttp3/Dns;

    return-void
.end method

.method public setReadTimeoutSecond(J)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 388
    iput-wide p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mReadTimeout:J

    :cond_0
    return-object p0
.end method

.method public setResourceInterceptor(Lren/yale/android/cachewebviewlib/ResourceInterceptor;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mResourceInterceptor:Lren/yale/android/cachewebviewlib/ResourceInterceptor;

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 366
    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 367
    iput-object p2, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    :cond_0
    return-object p0
.end method

.method public setTrustAllHostname()Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->mTrustAllHostname:Z

    return-object p0
.end method
