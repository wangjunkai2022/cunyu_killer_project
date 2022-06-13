.class public Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;
.super Ljava/lang/Object;
.source "MyWebStorage.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MyWebStorage"

.field public static channel:Lio/flutter/plugin/common/MethodChannel;

.field public static webStorageManager:Landroid/webkit/WebStorage;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "com.pichillilorenzo/flutter_inappwebview_webstoragemanager"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 25
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 26
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object p1

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->webStorageManager:Landroid/webkit/WebStorage;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 102
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public getOrigins(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 64
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->webStorageManager:Landroid/webkit/WebStorage;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage$1;

    invoke-direct {v1, p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 84
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->webStorageManager:Landroid/webkit/WebStorage;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage$2;

    invoke-direct {v1, p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage$2;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebStorage;->getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public getUsageForOrigin(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 93
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->webStorageManager:Landroid/webkit/WebStorage;

    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage$3;

    invoke-direct {v1, p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage$3;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebStorage;->getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7

    .line 31
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "getUsageForOrigin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_1
    const-string v1, "getOrigins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "deleteOrigin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "deleteAllData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_4
    const-string v1, "getQuotaForOrigin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    const-string v1, "origin"

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 59
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_2

    .line 54
    :cond_1
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->getUsageForOrigin(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->getQuotaForOrigin(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->webStorageManager:Landroid/webkit/WebStorage;

    invoke-virtual {v0, p1}, Landroid/webkit/WebStorage;->deleteOrigin(Ljava/lang/String;)V

    .line 44
    invoke-interface {p2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 36
    :cond_4
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->webStorageManager:Landroid/webkit/WebStorage;

    invoke-virtual {p1}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 37
    invoke-interface {p2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 33
    :cond_5
    invoke-virtual {p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->getOrigins(Lio/flutter/plugin/common/MethodChannel$Result;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4dfedd53 -> :sswitch_4
        -0x429a6f40 -> :sswitch_3
        -0x34410b4f -> :sswitch_2
        -0x9de8e29 -> :sswitch_1
        0x3243e1a4 -> :sswitch_0
    .end sparse-switch
.end method
