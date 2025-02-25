.class Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic$1;
.super Ljava/lang/Object;
.source "InAppWebViewStatic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic$1;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
