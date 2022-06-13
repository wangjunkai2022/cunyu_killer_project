.class public final synthetic Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer$WhenMappings;
.super Ljava/lang/Object;
.source "PlayerImplemExoPlayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
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


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;->values()[Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;->HLS:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;->DASH:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;->SmoothStreaming:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemTesterExoPlayer$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
