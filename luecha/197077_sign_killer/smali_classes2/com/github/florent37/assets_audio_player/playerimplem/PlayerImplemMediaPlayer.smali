.class public final Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;
.super Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;
.source "PlayerImplemMediaPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayerImplemMediaPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayerImplemMediaPlayer.kt\ncom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,231:1\n1#2:232\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B;\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0006\u00a2\u0006\u0002\u0010\nJ\u001c\u0010\u0018\u001a\u00020\u00042\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00040\u0006H\u0016Je\u0010\u001b\u001a\u00060\u000cj\u0002`\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020\"2\u0010\u0010$\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010%2\u0008\u0010&\u001a\u0004\u0018\u00010\"2\u0010\u0010\'\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010%H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J\u0008\u0010)\u001a\u00020\u0004H\u0016J\u0008\u0010*\u001a\u00020\u0004H\u0016J\u0008\u0010+\u001a\u00020\u0004H\u0016J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u000cH\u0016J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00101\u001a\u00020\u00042\u0006\u00102\u001a\u000200H\u0016J\u0010\u00103\u001a\u00020\u00042\u0006\u00104\u001a\u000200H\u0016J\u0008\u00105\u001a\u00020\u0004H\u0016R\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R$\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00078V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0010\"\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00066"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;",
        "onFinished",
        "Lkotlin/Function0;",
        "",
        "onBuffering",
        "Lkotlin/Function1;",
        "",
        "onError",
        "",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "currentPositionMs",
        "",
        "getCurrentPositionMs",
        "()J",
        "isPlaying",
        "()Z",
        "value",
        "loopSingleAudio",
        "getLoopSingleAudio",
        "setLoopSingleAudio",
        "(Z)V",
        "mediaPlayer",
        "Landroid/media/MediaPlayer;",
        "getSessionId",
        "listener",
        "",
        "open",
        "Lcom/github/florent37/assets_audio_player/playerimplem/DurationMS;",
        "context",
        "Landroid/content/Context;",
        "flutterAssets",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;",
        "assetAudioPath",
        "",
        "audioType",
        "networkHeaders",
        "",
        "assetAudioPackage",
        "drmConfiguration",
        "(Landroid/content/Context;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "pause",
        "play",
        "release",
        "seekTo",
        "to",
        "setPitch",
        "pitch",
        "",
        "setPlaySpeed",
        "playSpeed",
        "setVolume",
        "volume",
        "stop",
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
.field private mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onFinished"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBuffering"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static final synthetic access$setMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public getCurrentPositionMs()J
    .locals 3

    const-wide/16 v0, 0x0

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    :catchall_0
    :goto_0
    return-wide v0
.end method

.method public getLoopSingleAudio()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public getSessionId(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public isPlaying()Z
    .locals 2

    const/4 v0, 0x0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return v0
.end method

.method public open(Landroid/content/Context;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 119
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance p6, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;

    const/4 v6, 0x0

    move-object v0, p6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p6, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p6, p8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public pause()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :goto_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :goto_0
    return-void
.end method

.method public setLoopSingleAudio(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :goto_0
    return-void
.end method

.method public setPitch(F)V
    .locals 0

    return-void
.end method

.method public setPlaySpeed(F)V
    .locals 0

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :goto_0
    return-void
.end method
