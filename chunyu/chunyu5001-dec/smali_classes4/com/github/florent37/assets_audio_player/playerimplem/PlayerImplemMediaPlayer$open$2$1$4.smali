.class final Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$4;
.super Ljava/lang/Object;
.source "PlayerImplemMediaPlayer.kt"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/media/MediaPlayer;",
        "kotlin.jvm.PlatformType",
        "what",
        "",
        "extra",
        "onError"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onThisMediaReady:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$4;->$onThisMediaReady:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$4;->$continuation:Lkotlin/coroutines/Continuation;

    iput-object p3, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$4;->this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/16 p1, 0x64

    if-eq p2, p1, :cond_1

    const/16 p1, -0x3ec

    if-eq p3, p1, :cond_1

    const/16 p1, -0x6e

    if-ne p3, p1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    new-instance p1, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$PlayerError;

    new-instance p2, Ljava/lang/Throwable;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$PlayerError;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;

    goto :goto_1

    .line 158
    :cond_1
    :goto_0
    new-instance p1, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$NetworkError;

    new-instance p2, Ljava/lang/Throwable;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$NetworkError;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;

    .line 163
    :goto_1
    iget-object p2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$4;->$onThisMediaReady:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p2, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p2, :cond_2

    .line 164
    iget-object p2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$4;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 166
    :cond_2
    iget-object p2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$4;->this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;

    invoke-virtual {p2}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->getOnError()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const/4 p1, 0x1

    return p1
.end method
