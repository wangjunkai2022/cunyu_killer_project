.class public final Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer;
.super Ljava/lang/Object;
.source "PlayerImplemMediaPlayer.kt"

# interfaces
.implements Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0019\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer;",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;",
        "()V",
        "mediaPlayer",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;",
        "mapError",
        "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;",
        "t",
        "",
        "open",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;",
        "configuration",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;",
        "(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private mediaPlayer:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$mapError(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer;Ljava/lang/Throwable;)Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer;->mapError(Ljava/lang/Throwable;)Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;

    move-result-object p0

    return-object p0
.end method

.method private final mapError(Ljava/lang/Throwable;)Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;
    .locals 1

    .line 24
    new-instance v0, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$PlayerError;

    invoke-direct {v0, p1}, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$PlayerError;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;

    return-object v0
.end method


# virtual methods
.method public open(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$1;

    iget v1, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$1;

    invoke-direct {v0, p0, p2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$1;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v0

    iget-object p2, v9, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 28
    iget v1, v9, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$1;->label:I

    const-string v10, "PlayerImplem"

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v9, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    goto :goto_2

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    sget-object p2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->Companion:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;

    invoke-virtual {p2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;->getDisplayLogs()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string/jumbo p2, "trying to open with native mediaplayer"

    .line 30
    invoke-static {v10, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_3
    new-instance p2, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;

    new-instance v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$mediaPlayer$1;

    invoke-direct {v1, p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$mediaPlayer$1;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v3, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$mediaPlayer$2;

    invoke-direct {v3, p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$mediaPlayer$2;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance v4, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$mediaPlayer$3;

    invoke-direct {v4, p1, p0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$mediaPlayer$3;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-direct {p2, v1, v3, v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 46
    :try_start_1
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 47
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getAssetAudioPath()Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getAudioType()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getAssetAudioPackage()Ljava/lang/String;

    move-result-object v7

    .line 50
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getNetworkHeaders()Ljava/util/Map;

    move-result-object v6

    .line 51
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getFlutterAssets()Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    move-result-object v8

    .line 52
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getDrmConfiguration()Ljava/util/Map;

    move-result-object p1

    .line 45
    iput-object p2, v9, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$1;->L$0:Ljava/lang/Object;

    iput v2, v9, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer$open$1;->label:I

    move-object v1, p2

    move-object v2, v3

    move-object v3, v8

    move-object v8, p1

    invoke-virtual/range {v1 .. v9}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->open(Landroid/content/Context;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 54
    new-instance p1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;

    .line 55
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p2

    check-cast v2, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    .line 54
    invoke-direct {p1, v2, v0, v1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    .line 59
    :goto_2
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->Companion:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;

    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;->getDisplayLogs()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "failed to open with native mediaplayer"

    .line 60
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez p2, :cond_6

    goto :goto_3

    .line 63
    :cond_6
    invoke-virtual {p2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->release()V

    .line 64
    :goto_3
    throw p1
.end method
