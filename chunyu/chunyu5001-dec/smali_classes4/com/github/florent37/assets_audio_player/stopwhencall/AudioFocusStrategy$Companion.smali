.class public final Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Companion;
.super Ljava/lang/Object;
.source "AudioFocusStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0010\u0010\u0005\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Companion;",
        "",
        "()V",
        "from",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;",
        "params",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Ljava/util/Map;)Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 15
    sget-object p1, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$None;->INSTANCE:Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$None;

    check-cast p1, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;

    return-object p1

    :cond_0
    :try_start_0
    const-string v0, "request"

    .line 18
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sget-object p1, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$None;->INSTANCE:Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$None;

    check-cast p1, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;

    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;

    const-string v1, "resumeAfterInterruption"

    .line 24
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    if-eqz v1, :cond_3

    :try_start_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v3, "resumeOthersPlayersAfterDone"

    .line 25
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 23
    invoke-direct {v0, v1, p1}, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;-><init>(ZZ)V

    move-object p1, v0

    check-cast p1, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;

    goto :goto_0

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :catchall_0
    sget-object p1, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$None;->INSTANCE:Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$None;

    check-cast p1, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;

    :goto_0
    return-object p1
.end method
