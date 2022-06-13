.class Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$1;
.super Ljava/lang/Object;
.source "WebViewCacheInterceptor.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;->initHttpClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;


# direct methods
.method constructor <init>(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$1;->this$0:Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    # inserted by apk-mitm to disable certificate pinning
    .locals 1
    const/4 v0, 0x1
    return v0

    # commented out by apk-mitm to disable old method body
    #
    # .locals 0
    #
    # const/4 p1, 0x1
    #
    # return p1
.end method
