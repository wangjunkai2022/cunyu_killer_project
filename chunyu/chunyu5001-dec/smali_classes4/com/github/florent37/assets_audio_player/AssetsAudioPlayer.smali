.class public final Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;
.super Ljava/lang/Object;
.source "AssetsAudioPlayerPlugin.kt"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetsAudioPlayerPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetsAudioPlayerPlugin.kt\ncom/github/florent37/assets_audio_player/AssetsAudioPlayer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,585:1\n1849#2,2:586\n357#3,7:588\n*S KotlinDebug\n*F\n+ 1 AssetsAudioPlayerPlugin.kt\ncom/github/florent37/assets_audio_player/AssetsAudioPlayer\n*L\n166#1:586,2\n179#1:588,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0081\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005*\u0001\u001b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u000cH\u0002J\u0010\u0010!\u001a\u0004\u0018\u00010\u00172\u0006\u0010 \u001a\u00020\u000cJ\u000e\u0010\"\u001a\u00020\u00142\u0006\u0010#\u001a\u00020$J\u0018\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0016J\u000e\u0010*\u001a\u00020\u00142\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020\u0014J\u000e\u0010.\u001a\u00020\u00142\u0006\u0010/\u001a\u00020\u000cJ\u0006\u00100\u001a\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "context",
        "Landroid/content/Context;",
        "messenger",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "flutterAssets",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;",
        "(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V",
        "headsetManager",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;",
        "lastPlayerIdWithNotificationEnabled",
        "",
        "mediaButtonsReceiver",
        "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;",
        "notificationManager",
        "Lcom/github/florent37/assets_audio_player/notification/NotificationManager;",
        "onHeadsetPluggedListener",
        "Lkotlin/Function1;",
        "",
        "",
        "players",
        "",
        "Lcom/github/florent37/assets_audio_player/Player;",
        "stopWhenCall",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;",
        "stopWhenCallListener",
        "com/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1",
        "Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1;",
        "uriResolver",
        "Lcom/github/florent37/assets_audio_player/UriResolver;",
        "getOrCreatePlayer",
        "id",
        "getPlayer",
        "onMediaButton",
        "action",
        "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;",
        "onMethodCall",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "onNotifSeekPlayer",
        "toMs",
        "",
        "register",
        "registerLastPlayerWithNotif",
        "playerId",
        "unregister",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private final flutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

.field private headsetManager:Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;

.field private lastPlayerIdWithNotificationEnabled:Ljava/lang/String;

.field private mediaButtonsReceiver:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;

.field private final messenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final notificationManager:Lcom/github/florent37/assets_audio_player/notification/NotificationManager;

.field private final onHeadsetPluggedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final players:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/florent37/assets_audio_player/Player;",
            ">;"
        }
    .end annotation
.end field

.field private stopWhenCall:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;

.field private final stopWhenCallListener:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1;

.field private final uriResolver:Lcom/github/florent37/assets_audio_player/UriResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messenger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flutterAssets"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->context:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 117
    iput-object p3, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->flutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    .line 120
    new-instance p1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;

    iget-object p2, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->stopWhenCall:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;

    .line 121
    new-instance p1, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;

    iget-object p2, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->headsetManager:Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;

    .line 122
    new-instance p1, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;

    iget-object p2, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->notificationManager:Lcom/github/florent37/assets_audio_player/notification/NotificationManager;

    .line 123
    new-instance p1, Lcom/github/florent37/assets_audio_player/UriResolver;

    iget-object p2, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/github/florent37/assets_audio_player/UriResolver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->uriResolver:Lcom/github/florent37/assets_audio_player/UriResolver;

    .line 125
    new-instance p1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1;

    invoke-direct {p1, p0}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1;-><init>(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;)V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->stopWhenCallListener:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1;

    .line 133
    new-instance p1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$onHeadsetPluggedListener$1;

    invoke-direct {p1, p0}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$onHeadsetPluggedListener$1;-><init>(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->onHeadsetPluggedListener:Lkotlin/jvm/functions/Function1;

    .line 172
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->players:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getPlayers$p(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;)Ljava/util/Map;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->players:Ljava/util/Map;

    return-object p0
.end method

.method private final getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;
    .locals 10

    .line 179
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->players:Ljava/util/Map;

    .line 588
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 180
    new-instance v1, Lio/flutter/plugin/common/MethodChannel;

    iget-object v2, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    const-string v3, "assets_audio_player/"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 182
    iget-object v6, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->context:Landroid/content/Context;

    .line 184
    iget-object v8, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->notificationManager:Lcom/github/florent37/assets_audio_player/notification/NotificationManager;

    .line 185
    iget-object v2, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->stopWhenCall:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;

    .line 186
    iget-object v9, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->flutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    .line 181
    new-instance v3, Lcom/github/florent37/assets_audio_player/Player;

    .line 185
    move-object v7, v2

    check-cast v7, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;

    move-object v4, v3

    move-object v5, p1

    .line 181
    invoke-direct/range {v4 .. v9}, Lcom/github/florent37/assets_audio_player/Player;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;Lcom/github/florent37/assets_audio_player/notification/NotificationManager;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V

    .line 189
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$1;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$1;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnVolumeChanged(Lkotlin/jvm/functions/Function1;)V

    .line 192
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$2;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$2;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnForwardRewind(Lkotlin/jvm/functions/Function1;)V

    .line 195
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$3;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$3;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnPlaySpeedChanged(Lkotlin/jvm/functions/Function1;)V

    .line 198
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$4;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$4;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnPitchChanged(Lkotlin/jvm/functions/Function1;)V

    .line 201
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$5;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$5;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnPositionMSChanged(Lkotlin/jvm/functions/Function1;)V

    .line 204
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$6;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$6;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnReadyToPlay(Lkotlin/jvm/functions/Function1;)V

    .line 209
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$7;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$7;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnSessionIdFound(Lkotlin/jvm/functions/Function1;)V

    .line 212
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$8;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$8;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnPlaying(Lkotlin/jvm/functions/Function1;)V

    .line 215
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$9;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$9;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnBuffering(Lkotlin/jvm/functions/Function1;)V

    .line 218
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$10;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$10;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnFinished(Lkotlin/jvm/functions/Function0;)V

    .line 222
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$11;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$11;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnPrev(Lkotlin/jvm/functions/Function0;)V

    .line 225
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$12;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$12;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnNext(Lkotlin/jvm/functions/Function0;)V

    .line 228
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$13;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$13;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnStop(Lkotlin/jvm/functions/Function0;)V

    .line 231
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$14;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$14;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnNotificationPlayOrPause(Lkotlin/jvm/functions/Function0;)V

    .line 234
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$15;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$15;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnNotificationStop(Lkotlin/jvm/functions/Function0;)V

    .line 237
    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$16;

    invoke-direct {v2, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$getOrCreatePlayer$1$1$16;-><init>(Lio/flutter/plugin/common/MethodChannel;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v2}, Lcom/github/florent37/assets_audio_player/Player;->setOnError(Lkotlin/jvm/functions/Function1;)V

    .line 591
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    .line 589
    :cond_0
    check-cast v1, Lcom/github/florent37/assets_audio_player/Player;

    return-object v1
.end method


# virtual methods
.method public final getPlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->players:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/florent37/assets_audio_player/Player;

    return-object p1
.end method

.method public final onMediaButton(Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->lastPlayerIdWithNotificationEnabled:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {p0, v0}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getPlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 567
    :cond_1
    sget-object v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 573
    :pswitch_0
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/Player;->askStop()V

    goto :goto_0

    .line 572
    :pswitch_1
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/Player;->prev()V

    goto :goto_0

    .line 571
    :pswitch_2
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/Player;->next()V

    goto :goto_0

    .line 570
    :pswitch_3
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/Player;->askPlayOrPause()V

    goto :goto_0

    .line 569
    :pswitch_4
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/Player;->askPlayOrPause()V

    goto :goto_0

    .line 568
    :pswitch_5
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/Player;->askPlayOrPause()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p2

    const-string v2, "call"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "result"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v2, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz v2, :cond_82

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "path"

    const-string v5, "seek"

    const-string v6, "isPlaying"

    const-string v9, "pitch"

    const-string/jumbo v10, "volume"

    const-string v11, "playSpeed"

    const-string v12, "The specified argument must be an Double."

    const-string v13, "The specified argument (id) must be an String."

    const-string v14, "The specified argument must be an Map<*, Any>."

    const-string v7, "id"

    const-string v8, "WRONG_FORMAT"

    move-object/from16 v18, v6

    const/4 v6, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_49

    :sswitch_0
    const-string v3, "onAudioUpdated"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_49

    .line 424
    :cond_0
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    :cond_1
    move-object v1, v6

    :goto_0
    if-nez v1, :cond_2

    move-object v1, v6

    goto :goto_3

    .line 425
    :cond_2
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v2, v6

    :goto_1
    if-nez v2, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 426
    invoke-interface {v15, v8, v13, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 429
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_5

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v3, v6

    :goto_2
    if-nez v3, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    const-string v1, "The specified argument(path) must be an String."

    .line 430
    invoke-interface {v15, v8, v1, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 434
    :cond_6
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/notification/AudioMetasKt;->fetchAudioMetas(Ljava/util/Map;)Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v1

    .line 436
    invoke-direct {v0, v2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lcom/github/florent37/assets_audio_player/Player;->onAudioUpdated(Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;)V

    .line 437
    invoke-interface {v15, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 438
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 424
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    if-nez v1, :cond_7

    .line 438
    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 439
    invoke-interface {v15, v8, v14, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 424
    :cond_7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4b

    .line 249
    :sswitch_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_49

    .line 339
    :cond_8
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_9

    check-cast v1, Ljava/util/Map;

    goto :goto_4

    :cond_9
    move-object v1, v6

    :goto_4
    if-nez v1, :cond_a

    move-object v1, v6

    goto :goto_7

    .line 340
    :cond_a
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_b

    check-cast v2, Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object v2, v6

    :goto_5
    if-nez v2, :cond_c

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 341
    invoke-interface {v15, v8, v13, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 344
    :cond_c
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_d

    check-cast v1, Ljava/lang/Double;

    goto :goto_6

    :cond_d
    move-object v1, v6

    :goto_6
    if-nez v1, :cond_e

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 345
    invoke-interface {v15, v8, v12, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 346
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 348
    invoke-direct {v0, v2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/github/florent37/assets_audio_player/Player;->setPitch(D)V

    .line 349
    invoke-interface {v15, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 350
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 339
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_7
    if-nez v1, :cond_f

    .line 350
    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 351
    invoke-interface {v15, v8, v14, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 339
    :cond_f
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4b

    :sswitch_2
    const-string v3, "pause"

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_49

    .line 278
    :cond_10
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_11

    check-cast v1, Ljava/util/Map;

    goto :goto_8

    :cond_11
    move-object v1, v6

    :goto_8
    if-nez v1, :cond_12

    move-object v1, v6

    goto :goto_a

    .line 279
    :cond_12
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_13

    check-cast v1, Ljava/lang/String;

    goto :goto_9

    :cond_13
    move-object v1, v6

    :goto_9
    if-nez v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 280
    invoke-interface {v15, v8, v13, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 283
    :cond_14
    invoke-direct {v0, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/Player;->pause()V

    .line 284
    invoke-interface {v15, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 285
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 278
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_a
    if-nez v1, :cond_15

    .line 285
    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 286
    invoke-interface {v15, v8, v14, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 278
    :cond_15
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4b

    :sswitch_3
    const-string v3, "stop"

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_49

    .line 291
    :cond_16
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_17

    check-cast v1, Ljava/util/Map;

    goto :goto_b

    :cond_17
    move-object v1, v6

    :goto_b
    if-nez v1, :cond_18

    move-object v1, v6

    goto :goto_f

    .line 292
    :cond_18
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_19

    check-cast v2, Ljava/lang/String;

    goto :goto_c

    :cond_19
    move-object v2, v6

    :goto_c
    if-nez v2, :cond_1a

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 293
    invoke-interface {v15, v8, v13, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1a
    const-string v3, "removeNotification"

    .line 296
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1b

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_d

    :cond_1b
    move-object v1, v6

    :goto_d
    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_e

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 297
    :goto_e
    invoke-direct {v0, v2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v12, 0x1

    invoke-static {v2, v3, v1, v12, v6}, Lcom/github/florent37/assets_audio_player/Player;->stop$default(Lcom/github/florent37/assets_audio_player/Player;ZZILjava/lang/Object;)V

    .line 298
    invoke-interface {v15, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 299
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 291
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_f
    if-nez v1, :cond_1d

    .line 299
    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 300
    invoke-interface {v15, v8, v14, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 291
    :cond_1d
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4b

    .line 249
    :sswitch_4
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_49

    .line 390
    :cond_1e
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_1f

    check-cast v1, Ljava/util/Map;

    goto :goto_10

    :cond_1f
    move-object v1, v6

    :goto_10
    if-nez v1, :cond_20

    move-object v1, v6

    goto :goto_13

    .line 391
    :cond_20
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_21

    check-cast v2, Ljava/lang/String;

    goto :goto_11

    :cond_21
    move-object v2, v6

    :goto_11
    if-nez v2, :cond_22

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 392
    invoke-interface {v15, v8, v13, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_22
    const-string/jumbo v3, "to"

    .line 395
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_23

    check-cast v1, Ljava/lang/Integer;

    goto :goto_12

    :cond_23
    move-object v1, v6

    :goto_12
    if-nez v1, :cond_24

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    const-string v1, "The specified argument(to) must be an int."

    .line 396
    invoke-interface {v15, v8, v1, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 397
    :cond_24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 399
    invoke-direct {v0, v2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v2

    int-to-long v3, v1

    const-wide/16 v9, 0x1

    mul-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Lcom/github/florent37/assets_audio_player/Player;->seek(J)V

    .line 400
    invoke-interface {v15, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 401
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 390
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_13
    if-nez v1, :cond_25

    .line 401
    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 402
    invoke-interface {v15, v8, v14, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 390
    :cond_25
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4b

    :sswitch_5
    const-string v3, "play"

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_49

    .line 265
    :cond_26
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_27

    check-cast v1, Ljava/util/Map;

    goto :goto_14

    :cond_27
    move-object v1, v6

    :goto_14
    if-nez v1, :cond_28

    move-object v1, v6

    goto :goto_16

    .line 266
    :cond_28
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_29

    check-cast v1, Ljava/lang/String;

    goto :goto_15

    :cond_29
    move-object v1, v6

    :goto_15
    if-nez v1, :cond_2a

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 267
    invoke-interface {v15, v8, v13, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 270
    :cond_2a
    invoke-direct {v0, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/Player;->play()V

    .line 271
    invoke-interface {v15, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 272
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 265
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_16
    if-nez v1, :cond_2b

    .line 272
    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 273
    invoke-interface {v15, v8, v14, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 265
    :cond_2b
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4b

    :sswitch_6
    const/4 v12, 0x1

    const-string v3, "open"

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_49

    .line 476
    :cond_2c
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_2d

    check-cast v1, Ljava/util/Map;

    goto :goto_17

    :cond_2d
    move-object v1, v6

    :goto_17
    if-nez v1, :cond_2e

    move-object/from16 v37, v8

    move-object/from16 v38, v14

    goto/16 :goto_2b

    .line 478
    :cond_2e
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2f

    check-cast v2, Ljava/lang/String;

    goto :goto_18

    :cond_2f
    move-object v2, v6

    :goto_18
    if-nez v2, :cond_30

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 479
    invoke-interface {v15, v8, v13, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 482
    :cond_30
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_31

    check-cast v3, Ljava/lang/String;

    goto :goto_19

    :cond_31
    move-object v3, v6

    :goto_19
    if-nez v3, :cond_32

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    const-string v1, "The specified argument must be an String `path`"

    .line 483
    invoke-interface {v15, v8, v1, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 486
    :cond_32
    iget-object v4, v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->uriResolver:Lcom/github/florent37/assets_audio_player/UriResolver;

    invoke-virtual {v4, v3}, Lcom/github/florent37/assets_audio_player/UriResolver;->audioPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "package"

    .line 489
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_33

    check-cast v4, Ljava/lang/String;

    goto :goto_1a

    :cond_33
    move-object v4, v6

    :goto_1a
    const-string v7, "audioType"

    .line 491
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v13, v7, Ljava/lang/String;

    if-eqz v13, :cond_34

    check-cast v7, Ljava/lang/String;

    goto :goto_1b

    :cond_34
    move-object v7, v6

    :goto_1b
    if-nez v7, :cond_35

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    const-string v1, "The specified argument must be an Map<String, Any> containing a `audioType`"

    .line 492
    invoke-interface {v15, v8, v1, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 495
    :cond_35
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v13, v10, Ljava/lang/Double;

    if-eqz v13, :cond_36

    check-cast v10, Ljava/lang/Double;

    goto :goto_1c

    :cond_36
    move-object v10, v6

    :goto_1c
    if-nez v10, :cond_37

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    const-string v1, "The specified argument must be an Map<String, Any> containing a `volume`"

    .line 496
    invoke-interface {v15, v8, v1, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 497
    :cond_37
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 499
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Ljava/lang/Double;

    if-eqz v11, :cond_38

    check-cast v10, Ljava/lang/Double;

    goto :goto_1d

    :cond_38
    move-object v10, v6

    :goto_1d
    if-nez v10, :cond_39

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    const-string v1, "The specified argument must be an Map<String, Any> containing a `playSpeed`"

    .line 500
    invoke-interface {v15, v8, v1, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 501
    :cond_39
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    .line 503
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/lang/Double;

    if-eqz v10, :cond_3a

    check-cast v9, Ljava/lang/Double;

    goto :goto_1e

    :cond_3a
    move-object v9, v6

    :goto_1e
    if-nez v9, :cond_3b

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    const-string v1, "The specified argument must be an Map<String, Any> containing a `pitch`"

    .line 504
    invoke-interface {v15, v8, v1, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 505
    :cond_3b
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    const-string v9, "autoStart"

    .line 507
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/lang/Boolean;

    if-eqz v10, :cond_3c

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_1f

    :cond_3c
    move-object v9, v6

    :goto_1f
    if-nez v9, :cond_3d

    move v9, v12

    goto :goto_20

    :cond_3d
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    :goto_20
    const-string v10, "displayNotification"

    .line 508
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Ljava/lang/Boolean;

    if-eqz v11, :cond_3e

    check-cast v10, Ljava/lang/Boolean;

    goto :goto_21

    :cond_3e
    move-object v10, v6

    :goto_21
    if-nez v10, :cond_3f

    const/4 v10, 0x0

    goto :goto_22

    :cond_3f
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :goto_22
    const-string v11, "respectSilentMode"

    .line 509
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Ljava/lang/Boolean;

    if-eqz v12, :cond_40

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_23

    :cond_40
    move-object v11, v6

    :goto_23
    if-nez v11, :cond_41

    const/16 v16, 0x0

    goto :goto_24

    :cond_41
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    move/from16 v16, v11

    .line 510
    :goto_24
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v11, v5, Ljava/lang/Integer;

    if-eqz v11, :cond_42

    check-cast v5, Ljava/lang/Integer;

    move-object v11, v5

    goto :goto_25

    :cond_42
    move-object v11, v6

    :goto_25
    const-string v5, "networkHeaders"

    .line 511
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v12, v5, Ljava/util/Map;

    if-eqz v12, :cond_43

    check-cast v5, Ljava/util/Map;

    move-object/from16 v20, v5

    goto :goto_26

    :cond_43
    move-object/from16 v20, v6

    :goto_26
    const-string v5, "drmConfiguration"

    .line 512
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v12, v5, Ljava/util/Map;

    if-eqz v12, :cond_44

    check-cast v5, Ljava/util/Map;

    move-object/from16 v26, v5

    goto :goto_27

    :cond_44
    move-object/from16 v26, v6

    .line 515
    :goto_27
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettingsKt;->fetchNotificationSettings(Ljava/util/Map;)Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    move-result-object v12

    .line 516
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/notification/AudioMetasKt;->fetchAudioMetas(Ljava/util/Map;)Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 518
    invoke-virtual/range {v27 .. v27}, Lcom/github/florent37/assets_audio_player/notification/AudioMetas;->getImage()Lcom/github/florent37/assets_audio_player/notification/ImageMetas;

    move-result-object v31

    if-nez v31, :cond_45

    move-object/from16 v31, v6

    goto :goto_28

    :cond_45
    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 520
    iget-object v5, v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->uriResolver:Lcom/github/florent37/assets_audio_player/UriResolver;

    invoke-virtual/range {v31 .. v31}, Lcom/github/florent37/assets_audio_player/notification/ImageMetas;->getImagePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/github/florent37/assets_audio_player/UriResolver;->imagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x3

    const/16 v36, 0x0

    .line 519
    invoke-static/range {v31 .. v36}, Lcom/github/florent37/assets_audio_player/notification/ImageMetas;->copy$default(Lcom/github/florent37/assets_audio_player/notification/ImageMetas;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/github/florent37/assets_audio_player/notification/ImageMetas;

    move-result-object v5

    move-object/from16 v31, v5

    :goto_28
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x37

    const/16 v35, 0x0

    .line 517
    invoke-static/range {v27 .. v35}, Lcom/github/florent37/assets_audio_player/notification/AudioMetas;->copy$default(Lcom/github/florent37/assets_audio_player/notification/AudioMetas;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/ImageMetas;Lcom/github/florent37/assets_audio_player/notification/ImageMetas;Ljava/lang/String;ILjava/lang/Object;)Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v13

    .line 526
    sget-object v5, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;->Companion:Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Companion;

    const-string v6, "audioFocusStrategy"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v28, v8

    instance-of v8, v6, Ljava/util/Map;

    if-eqz v8, :cond_46

    check-cast v6, Ljava/util/Map;

    goto :goto_29

    :cond_46
    const/4 v6, 0x0

    :goto_29
    invoke-virtual {v5, v6}, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Companion;->from(Ljava/util/Map;)Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;

    move-result-object v29

    .line 527
    sget-object v5, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->Companion:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy$Companion;

    const-string v6, "headPhoneStrategy"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_47

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    goto :goto_2a

    :cond_47
    const/4 v6, 0x0

    :goto_2a
    invoke-virtual {v5, v6}, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy$Companion;->from(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    move-result-object v17

    .line 529
    invoke-direct {v0, v2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v1

    .line 546
    iget-object v2, v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->context:Landroid/content/Context;

    move-object/from16 v21, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    move v5, v9

    const/4 v9, 0x0

    move-wide/from16 v6, v18

    move-object/from16 v37, v28

    move-object v8, v11

    move-object v11, v9

    move/from16 v9, v16

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v38, v14

    move-wide/from16 v13, v22

    move-wide/from16 v15, v24

    move-object/from16 v18, v29

    move-object/from16 v19, v20

    move-object/from16 v20, p2

    move-object/from16 v22, v26

    .line 529
    invoke-virtual/range {v1 .. v22}, Lcom/github/florent37/assets_audio_player/Player;->open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDLjava/lang/Integer;ZZLcom/github/florent37/assets_audio_player/notification/NotificationSettings;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;DDLcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;Landroid/content/Context;Ljava/util/Map;)V

    .line 549
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 476
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2b
    if-nez v6, :cond_48

    .line 549
    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    move-object/from16 v3, p2

    move-object/from16 v5, v37

    move-object/from16 v4, v38

    const/4 v6, 0x0

    .line 550
    invoke-interface {v3, v5, v4, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 476
    :cond_48
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4b

    :sswitch_7
    move-object v5, v8

    move-object v4, v14

    move-object v3, v15

    const-string v8, "forwardRewind"

    .line 249
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    goto/16 :goto_4a

    .line 373
    :cond_49
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_4a

    check-cast v1, Ljava/util/Map;

    goto :goto_2c

    :cond_4a
    move-object v1, v6

    :goto_2c
    if-nez v1, :cond_4b

    move-object v1, v6

    goto :goto_2f

    .line 374
    :cond_4b
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_4c

    check-cast v2, Ljava/lang/String;

    goto :goto_2d

    :cond_4c
    move-object v2, v6

    :goto_2d
    if-nez v2, :cond_4d

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 375
    invoke-interface {v3, v5, v13, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_4d
    const-string v7, "speed"

    .line 378
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v1, Ljava/lang/Double;

    if-eqz v7, :cond_4e

    check-cast v1, Ljava/lang/Double;

    goto :goto_2e

    :cond_4e
    move-object v1, v6

    :goto_2e
    if-nez v1, :cond_4f

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 379
    invoke-interface {v3, v5, v12, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 380
    :cond_4f
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 382
    invoke-direct {v0, v2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Lcom/github/florent37/assets_audio_player/Player;->forwardRewind(D)V

    .line 383
    invoke-interface {v3, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 384
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 373
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2f
    if-nez v1, :cond_50

    .line 384
    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 385
    invoke-interface {v3, v5, v4, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 373
    :cond_50
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4b

    :sswitch_8
    move-object v5, v8

    move-object v4, v14

    move-object v3, v15

    const-string v8, "showNotification"

    .line 249
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    goto/16 :goto_4a

    .line 356
    :cond_51
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_52

    check-cast v1, Ljava/util/Map;

    goto :goto_30

    :cond_52
    move-object v1, v6

    :goto_30
    if-nez v1, :cond_53

    move-object v1, v6

    goto :goto_33

    .line 357
    :cond_53
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_54

    check-cast v2, Ljava/lang/String;

    goto :goto_31

    :cond_54
    move-object v2, v6

    :goto_31
    if-nez v2, :cond_55

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 358
    invoke-interface {v3, v5, v13, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_55
    const-string v7, "show"

    .line 361
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v1, Ljava/lang/Boolean;

    if-eqz v7, :cond_56

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_32

    :cond_56
    move-object v1, v6

    :goto_32
    if-nez v1, :cond_57

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    const-string v1, "The specified argument (show) must be an Boolean."

    .line 362
    invoke-interface {v3, v5, v1, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 363
    :cond_57
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 365
    invoke-direct {v0, v2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/florent37/assets_audio_player/Player;->showNotification(Z)V

    .line 366
    invoke-interface {v3, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 367
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 356
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_33
    if-nez v1, :cond_58

    .line 367
    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 368
    invoke-interface {v3, v5, v4, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 356
    :cond_58
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4b

    :sswitch_9
    move-object v5, v8

    move-object v4, v14

    move-object v3, v15

    .line 249
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    goto/16 :goto_4a

    .line 305
    :cond_59
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_5a

    check-cast v1, Ljava/util/Map;

    goto :goto_34

    :cond_5a
    move-object v1, v6

    :goto_34
    if-nez v1, :cond_5b

    move-object v1, v6

    goto :goto_37

    .line 306
    :cond_5b
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_5c

    check-cast v2, Ljava/lang/String;

    goto :goto_35

    :cond_5c
    move-object v2, v6

    :goto_35
    if-nez v2, :cond_5d

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 307
    invoke-interface {v3, v5, v13, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 310
    :cond_5d
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v1, Ljava/lang/Double;

    if-eqz v7, :cond_5e

    check-cast v1, Ljava/lang/Double;

    goto :goto_36

    :cond_5e
    move-object v1, v6

    :goto_36
    if-nez v1, :cond_5f

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 311
    invoke-interface {v3, v5, v12, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 312
    :cond_5f
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 314
    invoke-direct {v0, v2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Lcom/github/florent37/assets_audio_player/Player;->setVolume(D)V

    .line 315
    invoke-interface {v3, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 316
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 305
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_37
    if-nez v1, :cond_60

    .line 316
    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 317
    invoke-interface {v3, v5, v4, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 305
    :cond_60
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4b

    :sswitch_a
    move-object v5, v8

    move-object v4, v14

    move-object v3, v15

    move-object/from16 v8, v18

    .line 249
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_61

    goto/16 :goto_4a

    .line 251
    :cond_61
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_62

    check-cast v1, Ljava/util/Map;

    goto :goto_38

    :cond_62
    move-object v1, v6

    :goto_38
    if-nez v1, :cond_63

    move-object v1, v6

    goto :goto_3a

    .line 252
    :cond_63
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_64

    check-cast v1, Ljava/lang/String;

    goto :goto_39

    :cond_64
    move-object v1, v6

    :goto_39
    if-nez v1, :cond_65

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 253
    invoke-interface {v3, v5, v13, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 256
    :cond_65
    invoke-direct {v0, v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/Player;->isPlaying()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 258
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 259
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 251
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3a
    if-nez v1, :cond_66

    .line 259
    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 260
    invoke-interface {v3, v5, v4, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 251
    :cond_66
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4b

    :sswitch_b
    move-object v5, v8

    move-object v4, v14

    move-object v3, v15

    move-object/from16 v8, v18

    const-string v9, "forceNotificationForGroup"

    .line 249
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    goto/16 :goto_4a

    .line 444
    :cond_67
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_68

    check-cast v1, Ljava/util/Map;

    goto :goto_3b

    :cond_68
    move-object v1, v6

    :goto_3b
    if-nez v1, :cond_69

    move-object v1, v6

    goto :goto_40

    .line 445
    :cond_69
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_6a

    check-cast v2, Ljava/lang/String;

    goto :goto_3c

    :cond_6a
    move-object v2, v6

    .line 446
    :goto_3c
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/Boolean;

    if-eqz v8, :cond_6b

    check-cast v7, Ljava/lang/Boolean;

    goto :goto_3d

    :cond_6b
    move-object v7, v6

    :goto_3d
    if-nez v7, :cond_6c

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    const-string v1, "The specified argument(isPlaying) must be an Boolean."

    .line 447
    invoke-interface {v3, v5, v1, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 448
    :cond_6c
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v8, "display"

    .line 450
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/Boolean;

    if-eqz v9, :cond_6d

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_3e

    :cond_6d
    move-object v8, v6

    :goto_3e
    if-nez v8, :cond_6e

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    const-string v1, "The specified argument(display) must be an Boolean."

    .line 451
    invoke-interface {v3, v5, v1, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 452
    :cond_6e
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 455
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/notification/AudioMetasKt;->fetchAudioMetas(Ljava/util/Map;)Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v9

    .line 456
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettingsKt;->fetchNotificationSettings(Ljava/util/Map;)Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    move-result-object v1

    if-nez v8, :cond_6f

    .line 459
    iget-object v1, v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->notificationManager:Lcom/github/florent37/assets_audio_player/notification/NotificationManager;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->stopNotification()V

    goto :goto_3f

    :cond_6f
    if-eqz v2, :cond_70

    .line 461
    invoke-direct {v0, v2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v2

    invoke-virtual {v2, v9, v7, v8, v1}, Lcom/github/florent37/assets_audio_player/Player;->forceNotificationForGroup(Lcom/github/florent37/assets_audio_player/notification/AudioMetas;ZZLcom/github/florent37/assets_audio_player/notification/NotificationSettings;)V

    .line 469
    :cond_70
    :goto_3f
    invoke-interface {v3, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 470
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 444
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_40
    if-nez v1, :cond_71

    .line 470
    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 471
    invoke-interface {v3, v5, v4, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 444
    :cond_71
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4b

    :sswitch_c
    move-object v5, v8

    move-object v4, v14

    move-object v3, v15

    const-string v8, "loopSingleAudio"

    .line 249
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    goto/16 :goto_4a

    .line 407
    :cond_72
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_73

    check-cast v1, Ljava/util/Map;

    goto :goto_41

    :cond_73
    move-object v1, v6

    :goto_41
    if-nez v1, :cond_74

    move-object v1, v6

    goto :goto_44

    .line 408
    :cond_74
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_75

    check-cast v2, Ljava/lang/String;

    goto :goto_42

    :cond_75
    move-object v2, v6

    :goto_42
    if-nez v2, :cond_76

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 409
    invoke-interface {v3, v5, v13, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_76
    const-string v7, "loop"

    .line 412
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v1, Ljava/lang/Boolean;

    if-eqz v7, :cond_77

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_43

    :cond_77
    move-object v1, v6

    :goto_43
    if-nez v1, :cond_78

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    const-string v1, "The specified argument(loop) must be an Boolean."

    .line 413
    invoke-interface {v3, v5, v1, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 414
    :cond_78
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 416
    invoke-direct {v0, v2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/florent37/assets_audio_player/Player;->loopSingleAudio(Z)V

    .line 417
    invoke-interface {v3, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 418
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 407
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_44
    if-nez v1, :cond_79

    .line 418
    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 419
    invoke-interface {v3, v5, v4, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 407
    :cond_79
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_4b

    :sswitch_d
    move-object v5, v8

    move-object v4, v14

    move-object v3, v15

    .line 249
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    goto :goto_4a

    .line 322
    :cond_7a
    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_7b

    check-cast v1, Ljava/util/Map;

    goto :goto_45

    :cond_7b
    move-object v1, v6

    :goto_45
    if-nez v1, :cond_7c

    move-object v1, v6

    goto :goto_48

    .line 323
    :cond_7c
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_7d

    check-cast v2, Ljava/lang/String;

    goto :goto_46

    :cond_7d
    move-object v2, v6

    :goto_46
    if-nez v2, :cond_7e

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 324
    invoke-interface {v3, v5, v13, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 327
    :cond_7e
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v7, v1, Ljava/lang/Double;

    if-eqz v7, :cond_7f

    check-cast v1, Ljava/lang/Double;

    goto :goto_47

    :cond_7f
    move-object v1, v6

    :goto_47
    if-nez v1, :cond_80

    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 328
    invoke-interface {v3, v5, v12, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 329
    :cond_80
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 331
    invoke-direct {v0, v2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getOrCreatePlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Lcom/github/florent37/assets_audio_player/Player;->setPlaySpeed(D)V

    .line 332
    invoke-interface {v3, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 333
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 322
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_48
    if-nez v1, :cond_81

    .line 333
    move-object v1, v0

    check-cast v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 334
    invoke-interface {v3, v5, v4, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 322
    :cond_81
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4b

    :cond_82
    :goto_49
    move-object v3, v15

    .line 554
    :goto_4a
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_4b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70939a8d -> :sswitch_d
        -0x653158d6 -> :sswitch_c
        -0x5ed80334 -> :sswitch_b
        -0x3ff9e85c -> :sswitch_a
        -0x305518e6 -> :sswitch_9
        -0x2efddb78 -> :sswitch_8
        -0x19f1fc20 -> :sswitch_7
        0x34264a -> :sswitch_6
        0x348b34 -> :sswitch_5
        0x35ce78 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x65825f6 -> :sswitch_2
        0x65bc340 -> :sswitch_1
        0x8bb8b84 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onNotifSeekPlayer(J)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->lastPlayerIdWithNotificationEnabled:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {p0, v0}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->getPlayer(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/Player;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/github/florent37/assets_audio_player/Player;->seek(J)V

    :goto_0
    return-void
.end method

.method public final register()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->stopWhenCall:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->stopWhenCallListener:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1;

    check-cast v1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;

    invoke-virtual {v0, v1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->register(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;)V

    .line 144
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->headsetManager:Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->onHeadsetPluggedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->setOnHeadsetPluggedListener(Lkotlin/jvm/functions/Function1;)V

    .line 145
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->headsetManager:Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;

    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->start()V

    .line 147
    new-instance v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->context:Landroid/content/Context;

    new-instance v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$register$1;

    invoke-direct {v2, p0}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$register$1;-><init>(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$register$2;

    invoke-direct {v3, p0}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$register$2;-><init>(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->mediaButtonsReceiver:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;

    .line 156
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    const-string v2, "assets_audio_player"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 157
    move-object v1, p0

    check-cast v1, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public final registerLastPlayerWithNotif(Ljava/lang/String;)V
    .locals 1

    const-string v0, "playerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->lastPlayerIdWithNotificationEnabled:Ljava/lang/String;

    return-void
.end method

.method public final unregister()V
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->stopWhenCall:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;

    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->stop()V

    .line 164
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->notificationManager:Lcom/github/florent37/assets_audio_player/notification/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->hideNotificationService(Z)V

    .line 165
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->stopWhenCall:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->stopWhenCallListener:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1;

    check-cast v1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;

    invoke-virtual {v0, v1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->unregister(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;)V

    .line 166
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->players:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 586
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/assets_audio_player/Player;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 167
    invoke-static {v1, v4, v4, v2, v3}, Lcom/github/florent37/assets_audio_player/Player;->stop$default(Lcom/github/florent37/assets_audio_player/Player;ZZILjava/lang/Object;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->players:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
