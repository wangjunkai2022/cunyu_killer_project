.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;
.super Ljava/lang/Object;
.source "InAppWebViewClient.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

.field final synthetic val$callback:Landroid/webkit/SafeBrowsingResponse;

.field final synthetic val$request:Landroid/webkit/WebResourceRequest;

.field final synthetic val$threatType:I

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/SafeBrowsingResponse;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;I)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$callback:Landroid/webkit/SafeBrowsingResponse;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$view:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$request:Landroid/webkit/WebResourceRequest;

    iput p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$threatType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 602
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
    .locals 5

    .line 607
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$request:Landroid/webkit/WebResourceRequest;

    iget v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$threatType:I

    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$callback:Landroid/webkit/SafeBrowsingResponse;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->access$901(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 575
    check-cast p1, Ljava/util/Map;

    const-string v0, "report"

    .line 576
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "action"

    .line 577
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 582
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    .line 591
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$callback:Landroid/webkit/SafeBrowsingResponse;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/SafeBrowsingResponse;->showInterstitial(Z)V

    return-void

    .line 587
    :cond_1
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$callback:Landroid/webkit/SafeBrowsingResponse;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/SafeBrowsingResponse;->proceed(Z)V

    return-void

    .line 584
    :cond_2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$callback:Landroid/webkit/SafeBrowsingResponse;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/SafeBrowsingResponse;->backToSafety(Z)V

    return-void

    .line 597
    :cond_3
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$view:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$request:Landroid/webkit/WebResourceRequest;

    iget v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$threatType:I

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$5;->val$callback:Landroid/webkit/SafeBrowsingResponse;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->access$801(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V

    return-void
.end method
