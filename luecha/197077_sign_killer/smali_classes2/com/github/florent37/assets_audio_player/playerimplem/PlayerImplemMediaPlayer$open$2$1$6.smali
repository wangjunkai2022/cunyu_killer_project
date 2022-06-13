.class final Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$6;
.super Ljava/lang/Object;
.source "PlayerImplemMediaPlayer.kt"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/media/MediaPlayer;",
        "kotlin.jvm.PlatformType",
        "onPrepared"
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
.method constructor <init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;Lkotlin/coroutines/Continuation;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$6;->this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;

    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$6;->$continuation:Lkotlin/coroutines/Continuation;

    iput-object p3, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$6;->$onThisMediaReady:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 178
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$6;->this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;

    invoke-static {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->access$getMediaPlayer$p(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    :goto_0
    int-to-long v0, p1

    .line 181
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$6;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 183
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$6;->$onThisMediaReady:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method
