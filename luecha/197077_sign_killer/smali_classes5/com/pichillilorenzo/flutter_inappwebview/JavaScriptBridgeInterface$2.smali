.class Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;
.super Ljava/lang/Object;
.source "JavaScriptBridgeInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;->_callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;

.field final synthetic val$_callHandlerID:Ljava/lang/String;

.field final synthetic val$handlerName:Ljava/lang/String;

.field final synthetic val$obj:Ljava/util/Map;

.field final synthetic val$webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$handlerName:Ljava/lang/String;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$obj:Ljava/util/Map;

    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$_callHandlerID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$handlerName:Ljava/lang/String;

    const-string v1, "onPrint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->printCurrentPage()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface;->channel:Lio/flutter/plugin/common/MethodChannel;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$obj:Ljava/util/Map;

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2$1;

    invoke-direct {v2, p0}, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;)V

    const-string v3, "onCallJsHandler"

    invoke-virtual {v0, v3, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method
