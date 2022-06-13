.class Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$7;
.super Ljava/lang/Object;
.source "InAppBrowserActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->startSafeBrowsing(Lio/flutter/plugin/common/MethodChannel$Result;)V
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
.field final synthetic this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$7;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    iput-object p2, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$7;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$7;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 896
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$7;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
