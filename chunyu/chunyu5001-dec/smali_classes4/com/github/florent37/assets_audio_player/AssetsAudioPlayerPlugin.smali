.class public final Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;
.super Ljava/lang/Object;
.source "AssetsAudioPlayerPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 (2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001(B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0012\u0010\u001b\u001a\u00020\u00182\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u0018H\u0016J\u0008\u0010\u001f\u001a\u00020\u0018H\u0016J\u0012\u0010 \u001a\u00020\u00182\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u001dH\u0016J\u0012\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0010\u0010%\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0017\u0010&\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020$H\u0002\u00a2\u0006\u0002\u0010\'R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006)"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "()V",
        "assetsAudioPlayer",
        "Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;",
        "getAssetsAudioPlayer",
        "()Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;",
        "setAssetsAudioPlayer",
        "(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;)V",
        "myActivity",
        "Landroid/app/Activity;",
        "getMyActivity",
        "()Landroid/app/Activity;",
        "setMyActivity",
        "(Landroid/app/Activity;)V",
        "notificationChannel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "getNotificationChannel",
        "()Lio/flutter/plugin/common/MethodChannel;",
        "setNotificationChannel",
        "(Lio/flutter/plugin/common/MethodChannel;)V",
        "onAttachedToActivity",
        "",
        "binding",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "onAttachedToEngine",
        "flutterPluginBinding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromActivity",
        "onDetachedFromActivityForConfigChanges",
        "onDetachedFromEngine",
        "onNewIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "onReattachedToActivityForConfigChanges",
        "sendNotificationPayloadMessage",
        "(Landroid/content/Intent;)Ljava/lang/Boolean;",
        "Companion",
        "assets_audio_player_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;

.field private static displayLogs:Z

.field private static instance:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;


# instance fields
.field private assetsAudioPlayer:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

.field private myActivity:Landroid/app/Activity;

.field private notificationChannel:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->Companion:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDisplayLogs$cp()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->displayLogs:Z

    return v0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;
    .locals 1

    .line 42
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->instance:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;

    return-object v0
.end method

.method public static final synthetic access$setDisplayLogs$cp(Z)V
    .locals 0

    .line 42
    sput-boolean p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->displayLogs:Z

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;)V
    .locals 0

    .line 42
    sput-object p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->instance:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;

    return-void
.end method

.method private final sendNotificationPayloadMessage(Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 2

    .line 72
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "select"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "trackID"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->notificationChannel:Lio/flutter/plugin/common/MethodChannel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "selectNotification"

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x1

    .line 75
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 77
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getAssetsAudioPlayer()Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->assetsAudioPlayer:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    return-object v0
.end method

.method public final getMyActivity()Landroid/app/Activity;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->myActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getNotificationChannel()Lio/flutter/plugin/common/MethodChannel;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->notificationChannel:Lio/flutter/plugin/common/MethodChannel;

    return-object v0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    move-object v0, p0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 106
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->myActivity:Landroid/app/Activity;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 4

    const-string v0, "flutterPluginBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->instance:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->Companion:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;

    sput-object p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->instance:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;

    .line 57
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "assets_audio_player_notification"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->notificationChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 59
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getFlutterAssets()Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    .line 58
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    const-string v3, "applicationContext"

    .line 60
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "binaryMessenger"

    .line 61
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "flutterAssets"

    .line 59
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {v2, v1, p1, v0}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V

    iput-object v2, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->assetsAudioPlayer:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 63
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->assetsAudioPlayer:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->register()V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->myActivity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->myActivity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->assetsAudioPlayer:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->unregister()V

    .line 68
    :goto_0
    sget-object p1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->Companion:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;

    const/4 p1, 0x0

    sput-object p1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->instance:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "isVisited"

    .line 84
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 85
    invoke-direct {p0, p1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->sendNotificationPayloadMessage(Landroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    .line 86
    iget-object v2, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->myActivity:Landroid/app/Activity;

    if-eqz v2, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {v2, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    :goto_1
    const/4 v2, 0x1

    .line 88
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    return v0
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    move-object v0, p0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 101
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->myActivity:Landroid/app/Activity;

    return-void
.end method

.method public final setAssetsAudioPlayer(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->assetsAudioPlayer:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    return-void
.end method

.method public final setMyActivity(Landroid/app/Activity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->myActivity:Landroid/app/Activity;

    return-void
.end method

.method public final setNotificationChannel(Lio/flutter/plugin/common/MethodChannel;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->notificationChannel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method
