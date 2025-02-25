.class public final Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;
.super Ljava/lang/Object;
.source "MediaButtonsReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;,
        Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaButtonsReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaButtonsReceiver.kt\ncom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1#2:103\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000C\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u000c\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0015\u001a\u00020\u000fH\u0002J\u0010\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\tH\u0002R\u0010\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;",
        "",
        "context",
        "Landroid/content/Context;",
        "onAction",
        "Lkotlin/Function1;",
        "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;",
        "",
        "onNotifSeek",
        "",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "mediaSessionCallback",
        "com/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$mediaSessionCallback$1",
        "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$mediaSessionCallback$1;",
        "getAdjustedKeyCode",
        "",
        "keyEvent",
        "Landroid/view/KeyEvent;",
        "handleMediaButton",
        "action",
        "mapAction",
        "keyCode",
        "onIntentReceive",
        "intent",
        "Landroid/content/Intent;",
        "seekPlayerTo",
        "pos",
        "Companion",
        "MediaButtonAction",
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
.field public static final Companion:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;

.field private static instance:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;

.field private static mediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;


# instance fields
.field private final mediaSessionCallback:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$mediaSessionCallback$1;

.field private final onAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onNotifSeek:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->Companion:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNotifSeek"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->onAction:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->onNotifSeek:Lkotlin/jvm/functions/Function1;

    .line 40
    sget-object p2, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->Companion:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;

    sput-object p0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->instance:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;

    .line 43
    new-instance p2, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$mediaSessionCallback$1;

    invoke-direct {p2, p0}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$mediaSessionCallback$1;-><init>(Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;)V

    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->mediaSessionCallback:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$mediaSessionCallback$1;

    .line 56
    sget-object p2, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->Companion:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;

    invoke-virtual {p2, p1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$Companion;->getMediaSessionCompat(Landroid/content/Context;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->mediaSessionCallback:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$mediaSessionCallback$1;

    check-cast p2, Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;
    .locals 1

    .line 12
    sget-object v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->instance:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;

    return-object v0
.end method

.method public static final synthetic access$getMediaSessionCompat$cp()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1

    .line 12
    sget-object v0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->mediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object v0
.end method

.method public static final synthetic access$seekPlayerTo(Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;J)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->seekPlayerTo(J)V

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;)V
    .locals 0

    .line 12
    sput-object p0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->instance:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;

    return-void
.end method

.method public static final synthetic access$setMediaSessionCompat$cp(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 0

    .line 12
    sput-object p0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->mediaSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    return-void
.end method

.method private final getAdjustedKeyCode(Landroid/view/KeyEvent;)I
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x55

    :goto_0
    return p1
.end method

.method private final handleMediaButton(Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->onAction:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final mapAction(I)Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;
    .locals 1

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 73
    :pswitch_0
    sget-object p1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->prev:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    goto :goto_0

    .line 72
    :pswitch_1
    sget-object p1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->next:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    goto :goto_0

    .line 71
    :pswitch_2
    sget-object p1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->stop:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    goto :goto_0

    .line 70
    :pswitch_3
    sget-object p1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->playOrPause:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    goto :goto_0

    .line 69
    :cond_0
    sget-object p1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->pause:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    goto :goto_0

    .line 68
    :cond_1
    sget-object p1, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;->play:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final seekPlayerTo(J)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->onNotifSeek:Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onIntentReceive(Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/view/KeyEvent;

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_4

    goto :goto_4

    .line 86
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object p1, v0

    :goto_3
    if-nez p1, :cond_7

    goto :goto_4

    .line 87
    :cond_7
    invoke-direct {p0, p1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->getAdjustedKeyCode(Landroid/view/KeyEvent;)I

    move-result p1

    .line 88
    invoke-direct {p0, p1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->mapAction(I)Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    .line 90
    :cond_8
    invoke-direct {p0, p1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->handleMediaButton(Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$MediaButtonAction;)V

    :goto_4
    return-void
.end method
