.class Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderBackgroundThread;
.super Ljava/lang/Object;
.source "PathProviderPlugin.java"

# interfaces
.implements Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/pathprovider/PathProviderPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathProviderBackgroundThread"
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;


# direct methods
.method private constructor <init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderBackgroundThread;->this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin;Lio/flutter/plugins/pathprovider/PathProviderPlugin$1;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderBackgroundThread;-><init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)V

    return-void
.end method


# virtual methods
.method public getApplicationDocumentsDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderBackgroundThread;->this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-static {v0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->access$500(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public getApplicationSupportDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderBackgroundThread;->this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-static {v0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->access$100(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public getExternalCacheDirectories(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderBackgroundThread;->this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-static {v0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->access$300(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public getExternalStorageDirectories(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderBackgroundThread;->this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-static {v0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->access$200(Lio/flutter/plugins/pathprovider/PathProviderPlugin;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public getStorageDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderBackgroundThread;->this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-static {v0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->access$400(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public getTemporaryDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderBackgroundThread;->this$0:Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-static {v0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->access$600(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
