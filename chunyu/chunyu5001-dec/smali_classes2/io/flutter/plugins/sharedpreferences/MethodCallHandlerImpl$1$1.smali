.class Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1$1;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1;

.field final synthetic val$response:Z


# direct methods
.method constructor <init>(Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1;Z)V
    .locals 0

    .line 145
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1$1;->this$1:Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1;

    iput-boolean p2, p0, Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1$1;->val$response:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 148
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1$1;->this$1:Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1;

    iget-object v0, v0, Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-boolean v1, p0, Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1$1;->val$response:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
