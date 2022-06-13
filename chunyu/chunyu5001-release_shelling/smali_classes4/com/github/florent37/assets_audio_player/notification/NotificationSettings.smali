.class public final Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;
.super Ljava/lang/Object;
.source "NotificationSettings.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u000eJ\u0006\u0010\u001b\u001a\u00020\u001cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\r\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010R\u0013\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;",
        "Ljava/io/Serializable;",
        "nextEnabled",
        "",
        "playPauseEnabled",
        "prevEnabled",
        "seekBarEnabled",
        "stopEnabled",
        "previousIcon",
        "",
        "stopIcon",
        "playIcon",
        "nextIcon",
        "pauseIcon",
        "(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getNextEnabled",
        "()Z",
        "getNextIcon",
        "()Ljava/lang/String;",
        "getPauseIcon",
        "getPlayIcon",
        "getPlayPauseEnabled",
        "getPrevEnabled",
        "getPreviousIcon",
        "getSeekBarEnabled",
        "getStopEnabled",
        "getStopIcon",
        "numberEnabled",
        "",
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
.field private final nextEnabled:Z

.field private final nextIcon:Ljava/lang/String;

.field private final pauseIcon:Ljava/lang/String;

.field private final playIcon:Ljava/lang/String;

.field private final playPauseEnabled:Z

.field private final prevEnabled:Z

.field private final previousIcon:Ljava/lang/String;

.field private final seekBarEnabled:Z

.field private final stopEnabled:Z

.field private final stopIcon:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->nextEnabled:Z

    .line 7
    iput-boolean p2, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->playPauseEnabled:Z

    .line 8
    iput-boolean p3, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->prevEnabled:Z

    .line 9
    iput-boolean p4, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->seekBarEnabled:Z

    .line 12
    iput-boolean p5, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->stopEnabled:Z

    .line 13
    iput-object p6, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->previousIcon:Ljava/lang/String;

    .line 14
    iput-object p7, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->stopIcon:Ljava/lang/String;

    .line 15
    iput-object p8, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->playIcon:Ljava/lang/String;

    .line 16
    iput-object p9, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->nextIcon:Ljava/lang/String;

    .line 17
    iput-object p10, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->pauseIcon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getNextEnabled()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->nextEnabled:Z

    return v0
.end method

.method public final getNextIcon()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->nextIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final getPauseIcon()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->pauseIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayIcon()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->playIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayPauseEnabled()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->playPauseEnabled:Z

    return v0
.end method

.method public final getPrevEnabled()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->prevEnabled:Z

    return v0
.end method

.method public final getPreviousIcon()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->previousIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeekBarEnabled()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->seekBarEnabled:Z

    return v0
.end method

.method public final getStopEnabled()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->stopEnabled:Z

    return v0
.end method

.method public final getStopIcon()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->stopIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final numberEnabled()I
    .locals 2

    .line 21
    iget-boolean v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->playPauseEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-boolean v1, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->prevEnabled:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 23
    :cond_1
    iget-boolean v1, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->nextEnabled:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 24
    :cond_2
    iget-boolean v1, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->stopEnabled:Z

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    return v0
.end method
