.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;
.super Ljava/lang/Object;
.source "InAppWebViewClient.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

.field final synthetic val$error:Landroid/net/http/SslError;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/SslErrorHandler;Landroid/webkit/WebView;Landroid/net/http/SslError;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;->val$handler:Landroid/webkit/SslErrorHandler;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;->val$view:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;->val$error:Landroid/net/http/SslError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 470
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IAWebViewClient"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notImplemented()V
    .locals 4

    .line 475
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;->val$handler:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;->val$error:Landroid/net/http/SslError;

    invoke-static {v0, v1, v2, v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->access$501(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 450
    check-cast p1, Ljava/util/Map;

    const-string v0, "action"

    .line 451
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 453
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 459
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void

    .line 455
    :cond_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void

    .line 465
    :cond_1
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;->val$view:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;->val$handler:Landroid/webkit/SslErrorHandler;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$3;->val$error:Landroid/net/http/SslError;

    invoke-static {p1, v0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->access$401(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method
