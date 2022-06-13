.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;
.super Landroidx/webkit/WebViewRenderProcessClient;
.source "InAppWebViewRenderProcessClient.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "IAWRenderProcessClient"


# instance fields
.field public channel:Lio/flutter/plugin/common/MethodChannel;

.field private flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

.field private inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/webkit/WebViewRenderProcessClient;-><init>()V

    .line 28
    instance-of v0, p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    goto :goto_0

    .line 30
    :cond_0
    instance-of v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    if-eqz v0, :cond_1

    .line 31
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    .line 32
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->channel:Lio/flutter/plugin/common/MethodChannel;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;->flutterWebView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->channel:Lio/flutter/plugin/common/MethodChannel;

    :goto_1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method


# virtual methods
.method public onRenderProcessResponsive(Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V
    .locals 3

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient$2;

    invoke-direct {v1, p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient$2;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;Landroidx/webkit/WebViewRenderProcess;)V

    const-string p2, "onRenderProcessResponsive"

    invoke-virtual {p1, p2, v0, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V
    .locals 3

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;->channel:Lio/flutter/plugin/common/MethodChannel;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient$1;

    invoke-direct {v1, p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;Landroidx/webkit/WebViewRenderProcess;)V

    const-string p2, "onRenderProcessUnresponsive"

    invoke-virtual {p1, p2, v0, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method
