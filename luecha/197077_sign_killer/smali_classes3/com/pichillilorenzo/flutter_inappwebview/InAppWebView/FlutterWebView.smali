.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;
.super Ljava/lang/Object;
.source "FlutterWebView.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformView;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IAWFlutterWebView"


# instance fields
.field public final channel:Lio/flutter/plugin/common/MethodChannel;

.field public webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;Ljava/lang/Object;Ljava/util/HashMap;Landroid/view/View;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/BinaryMessenger;",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    move-object/from16 v1, p4

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v2, Lio/flutter/plugin/common/MethodChannel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.pichillilorenzo/flutter_inappwebview_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-direct {v2, v4, v3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v2, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 46
    iget-object v2, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {v2, v9}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 48
    new-instance v11, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy;

    invoke-direct {v11}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy;-><init>()V

    const-string v2, "display"

    .line 49
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/hardware/display/DisplayManager;

    .line 50
    invoke-virtual {v11, v12}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy;->onPreWebViewInitialization(Landroid/hardware/display/DisplayManager;)V

    const-string v2, "initialUrl"

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    const-string v2, "initialFile"

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    const-string v2, "initialData"

    .line 54
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/util/Map;

    const-string v2, "initialHeaders"

    .line 55
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/util/Map;

    const-string v2, "initialOptions"

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "contextMenu"

    .line 57
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/util/Map;

    const-string v3, "windowId"

    .line 58
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Integer;

    .line 60
    new-instance v5, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    invoke-direct {v5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;-><init>()V

    .line 61
    invoke-virtual {v5, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    .line 63
    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    const-string v4, "IAWFlutterWebView"

    if-nez v1, :cond_0

    const-string v1, "\n\n\nERROR: Shared.activity is null!!!\n\nYou need to upgrade your Flutter project to use the new Java Embedding API:\n\n- Take a look at the \"IMPORTANT Note for Android\" section here: https://github.com/pichillilorenzo/flutter_inappwebview#important-note-for-android\n- See the official wiki here: https://github.com/flutter/flutter/wiki/Upgrading-pre-1.12-Android-projects\n\n\n"

    .line 64
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    sget-object v2, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    move-object v1, v3

    move-object/from16 p1, v13

    move-object v13, v3

    move-object/from16 v3, p0

    move-object v10, v4

    move-object/from16 v4, p3

    move-object/from16 v16, v5

    move-object v5, v6

    move-object/from16 v17, v15

    move-object v15, v6

    move-object/from16 v6, v16

    move-object/from16 v18, v8

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Integer;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;Ljava/util/Map;Landroid/view/View;)V

    iput-object v13, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    .line 76
    invoke-virtual {v11, v12}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/DisplayListenerProxy;->onPostWebViewInitialization(Landroid/hardware/display/DisplayManager;)V

    .line 80
    :try_start_0
    iget-object v1, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 81
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.view.View"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v2, "mContext"

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 86
    iget-object v2, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Cannot find mContext for this WebView"

    .line 89
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_1
    iget-object v0, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->prepare()V

    if-eqz v15, :cond_2

    .line 95
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;->windowWebViewMessages:Ljava/util/Map;

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_5

    .line 97
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    iget-object v2, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 98
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_2
    if-eqz v14, :cond_3

    .line 103
    :try_start_1
    invoke-static {v14}, Lcom/pichillilorenzo/flutter_inappwebview/Util;->getUrlAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 105
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " asset file cannot be found!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3
    move-object/from16 v13, p1

    :goto_2
    if-eqz v17, :cond_4

    const-string v0, "data"

    move-object/from16 v2, v17

    .line 112
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "mimeType"

    .line 113
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string v0, "encoding"

    .line 114
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string v0, "baseUrl"

    .line 115
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "historyUrl"

    .line 116
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 117
    iget-object v3, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual/range {v3 .. v8}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 120
    :cond_4
    iget-object v0, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    move-object/from16 v2, v18

    invoke-virtual {v0, v13, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    :goto_3
    if-nez p5, :cond_6

    move-object/from16 v1, p3

    .line 124
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "uuid"

    .line 126
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, v9, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "onHeadlessWebViewCreated"

    invoke-virtual {v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 532
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewChromeClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;->dispose()V

    .line 534
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewClient;->dispose()V

    .line 535
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->javaScriptBridgeInterface:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;->dispose()V

    .line 536
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 537
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView$3;

    invoke-direct {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView$3;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;)V

    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 545
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 546
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 547
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    return-object v0
.end method

.method public onFlutterViewAttached(Landroid/view/View;)V
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setContainerView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onFlutterViewDetached()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 573
    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setContainerView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onInputConnectionLocked()V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->lockInputConnection()V

    :cond_0
    return-void
.end method

.method public onInputConnectionUnlocked()V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->unlockInputConnection()V

    :cond_0
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    .line 138
    iget-object v2, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "getTitle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v10

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "getScale"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "evaluateJavascript"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "injectJavascriptFileFromUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "findAllAsync"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "loadFile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "loadData"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "goBackOrForward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "setContextMenu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "requestImageRef"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x33

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "setOptions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "resumeTimers"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "getCertificate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x36

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "requestFocusNodeHref"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "getOriginalUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x27

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "getProgress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "clearSslPreferences"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "clearHistory"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x38

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "pageDown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2b

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "clearMatches"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "injectCSSFileFromUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "getHitTestResult"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2a

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "loadUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "takeScreenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "setTransparent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x37

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "pause"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "startSafeBrowsing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "getCopyBackForwardList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "injectCSSCode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "zoomOut"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "getSelectedText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_1f
    const-string v3, "getOptions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_20
    const-string v3, "isLoading"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_21
    const-string v3, "canGoBack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_22
    const-string v3, "goForward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_23
    const-string v3, "postUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_24
    const-string v3, "scrollTo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_25
    const-string v3, "scrollBy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_26
    const-string v3, "printCurrentPage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x24

    goto/16 :goto_1

    :sswitch_27
    const-string v3, "findNext"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_28
    const-string v3, "zoomIn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_29
    const-string v3, "zoomBy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x26

    goto/16 :goto_1

    :sswitch_2a
    const-string v3, "clearFocus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_2b
    const-string v3, "clearCache"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_2c
    const-string v3, "resume"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_2d
    const-string v3, "reload"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_2e
    const-string v3, "stopLoading"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_2f
    const-string v3, "pageUp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2c

    goto/16 :goto_1

    :sswitch_30
    const-string v3, "canGoForward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto :goto_1

    :sswitch_31
    const-string v3, "goBack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto :goto_1

    :sswitch_32
    const-string v3, "getUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v8

    goto :goto_1

    :sswitch_33
    const-string v3, "canGoBackOrForward"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto :goto_1

    :sswitch_34
    const-string v3, "getScrollY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x35

    goto :goto_1

    :sswitch_35
    const-string v3, "getScrollX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x34

    goto :goto_1

    :sswitch_36
    const-string v3, "saveWebArchive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2d

    goto :goto_1

    :sswitch_37
    const-string v3, "getContentHeight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x25

    goto :goto_1

    :sswitch_38
    const-string v3, "pauseTimers"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x22

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v3, "animated"

    const-string v12, "y"

    const-string v13, "x"

    const-string v14, "steps"

    const-string v15, "urlFile"

    const-string v10, "source"

    const-string v4, "headers"

    const-string v6, "url"

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    .line 518
    :pswitch_0
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_1

    .line 519
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearHistory()V

    .line 520
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 522
    :cond_1
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 507
    :pswitch_1
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_2

    .line 509
    invoke-virtual {v1, v8}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setBackgroundColor(I)V

    .line 511
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 512
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_7

    .line 514
    :cond_2
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 500
    :pswitch_2
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_3

    .line 501
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getCertificateMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v7, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 503
    :cond_3
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 493
    :pswitch_3
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_4

    .line 494
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getScrollY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 496
    :cond_4
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 486
    :pswitch_4
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_5

    .line 487
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 489
    :cond_5
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 479
    :pswitch_5
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_6

    .line 480
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->requestImageRef()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v7, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 482
    :cond_6
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 472
    :pswitch_6
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_7

    .line 473
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->requestFocusNodeHref()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v7, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 475
    :cond_7
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 463
    :pswitch_7
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_8

    const-string v2, "contextMenu"

    .line 464
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 465
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iput-object v1, v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 466
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 468
    :cond_8
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 455
    :pswitch_8
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_9

    .line 456
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearFocus()V

    .line 457
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 459
    :cond_9
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 448
    :pswitch_9
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_a

    .line 449
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->zoomOut()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 451
    :cond_a
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 441
    :pswitch_a
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_b

    .line 442
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->zoomIn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 444
    :cond_b
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 427
    :pswitch_b
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_c

    const-string v2, "basename"

    .line 428
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "autoname"

    .line 429
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 430
    iget-object v3, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    new-instance v4, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView$2;

    invoke-direct {v4, v0, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView$2;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v3, v2, v1, v4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    goto/16 :goto_7

    .line 437
    :cond_c
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 419
    :pswitch_c
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_d

    const-string v2, "top"

    .line 420
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 421
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->pageUp(Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 423
    :cond_d
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 411
    :pswitch_d
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_e

    const-string v2, "bottom"

    .line 412
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 413
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->pageDown(Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 415
    :cond_e
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 400
    :pswitch_e
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_f

    .line 401
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 402
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 403
    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "type"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-virtual {v1}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v1

    const-string v3, "extra"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-interface {v7, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 407
    :cond_f
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 393
    :pswitch_f
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_10

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_10

    .line 394
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getSelectedText(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_7

    .line 396
    :cond_10
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 390
    :pswitch_10
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getUpdatedScale()Ljava/lang/Float;

    move-result-object v5

    :cond_11
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 387
    :pswitch_11
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v5

    :cond_12
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 378
    :pswitch_12
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_13

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_13

    const-string v2, "zoomFactor"

    .line 379
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 380
    iget-object v3, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    double-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->zoomBy(F)V

    .line 381
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 383
    :cond_13
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 375
    :pswitch_13
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getContentHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_14
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 367
    :pswitch_14
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_15

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_15

    .line 368
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->printCurrentPage()V

    .line 369
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 371
    :cond_15
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 359
    :pswitch_15
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_16

    .line 360
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->resumeTimers()V

    .line 361
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 363
    :cond_16
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 351
    :pswitch_16
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_17

    .line 352
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->pauseTimers()V

    .line 353
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 355
    :cond_17
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 343
    :pswitch_17
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_18

    .line 344
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->onResume()V

    .line 345
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 347
    :cond_18
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 335
    :pswitch_18
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_19

    .line 336
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->onPause()V

    .line 337
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 339
    :cond_19
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 326
    :pswitch_19
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_1a

    .line 327
    invoke-virtual {v1, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 328
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 329
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 330
    iget-object v3, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v3, v2, v4, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scrollBy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 332
    :cond_1a
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 317
    :pswitch_1a
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_1b

    .line 318
    invoke-virtual {v1, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 319
    invoke-virtual {v1, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 320
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 321
    iget-object v3, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v3, v2, v4, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scrollTo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 323
    :cond_1b
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 309
    :pswitch_1b
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_1c

    .line 310
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearMatches()V

    .line 311
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 313
    :cond_1c
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 300
    :pswitch_1c
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_1d

    const-string v2, "forward"

    .line 301
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 302
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->findNext(Z)V

    .line 303
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 305
    :cond_1d
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 293
    :pswitch_1d
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_1e

    const-string v2, "find"

    .line 294
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->findAllAsync(Ljava/lang/String;)V

    .line 297
    :cond_1e
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 288
    :pswitch_1e
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_1f

    .line 289
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearSslPreferences()V

    .line 290
    :cond_1f
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 283
    :pswitch_1f
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_20

    .line 284
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearAllCache()V

    .line 285
    :cond_20
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 269
    :pswitch_20
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_21

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_21

    const-string v1, "START_SAFE_BROWSING"

    .line 270
    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 271
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView$1;

    invoke-direct {v2, v0, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-static {v1, v2}, Landroidx/webkit/WebViewCompat;->startSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    goto/16 :goto_7

    .line 279
    :cond_21
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 266
    :pswitch_21
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getCopyBackForwardList()Ljava/util/HashMap;

    move-result-object v5

    :cond_22
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 263
    :pswitch_22
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getOptions()Ljava/util/Map;

    move-result-object v5

    :cond_23
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 254
    :pswitch_23
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_24

    .line 255
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    invoke-direct {v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;-><init>()V

    const-string v3, "options"

    .line 256
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 257
    invoke-virtual {v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    .line 258
    iget-object v3, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v3, v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setOptions(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;Ljava/util/HashMap;)V

    .line 260
    :cond_24
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 248
    :pswitch_24
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_25

    .line 249
    invoke-virtual {v1, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->takeScreenshot(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_7

    .line 251
    :cond_25
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 245
    :pswitch_25
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v16, 0x1

    goto :goto_2

    :cond_26
    move/from16 v16, v8

    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 240
    :pswitch_26
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_27

    .line 241
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->stopLoading()V

    .line 242
    :cond_27
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 237
    :pswitch_27
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_28

    invoke-virtual {v1, v14}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->canGoBackOrForward(I)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v16, 0x1

    goto :goto_3

    :cond_28
    move/from16 v16, v8

    :goto_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 232
    :pswitch_28
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_29

    .line 233
    invoke-virtual {v1, v14}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->goBackOrForward(I)V

    .line 234
    :cond_29
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 229
    :pswitch_29
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/16 v16, 0x1

    goto :goto_4

    :cond_2a
    move/from16 v16, v8

    :goto_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 224
    :pswitch_2a
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_2b

    .line 225
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->goForward()V

    .line 226
    :cond_2b
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 221
    :pswitch_2b
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/16 v16, 0x1

    goto :goto_5

    :cond_2c
    move/from16 v16, v8

    :goto_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v7, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 216
    :pswitch_2c
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_2d

    .line 217
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->goBack()V

    .line 218
    :cond_2d
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 211
    :pswitch_2d
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_2e

    .line 212
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->reload()V

    .line 213
    :cond_2e
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 204
    :pswitch_2e
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_2f

    .line 205
    invoke-virtual {v1, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 206
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectCSSFileFromUrl(Ljava/lang/String;)V

    .line 208
    :cond_2f
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 197
    :pswitch_2f
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_30

    .line 198
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectCSSCode(Ljava/lang/String;)V

    .line 201
    :cond_30
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 190
    :pswitch_30
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_31

    .line 191
    invoke-virtual {v1, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectJavascriptFileFromUrl(Ljava/lang/String;)V

    .line 194
    :cond_31
    invoke-interface {v7, v11}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 181
    :pswitch_31
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_32

    .line 182
    invoke-virtual {v1, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2, v1, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->evaluateJavascript(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_7

    :cond_32
    const-string v1, ""

    .line 186
    invoke-interface {v7, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 175
    :pswitch_32
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_33

    .line 176
    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v2, v3, v1, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadFile(Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_7

    .line 178
    :cond_33
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_33
    const-string v2, "data"

    .line 162
    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "mimeType"

    .line 163
    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "encoding"

    .line 164
    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "baseUrl"

    .line 165
    invoke-virtual {v1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "historyUrl"

    .line 166
    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 168
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_34

    move-object/from16 v7, p2

    .line 169
    invoke-virtual/range {v1 .. v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_7

    .line 171
    :cond_34
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_7

    .line 155
    :pswitch_34
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_35

    .line 156
    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "postData"

    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v2, v3, v1, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->postUrl(Ljava/lang/String;[BLio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_7

    .line 158
    :cond_35
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_7

    .line 149
    :pswitch_35
    iget-object v2, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v2, :cond_36

    .line 150
    invoke-virtual {v1, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v2, v3, v1, v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_7

    .line 152
    :cond_36
    invoke-interface {v7, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_7

    .line 146
    :pswitch_36
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_37
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_7

    .line 143
    :pswitch_37
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_38

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getTitle()Ljava/lang/String;

    move-result-object v5

    :cond_38
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_7

    .line 140
    :pswitch_38
    iget-object v1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebView;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_39
    invoke-interface {v7, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_7

    .line 525
    :goto_6
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :cond_3a
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a88dc9c -> :sswitch_38
        -0x69b090b6 -> :sswitch_37
        -0x60d253d5 -> :sswitch_36
        -0x4f5bd10b -> :sswitch_35
        -0x4f5bd10a -> :sswitch_34
        -0x4e0b0fbd -> :sswitch_33
        -0x4a7789c7 -> :sswitch_32
        -0x4a012e11 -> :sswitch_31
        -0x3f9d4d33 -> :sswitch_30
        -0x3b59fa76 -> :sswitch_2f
        -0x38833526 -> :sswitch_2e
        -0x37b57e67 -> :sswitch_2d
        -0x37b237d3 -> :sswitch_2c
        -0x2d410ecb -> :sswitch_2b
        -0x2d106975 -> :sswitch_2a
        -0x29807c76 -> :sswitch_29
        -0x29807ba8 -> :sswitch_28
        -0x287e8fb4 -> :sswitch_27
        -0x28785945 -> :sswitch_26
        -0x17f88ffc -> :sswitch_25
        -0x17f88dd8 -> :sswitch_24
        -0x17518f51 -> :sswitch_23
        -0x12f8b743 -> :sswitch_22
        -0x12e5de21 -> :sswitch_21
        -0xe7dd74e -> :sswitch_20
        -0xcac3d98 -> :sswitch_1f
        -0x7a08722 -> :sswitch_1e
        -0x68ee185 -> :sswitch_1d
        -0x32ce041 -> :sswitch_1c
        -0x1f169cf -> :sswitch_1b
        -0x10edb0a -> :sswitch_1a
        0x65825f6 -> :sswitch_19
        0x9581790 -> :sswitch_18
        0xb9ed94d -> :sswitch_17
        0x141096a9 -> :sswitch_16
        0x1d5dd38c -> :sswitch_15
        0x2c211a37 -> :sswitch_14
        0x30b32a26 -> :sswitch_13
        0x33331bd1 -> :sswitch_12
        0x35d48587 -> :sswitch_11
        0x3e28c0f9 -> :sswitch_10
        0x402effa3 -> :sswitch_f
        0x410b6ca8 -> :sswitch_e
        0x4a4dcef6 -> :sswitch_d
        0x4e358861 -> :sswitch_c
        0x5aa2005b -> :sswitch_b
        0x66c50fdc -> :sswitch_a
        0x6714ace7 -> :sswitch_9
        0x6a1709ec -> :sswitch_8
        0x6bed5233 -> :sswitch_7
        0x6dfa45b0 -> :sswitch_6
        0x6dfb4b82 -> :sswitch_5
        0x72420634 -> :sswitch_4
        0x72be6f8b -> :sswitch_3
        0x738236e6 -> :sswitch_2
        0x7520af94 -> :sswitch_1
        0x7531c8a2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
