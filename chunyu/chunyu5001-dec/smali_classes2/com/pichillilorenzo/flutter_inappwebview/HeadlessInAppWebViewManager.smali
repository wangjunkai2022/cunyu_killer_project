.class public Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;
.super Ljava/lang/Object;
.source "HeadlessInAppWebViewManager.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "HeadlessInAppWebViewManager"


# instance fields
.field public channel:Lio/flutter/plugin/common/MethodChannel;

.field flutterWebViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;->flutterWebViews:Ljava/util/Map;

    .line 46
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "com.pichillilorenzo/flutter_headless_inappwebview"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 47
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method


# virtual methods
.method public createHeadlessWebView(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 74
    new-instance v6, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;Ljava/lang/Object;Ljava/util/HashMap;Landroid/view/View;)V

    .line 75
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;->flutterWebViews:Ljava/util/Map;

    invoke-interface {p1, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public disposeHeadlessWebView(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;->flutterWebViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;->flutterWebViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->dispose()V

    .line 81
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;->flutterWebViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6

    .line 52
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    const-string v1, "uuid"

    .line 53
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    iget-object v2, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x15fc9dc4

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x1b13ce41

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "disposeHeadlessWebView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_1
    const-string v3, "createHeadlessWebView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    .line 68
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;->disposeHeadlessWebView(Ljava/lang/String;)V

    .line 65
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string v2, "params"

    .line 58
    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 59
    invoke-virtual {p0, v0, v1, p1}, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;->createHeadlessWebView(Landroid/app/Activity;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 61
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
