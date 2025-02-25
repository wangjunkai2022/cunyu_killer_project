.class final Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerImplemMediaPlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->open(Landroid/content/Context;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00060\u0001j\u0002`\u0002*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/github/florent37/assets_audio_player/playerimplem/DurationMS;",
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
    c = "com.github.florent37.assets_audio_player.playerimplem.PlayerImplemMediaPlayer$open$2"
    f = "PlayerImplemMediaPlayer.kt"
    i = {
        0x0
    }
    l = {
        0x78
    }
    m = "invokeSuspend"
    n = {
        "$this$withContext"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $assetAudioPath:Ljava/lang/String;

.field final synthetic $audioType:Ljava/lang/String;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $networkHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;


# direct methods
.method constructor <init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;

    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->$audioType:Ljava/lang/String;

    iput-object p3, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->$networkHeaders:Ljava/util/Map;

    iput-object p4, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->$assetAudioPath:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;

    iget-object v2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->$audioType:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->$networkHeaders:Ljava/util/Map;

    iget-object v4, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->$assetAudioPath:Ljava/lang/String;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 119
    iget v0, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->label:I

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_0

    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->L$5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->L$4:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;

    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_b

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 120
    iget-object v4, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;

    iget-object v5, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->$audioType:Ljava/lang/String;

    iget-object v6, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->$networkHeaders:Ljava/util/Map;

    iget-object v7, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->$context:Landroid/content/Context;

    iget-object v8, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->$assetAudioPath:Ljava/lang/String;

    iput-object v0, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->L$2:Ljava/lang/Object;

    iput-object v6, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->L$3:Ljava/lang/Object;

    iput-object v7, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->L$5:Ljava/lang/Object;

    iput v3, v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->label:I

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    new-instance v9, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-direct {v9, v0}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v10, v9

    check-cast v10, Lkotlin/coroutines/Continuation;

    .line 121
    new-instance v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 123
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v4, v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->access$setMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;Landroid/media/MediaPlayer;)V

    .line 125
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v12, 0x2ff57c

    if-eq v0, v12, :cond_a

    const v12, 0x33e78b8c

    if-eq v0, v12, :cond_3

    const v12, 0x6de15a2e

    if-eq v0, v12, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "network"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_3
    const-string v0, "liveStream"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 127
    :cond_4
    invoke-static {v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :goto_0
    const/4 v0, 0x0

    if-nez v6, :cond_6

    goto :goto_1

    .line 128
    :cond_6
    invoke-static {v6}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayerKt;->toMapString(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_1

    .line 129
    :cond_7
    invoke-static {v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez v0, :cond_10

    .line 132
    invoke-static {v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v0, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    const-string v0, "file"

    .line 125
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 140
    :goto_2
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v5, "flutter_assets/"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 141
    invoke-static {v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v5

    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    .line 142
    :goto_3
    invoke-static {v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v12

    if-nez v12, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v14

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v16

    invoke-virtual/range {v12 .. v17}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 143
    :goto_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_6

    .line 136
    :cond_d
    invoke-static {v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 137
    :goto_5
    invoke-static {v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_6

    :cond_f
    const-string v5, "file:///"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 147
    :cond_10
    :goto_6
    invoke-static {v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_7

    :cond_11
    new-instance v5, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$4;

    invoke-direct {v5, v11, v10, v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)V

    check-cast v5, Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 171
    :goto_7
    invoke-static {v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_8

    :cond_12
    new-instance v5, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$5;

    invoke-direct {v5, v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$5;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)V

    check-cast v5, Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 176
    :goto_8
    :try_start_0
    invoke-static {v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_9

    :cond_13
    new-instance v5, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$6;

    invoke-direct {v5, v4, v10, v11}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$6;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;Lkotlin/coroutines/Continuation;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v5, Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 185
    :goto_9
    invoke-static {v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_a

    :cond_14
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    .line 187
    iget-boolean v5, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v5, :cond_15

    .line 188
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v10, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_a

    .line 190
    :cond_15
    invoke-virtual {v4}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->getOnError()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    new-instance v5, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$PlayerError;

    invoke-direct {v5, v0}, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$PlayerError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :goto_a
    invoke-virtual {v9}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_16

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_16
    if-ne v0, v2, :cond_17

    return-object v2

    :cond_17
    :goto_b
    return-object v0
.end method
