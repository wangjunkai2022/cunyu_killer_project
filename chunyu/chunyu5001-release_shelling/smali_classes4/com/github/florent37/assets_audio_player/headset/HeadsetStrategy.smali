.class public final enum Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;
.super Ljava/lang/Enum;
.source "HeadsetStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u0000 \u00062\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;",
        "",
        "(Ljava/lang/String;I)V",
        "none",
        "pauseOnUnplug",
        "pauseOnUnplugPlayOnPlug",
        "Companion",
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
.field private static final synthetic $VALUES:[Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

.field public static final Companion:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy$Companion;

.field public static final enum none:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

.field public static final enum pauseOnUnplug:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

.field public static final enum pauseOnUnplugPlayOnPlug:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;


# direct methods
.method private static final synthetic $values()[Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    sget-object v1, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->none:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->pauseOnUnplug:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->pauseOnUnplugPlayOnPlug:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->none:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    .line 5
    new-instance v0, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    const-string v1, "pauseOnUnplug"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->pauseOnUnplug:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    .line 6
    new-instance v0, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    const-string v1, "pauseOnUnplugPlayOnPlug"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->pauseOnUnplugPlayOnPlug:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    invoke-static {}, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->$values()[Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    move-result-object v0

    sput-object v0, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->$VALUES:[Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    new-instance v0, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->Companion:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;
    .locals 1

    const-class v0, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    return-object p0
.end method

.method public static values()[Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;
    .locals 1

    sget-object v0, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->$VALUES:[Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    return-object v0
.end method
