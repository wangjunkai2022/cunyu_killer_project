.class final Lcom/github/florent37/assets_audio_player/Player$open$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Player.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/assets_audio_player/Player;->open(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDLjava/lang/Integer;ZZLcom/github/florent37/assets_audio_player/notification/NotificationSettings;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;DDLcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.github.florent37.assets_audio_player.Player$open$1"
    f = "Player.kt"
    i = {}
    l = {
        0xba
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $assetAudioPackage:Ljava/lang/String;

.field final synthetic $assetAudioPath:Ljava/lang/String;

.field final synthetic $audioType:Ljava/lang/String;

.field final synthetic $autoStart:Z

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $drmConfiguration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end field

.field final synthetic $networkHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end field

.field final synthetic $pitch:D

.field final synthetic $playSpeed:D

.field final synthetic $result:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic $seek:Ljava/lang/Integer;

.field final synthetic $volume:D

.field label:I

.field final synthetic this$0:Lcom/github/florent37/assets_audio_player/Player;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/github/florent37/assets_audio_player/Player;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Ljava/util/Map;DDDLjava/lang/Integer;ZLio/flutter/plugin/common/MethodChannel$Result;Lkotlin/coroutines/Continuation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/github/florent37/assets_audio_player/Player;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "**>;DDD",
            "Ljava/lang/Integer;",
            "Z",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/github/florent37/assets_audio_player/Player$open$1;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$assetAudioPath:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    move-object v1, p3

    iput-object v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$assetAudioPackage:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$audioType:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$networkHeaders:Ljava/util/Map;

    move-object v1, p6

    iput-object v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$context:Landroid/content/Context;

    move-object v1, p7

    iput-object v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$drmConfiguration:Ljava/util/Map;

    move-wide v1, p8

    iput-wide v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$volume:D

    move-wide v1, p10

    iput-wide v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$playSpeed:D

    move-wide v1, p12

    iput-wide v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$pitch:D

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$seek:Ljava/lang/Integer;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$autoStart:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x2

    move-object/from16 v2, p17

    invoke-direct {p0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v18, p2

    new-instance v19, Lcom/github/florent37/assets_audio_player/Player$open$1;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$assetAudioPath:Ljava/lang/String;

    iget-object v3, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    iget-object v4, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$assetAudioPackage:Ljava/lang/String;

    iget-object v5, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$audioType:Ljava/lang/String;

    iget-object v6, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$networkHeaders:Ljava/util/Map;

    iget-object v7, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$context:Landroid/content/Context;

    iget-object v8, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$drmConfiguration:Ljava/util/Map;

    iget-wide v9, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$volume:D

    iget-wide v11, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$playSpeed:D

    iget-wide v13, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$pitch:D

    iget-object v15, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$seek:Ljava/lang/Integer;

    move-object/from16 p1, v1

    iget-boolean v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$autoStart:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/github/florent37/assets_audio_player/Player$open$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/github/florent37/assets_audio_player/Player$open$1;-><init>(Ljava/lang/String;Lcom/github/florent37/assets_audio_player/Player;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Ljava/util/Map;DDDLjava/lang/Integer;ZLio/flutter/plugin/common/MethodChannel$Result;Lkotlin/coroutines/Continuation;)V

    check-cast v19, Lkotlin/coroutines/Continuation;

    return-object v19
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/assets_audio_player/Player$open$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/assets_audio_player/Player$open$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/github/florent37/assets_audio_player/Player$open$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/github/florent37/assets_audio_player/Player$open$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 184
    iget v2, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v2, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 186
    :try_start_1
    sget-object v2, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->INSTANCE:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;

    .line 187
    new-instance v15, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;

    .line 188
    iget-object v7, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$assetAudioPath:Ljava/lang/String;

    .line 189
    iget-object v6, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    invoke-static {v6}, Lcom/github/florent37/assets_audio_player/Player;->access$getFlutterAssets$p(Lcom/github/florent37/assets_audio_player/Player;)Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    move-result-object v8

    .line 190
    iget-object v9, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$assetAudioPackage:Ljava/lang/String;

    .line 191
    iget-object v10, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$audioType:Ljava/lang/String;

    .line 192
    iget-object v11, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$networkHeaders:Ljava/util/Map;

    .line 193
    iget-object v12, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$context:Landroid/content/Context;

    .line 186
    new-instance v6, Lcom/github/florent37/assets_audio_player/Player$open$1$playerWithDuration$1;

    iget-object v13, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    invoke-direct {v6, v13}, Lcom/github/florent37/assets_audio_player/Player$open$1$playerWithDuration$1;-><init>(Lcom/github/florent37/assets_audio_player/Player;)V

    move-object v13, v6

    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 198
    iget-object v6, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    invoke-virtual {v6}, Lcom/github/florent37/assets_audio_player/Player;->getOnPlaying()Lkotlin/jvm/functions/Function1;

    move-result-object v14

    .line 199
    iget-object v6, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    invoke-virtual {v6}, Lcom/github/florent37/assets_audio_player/Player;->getOnBuffering()Lkotlin/jvm/functions/Function1;

    move-result-object v16

    .line 200
    iget-object v6, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    invoke-virtual {v6}, Lcom/github/florent37/assets_audio_player/Player;->getOnError()Lkotlin/jvm/functions/Function1;

    move-result-object v17

    .line 201
    iget-object v6, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$drmConfiguration:Ljava/util/Map;

    move-object/from16 v18, v6

    move-object v6, v15

    move-object v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    .line 187
    invoke-direct/range {v6 .. v17}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;-><init>(Ljava/lang/String;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/Map;)V

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 186
    iput v5, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->label:I

    invoke-virtual {v2, v3, v6}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->findWorkingPlayer(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    .line 184
    :cond_2
    :goto_0
    check-cast v2, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;

    .line 205
    invoke-virtual {v2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;->getDuration()J

    move-result-wide v6

    .line 206
    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    invoke-virtual {v2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;->getPlayer()Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/github/florent37/assets_audio_player/Player;->access$setMediaPlayer$p(Lcom/github/florent37/assets_audio_player/Player;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;)V

    .line 209
    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/Player;->getOnReadyToPlay()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :goto_1
    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    invoke-static {v0}, Lcom/github/florent37/assets_audio_player/Player;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/Player;)Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/github/florent37/assets_audio_player/Player$open$1$1;

    iget-object v3, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    invoke-direct {v2, v3}, Lcom/github/florent37/assets_audio_player/Player$open$1$1;-><init>(Lcom/github/florent37/assets_audio_player/Player;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->getSessionId(Lkotlin/jvm/functions/Function1;)V

    .line 214
    :goto_2
    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    iget-object v2, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$assetAudioPath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/github/florent37/assets_audio_player/Player;->access$set_playingPath$p(Lcom/github/florent37/assets_audio_player/Player;Ljava/lang/String;)V

    .line 215
    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    invoke-static {v0, v6, v7}, Lcom/github/florent37/assets_audio_player/Player;->access$set_durationMs$p(Lcom/github/florent37/assets_audio_player/Player;J)V

    .line 217
    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    iget-wide v2, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$volume:D

    invoke-virtual {v0, v2, v3}, Lcom/github/florent37/assets_audio_player/Player;->setVolume(D)V

    .line 218
    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    iget-wide v2, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$playSpeed:D

    invoke-virtual {v0, v2, v3}, Lcom/github/florent37/assets_audio_player/Player;->setPlaySpeed(D)V

    .line 219
    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    iget-wide v2, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$pitch:D

    invoke-virtual {v0, v2, v3}, Lcom/github/florent37/assets_audio_player/Player;->setPitch(D)V

    .line 221
    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$seek:Ljava/lang/Integer;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    iget-object v3, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$seek:Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 222
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v8, 0x1

    mul-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Lcom/github/florent37/assets_audio_player/Player;->seek(J)V

    .line 225
    :goto_3
    iget-boolean v0, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$autoStart:Z

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/Player;->play()V

    goto :goto_4

    .line 228
    :cond_6
    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->this$0:Lcom/github/florent37/assets_audio_player/Player;

    const/4 v2, 0x0

    invoke-static {v0, v2, v5, v4}, Lcom/github/florent37/assets_audio_player/Player;->updateNotif$default(Lcom/github/florent37/assets_audio_player/Player;ZILjava/lang/Object;)V

    .line 230
    :goto_4
    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {v0, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 232
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 233
    instance-of v2, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;

    const-string v3, "OPEN"

    if-eqz v2, :cond_7

    move-object v2, v0

    check-cast v2, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;

    invoke-virtual {v2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;->getWhy()Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 234
    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-virtual {v2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;->getWhy()Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Lkotlin/Pair;

    .line 235
    invoke-virtual {v2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;->getWhy()Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;->getType()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "type"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 236
    invoke-virtual {v2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;->getWhy()Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v7, "message"

    invoke-static {v7, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v6, v5

    .line 234
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v3, v4, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 239
    :cond_7
    iget-object v2, v1, Lcom/github/florent37/assets_audio_player/Player$open$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, v4}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
