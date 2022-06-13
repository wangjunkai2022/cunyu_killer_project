.class public final Lcom/github/florent37/assets_audio_player/notification/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/assets_audio_player/notification/NotificationService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 ,2\u00020\u0001:\u0001,B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u001a\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0017\u001a\u00020\u0012H\u0002J\u001a\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0008H\u0002J\u001a\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0008H\u0002J\u001a\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0008H\u0002J\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0008H\u0002J\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0002\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u001a\u0010 \u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0008H\u0002J\u0008\u0010!\u001a\u00020\u0004H\u0002J\u0014\u0010\"\u001a\u0004\u0018\u00010#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010%\u001a\u00020\u0004H\u0016J\u0008\u0010&\u001a\u00020\u0004H\u0016J \u0010\'\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u00122\u0006\u0010)\u001a\u00020\u0012H\u0016J\u0010\u0010*\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0006H\u0016\u00a8\u0006-"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/notification/NotificationService;",
        "Landroid/app/Service;",
        "()V",
        "createNotificationChannel",
        "",
        "createReturnIntent",
        "Landroid/content/Intent;",
        "forAction",
        "",
        "forPlayer",
        "audioMetas",
        "Lcom/github/florent37/assets_audio_player/notification/AudioMetas;",
        "displayNotification",
        "action",
        "Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getCustomIconOrDefault",
        "",
        "context",
        "Landroid/content/Context;",
        "manifestName",
        "resourceName",
        "defaultIcon",
        "getNextIcon",
        "getPauseIcon",
        "getPlayIcon",
        "getPrevIcon",
        "getResourceID",
        "iconName",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "getSmallIcon",
        "getStopIcon",
        "hideNotif",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "onCreate",
        "onDestroy",
        "onStartCommand",
        "flags",
        "startId",
        "onTaskRemoved",
        "rootIntent",
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
.field public static final CHANNEL_ID:Ljava/lang/String; = "assets_audio_player"

.field public static final Companion:Lcom/github/florent37/assets_audio_player/notification/NotificationService$Companion;

.field public static final EXTRA_NOTIFICATION_ACTION:Ljava/lang/String; = "notificationAction"

.field public static final EXTRA_PLAYER_ID:Ljava/lang/String; = "playerId"

.field public static final MEDIA_SESSION_TAG:Ljava/lang/String; = "assets_audio_player"

.field public static final NOTIFICATION_ID:I = 0x1

.field public static final TRACK_ID:Ljava/lang/String; = "trackID"

.field public static final manifestIcon:Ljava/lang/String; = "assets.audio.player.notification.icon"

.field public static final manifestIconNext:Ljava/lang/String; = "assets.audio.player.notification.icon.next"

.field public static final manifestIconPause:Ljava/lang/String; = "assets.audio.player.notification.icon.pause"

.field public static final manifestIconPlay:Ljava/lang/String; = "assets.audio.player.notification.icon.play"

.field public static final manifestIconPrev:Ljava/lang/String; = "assets.audio.player.notification.icon.prev"

.field public static final manifestIconStop:Ljava/lang/String; = "assets.audio.player.notification.icon.stop"

.field private static stateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/florent37/assets_audio_player/notification/NotificationService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/florent37/assets_audio_player/notification/NotificationService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->Companion:Lcom/github/florent37/assets_audio_player/notification/NotificationService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static final synthetic access$displayNotification(Lcom/github/florent37/assets_audio_player/notification/NotificationService;Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->displayNotification(Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final synthetic access$getStateCompat$cp()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .line 29
    sget-object v0, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->stateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method public static final synthetic access$setStateCompat$cp(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    .line 29
    sput-object p0, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->stateCompat:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-void
.end method

.method private final createNotificationChannel()V
    .locals 4

    .line 316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 317
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Foreground Service Channel"

    .line 319
    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const-string v3, "assets_audio_player"

    .line 317
    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 322
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 323
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v1, 0x1

    .line 324
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 327
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private final createReturnIntent(Ljava/lang/String;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;)Landroid/content/Intent;
    .locals 3

    .line 133
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/github/florent37/assets_audio_player/notification/NotificationActionReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "playerId"

    .line 135
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 136
    invoke-virtual {p3}, Lcom/github/florent37/assets_audio_player/notification/AudioMetas;->getTrackID()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "trackID"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Intent(this, Notificatio\u2026K_ID, audioMetas.trackID)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final displayNotification(Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;)V
    .locals 7

    .line 140
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/github/florent37/assets_audio_player/notification/NotificationService$displayNotification$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/github/florent37/assets_audio_player/notification/NotificationService$displayNotification$1;-><init>(Lcom/github/florent37/assets_audio_player/notification/NotificationService;Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final displayNotification(Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;Landroid/graphics/Bitmap;)V
    .locals 13

    .line 215
    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->createNotificationChannel()V

    .line 216
    sget-object v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->Companion:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;

    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;->getMediaSessionCompat(Landroid/content/Context;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    .line 218
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getNotificationSettings()Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    move-result-object v1

    .line 220
    sget-object v3, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->Companion:Lcom/github/florent37/assets_audio_player/notification/NotificationService$Companion;

    .line 221
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 222
    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->getSeekBarEnabled()Z

    move-result v5

    .line 223
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getAudioMetas()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/florent37/assets_audio_player/notification/AudioMetas;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 224
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getAudioMetas()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/florent37/assets_audio_player/notification/AudioMetas;->getArtist()Ljava/lang/String;

    move-result-object v9

    .line 225
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getAudioMetas()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/florent37/assets_audio_player/notification/AudioMetas;->getAlbum()Ljava/lang/String;

    move-result-object v10

    .line 226
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getDurationMs()J

    move-result-wide v6

    .line 221
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {v3 .. v10}, Lcom/github/florent37/assets_audio_player/notification/NotificationService$Companion;->updateNotifMetaData(Landroid/content/Context;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getPlayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getAudioMetas()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v3

    const-string/jumbo v4, "toggle"

    invoke-direct {p0, v4, v2, v3}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->createReturnIntent(Ljava/lang/String;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;)Landroid/content/Intent;

    move-result-object v2

    .line 231
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->isPlaying()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1e

    const/4 v12, 0x0

    move-object v5, p1

    .line 230
    invoke-static/range {v5 .. v12}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->copyWith$default(Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;Ljava/lang/Boolean;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;Ljava/lang/Long;ILjava/lang/Object;)Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    const-string v5, "notificationAction"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "createReturnIntent(forAc\u2026laying\n                ))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    const/high16 v5, 0xc000000

    const/4 v6, 0x0

    invoke-static {v3, v6, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 234
    invoke-static {v0, v2}, Landroidx/media/session/MediaButtonReceiver;->handleIntent(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/content/Intent;)Landroid/view/KeyEvent;

    .line 238
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v8, "assets_audio_player"

    invoke-direct {v2, v3, v8}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->getPrevEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getNotificationSettings()Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->getPreviousIcon()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getPrevIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    const-string v9, "prev"

    move-object v10, v9

    check-cast v10, Ljava/lang/CharSequence;

    .line 243
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getPlayerId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getAudioMetas()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v12

    invoke-direct {p0, v9, v11, v12}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->createReturnIntent(Ljava/lang/String;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v3, v6, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 242
    invoke-virtual {v2, v8, v10, v9}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 249
    :cond_0
    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->getPlayPauseEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 251
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getNotificationSettings()Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->getPauseIcon()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getPauseIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getNotificationSettings()Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->getPlayIcon()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getPlayIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 252
    :goto_0
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "pause"

    goto :goto_1

    :cond_2
    const-string v9, "play"

    :goto_1
    check-cast v9, Ljava/lang/CharSequence;

    .line 250
    invoke-virtual {v2, v8, v9, v7}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 259
    :cond_3
    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->getNextEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 260
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getNotificationSettings()Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->getNextIcon()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v7}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getNextIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    const-string v8, "next"

    move-object v9, v8

    check-cast v9, Ljava/lang/CharSequence;

    .line 261
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getPlayerId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getAudioMetas()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v11

    invoke-direct {p0, v8, v10, v11}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->createReturnIntent(Ljava/lang/String;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;)Landroid/content/Intent;

    move-result-object v8

    .line 260
    invoke-static {v3, v6, v8, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v7, v9, v8}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 267
    :cond_4
    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->getStopEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 268
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getNotificationSettings()Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->getStopIcon()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v7}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getStopIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    const-string v8, "stop"

    move-object v9, v8

    check-cast v9, Ljava/lang/CharSequence;

    .line 269
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getPlayerId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getAudioMetas()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v11

    invoke-direct {p0, v8, v10, v11}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->createReturnIntent(Ljava/lang/String;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;)Landroid/content/Intent;

    move-result-object v8

    .line 268
    invoke-static {v3, v6, v8, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v7, v9, v5}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 273
    :cond_5
    new-instance v5, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v5}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 275
    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/NotificationSettings;->numberEnabled()I

    move-result v1

    const/4 v7, 0x2

    if-eq v1, v4, :cond_9

    if-eq v1, v7, :cond_8

    const/4 v8, 0x3

    if-eq v1, v8, :cond_7

    const/4 v8, 0x4

    if-eq v1, v8, :cond_6

    new-array v1, v6, [I

    .line 280
    invoke-virtual {v5, v1}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    goto :goto_2

    :cond_6
    new-array v1, v8, [I

    .line 279
    fill-array-data v1, :array_0

    invoke-virtual {v5, v1}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    goto :goto_2

    :cond_7
    new-array v1, v8, [I

    .line 278
    fill-array-data v1, :array_1

    invoke-virtual {v5, v1}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    goto :goto_2

    :cond_8
    new-array v1, v7, [I

    .line 277
    fill-array-data v1, :array_2

    invoke-virtual {v5, v1}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    goto :goto_2

    :cond_9
    new-array v1, v4, [I

    aput v6, v1, v6

    .line 276
    invoke-virtual {v5, v1}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 283
    :goto_2
    invoke-virtual {v5, v4}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowCancelButton(Z)Landroidx/media/app/NotificationCompat$MediaStyle;

    move-result-object v1

    .line 284
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/NotificationCompat$MediaStyle;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$Style;

    .line 273
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 286
    invoke-direct {p0, v3}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getSmallIcon(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getAudioMetas()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/AudioMetas;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getAudioMetas()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/AudioMetas;->getArtist()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getAudioMetas()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/AudioMetas;->getAlbum()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    move v1, v6

    goto :goto_4

    :cond_b
    :goto_3
    move v1, v4

    :goto_4
    if-nez v1, :cond_c

    .line 294
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getAudioMetas()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/florent37/assets_audio_player/notification/AudioMetas;->getAlbum()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 298
    :cond_c
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->getAudioMetas()Lcom/github/florent37/assets_audio_player/notification/AudioMetas;

    move-result-object v2

    const-string v5, "select"

    invoke-direct {p0, v5, v1, v2}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->createReturnIntent(Ljava/lang/String;Ljava/lang/String;Lcom/github/florent37/assets_audio_player/notification/AudioMetas;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x14000000

    .line 297
    invoke-static {v3, v6, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    if-eqz p2, :cond_d

    .line 301
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 304
    :cond_d
    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 305
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    const-string v0, "Builder(this, CHANNEL_ID\u2026\n                .build()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0, v4, p2}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->startForeground(ILandroid/app/Notification;)V

    .line 309
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_e

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_e

    .line 310
    invoke-virtual {p0, v7}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->stopForeground(I)V

    :cond_e
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private final getCustomIconOrDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 189
    :try_start_0
    invoke-direct {p0, p3}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getResourceID(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 191
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 195
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p3, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const-string p3, "context.packageManager.g\u2026ageManager.GET_META_DATA)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 198
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_2
    return p4
.end method

.method private final getNextIcon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 175
    sget v0, Lcom/github/florent37/assets_audio_player/R$drawable;->exo_icon_next:I

    const-string v1, "assets.audio.player.notification.icon.next"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getCustomIconOrDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private final getPauseIcon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 171
    sget v0, Lcom/github/florent37/assets_audio_player/R$drawable;->exo_icon_pause:I

    const-string v1, "assets.audio.player.notification.icon.pause"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getCustomIconOrDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private final getPlayIcon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 167
    sget v0, Lcom/github/florent37/assets_audio_player/R$drawable;->exo_icon_play:I

    const-string v1, "assets.audio.player.notification.icon.play"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getCustomIconOrDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private final getPrevIcon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 179
    sget v0, Lcom/github/florent37/assets_audio_player/R$drawable;->exo_icon_previous:I

    const-string v1, "assets.audio.player.notification.icon.prev"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getCustomIconOrDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private final getResourceID(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final getSmallIcon(Landroid/content/Context;)I
    .locals 3

    .line 163
    sget v0, Lcom/github/florent37/assets_audio_player/R$drawable;->exo_icon_circular_play:I

    const-string v1, "assets.audio.player.notification.icon"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getCustomIconOrDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private final getStopIcon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 183
    sget v0, Lcom/github/florent37/assets_audio_player/R$drawable;->exo_icon_stop:I

    const-string v1, "assets.audio.player.notification.icon.stop"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getCustomIconOrDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private final hideNotif()V
    .locals 2

    .line 334
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 335
    invoke-virtual {p0, v1}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->stopForeground(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->stopSelf()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 344
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 352
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android.intent.action.MEDIA_BUTTON"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 117
    sget-object p2, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->Companion:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;

    invoke-virtual {p0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "applicationContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;->getMediaSessionCompat(Landroid/content/Context;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p2

    .line 118
    invoke-static {p2, p1}, Landroidx/media/session/MediaButtonReceiver;->handleIntent(Landroid/support/v4/media/session/MediaSessionCompat;Landroid/content/Intent;)Landroid/view/KeyEvent;

    :cond_0
    const-string p2, "notificationAction"

    .line 121
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 122
    instance-of p2, p1, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;

    if-eqz p2, :cond_1

    .line 123
    check-cast p1, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;

    invoke-direct {p0, p1}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->displayNotification(Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;)V

    goto :goto_0

    .line 125
    :cond_1
    instance-of p1, p1, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Hide;

    if-eqz p1, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->hideNotif()V

    :cond_2
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "rootIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/notification/NotificationService;->hideNotif()V

    return-void
.end method
