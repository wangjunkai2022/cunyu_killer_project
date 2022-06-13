.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;
.super Ljava/lang/Object;
.source "InAppWebViewClient.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

.field final synthetic val$request:Landroid/webkit/ClientCertRequest;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;->val$request:Landroid/webkit/ClientCertRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 538
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
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;->val$request:Landroid/webkit/ClientCertRequest;

    invoke-static {v0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->access$701(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 508
    check-cast p1, Ljava/util/Map;

    const-string v0, "action"

    .line 509
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 511
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    .line 527
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;->val$request:Landroid/webkit/ClientCertRequest;

    invoke-virtual {p1}, Landroid/webkit/ClientCertRequest;->cancel()V

    return-void

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;->val$request:Landroid/webkit/ClientCertRequest;

    invoke-virtual {p1}, Landroid/webkit/ClientCertRequest;->ignore()V

    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;->val$view:Landroid/webkit/WebView;

    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    const-string v0, "certificatePath"

    .line 515
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "certificatePassword"

    .line 516
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "androidKeyStoreType"

    .line 517
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 518
    invoke-static {v0, v1, p1}, Lcom/pichillilorenzo/flutter_inappwebview/Util;->loadPrivateKeyAndCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/Util$PrivateKeyAndCertificates;

    move-result-object p1

    .line 519
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;->val$request:Landroid/webkit/ClientCertRequest;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/Util$PrivateKeyAndCertificates;->privateKey:Ljava/security/PrivateKey;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/Util$PrivateKeyAndCertificates;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/ClientCertRequest;->proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-void

    .line 533
    :cond_2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;->val$view:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$4;->val$request:Landroid/webkit/ClientCertRequest;

    invoke-static {p1, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->access$601(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    return-void
.end method
