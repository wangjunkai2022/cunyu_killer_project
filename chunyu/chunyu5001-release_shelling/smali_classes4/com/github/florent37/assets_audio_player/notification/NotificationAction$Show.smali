.class public final Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;
.super Lcom/github/florent37/assets_audio_player/notification/NotificationAction;
.source "NotificationAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/assets_audio_player/notification/NotificationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Show"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJG\u0010\u0016\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;",
        "Lcom/github/florent37/assets_audio_player/notification/NotificationAction;",
        "isPlaying",
        "",
        "audioMetas",
        "Lcom/github/florent37/assets_audio_player/notification/AudioMetas;",
        "playerId",
        "",
        "notificationSettings",
        "Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;",
        "durationMs",
        "",
        "(ZLcom/github/florent37/assets_audio_player/notification/AudioMetas;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;J)V",
        "getAudioMetas",
        "()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;",
        "getDurationMs",
        "()J",
        "()Z",
        "getNotificationSettings",
        "()Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;",
        "getPlayerId",
        "()Ljava/lang/String;",
        "copyWith",
        "(Ljava/lang/Boolean;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;Ljava/lang/Long;)Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;",
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
.field private final audioMetas:Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

.field private final durationMs:J

.field private final isPlaying:Z

.field private final notificationSettings:Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

.field private final playerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/github/florent37/assets_audio_player/notification/AudioMetas;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;J)V
    .locals 1

    const-string v0, "audioMetas"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationSettings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    iput-boolean p1, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->isPlaying:Z

    .line 17
    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->audioMetas:Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    .line 18
    iput-object p3, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->playerId:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->notificationSettings:Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    .line 20
    iput-wide p5, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->durationMs:J

    return-void
.end method

.method public static synthetic copyWith$default(Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;Ljava/lang/Boolean;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;Ljava/lang/Long;ILjava/lang/Object;)Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p5, v0

    .line 22
    :cond_4
    invoke-virtual/range {p0 .. p5}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->copyWith(Ljava/lang/Boolean;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;Ljava/lang/Long;)Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copyWith(Ljava/lang/Boolean;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;Ljava/lang/Long;)Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;
    .locals 8

    .line 28
    new-instance v7, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;

    if-nez p1, :cond_0

    .line 29
    iget-boolean p1, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->isPlaying:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    move v1, p1

    if-nez p2, :cond_1

    .line 30
    iget-object p2, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->audioMetas:Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    :cond_1
    move-object v2, p2

    if-nez p3, :cond_2

    .line 31
    iget-object p3, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->playerId:Ljava/lang/String;

    :cond_2
    move-object v3, p3

    if-nez p4, :cond_3

    .line 32
    iget-object p4, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->notificationSettings:Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    :cond_3
    move-object v4, p4

    if-nez p5, :cond_4

    .line 33
    iget-wide p1, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->durationMs:J

    goto :goto_1

    :cond_4
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :goto_1
    move-wide v5, p1

    move-object v0, v7

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;-><init>(ZLcom/github/florent37/assets_audio_player/notification/AudioMetas;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;J)V

    return-object v7
.end method

.method public final getAudioMetas()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->audioMetas:Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    return-object v0
.end method

.method public final getDurationMs()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->durationMs:J

    return-wide v0
.end method

.method public final getNotificationSettings()Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->notificationSettings:Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    return-object v0
.end method

.method public final getPlayerId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->playerId:Ljava/lang/String;

    return-object v0
.end method

.method public final isPlaying()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->isPlaying:Z

    return v0
.end method
