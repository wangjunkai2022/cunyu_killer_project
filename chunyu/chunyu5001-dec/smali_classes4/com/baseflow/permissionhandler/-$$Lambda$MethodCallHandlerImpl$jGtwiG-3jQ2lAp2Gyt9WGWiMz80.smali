.class public final synthetic Lcom/baseflow/permissionhandler/-$$Lambda$MethodCallHandlerImpl$jGtwiG-3jQ2lAp2Gyt9WGWiMz80;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/baseflow/permissionhandler/ErrorCallback;


# instance fields
.field private final synthetic f$0:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/permissionhandler/-$$Lambda$MethodCallHandlerImpl$jGtwiG-3jQ2lAp2Gyt9WGWiMz80;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baseflow/permissionhandler/-$$Lambda$MethodCallHandlerImpl$jGtwiG-3jQ2lAp2Gyt9WGWiMz80;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {v0, p1, p2}, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->lambda$onMethodCall$0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
