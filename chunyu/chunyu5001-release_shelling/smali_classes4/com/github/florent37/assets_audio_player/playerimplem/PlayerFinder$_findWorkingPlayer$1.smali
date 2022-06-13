.class final Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "PlayerFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->_findWorkingPlayer(Ljava/util/List;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.github.florent37.assets_audio_player.playerimplem.PlayerFinder"
    f = "PlayerFinder.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x4b,
        0x58
    }
    m = "_findWorkingPlayer"
    n = {
        "this",
        "remainingImpls",
        "configuration"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;


# direct methods
.method constructor <init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->label:I

    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$_findWorkingPlayer$1;->this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;->access$_findWorkingPlayer(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;Ljava/util/List;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
