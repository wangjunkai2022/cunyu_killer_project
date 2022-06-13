.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;
.super Ljava/lang/Object;
.source "InAppWebViewClient.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$port:I

.field final synthetic val$protocol:Ljava/lang/String;

.field final synthetic val$realm:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/HttpAuthHandler;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$host:Ljava/lang/String;

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$protocol:Ljava/lang/String;

    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$realm:Ljava/lang/String;

    iput p6, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$port:I

    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 385
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

    .line 390
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$host:Ljava/lang/String;

    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$realm:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->access$301(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 9

    if-eqz p1, :cond_5

    .line 345
    check-cast p1, Ljava/util/Map;

    const-string v0, "action"

    .line 346
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 348
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    .line 372
    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->access$002(Ljava/util/List;)Ljava/util/List;

    .line 373
    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->access$102(I)I

    .line 374
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    return-void

    .line 359
    :cond_0
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->access$000()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 360
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$view:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->getInstance(Landroid/content/Context;)Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;

    move-result-object p1

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$host:Ljava/lang/String;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$protocol:Ljava/lang/String;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$realm:Ljava/lang/String;

    iget v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$port:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->getHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->access$002(Ljava/util/List;)Ljava/util/List;

    .line 361
    :cond_1
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->access$000()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 362
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->access$000()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;

    .line 363
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->username:Ljava/lang/String;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_2
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    :goto_0
    return-void

    :cond_3
    const-string v0, "username"

    .line 350
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "password"

    .line 351
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    const-string v1, "permanentPersistence"

    .line 352
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    .line 353
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_4

    .line 354
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$view:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->getInstance(Landroid/content/Context;)Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$host:Ljava/lang/String;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$protocol:Ljava/lang/String;

    iget-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$realm:Ljava/lang/String;

    iget p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$port:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v0

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->setHttpAuthCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_4
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {p1, v0, v8}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 380
    :cond_5
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$view:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$handler:Landroid/webkit/HttpAuthHandler;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$host:Ljava/lang/String;

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient$2;->val$realm:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->access$201(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
