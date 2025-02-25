.class public final synthetic Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$WhenMappings;
.super Ljava/lang/Object;
.source "AssetsAudioPlayerPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;
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

    invoke-static {}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->values()[Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->play:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->pause:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->playOrPause:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->next:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->prev:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->stop:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sput-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
