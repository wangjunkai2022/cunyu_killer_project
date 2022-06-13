.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9$1;
.super Ljava/lang/Object;
.source "InAppWebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;)V
    .locals 0

    .line 1449
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1449
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 1

    .line 1452
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-nez v0, :cond_0

    return-void

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9$1;->this$1:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$9;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
