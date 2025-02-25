.class public final Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;
.super Ljava/lang/Object;
.source "AssetsAudioPlayerPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;",
        "",
        "()V",
        "displayLogs",
        "",
        "getDisplayLogs",
        "()Z",
        "setDisplayLogs",
        "(Z)V",
        "instance",
        "Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;",
        "getInstance",
        "()Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;",
        "setInstance",
        "(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;)V",
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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDisplayLogs()Z
    .locals 1

    .line 49
    invoke-static {}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->access$getDisplayLogs$cp()Z

    move-result v0

    return v0
.end method

.method public final getInstance()Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;
    .locals 1

    .line 48
    invoke-static {}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->access$getInstance$cp()Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;

    move-result-object v0

    return-object v0
.end method

.method public final setDisplayLogs(Z)V
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->access$setDisplayLogs$cp(Z)V

    return-void
.end method

.method public final setInstance(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;)V
    .locals 0

    .line 48
    invoke-static {p1}, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;->access$setInstance$cp(Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPlugin;)V

    return-void
.end method
