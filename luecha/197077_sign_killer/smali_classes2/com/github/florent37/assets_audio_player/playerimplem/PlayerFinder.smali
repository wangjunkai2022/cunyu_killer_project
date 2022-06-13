.class public final Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;
.super Ljava/lang/Object;
.source "PlayerFinder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;,
        Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\'\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012J\u0019\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J&\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J)\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0\u001a\"\u0004\u0008\u0000\u0010\u001b*\u0008\u0012\u0004\u0012\u0002H\u001b0\u001a2\u0006\u0010\u001c\u001a\u0002H\u001b\u00a2\u0006\u0002\u0010\u001dR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006 "
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;",
        "",
        "()V",
        "DASHExoPlayerTester",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;",
        "DefaultExoPlayerTester",
        "HLSExoPlayerTester",
        "MediaPlayerTester",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer;",
        "SmoothStreamingExoPlayerTester",
        "playerImpls",
        "",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;",
        "_findWorkingPlayer",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;",
        "remainingImpls",
        "configuration",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;",
        "(Ljava/util/List;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "findWorkingPlayer",
        "(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "sortPlayerImpls",
        "path",
        "",
        "originList",
        "moveToFirst",
        "",
        "T",
        "element",
        "(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;",
        "NoPlayerFoundException",
        "PlayerWithDuration",
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
.field private static final DASHExoPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

.field private static final DefaultExoPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

.field private static final HLSExoPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

.field public static final INSTANCE:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;

.field private static final MediaPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer;

.field private static final SmoothStreamingExoPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

.field private static final playerImpls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;

    invoke-direct {v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;-><init>()V

    sput-object v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->INSTANCE:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;

    .line 31
    new-instance v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;->HLS:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    invoke-direct {v0, v1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->HLSExoPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

    .line 32
    new-instance v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;->Default:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    invoke-direct {v0, v1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->DefaultExoPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

    .line 33
    new-instance v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;->DASH:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    invoke-direct {v0, v1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->DASHExoPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

    .line 34
    new-instance v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;->SmoothStreaming:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    invoke-direct {v0, v1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->SmoothStreamingExoPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

    .line 35
    new-instance v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer;

    invoke-direct {v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer;-><init>()V

    sput-object v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->MediaPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;

    .line 39
    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->DefaultExoPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

    check-cast v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 40
    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->HLSExoPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

    check-cast v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 41
    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->DASHExoPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

    check-cast v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 42
    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->SmoothStreamingExoPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

    check-cast v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 43
    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->MediaPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterMediaPlayer;

    check-cast v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 38
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->playerImpls:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final _findWorkingPlayer(Ljava/util/List;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;",
            ">;",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;
        }
    .end annotation

    instance-of v0, p3, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;

    iget v1, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;

    invoke-direct {v0, p0, p3}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;-><init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 65
    iget v2, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_2
    iget-object p1, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;

    iget-object p1, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v2, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$UnreachableException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    .line 74
    :try_start_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;

    .line 75
    iput-object p0, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->label:I

    invoke-interface {p3, p2, v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;->open(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catch Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$UnreachableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 65
    :goto_1
    :try_start_2
    check-cast p3, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;
    :try_end_2
    .catch Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$UnreachableException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p3

    :catchall_0
    move-object v2, p0

    .line 85
    :catchall_1
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    .line 86
    invoke-interface {p1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    iput-object v5, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->label:I

    invoke-direct {v2, p1, p2, v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->_findWorkingPlayer(Ljava/util/List;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p3

    :catch_0
    move-exception p1

    .line 82
    new-instance p2, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;

    check-cast p1, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;

    invoke-direct {p2, p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;-><init>(Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;)V

    throw p2

    .line 70
    :cond_6
    new-instance p1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;

    invoke-direct {p1, v5, v4, v5}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;-><init>(Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public static final synthetic access$_findWorkingPlayer(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;Ljava/util/List;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->_findWorkingPlayer(Ljava/util/List;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final sortPlayerImpls(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTester;",
            ">;"
        }
    .end annotation

    .line 47
    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ".m3u8"

    .line 51
    invoke-static {p1, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    sget-object p1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->INSTANCE:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;

    sget-object v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->HLSExoPlayerTester:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;

    invoke-virtual {p1, p2, v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->moveToFirst(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    :cond_1
    :goto_0
    return-object p2
.end method


# virtual methods
.method public final findWorkingPlayer(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getAssetAudioPath()Ljava/lang/String;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->playerImpls:Ljava/util/List;

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->sortPlayerImpls(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-direct {p0, v0, p1, p2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->_findWorkingPlayer(Ljava/util/List;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final moveToFirst(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 61
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p1
.end method
