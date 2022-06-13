.class public final Lcom/lyokone/location/BackgroundNotification;
.super Ljava/lang/Object;
.source "FlutterLocationService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\r\u001a\u00020\u000eJ\n\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0005H\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0005H\u0002J\u0018\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0016\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u0018R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/lyokone/location/BackgroundNotification;",
        "",
        "context",
        "Landroid/content/Context;",
        "channelId",
        "",
        "notificationId",
        "",
        "(Landroid/content/Context;Ljava/lang/String;I)V",
        "builder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "options",
        "Lcom/lyokone/location/NotificationOptions;",
        "build",
        "Landroid/app/Notification;",
        "buildBringToFrontIntent",
        "Landroid/app/PendingIntent;",
        "getDrawableId",
        "iconName",
        "updateChannel",
        "",
        "channelName",
        "updateNotification",
        "notify",
        "",
        "updateOptions",
        "isVisible",
        "location_release"
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
.field private builder:Landroidx/core/app/NotificationCompat$Builder;

.field private final channelId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final notificationId:I

.field private options:Lcom/lyokone/location/NotificationOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/lyokone/location/BackgroundNotification;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/lyokone/location/BackgroundNotification;->channelId:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/lyokone/location/BackgroundNotification;->notificationId:I

    .line 38
    new-instance p1, Lcom/lyokone/location/NotificationOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/lyokone/location/NotificationOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/lyokone/location/BackgroundNotification;->options:Lcom/lyokone/location/NotificationOptions;

    .line 39
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object p2, p0, Lcom/lyokone/location/BackgroundNotification;->context:Landroid/content/Context;

    iget-object p3, p0, Lcom/lyokone/location/BackgroundNotification;->channelId:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 40
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p2, "Builder(context, channel\u2026tionCompat.PRIORITY_HIGH)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lyokone/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 43
    iget-object p1, p0, Lcom/lyokone/location/BackgroundNotification;->options:Lcom/lyokone/location/NotificationOptions;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/lyokone/location/BackgroundNotification;->updateNotification(Lcom/lyokone/location/NotificationOptions;Z)V

    return-void
.end method

.method private final buildBringToFrontIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/lyokone/location/BackgroundNotification;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/lyokone/location/BackgroundNotification;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x10200000

    .line 54
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 57
    iget-object v1, p0, Lcom/lyokone/location/BackgroundNotification;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_2

    .line 59
    :cond_2
    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    :goto_2
    return-object v0
.end method

.method private final getDrawableId(Ljava/lang/String;)I
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/lyokone/location/BackgroundNotification;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/lyokone/location/BackgroundNotification;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private final updateChannel(Ljava/lang/String;)V
    .locals 4

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/lyokone/location/BackgroundNotification;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    const-string v1, "from(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v1, Landroid/app/NotificationChannel;

    .line 67
    iget-object v2, p0, Lcom/lyokone/location/BackgroundNotification;->channelId:Ljava/lang/String;

    .line 68
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    .line 66
    invoke-direct {v1, v2, p1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 71
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 73
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private final updateNotification(Lcom/lyokone/location/NotificationOptions;Z)V
    .locals 3

    .line 81
    invoke-virtual {p1}, Lcom/lyokone/location/NotificationOptions;->getIconName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lyokone/location/BackgroundNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "navigation_empty_icon"

    .line 82
    invoke-direct {p0, v0}, Lcom/lyokone/location/BackgroundNotification;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/lyokone/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 85
    invoke-virtual {p1}, Lcom/lyokone/location/NotificationOptions;->getTitle()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lcom/lyokone/location/NotificationOptions;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcom/lyokone/location/NotificationOptions;->getDescription()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "builder\n                \u2026Text(options.description)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput-object v0, p0, Lcom/lyokone/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 90
    invoke-virtual {p1}, Lcom/lyokone/location/NotificationOptions;->getColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/lyokone/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Lcom/lyokone/location/NotificationOptions;->getColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "{\n            builder.se\u2026Colorized(true)\n        }"

    .line 90
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/lyokone/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "{\n            builder.se\u2026olorized(false)\n        }"

    .line 92
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    :goto_1
    iput-object v0, p0, Lcom/lyokone/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 96
    invoke-virtual {p1}, Lcom/lyokone/location/NotificationOptions;->getOnTapBringToFront()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/lyokone/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/lyokone/location/BackgroundNotification;->buildBringToFrontIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v0, "{\n            builder.se\u2026oFrontIntent())\n        }"

    .line 96
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/lyokone/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v0, "{\n            builder.se\u2026entIntent(null)\n        }"

    .line 98
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :goto_2
    iput-object p1, p0, Lcom/lyokone/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p2, :cond_3

    .line 103
    iget-object p1, p0, Lcom/lyokone/location/BackgroundNotification;->context:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    const-string p2, "from(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget p2, p0, Lcom/lyokone/location/BackgroundNotification;->notificationId:I

    iget-object v0, p0, Lcom/lyokone/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final build()Landroid/app/Notification;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/lyokone/location/BackgroundNotification;->options:Lcom/lyokone/location/NotificationOptions;

    invoke-virtual {v0}, Lcom/lyokone/location/NotificationOptions;->getChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lyokone/location/BackgroundNotification;->updateChannel(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/lyokone/location/BackgroundNotification;->builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final updateOptions(Lcom/lyokone/location/NotificationOptions;Z)V
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/lyokone/location/NotificationOptions;->getChannelName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lyokone/location/BackgroundNotification;->options:Lcom/lyokone/location/NotificationOptions;

    invoke-virtual {v1}, Lcom/lyokone/location/NotificationOptions;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/lyokone/location/NotificationOptions;->getChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lyokone/location/BackgroundNotification;->updateChannel(Ljava/lang/String;)V

    .line 113
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lyokone/location/BackgroundNotification;->updateNotification(Lcom/lyokone/location/NotificationOptions;Z)V

    .line 115
    iput-object p1, p0, Lcom/lyokone/location/BackgroundNotification;->options:Lcom/lyokone/location/NotificationOptions;

    return-void
.end method
