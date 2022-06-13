.class public final Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;
.super Ljava/lang/Object;
.source "MediaButtonsReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;",
        "",
        "()V",
        "instance",
        "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;",
        "getInstance",
        "()Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;",
        "setInstance",
        "(Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;)V",
        "mediaSessionCompat",
        "Landroid/support/v4/media/session/MediaSessionCompat;",
        "getMediaSessionCompat",
        "context",
        "Landroid/content/Context;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;
    .locals 1

    .line 15
    invoke-static {}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->access$getInstance$cp()Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;

    move-result-object v0

    return-object v0
.end method

.method public final getMediaSessionCompat(Landroid/content/Context;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->access$getMediaSessionCompat$cp()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x0

    const-string v2, "MediaButtonsReceiver"

    invoke-direct {v0, p1, v2, v1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    const/4 p1, 0x1

    .line 22
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 23
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 21
    invoke-static {v0}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->access$setMediaSessionCompat$cp(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 26
    :cond_0
    invoke-static {}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->access$getMediaSessionCompat$cp()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final setInstance(Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;)V
    .locals 0

    .line 15
    invoke-static {p1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->access$setInstance$cp(Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;)V

    return-void
.end method
