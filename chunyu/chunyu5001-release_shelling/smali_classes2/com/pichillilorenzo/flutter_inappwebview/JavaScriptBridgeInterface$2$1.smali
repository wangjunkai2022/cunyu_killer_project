.class Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2$1;
.super Ljava/lang/Object;
.source "JavaScriptBridgeInterface.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 108
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

    const-string p2, "JSBridgeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notImplemented()V
    .locals 0

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 9

    .line 94
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const-string v2, "];}"

    const-string v3, "); delete window."

    const-string v4, "]("

    const-string v5, "] != null) {window."

    const-string v6, "["

    const-string v7, "flutter_inappwebview"

    if-lt v0, v1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "if(window.flutter_inappwebview["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;

    iget-object v8, v8, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$_callHandlerID:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;

    iget-object v5, v5, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$_callHandlerID:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$_callHandlerID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    check-cast v1, Landroid/webkit/ValueCallback;

    invoke-virtual {v0, p1, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "javascript:if(window.flutter_inappwebview["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;

    iget-object v8, v8, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$_callHandlerID:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;

    iget-object v5, v5, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$_callHandlerID:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/JavaScriptBridgeInterface$2;->val$_callHandlerID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
