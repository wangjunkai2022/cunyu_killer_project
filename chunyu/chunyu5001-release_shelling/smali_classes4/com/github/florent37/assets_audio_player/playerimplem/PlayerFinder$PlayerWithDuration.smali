.class public final Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;
.super Ljava/lang/Object;
.source "PlayerFinder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayerWithDuration"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006\u00a2\u0006\u0002\u0010\u0007R\u0015\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;",
        "",
        "player",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;",
        "duration",
        "",
        "Lcom/github/florent37/assets_audio_player/playerimplem/DurationMS;",
        "(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;J)V",
        "getDuration",
        "()J",
        "getPlayer",
        "()Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;",
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
.field private final duration:J

.field private final player:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;


# direct methods
.method public constructor <init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;J)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;->player:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    iput-wide p2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;->duration:J

    return-void
.end method


# virtual methods
.method public final getDuration()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;->duration:J

    return-wide v0
.end method

.method public final getPlayer()Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerFinder$PlayerWithDuration;->player:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;

    return-object v0
.end method
