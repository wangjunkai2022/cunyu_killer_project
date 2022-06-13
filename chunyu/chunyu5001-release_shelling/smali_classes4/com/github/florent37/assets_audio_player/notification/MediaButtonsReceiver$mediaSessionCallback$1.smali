.class public final Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$mediaSessionCallback$1;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "MediaButtonsReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$mediaSessionCallback$1",
        "Landroid/support/v4/media/session/MediaSessionCompat$Callback;",
        "onMediaButtonEvent",
        "",
        "mediaButtonEvent",
        "Landroid/content/Intent;",
        "onSeekTo",
        "",
        "pos",
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
.field final synthetic this$0:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;


# direct methods
.method constructor <init>(Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$mediaSessionCallback$1;->this$0:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;

    .line 43
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$mediaSessionCallback$1;->this$0:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;

    invoke-virtual {v0, p1}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->onIntentReceive(Landroid/content/Intent;)V

    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onSeekTo(J)V
    .locals 1

    .line 50
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    .line 51
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver$mediaSessionCallback$1;->this$0:Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;

    invoke-static {v0, p1, p2}, Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;->access$seekPlayerTo(Lcom/github/florent37/assets_audio_player/notification/MediaButtonsReceiver;J)V

    return-void
.end method
