.class public final enum Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;
.super Ljava/lang/Enum;
.source "MediaButtonsReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaButtonAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;",
        "",
        "(Ljava/lang/String;I)V",
        "play",
        "pause",
        "playOrPause",
        "next",
        "prev",
        "stop",
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
.field private static final synthetic $VALUES:[Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

.field public static final enum next:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

.field public static final enum pause:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

.field public static final enum play:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

.field public static final enum playOrPause:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

.field public static final enum prev:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

.field public static final enum stop:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;


# direct methods
.method private static final synthetic $values()[Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    sget-object v1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->play:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->pause:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->playOrPause:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->next:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->prev:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->stop:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    const-string v1, "play"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->play:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    .line 32
    new-instance v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    const-string v1, "pause"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->pause:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    .line 33
    new-instance v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    const-string v1, "playOrPause"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->playOrPause:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    .line 34
    new-instance v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    const-string v1, "next"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->next:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    .line 35
    new-instance v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    const-string v1, "prev"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->prev:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    .line 36
    new-instance v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    const-string v1, "stop"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->stop:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    invoke-static {}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->$values()[Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    move-result-object v0

    sput-object v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->$VALUES:[Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;
    .locals 1

    const-class v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    return-object p0
.end method

.method public static values()[Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;
    .locals 1

    sget-object v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->$VALUES:[Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    return-object v0
.end method
