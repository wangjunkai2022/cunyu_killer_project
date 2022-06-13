.class public final Lcom/github/florent37/assets_audio_player/ForwardHandler;
.super Landroid/os/Handler;
.source "Player.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/assets_audio_player/ForwardHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0016\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\u000f\u001a\u00020\u000bR\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/ForwardHandler;",
        "Landroid/os/Handler;",
        "()V",
        "isActive",
        "",
        "()Z",
        "player",
        "Lcom/github/florent37/assets_audio_player/Player;",
        "speed",
        "",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
        "start",
        "stop",
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
.field public static final Companion:Lcom/github/florent37/assets_audio_player/ForwardHandler$Companion;

.field public static final DELAY:J = 0x12cL

.field public static final MESSAGE_FORWARD:I = 0x1


# instance fields
.field private player:Lcom/github/florent37/assets_audio_player/Player;

.field private speed:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/florent37/assets_audio_player/ForwardHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/florent37/assets_audio_player/ForwardHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/ForwardHandler;->Companion:Lcom/github/florent37/assets_audio_player/ForwardHandler$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 537
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 545
    iput-wide v0, p0, Lcom/github/florent37/assets_audio_player/ForwardHandler;->speed:D

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 564
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 565
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/ForwardHandler;->player:Lcom/github/florent37/assets_audio_player/Player;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x12c

    long-to-double v3, v1

    .line 566
    iget-wide v5, p0, Lcom/github/florent37/assets_audio_player/ForwardHandler;->speed:D

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Lcom/github/florent37/assets_audio_player/Player;->seekBy(J)V

    .line 567
    invoke-virtual {p0, v0, v1, v2}, Lcom/github/florent37/assets_audio_player/ForwardHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final isActive()Z
    .locals 1

    const/4 v0, 0x1

    .line 548
    invoke-virtual {p0, v0}, Lcom/github/florent37/assets_audio_player/ForwardHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public final start(Lcom/github/florent37/assets_audio_player/Player;D)V
    .locals 1

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/ForwardHandler;->player:Lcom/github/florent37/assets_audio_player/Player;

    .line 552
    iput-wide p2, p0, Lcom/github/florent37/assets_audio_player/ForwardHandler;->speed:D

    const/4 p1, 0x1

    .line 553
    invoke-virtual {p0, p1}, Lcom/github/florent37/assets_audio_player/ForwardHandler;->removeMessages(I)V

    .line 554
    invoke-virtual {p0, p1}, Lcom/github/florent37/assets_audio_player/ForwardHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x1

    .line 558
    invoke-virtual {p0, v0}, Lcom/github/florent37/assets_audio_player/ForwardHandler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Lcom/github/florent37/assets_audio_player/ForwardHandler;->player:Lcom/github/florent37/assets_audio_player/Player;

    return-void
.end method
