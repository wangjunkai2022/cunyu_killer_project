.class public abstract Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;
.super Ljava/lang/Object;
.source "PlayerImplem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0008&\u0018\u00002\u00020\u0001B;\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0006\u00a2\u0006\u0002\u0010\nJ\u001c\u0010\u001a\u001a\u00020\u00042\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00040\u0006H&Je\u0010\u001d\u001a\u00060\u000cj\u0002`\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020$2\u0010\u0010&\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\'2\u0008\u0010(\u001a\u0004\u0018\u00010$2\u0010\u0010)\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\'H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010*J\u0008\u0010+\u001a\u00020\u0004H&J\u0008\u0010,\u001a\u00020\u0004H&J\u0008\u0010-\u001a\u00020\u0004H&J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u000cH&J\u0010\u00100\u001a\u00020\u00042\u0006\u00101\u001a\u000202H&J\u0010\u00103\u001a\u00020\u00042\u0006\u00104\u001a\u000202H&J\u0010\u00105\u001a\u00020\u00042\u0006\u00106\u001a\u000202H&J\u0008\u00107\u001a\u00020\u0004H&R\u0012\u0010\u000b\u001a\u00020\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0011\u001a\u00020\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u0010\"\u0004\u0008\u0013\u0010\u0014R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00068"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;",
        "",
        "onFinished",
        "Lkotlin/Function0;",
        "",
        "onBuffering",
        "Lkotlin/Function1;",
        "",
        "onError",
        "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "currentPositionMs",
        "",
        "getCurrentPositionMs",
        "()J",
        "isPlaying",
        "()Z",
        "loopSingleAudio",
        "getLoopSingleAudio",
        "setLoopSingleAudio",
        "(Z)V",
        "getOnBuffering",
        "()Lkotlin/jvm/functions/Function1;",
        "getOnError",
        "getOnFinished",
        "()Lkotlin/jvm/functions/Function0;",
        "getSessionId",
        "listener",
        "",
        "open",
        "Lcom/github/florent37/assets_audio_player/playerimplem/DurationMS;",
        "context",
        "Landroid/content/Context;",
        "flutterAssets",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;",
        "assetAudioPath",
        "",
        "audioType",
        "networkHeaders",
        "",
        "assetAudioPackage",
        "drmConfiguration",
        "(Landroid/content/Context;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "pause",
        "play",
        "release",
        "seekTo",
        "to",
        "setPitch",
        "pitch",
        "",
        "setPlaySpeed",
        "playSpeed",
        "setVolume",
        "volume",
        "stop",
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
.field private final onBuffering:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onError:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onFinished:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onFinished"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBuffering"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->onFinished:Lkotlin/jvm/functions/Function0;

    .line 11
    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->onBuffering:Lkotlin/jvm/functions/Function1;

    .line 12
    iput-object p3, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->onError:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public abstract getCurrentPositionMs()J
.end method

.method public abstract getLoopSingleAudio()Z
.end method

.method public final getOnBuffering()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->onBuffering:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnError()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->onError:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnFinished()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplem;->onFinished:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public abstract getSessionId(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract open(Landroid/content/Context;Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "**>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract release()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract setLoopSingleAudio(Z)V
.end method

.method public abstract setPitch(F)V
.end method

.method public abstract setPlaySpeed(F)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract stop()V
.end method
