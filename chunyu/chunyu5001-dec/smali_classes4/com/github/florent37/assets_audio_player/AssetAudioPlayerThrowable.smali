.class public abstract Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;
.super Ljava/lang/Throwable;
.source "Errors.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$NetworkError;,
        Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$UnreachableException;,
        Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$PlayerError;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0003\n\u000b\u000cB\u0017\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u0082\u0001\u0003\r\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;",
        "",
        "type",
        "",
        "t",
        "(Ljava/lang/String;Ljava/lang/Throwable;)V",
        "getT",
        "()Ljava/lang/Throwable;",
        "getType",
        "()Ljava/lang/String;",
        "NetworkError",
        "PlayerError",
        "UnreachableException",
        "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$NetworkError;",
        "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$UnreachableException;",
        "Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable$PlayerError;",
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
.field private final t:Ljava/lang/Throwable;

.field private final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;->t:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getT()Ljava/lang/Throwable;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;->t:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/AssetAudioPlayerThrowable;->type:Ljava/lang/String;

    return-object v0
.end method
