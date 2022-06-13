.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient$1;
.super Ljava/lang/Object;
.source "InAppWebViewRenderProcessClient.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;->onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;

.field final synthetic val$renderer:Landroidx/webkit/WebViewRenderProcess;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;Landroidx/webkit/WebViewRenderProcess;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient$1;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient$1;->val$renderer:Landroidx/webkit/WebViewRenderProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IAWRenderProcessClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notImplemented()V
    .locals 0

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1

    .line 45
    check-cast p1, Ljava/util/Map;

    const-string v0, "action"

    .line 46
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient$1;->val$renderer:Landroidx/webkit/WebViewRenderProcess;

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "WEB_VIEW_RENDERER_TERMINATE"

    .line 50
    invoke-static {p1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewRenderProcessClient$1;->val$renderer:Landroidx/webkit/WebViewRenderProcess;

    invoke-virtual {p1}, Landroidx/webkit/WebViewRenderProcess;->terminate()Z

    :cond_1
    :goto_0
    return-void
.end method
