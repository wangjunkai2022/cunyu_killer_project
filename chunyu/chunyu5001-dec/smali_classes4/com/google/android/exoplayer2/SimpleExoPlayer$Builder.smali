.class public final Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private buildCalled:Z

.field private clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final context:Landroid/content/Context;

.field private detachSurfaceTimeoutMs:J

.field private foregroundModeTimeoutMs:J

.field private handleAudioBecomingNoisy:Z

.field private handleAudioFocus:Z

.field private livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

.field private loadControl:Lcom/google/android/exoplayer2/LoadControl;

.field private looper:Landroid/os/Looper;

.field private mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

.field private pauseAtEndOfMediaItems:Z

.field private priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field private releaseTimeoutMs:J

.field private final renderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

.field private seekBackIncrementMs:J

.field private seekForwardIncrementMs:J

.field private seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

.field private skipSilenceEnabled:Z

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

.field private useLazyPreparation:Z

.field private videoScalingMode:I

.field private wakeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 181
    new-instance v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V
    .locals 1

    .line 194
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 8

    .line 223
    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v4, p1, p3}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    new-instance v5, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 229
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->getSingletonInstance(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    move-result-object v6

    new-instance v7, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    sget-object p3, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {v7, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;-><init>(Lcom/google/android/exoplayer2/util/Clock;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 223
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSourceFactory;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSourceFactory;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->context:Landroid/content/Context;

    .line 257
    iput-object p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->renderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

    .line 258
    iput-object p3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    .line 259
    iput-object p4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 260
    iput-object p5, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    .line 261
    iput-object p6, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    .line 262
    iput-object p7, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 263
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->looper:Landroid/os/Looper;

    .line 264
    sget-object p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 p1, 0x0

    .line 265
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wakeMode:I

    const/4 p1, 0x1

    .line 266
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->videoScalingMode:I

    .line 267
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->useLazyPreparation:Z

    .line 268
    sget-object p1, Lcom/google/android/exoplayer2/SeekParameters;->DEFAULT:Lcom/google/android/exoplayer2/SeekParameters;

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    const-wide/16 p1, 0x1388

    .line 269
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->seekBackIncrementMs:J

    const-wide/16 p1, 0x3a98

    .line 270
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->seekForwardIncrementMs:J

    .line 271
    new-instance p1, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;->build()Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    .line 272
    sget-object p1, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const-wide/16 p1, 0x1f4

    .line 273
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->releaseTimeoutMs:J

    const-wide/16 p1, 0x7d0

    .line 274
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 1

    .line 207
    new-instance v0, Lcom/google/android/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/content/Context;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/RenderersFactory;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->renderersFactory:Lcom/google/android/exoplayer2/RenderersFactory;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/LoadControl;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->useLazyPreparation:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/SeekParameters;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->seekBackIncrementMs:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->releaseTimeoutMs:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/util/Clock;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->foregroundModeTimeoutMs:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->handleAudioFocus:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wakeMode:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->videoScalingMode:I

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->skipSilenceEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/os/Looper;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->looper:Landroid/os/Looper;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 2

    .line 623
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 624
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    .line 625
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)V

    return-object v0
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 288
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->foregroundModeTimeoutMs:J

    return-object p0
.end method

.method public setAnalyticsCollector(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 367
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object p0
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 400
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 401
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 402
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->handleAudioFocus:Z

    return-object p0
.end method

.method public setBandwidthMeter(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 339
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 340
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    return-object p0
.end method

.method public setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 612
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 613
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object p0
.end method

.method public setDetachSurfaceTimeoutMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 565
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 566
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    return-object p0
.end method

.method public setHandleAudioBecomingNoisy(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 442
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    return-object p0
.end method

.method public setLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 597
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 598
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    return-object p0
.end method

.method public setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 327
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->loadControl:Lcom/google/android/exoplayer2/LoadControl;

    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 354
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSourceFactory;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 314
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    return-object p0
.end method

.method public setPauseAtEndOfMediaItems(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 583
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 584
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    return-object p0
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 381
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 382
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object p0
.end method

.method public setReleaseTimeoutMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 549
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->releaseTimeoutMs:J

    return-object p0
.end method

.method public setSeekBackIncrementMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 515
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 516
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 517
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->seekBackIncrementMs:J

    return-object p0
.end method

.method public setSeekForwardIncrementMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 530
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 531
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 532
    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->seekForwardIncrementMs:J

    return-object p0
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 501
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 502
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->seekParameters:Lcom/google/android/exoplayer2/SeekParameters;

    return-object p0
.end method

.method public setSkipSilenceEnabled(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 455
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->skipSilenceEnabled:Z

    return-object p0
.end method

.method public setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 301
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->trackSelector:Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    return-object p0
.end method

.method public setUseLazyPreparation(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 488
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 489
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->useLazyPreparation:Z

    return-object p0
.end method

.method public setVideoScalingMode(I)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 471
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 472
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->videoScalingMode:I

    return-object p0
.end method

.method public setWakeMode(I)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 425
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wakeMode:I

    return-object p0
.end method
