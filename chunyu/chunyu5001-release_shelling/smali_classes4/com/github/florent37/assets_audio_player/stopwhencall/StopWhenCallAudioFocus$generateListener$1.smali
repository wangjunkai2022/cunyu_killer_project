.class final Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus$generateListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StopWhenCallAudioFocus.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->generateListener()Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "focusChange",
        "",
        "invoke"
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
.field final synthetic this$0:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;


# direct methods
.method constructor <init>(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;)V
    .locals 0

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus$generateListener$1;->this$0:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus$generateListener$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 2

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 27
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus$generateListener$1;->this$0:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;

    invoke-static {p1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->access$getFocusLock$p(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus$generateListener$1;->this$0:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;

    monitor-enter p1

    .line 28
    :try_start_0
    sget-object v1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->FORBIDDEN:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;

    invoke-virtual {v0, v1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->pingListeners(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;)V

    .line 29
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus$generateListener$1;->this$0:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;

    invoke-static {p1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->access$getFocusLock$p(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus$generateListener$1;->this$0:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;

    monitor-enter p1

    .line 20
    :try_start_1
    sget-object v1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->AUTHORIZED_TO_PLAY:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;

    invoke-virtual {v0, v1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->pingListeners(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;)V

    .line 21
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus$generateListener$1;->this$0:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;

    invoke-static {p1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->access$getFocusLock$p(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus$generateListener$1;->this$0:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;

    monitor-enter p1

    .line 24
    :try_start_2
    sget-object v1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->REDUCE_VOLUME:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;

    invoke-virtual {v0, v1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->pingListeners(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;)V

    .line 25
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 23
    monitor-exit p1

    :goto_0
    return-void

    :catchall_2
    move-exception v0

    monitor-exit p1

    throw v0
.end method
