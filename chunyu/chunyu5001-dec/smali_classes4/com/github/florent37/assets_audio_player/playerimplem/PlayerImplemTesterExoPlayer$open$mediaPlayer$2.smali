.class final Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$mediaPlayer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerImplemExoPlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer;->open(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $configuration:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;


# direct methods
.method constructor <init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$mediaPlayer$2;->$configuration:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$mediaPlayer$2;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$open$mediaPlayer$2;->$configuration:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;

    invoke-virtual {v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinderConfiguration;->getOnBuffering()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
