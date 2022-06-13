.class public final Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer$getSessionId$listener$1;
.super Ljava/lang/Object;
.source "PlayerImplemExoPlayer.kt"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;->getSessionId(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer$getSessionId$listener$1",
        "Lcom/google/android/exoplayer2/audio/AudioListener;",
        "onAudioSessionIdChanged",
        "",
        "audioSessionId",
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
.field final synthetic $listener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer$getSessionId$listener$1;->$listener:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer$getSessionId$listener$1;->this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioListener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioListener;Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer$getSessionId$listener$1;->$listener:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer$getSessionId$listener$1;->this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;

    invoke-static {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemExoPlayer;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->getAudioComponent()Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplayer2/audio/AudioListener;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;->removeAudioListener(Lcom/google/android/exoplayer2/audio/AudioListener;)V

    :goto_0
    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioListener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplayer2/audio/AudioListener;Z)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioListener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplayer2/audio/AudioListener;F)V

    return-void
.end method
