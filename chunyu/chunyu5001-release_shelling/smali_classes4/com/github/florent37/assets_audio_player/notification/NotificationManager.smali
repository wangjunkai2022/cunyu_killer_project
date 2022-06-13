.class public final Lcom/github/florent37/assets_audio_player/notification/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u0006J6\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u000cR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/notification/NotificationManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "closed",
        "",
        "getClosed",
        "()Z",
        "setClosed",
        "(Z)V",
        "hideNotificationService",
        "",
        "definitively",
        "showNotification",
        "playerId",
        "",
        "audioMetas",
        "Lcom/github/florent37/assets_audio_player/notification/AudioMetas;",
        "isPlaying",
        "notificationSettings",
        "Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;",
        "stop",
        "durationMs",
        "",
        "stopNotification",
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
.field private closed:Z

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic hideNotificationService$default(Lcom/github/florent37/assets_audio_player/notification/NotificationManager;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->hideNotificationService(Z)V

    return-void
.end method


# virtual methods
.method public final getClosed()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->closed:Z

    return v0
.end method

.method public final hideNotificationService(Z)V
    .locals 4

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->context:Landroid/content/Context;

    const-class v3, Lcom/github/florent37/assets_audio_player/notification/NotificationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 49
    iput-boolean p1, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final setClosed(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->closed:Z

    return-void
.end method

.method public final showNotification(Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;ZLcom/github/florent37/assets_audio_player/notification/NotificationSettings;ZJ)V
    .locals 13

    move-object v1, p0

    move-object v0, p1

    const-string v2, "playerId"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "audioMetas"

    move-object v4, p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "notificationSettings"

    move-object/from16 v6, p4

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :try_start_0
    iget-boolean v2, v1, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->closed:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->stopNotification()V

    goto :goto_0

    .line 18
    :cond_1
    iget-object v9, v1, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->context:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    iget-object v2, v1, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->context:Landroid/content/Context;

    const-class v3, Lcom/github/florent37/assets_audio_player/notification/NotificationService;

    invoke-direct {v10, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "notificationAction"

    .line 19
    new-instance v12, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;

    move-object v2, v12

    move/from16 v3, p3

    move-object v4, p2

    move-object v5, p1

    move-object/from16 v6, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v2 .. v8}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;-><init>(ZLcom/github/florent37/assets_audio_player/notification/AudioMetas;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;J)V

    check-cast v12, Ljava/io/Serializable;

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v9, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 28
    :goto_0
    sget-object v2, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->Companion:Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;

    invoke-virtual {v2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;->getInstance()Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->getAssetsAudioPlayer()Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayer;->registerLastPlayerWithNotif(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public final stopNotification()V
    .locals 4

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/github/florent37/assets_audio_player/notification/NotificationManager;->context:Landroid/content/Context;

    const-class v3, Lcom/github/florent37/assets_audio_player/notification/NotificationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "notificationAction"

    .line 37
    new-instance v3, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Hide;

    invoke-direct {v3}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Hide;-><init>()V

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
