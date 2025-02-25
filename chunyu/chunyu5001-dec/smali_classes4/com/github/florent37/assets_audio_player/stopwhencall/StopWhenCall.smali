.class public abstract Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;
.super Ljava/lang/Object;
.source "StopWhenCall.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;,
        Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStopWhenCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StopWhenCall.kt\ncom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1849#2,2:36\n*S KotlinDebug\n*F\n+ 1 StopWhenCall.kt\ncom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall\n*L\n26#1:36,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001:\u0002\u0011\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0004J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0005J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u000f\u001a\u00020\u0007H&J\u000e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0005R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;",
        "",
        "()V",
        "listeners",
        "",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;",
        "pingListeners",
        "",
        "audioState",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;",
        "register",
        "listener",
        "requestAudioFocus",
        "audioFocusStrategy",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;",
        "stop",
        "unregister",
        "AudioState",
        "Listener",
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
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;->listeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected final pingListeners(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;)V
    .locals 2

    const-string v0, "audioState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;->listeners:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;

    .line 27
    invoke-interface {v1, p1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;->onPhoneStateChanged(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final register(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract requestAudioFocus(Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;)Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;
.end method

.method public abstract stop()V
.end method

.method public final unregister(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$Listener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
