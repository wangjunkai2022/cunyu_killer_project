.class public final Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;
.super Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;
.source "AudioFocusStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;",
        "resumeAfterInterruption",
        "",
        "resumeOthersPlayersAfterDone",
        "(ZZ)V",
        "getResumeAfterInterruption",
        "()Z",
        "getResumeOthersPlayersAfterDone",
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
.field private final resumeAfterInterruption:Z

.field private final resumeOthersPlayersAfterDone:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    iput-boolean p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;->resumeAfterInterruption:Z

    .line 9
    iput-boolean p2, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;->resumeOthersPlayersAfterDone:Z

    return-void
.end method


# virtual methods
.method public final getResumeAfterInterruption()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;->resumeAfterInterruption:Z

    return v0
.end method

.method public final getResumeOthersPlayersAfterDone()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;->resumeOthersPlayersAfterDone:Z

    return v0
.end method
