.class final Lio/flutter/plugins/videoplayer/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# static fields
.field private static final FORMAT_DASH:Ljava/lang/String; = "dash"

.field private static final FORMAT_HLS:Ljava/lang/String; = "hls"

.field private static final FORMAT_OTHER:Ljava/lang/String; = "other"

.field private static final FORMAT_SS:Ljava/lang/String; = "ss"


# instance fields
.field private final eventChannel:Lio/flutter/plugin/common/EventChannel;

.field private eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

.field private exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private isInitialized:Z

.field private final options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

.field private surface:Landroid/view/Surface;

.field private final textureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugins/videoplayer/VideoPlayerOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/flutter/plugin/common/EventChannel;",
            "Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugins/videoplayer/VideoPlayerOptions;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lio/flutter/plugins/videoplayer/QueuingEventSink;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    .line 69
    iput-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventChannel:Lio/flutter/plugin/common/EventChannel;

    .line 70
    iput-object p3, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->textureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 71
    iput-object p7, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    .line 73
    new-instance p7, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    invoke-direct {p7, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p7}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p7

    iput-object p7, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 75
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 78
    invoke-static {p4}, Lio/flutter/plugins/videoplayer/VideoPlayer;->isHTTP(Landroid/net/Uri;)Z

    move-result p7

    const-string v0, "ExoPlayer"

    if-eqz p7, :cond_0

    .line 79
    new-instance p7, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {p7}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    .line 81
    invoke-virtual {p7, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p7

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p7, v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p7

    if-eqz p6, :cond_1

    .line 84
    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    invoke-virtual {p7, p6}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    goto :goto_0

    .line 89
    :cond_0
    new-instance p7, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {p7, p1, v0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    :cond_1
    :goto_0
    invoke-direct {p0, p4, p7, p5, p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->buildMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    .line 93
    iget-object p4, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p4, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 94
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare()V

    .line 96
    invoke-direct {p0, p2, p3}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setupVideoPlayer(Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugins/videoplayer/VideoPlayer;)Lio/flutter/plugins/videoplayer/QueuingEventSink;
    .locals 0

    .line 41
    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    return-object p0
.end method

.method static synthetic access$100(Lio/flutter/plugins/videoplayer/VideoPlayer;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    return p0
.end method

.method static synthetic access$102(Lio/flutter/plugins/videoplayer/VideoPlayer;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    return p1
.end method

.method static synthetic access$200(Lio/flutter/plugins/videoplayer/VideoPlayer;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->sendInitialized()V

    return-void
.end method

.method private buildMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p3, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    .line 113
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0xe60

    const/4 v7, 0x3

    if-eq v5, v6, :cond_4

    const v6, 0x193ef

    if-eq v5, v6, :cond_3

    const v6, 0x2eef92

    if-eq v5, v6, :cond_2

    const v6, 0x6527f10

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "other"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    move p3, v7

    goto :goto_1

    :cond_2
    const-string v5, "dash"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    move p3, v4

    goto :goto_1

    :cond_3
    const-string v5, "hls"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    move p3, v3

    goto :goto_1

    :cond_4
    const-string v5, "ss"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    move p3, v0

    goto :goto_1

    :cond_5
    :goto_0
    move p3, v2

    :goto_1
    if-eqz p3, :cond_8

    if-eq p3, v4, :cond_9

    if-eq p3, v3, :cond_7

    if-eq p3, v7, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_2

    :cond_8
    move v0, v4

    :cond_9
    :goto_2
    const/4 p3, 0x0

    if-eqz v0, :cond_d

    if-eq v0, v4, :cond_c

    if-eq v0, v3, :cond_b

    if-ne v0, v1, :cond_a

    .line 146
    new-instance p3, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {p3, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 147
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p1

    return-object p1

    .line 150
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_b
    new-instance p3, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {p3, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 144
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1

    .line 133
    :cond_c
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    new-instance v1, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {v2, p4, p3, p2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 136
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1

    .line 138
    :cond_d
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance v2, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {v2, p4, p3, p2}, Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 141
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method private static isHTTP(Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 100
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v1, "http"

    .line 104
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private sendInitialized()V
    .locals 5

    .line 268
    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    if-eqz v0, :cond_3

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "initialized"

    .line 270
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 275
    iget v2, v1, Lcom/google/android/exoplayer2/Format;->width:I

    .line 276
    iget v3, v1, Lcom/google/android/exoplayer2/Format;->height:I

    .line 277
    iget v1, v1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_0

    const/16 v4, 0x10e

    if-ne v1, v4, :cond_1

    .line 280
    :cond_0
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget v2, v1, Lcom/google/android/exoplayer2/Format;->height:I

    .line 281
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget v3, v1, Lcom/google/android/exoplayer2/Format;->width:I

    .line 283
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_2
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->success(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private static setAudioAttributes(Lcom/google/android/exoplayer2/SimpleExoPlayer;Z)V
    .locals 2

    .line 229
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    .line 230
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setContentType(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    .line 229
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    return-void
.end method

.method private setupVideoPlayer(Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;)V
    .locals 1

    .line 157
    new-instance v0, Lio/flutter/plugins/videoplayer/VideoPlayer$1;

    invoke-direct {v0, p0}, Lio/flutter/plugins/videoplayer/VideoPlayer$1;-><init>(Lio/flutter/plugins/videoplayer/VideoPlayer;)V

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 170
    new-instance p1, Landroid/view/Surface;

    invoke-interface {p2}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->surface:Landroid/view/Surface;

    .line 171
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 172
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    iget-boolean p2, p2, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;->mixWithOthers:Z

    invoke-static {p1, p2}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/SimpleExoPlayer;Z)V

    .line 174
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    new-instance p2, Lio/flutter/plugins/videoplayer/VideoPlayer$2;

    invoke-direct {p2, p0}, Lio/flutter/plugins/videoplayer/VideoPlayer$2;-><init>(Lio/flutter/plugins/videoplayer/VideoPlayer;)V

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .line 291
    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->stop()V

    .line 294
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->textureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->release()V

    .line 295
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventChannel:Lio/flutter/plugin/common/EventChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 296
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 299
    :cond_1
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->release()V

    :cond_2
    return-void
.end method

.method getPosition()J
    .locals 2

    .line 263
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method pause()V
    .locals 2

    .line 238
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method play()V
    .locals 2

    .line 234
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method seekTo(I)V
    .locals 3

    .line 259
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    return-void
.end method

.method sendBufferingUpdate()V
    .locals 4

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "bufferingUpdate"

    .line 220
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Number;

    const/4 v2, 0x0

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getBufferedPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 223
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "values"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    invoke-virtual {v1, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->success(Ljava/lang/Object;)V

    return-void
.end method

.method setLooping(Z)V
    .locals 1

    .line 242
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    return-void
.end method

.method setPlaybackSpeed(D)V
    .locals 1

    .line 253
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    double-to-float p1, p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    .line 255
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method setVolume(D)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 246
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-float p1, p1

    .line 247
    iget-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    return-void
.end method
