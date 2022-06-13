.class public final Lcom/github/florent37/assets_audio_player/Player$updatePosition$1;
.super Ljava/lang/Object;
.source "Player.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/assets_audio_player/Player;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;Lcom/github/florent37/assets_audio_player/notification/NotificationManager;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/github/florent37/assets_audio_player/Player$updatePosition$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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
.field final synthetic this$0:Lcom/github/florent37/assets_audio_player/Player;


# direct methods
.method constructor <init>(Lcom/github/florent37/assets_audio_player/Player;)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/Player$updatePosition$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 97
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/Player$updatePosition$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    invoke-static {v0}, Lcom/github/florent37/assets_audio_player/Player;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/Player;)Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/Player$updatePosition$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    .line 99
    :try_start_0
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/Player;->access$getHandler$p(Lcom/github/florent37/assets_audio_player/Player;)Landroid/os/Handler;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    :cond_1
    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->getCurrentPositionMs()J

    move-result-wide v2

    .line 105
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/Player;->access$get_lastPositionMs$p(Lcom/github/florent37/assets_audio_player/Player;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 107
    :goto_0
    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/Player;->getOnPositionMSChanged()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/github/florent37/assets_audio_player/Player;->access$set_lastPositionMs$p(Lcom/github/florent37/assets_audio_player/Player;Ljava/lang/Long;)V

    .line 111
    :cond_4
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/Player;->access$getRespectSilentMode$p(Lcom/github/florent37/assets_audio_player/Player;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/Player;->access$getAm$p(Lcom/github/florent37/assets_audio_player/Player;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 113
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/Player;->access$getLastRingerMode$p(Lcom/github/florent37/assets_audio_player/Player;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v0, :cond_6

    .line 114
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/github/florent37/assets_audio_player/Player;->access$setLastRingerMode$p(Lcom/github/florent37/assets_audio_player/Player;Ljava/lang/Integer;)V

    .line 115
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/Player;->access$getVolume$p(Lcom/github/florent37/assets_audio_player/Player;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/github/florent37/assets_audio_player/Player;->setVolume(D)V

    .line 119
    :cond_6
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/Player;->access$get_durationMs$p(Lcom/github/florent37/assets_audio_player/Player;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7

    .line 120
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/Player;->access$get_durationMs$p(Lcom/github/florent37/assets_audio_player/Player;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 119
    :cond_7
    invoke-static {v1, v2, v3}, Lcom/github/florent37/assets_audio_player/Player;->access$set_positionMs$p(Lcom/github/florent37/assets_audio_player/Player;J)V

    .line 124
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/Player;->access$updateNotifPosition(Lcom/github/florent37/assets_audio_player/Player;)V

    .line 127
    invoke-static {v1}, Lcom/github/florent37/assets_audio_player/Player;->access$getHandler$p(Lcom/github/florent37/assets_audio_player/Player;)Landroid/os/Handler;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    return-void
.end method
