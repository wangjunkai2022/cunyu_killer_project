.class public final Lcom/github/florent37/assets_audio_player/playerimplem/IncompatibleException;
.super Ljava/lang/Throwable;
.source "PlayerImplemExoPlayer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/playerimplem/IncompatibleException;",
        "",
        "audioType",
        "",
        "type",
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;",
        "(Ljava/lang/String;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;)V",
        "getAudioType",
        "()Ljava/lang/String;",
        "getType",
        "()Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;",
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
.field private final audioType:Ljava/lang/String;

.field private final type:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;)V
    .locals 1

    const-string v0, "audioType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/IncompatibleException;->audioType:Ljava/lang/String;

    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/IncompatibleException;->type:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    return-void
.end method


# virtual methods
.method public final getAudioType()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/IncompatibleException;->audioType:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/IncompatibleException;->type:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    return-object v0
.end method
