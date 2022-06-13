.class public final Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;
.super Ljava/lang/Object;
.source "AssetsAudioPlayerPlugin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u001f\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\"\u0014\u0010\u0006\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0003\"\u0014\u0010\u0008\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0003\"\u0014\u0010\n\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0003\"\u0014\u0010\u000c\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0003\"\u0014\u0010\u000e\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0003\"\u0014\u0010\u0010\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0003\"\u0014\u0010\u0012\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0003\"\u0014\u0010\u0014\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0003\"\u0014\u0010\u0016\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0003\"\u0014\u0010\u0018\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0003\"\u0014\u0010\u001a\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0003\"\u0014\u0010\u001c\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0003\"\u0014\u0010\u001e\u001a\u00020\u0001X\u0080D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0003\u00a8\u0006 "
    }
    d2 = {
        "METHOD_AUDIO_SESSION_ID",
        "",
        "getMETHOD_AUDIO_SESSION_ID",
        "()Ljava/lang/String;",
        "METHOD_CURRENT",
        "getMETHOD_CURRENT",
        "METHOD_ERROR",
        "getMETHOD_ERROR",
        "METHOD_FINISHED",
        "getMETHOD_FINISHED",
        "METHOD_FORWARD_REWIND_SPEED",
        "getMETHOD_FORWARD_REWIND_SPEED",
        "METHOD_IS_BUFFERING",
        "getMETHOD_IS_BUFFERING",
        "METHOD_IS_PLAYING",
        "getMETHOD_IS_PLAYING",
        "METHOD_NEXT",
        "getMETHOD_NEXT",
        "METHOD_NOTIFICATION_STOP",
        "getMETHOD_NOTIFICATION_STOP",
        "METHOD_PITCH",
        "getMETHOD_PITCH",
        "METHOD_PLAY_OR_PAUSE",
        "getMETHOD_PLAY_OR_PAUSE",
        "METHOD_PLAY_SPEED",
        "getMETHOD_PLAY_SPEED",
        "METHOD_POSITION",
        "getMETHOD_POSITION",
        "METHOD_PREV",
        "getMETHOD_PREV",
        "METHOD_VOLUME",
        "getMETHOD_VOLUME",
        "assets_audio_player_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final METHOD_AUDIO_SESSION_ID:Ljava/lang/String; = "player.audioSessionId"

.field private static final METHOD_CURRENT:Ljava/lang/String; = "player.current"

.field private static final METHOD_ERROR:Ljava/lang/String; = "player.error"

.field private static final METHOD_FINISHED:Ljava/lang/String; = "player.finished"

.field private static final METHOD_FORWARD_REWIND_SPEED:Ljava/lang/String; = "player.forwardRewind"

.field private static final METHOD_IS_BUFFERING:Ljava/lang/String; = "player.isBuffering"

.field private static final METHOD_IS_PLAYING:Ljava/lang/String; = "player.isPlaying"

.field private static final METHOD_NEXT:Ljava/lang/String; = "player.next"

.field private static final METHOD_NOTIFICATION_STOP:Ljava/lang/String; = "player.stop"

.field private static final METHOD_PITCH:Ljava/lang/String; = "player.pitch"

.field private static final METHOD_PLAY_OR_PAUSE:Ljava/lang/String; = "player.playOrPause"

.field private static final METHOD_PLAY_SPEED:Ljava/lang/String; = "player.playSpeed"

.field private static final METHOD_POSITION:Ljava/lang/String; = "player.position"

.field private static final METHOD_PREV:Ljava/lang/String; = "player.prev"

.field private static final METHOD_VOLUME:Ljava/lang/String; = "player.volume"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getMETHOD_AUDIO_SESSION_ID()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_AUDIO_SESSION_ID:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMETHOD_CURRENT()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_CURRENT:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMETHOD_ERROR()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_ERROR:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMETHOD_FINISHED()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_FINISHED:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMETHOD_FORWARD_REWIND_SPEED()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_FORWARD_REWIND_SPEED:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMETHOD_IS_BUFFERING()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_IS_BUFFERING:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMETHOD_IS_PLAYING()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_IS_PLAYING:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMETHOD_NEXT()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_NEXT:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMETHOD_NOTIFICATION_STOP()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_NOTIFICATION_STOP:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMETHOD_PITCH()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_PITCH:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMETHOD_PLAY_OR_PAUSE()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_PLAY_OR_PAUSE:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMETHOD_PLAY_SPEED()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_PLAY_SPEED:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMETHOD_POSITION()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_POSITION:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMETHOD_PREV()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_PREV:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMETHOD_VOLUME()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/github/florent37/assets_audio_player/AssetsAudioPlayerPluginKt;->METHOD_VOLUME:Ljava/lang/String;

    return-object v0
.end method
