.class public final Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1;
.super Ljava/lang/Object;
.source "AssetsAudioPlayerPlugin.kt"

# interfaces
.implements Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetsAudioPlayerPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetsAudioPlayerPlugin.kt\ncom/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,585:1\n1849#2,2:586\n*S KotlinDebug\n*F\n+ 1 AssetsAudioPlayerPlugin.kt\ncom/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1\n*L\n127#1:586,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;",
        "onPhoneStateChanged",
        "",
        "audioState",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;",
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
.field final synthetic this$0:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;


# direct methods
.method constructor <init>(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1;->this$0:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;)V
    .locals 2

    const-string v0, "audioState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$stopWhenCallListener$1;->this$0:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    invoke-static {v0}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->access$getPlayers$p(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;)Ljava/util/Map;

    move-result-object v0

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

    .line 128
    invoke-virtual {v1, p1}, Lcom/github/florent37/assets_audio_player/Player;->updateEnableToPlay(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;)V

    goto :goto_0

    :cond_0
    return-void
.end method
