.class public final synthetic Lcom/baseflow/permissionhandler/-$$Lambda$tkd1HTc7lzMA-RNRmpQPzCnzrNM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;


# instance fields
.field private final synthetic f$0:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/permissionhandler/-$$Lambda$tkd1HTc7lzMA-RNRmpQPzCnzrNM;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/baseflow/permissionhandler/-$$Lambda$tkd1HTc7lzMA-RNRmpQPzCnzrNM;->f$0:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
