.class public final synthetic Lcom/github/florent37/assets_audio_player/stopwhencall/-$$Lambda$StopWhenCallAudioFocus$U6qv39PzVU45iERGbWQY4hVT_RE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/-$$Lambda$StopWhenCallAudioFocus$U6qv39PzVU45iERGbWQY4hVT_RE;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/-$$Lambda$StopWhenCallAudioFocus$U6qv39PzVU45iERGbWQY4hVT_RE;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->lambda$U6qv39PzVU45iERGbWQY4hVT_RE(Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method
