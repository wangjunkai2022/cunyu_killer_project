.class public final Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;
.super Ljava/lang/Object;
.source "PlayerImplemExoPlayer.kt"

# interfaces
.implements Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\nB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0019\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;",
        "type",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;",
        "(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;)V",
        "open",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;",
        "configuration",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;",
        "(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Type",
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
.field private final type:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;


# direct methods
.method public constructor <init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;->type:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    return-void
.end method


# virtual methods
.method public open(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
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

    instance-of v0, p2, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$1;

    iget v1, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$1;

    invoke-direct {v0, p0, p2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$1;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v9, v0

    iget-object p2, v9, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 44
    iget v1, v9, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$1;->label:I

    const/16 v10, 0x29

    const-string v11, "PlayerImplem"

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v9, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;

    iget-object v0, v9, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    goto/16 :goto_2

    :catchall_0
    move-exception p2

    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    goto/16 :goto_3

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    sget-object p2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->Companion:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;

    invoke-virtual {p2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;->getDisplayLogs()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trying to open with exoplayer("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;->type:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v11, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_3
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getAudioType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "liveStream"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getAudioType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 50
    iget-object p2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;->type:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;->HLS:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    if-eq p2, v1, :cond_4

    iget-object p2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;->type:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;->DASH:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    if-eq p2, v1, :cond_4

    iget-object p2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;->type:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;->SmoothStreaming:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    if-eq p2, v1, :cond_4

    goto :goto_1

    .line 51
    :cond_4
    new-instance p2, Lcom/github/florent37/assets_audio_player/playerimplem/IncompatibleException;

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getAudioType()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;->type:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    invoke-direct {p2, p1, v0}, Lcom/github/florent37/assets_audio_player/playerimplem/IncompatibleException;-><init>(Ljava/lang/String;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;)V

    throw p2

    .line 55
    :cond_5
    :goto_1
    new-instance p2, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;

    new-instance v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$mediaPlayer$1;

    invoke-direct {v1, p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$mediaPlayer$1;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v3, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$mediaPlayer$2;

    invoke-direct {v3, p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$mediaPlayer$2;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    new-instance v4, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$mediaPlayer$3;

    invoke-direct {v4, p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$mediaPlayer$3;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 66
    iget-object v5, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;->type:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    .line 55
    invoke-direct {p2, v1, v3, v4, v5}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;)V

    .line 71
    :try_start_1
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 72
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getAssetAudioPath()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getAudioType()Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getAssetAudioPackage()Ljava/lang/String;

    move-result-object v7

    .line 75
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getNetworkHeaders()Ljava/util/Map;

    move-result-object v6

    .line 76
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getFlutterAssets()Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    move-result-object v8

    .line 77
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getDrmConfiguration()Ljava/util/Map;

    move-result-object p1

    .line 70
    iput-object p0, v9, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$1;->L$0:Ljava/lang/Object;

    iput-object p2, v9, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$1;->L$1:Ljava/lang/Object;

    iput v2, v9, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$1;->label:I

    move-object v1, p2

    move-object v2, v3

    move-object v3, v8

    move-object v8, p1

    invoke-virtual/range {v1 .. v9}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;->open(Landroid/content/Context;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p0

    :goto_2
    :try_start_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 79
    new-instance p1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;

    .line 80
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p2

    check-cast v3, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    .line 79
    invoke-direct {p1, v3, v1, v2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    .line 84
    :goto_3
    sget-object v1, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->Companion:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;->getDisplayLogs()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to open with exoplayer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;->type:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-nez p2, :cond_8

    goto :goto_4

    .line 87
    :cond_8
    invoke-virtual {p2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;->release()V

    .line 88
    :goto_4
    throw p1
.end method
