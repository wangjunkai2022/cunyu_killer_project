.class public Lcom/example/super_player_kit/SuperPlayerKitPlugin;
.super Ljava/lang/Object;
.source "SuperPlayerKitPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static _activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/example/super_player_kit/SuperPlayerKitPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/super_player_kit/SuperPlayerKitPlugin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .line 24
    sget-object v0, Lcom/example/super_player_kit/SuperPlayerKitPlugin;->_activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    .line 43
    sget-object v0, Lcom/example/super_player_kit/SuperPlayerKitPlugin;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sput-object p1, Lcom/example/super_player_kit/SuperPlayerKitPlugin;->_activity:Landroid/app/Activity;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 29
    sget-object v0, Lcom/example/super_player_kit/SuperPlayerKitPlugin;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v0, Lcom/example/super_player_kit/SuperPlayerKitFactory;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/example/super_player_kit/SuperPlayerKitFactory;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 31
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getPlatformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    move-result-object p1

    const-string v1, "SuperPlayerKit"

    invoke-interface {p1, v1, v0}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 60
    sget-object v0, Lcom/example/super_player_kit/SuperPlayerKitPlugin;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 2

    .line 49
    sget-object v0, Lcom/example/super_player_kit/SuperPlayerKitPlugin;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromActivityForConfigChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 36
    sget-object p1, Lcom/example/super_player_kit/SuperPlayerKitPlugin;->TAG:Ljava/lang/String;

    const-string v0, "onDetachedFromEngine"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 55
    sget-object p1, Lcom/example/super_player_kit/SuperPlayerKitPlugin;->TAG:Ljava/lang/String;

    const-string v0, "onReattachedToActivityForConfigChanges"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
