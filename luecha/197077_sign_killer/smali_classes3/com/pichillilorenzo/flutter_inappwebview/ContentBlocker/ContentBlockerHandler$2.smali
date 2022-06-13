.class Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler$2;
.super Ljava/lang/Object;
.source "ContentBlockerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->checkUrl(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

.field final synthetic val$jsScript:Ljava/lang/String;

.field final synthetic val$webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler$2;->val$webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler$2;->val$jsScript:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler$2;->val$webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler$2;->val$jsScript:Ljava/lang/String;

    const/4 v2, 0x0

    check-cast v2, Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-virtual {v0, v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->evaluateJavascript(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler$2;->val$webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler$2;->val$jsScript:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
