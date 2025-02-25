.class Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread$1;
.super Ljava/lang/Object;
.source "PathProviderPlugin.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;->executeInBackground(Ljava/util/concurrent/Callable;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread$1;->this$1:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;

    iput-object p2, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
