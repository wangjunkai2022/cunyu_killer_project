.class public final synthetic Lcom/github/florent37/assets_audio_player/Player$WhenMappings;
.super Ljava/lang/Object;
.source "Player.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/assets_audio_player/Player;
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

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->values()[Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->AUTHORIZED_TO_PLAY:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->REDUCE_VOLUME:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->FORBIDDEN:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sput-object v0, Lcom/github/florent37/assets_audio_player/Player$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->values()[Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->pauseOnUnplug:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->pauseOnUnplugPlayOnPlug:Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/headset/HeadsetStrategy;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sput-object v0, Lcom/github/florent37/assets_audio_player/Player$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
