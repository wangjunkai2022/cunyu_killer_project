.class public final Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;
.super Ljava/lang/Throwable;
.source "PlayerFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoPlayerFoundException"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;",
        "",
        "why",
        "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;",
        "(Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;)V",
        "getWhy",
        "()Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;",
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
.field private final why:Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;-><init>(Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;->why:Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 29
    :cond_0
    invoke-direct {p0, p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;-><init>(Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;)V

    return-void
.end method


# virtual methods
.method public final getWhy()Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$NoPlayerFoundException;->why:Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;

    return-object v0
.end method
