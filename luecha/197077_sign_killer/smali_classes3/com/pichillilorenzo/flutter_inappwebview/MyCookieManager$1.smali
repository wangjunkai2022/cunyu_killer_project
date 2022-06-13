.class Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager$1;
.super Ljava/lang/Object;
.source "MyCookieManager.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
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
.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 127
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager$1;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
