.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;
.super Ljava/lang/Object;
.source "InAppWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

.field final synthetic val$finalScriptToInject:Ljava/lang/String;

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1441
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;->val$finalScriptToInject:Ljava/lang/String;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 1446
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;->val$finalScriptToInject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;)V

    .line 1447
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v1, ""

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;->val$finalScriptToInject:Ljava/lang/String;

    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9$1;

    invoke-direct {v2, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;)V

    invoke-virtual {v0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method
