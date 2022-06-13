.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;
.super Ljava/lang/Object;
.source "InAppWebViewChromeClient.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$result:Landroid/webkit/JsResult;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;Landroid/webkit/JsResult;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->val$result:Landroid/webkit/JsResult;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->val$view:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 544
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IABWebChromeClient"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method public notImplemented()V
    .locals 7

    .line 550
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->val$message:Ljava/lang/String;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->val$result:Landroid/webkit/JsResult;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;->createConfirmDialog(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/JsResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 519
    check-cast p1, Ljava/util/Map;

    const-string v0, "message"

    .line 520
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "confirmButtonTitle"

    .line 521
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "cancelButtonTitle"

    .line 522
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "handledByClient"

    .line 523
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 524
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "action"

    .line 525
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 526
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 527
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    .line 533
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    goto :goto_1

    .line 529
    :cond_1
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    :goto_1
    return-void

    :cond_2
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    goto :goto_2

    :cond_3
    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    .line 539
    :goto_2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->val$message:Ljava/lang/String;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient$12;->val$result:Landroid/webkit/JsResult;

    invoke-virtual/range {v0 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;->createBeforeUnloadDialog(Landroid/webkit/WebView;Ljava/lang/String;Landroid/webkit/JsResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
