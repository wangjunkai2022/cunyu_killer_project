.class final Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$5;
.super Ljava/lang/Object;
.source "PlayerImplemMediaPlayer.kt"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
        "onCompletion"
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
.field final synthetic this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;


# direct methods
.method constructor <init>(Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$5;->this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 172
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer$open$2$1$5;->this$0:Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;

    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/playerimplem/PlayerImplemMediaPlayer;->getOnFinished()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
