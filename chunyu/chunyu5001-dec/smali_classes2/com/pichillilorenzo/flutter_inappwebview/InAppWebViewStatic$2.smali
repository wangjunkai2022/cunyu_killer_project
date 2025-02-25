.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic$2;
.super Ljava/lang/Object;
.source "InAppWebViewStatic.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic$2;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic$2;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic$2;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic$2;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
