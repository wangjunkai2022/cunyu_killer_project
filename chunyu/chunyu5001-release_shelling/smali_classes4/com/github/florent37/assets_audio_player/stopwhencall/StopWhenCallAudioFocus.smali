.class public final Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;
.super Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;
.source "StopWhenCallAudioFocus.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cH\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u000eH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "audioManager",
        "Landroid/media/AudioManager;",
        "focusLock",
        "",
        "request",
        "Landroidx/media/AudioFocusRequestCompat;",
        "generateListener",
        "Lkotlin/Function1;",
        "",
        "",
        "requestAudioFocus",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;",
        "audioFocusStrategy",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;",
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
.field private final audioManager:Landroid/media/AudioManager;

.field private final context:Landroid/content/Context;

.field private final focusLock:Ljava/lang/Object;

.field private request:Landroidx/media/AudioFocusRequestCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall;-><init>()V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->context:Landroid/content/Context;

    .line 11
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->context:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->audioManager:Landroid/media/AudioManager;

    .line 13
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->focusLock:Ljava/lang/Object;

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getFocusLock$p(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->focusLock:Ljava/lang/Object;

    return-object p0
.end method

.method private final generateListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus$generateListener$1;

    invoke-direct {v0, p0}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus$generateListener$1;-><init>(Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static synthetic lambda$U6qv39PzVU45iERGbWQY4hVT_RE(Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->requestAudioFocus$lambda-3$lambda-2(Lkotlin/jvm/functions/Function1;I)V

    return-void
.end method

.method private static final requestAudioFocus$lambda-3$lambda-2(Lkotlin/jvm/functions/Function1;I)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public requestAudioFocus(Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy;)Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;
    .locals 5

    const-string v0, "audioFocusStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    instance-of v0, p1, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$None;

    if-eqz v0, :cond_0

    .line 36
    sget-object p1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->FORBIDDEN:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;

    return-object p1

    .line 38
    :cond_0
    check-cast p1, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;

    .line 40
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->request:Landroidx/media/AudioFocusRequestCompat;

    if-nez v0, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->audioManager:Landroid/media/AudioManager;

    invoke-static {v1, v0}, Landroidx/media/AudioManagerCompat;->abandonAudioFocusRequest(Landroid/media/AudioManager;Landroidx/media/AudioFocusRequestCompat;)I

    .line 44
    :goto_0
    invoke-virtual {p1}, Lcom/github/florent37/assets_audio_player/stopwhencall/AudioFocusStrategy$Request;->getResumeOthersPlayersAfterDone()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    .line 50
    :goto_1
    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->generateListener()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    .line 51
    new-instance v3, Landroidx/media/AudioFocusRequestCompat$Builder;

    invoke-direct {v3, p1}, Landroidx/media/AudioFocusRequestCompat$Builder;-><init>(I)V

    .line 52
    new-instance p1, Landroidx/media/AudioAttributesCompat$Builder;

    invoke-direct {p1}, Landroidx/media/AudioAttributesCompat$Builder;-><init>()V

    .line 53
    invoke-virtual {p1, v1}, Landroidx/media/AudioAttributesCompat$Builder;->setUsage(I)Landroidx/media/AudioAttributesCompat$Builder;

    .line 54
    invoke-virtual {p1, v0}, Landroidx/media/AudioAttributesCompat$Builder;->setContentType(I)Landroidx/media/AudioAttributesCompat$Builder;

    .line 55
    invoke-virtual {p1}, Landroidx/media/AudioAttributesCompat$Builder;->build()Landroidx/media/AudioAttributesCompat;

    move-result-object p1

    .line 52
    invoke-virtual {v3, p1}, Landroidx/media/AudioFocusRequestCompat$Builder;->setAudioAttributes(Landroidx/media/AudioAttributesCompat;)Landroidx/media/AudioFocusRequestCompat$Builder;

    .line 57
    new-instance p1, Lcom/github/florent37/assets_audio_player/stopwhencall/-$$Lambda$StopWhenCallAudioFocus$U6qv39PzVU45iERGbWQY4hVT_RE;

    invoke-direct {p1, v2}, Lcom/github/florent37/assets_audio_player/stopwhencall/-$$Lambda$StopWhenCallAudioFocus$U6qv39PzVU45iERGbWQY4hVT_RE;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v3, p1}, Landroidx/media/AudioFocusRequestCompat$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroidx/media/AudioFocusRequestCompat$Builder;

    .line 58
    invoke-virtual {v3}, Landroidx/media/AudioFocusRequestCompat$Builder;->build()Landroidx/media/AudioFocusRequestCompat;

    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->request:Landroidx/media/AudioFocusRequestCompat;

    .line 59
    iget-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->audioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->request:Landroidx/media/AudioFocusRequestCompat;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v3}, Landroidx/media/AudioManagerCompat;->requestAudioFocus(Landroid/media/AudioManager;Landroidx/media/AudioFocusRequestCompat;)I

    move-result p1

    .line 60
    iget-object v3, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->focusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 61
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v3

    const/4 v2, -0x3

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_3

    .line 66
    sget-object p1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->FORBIDDEN:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;

    goto :goto_2

    .line 64
    :cond_3
    sget-object p1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->AUTHORIZED_TO_PLAY:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;

    goto :goto_2

    .line 65
    :cond_4
    sget-object p1, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;->REDUCE_VOLUME:Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCall$AudioState;

    :goto_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 60
    monitor-exit v3

    throw p1
.end method

.method public stop()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->request:Landroidx/media/AudioFocusRequestCompat;

    if-nez v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/StopWhenCallAudioFocus;->audioManager:Landroid/media/AudioManager;

    invoke-static {v1, v0}, Landroidx/media/AudioManagerCompat;->abandonAudioFocusRequest(Landroid/media/AudioManager;Landroidx/media/AudioFocusRequestCompat;)I

    :goto_0
    return-void
.end method
