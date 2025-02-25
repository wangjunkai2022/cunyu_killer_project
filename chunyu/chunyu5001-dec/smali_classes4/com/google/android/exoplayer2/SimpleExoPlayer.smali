.class public Lcom/google/android/exoplayer2/SimpleExoPlayer;
.super Lcom/google/android/exoplayer2/BasePlayer;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer;
.implements Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$VideoComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$TextComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$MetadataComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$DeviceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;,
        Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;,
        Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_DETACH_SURFACE_TIMEOUT_MS:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "SimpleExoPlayer"


# instance fields
.field private final analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

.field private final applicationContext:Landroid/content/Context;

.field private audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

.field private final audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

.field private audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private final audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

.field private audioFormat:Lcom/google/android/exoplayer2/Format;

.field private final audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/audio/AudioListener;",
            ">;"
        }
    .end annotation
.end field

.field private audioSessionId:I

.field private audioVolume:F

.field private cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

.field private final componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

.field private final constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private currentCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final detachSurfaceTimeoutMs:J

.field private deviceInfo:Lcom/google/android/exoplayer2/device/DeviceInfo;

.field private final deviceListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/device/DeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final frameMetadataListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;

.field private hasNotifiedFullWrongThreadWarning:Z

.field private isPriorityTaskManagerRegistered:Z

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private final metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/metadata/MetadataOutput;",
            ">;"
        }
    .end annotation
.end field

.field private ownedSurface:Landroid/view/Surface;

.field private final player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

.field private playerReleased:Z

.field private priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field protected final renderers:[Lcom/google/android/exoplayer2/Renderer;

.field private skipSilenceEnabled:Z

.field private sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

.field private final streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

.field private surfaceHeight:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceHolderSurfaceIsVideoOutput:Z

.field private surfaceWidth:I

.field private final textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/text/TextOutput;",
            ">;"
        }
    .end annotation
.end field

.field private textureView:Landroid/view/TextureView;

.field private throwsWhenUsingWrongThread:Z

.field private videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field private videoFormat:Lcom/google/android/exoplayer2/Format;

.field private videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private final videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplayer2/video/VideoListener;",
            ">;"
        }
    .end annotation
.end field

.field private videoOutput:Ljava/lang/Object;

.field private videoScalingMode:I

.field private videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

.field private final wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

.field private final wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSourceFactory;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;ZLcom/google/android/exoplayer2/util/Clock;Landroid/os/Looper;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 693
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V

    .line 695
    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object p1

    .line 696
    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSourceFactory;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object p1

    .line 697
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object p1

    .line 698
    invoke-virtual {p1, p6}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setBandwidthMeter(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object p1

    .line 699
    invoke-virtual {p1, p7}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setAnalyticsCollector(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object p1

    .line 700
    invoke-virtual {p1, p8}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setUseLazyPreparation(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object p1

    .line 701
    invoke-virtual {p1, p9}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object p1

    .line 702
    invoke-virtual {p1, p10}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;

    move-result-object p1

    .line 693
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)V
    .locals 32

    move-object/from16 v15, p0

    .line 706
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/BasePlayer;-><init>()V

    .line 707
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 709
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->applicationContext:Landroid/content/Context;

    .line 710
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$100(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 711
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$200(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 712
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$300(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    .line 713
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$400(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)I

    move-result v0

    iput v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 714
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$500(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z

    move-result v0

    iput-boolean v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    .line 715
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$600(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J

    move-result-wide v0

    iput-wide v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->detachSurfaceTimeoutMs:J

    .line 716
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    const/4 v14, 0x0

    invoke-direct {v0, v15, v14}, Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/SimpleExoPlayer$1;)V

    iput-object v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    .line 717
    new-instance v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;

    invoke-direct {v0, v14}, Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;-><init>(Lcom/google/android/exoplayer2/SimpleExoPlayer$1;)V

    iput-object v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->frameMetadataListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;

    .line 718
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 719
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 720
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 721
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 722
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->deviceListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 723
    new-instance v0, Landroid/os/Handler;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$900(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 725
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/RenderersFactory;

    move-result-object v1

    iget-object v3, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    iget-object v4, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    iget-object v5, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    iget-object v6, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object v2, v0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/RenderersFactory;->createRenderers(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/text/TextOutput;Lcom/google/android/exoplayer2/metadata/MetadataOutput;)[Lcom/google/android/exoplayer2/Renderer;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 733
    iput v1, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 734
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v12, 0x0

    if-ge v1, v2, :cond_0

    .line 735
    invoke-direct {v15, v12}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->initializeKeepSessionIdAudioTrack(I)I

    move-result v1

    iput v1, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    goto :goto_0

    .line 737
    :cond_0
    iget-object v1, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/exoplayer2/C;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result v1

    iput v1, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    .line 739
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    const/4 v13, 0x1

    .line 740
    iput-boolean v13, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->throwsWhenUsingWrongThread:Z

    .line 743
    new-instance v1, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    const/16 v3, 0x8

    new-array v3, v3, [I

    const/16 v4, 0x14

    aput v4, v3, v12

    aput v2, v3, v13

    const/16 v2, 0x16

    const/4 v10, 0x2

    aput v2, v3, v10

    const/16 v2, 0x17

    const/4 v11, 0x3

    aput v2, v3, v11

    const/16 v2, 0x18

    const/4 v9, 0x4

    aput v2, v3, v9

    const/4 v2, 0x5

    const/16 v4, 0x19

    aput v4, v3, v2

    const/16 v2, 0x1a

    const/4 v8, 0x6

    aput v2, v3, v8

    const/16 v2, 0x1b

    const/4 v7, 0x7

    aput v2, v3, v7

    .line 745
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addAll([I)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v1

    .line 754
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v21

    .line 755
    new-instance v6, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    iget-object v2, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    .line 758
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1100(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-result-object v3

    .line 759
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1200(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    move-result-object v4

    .line 760
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1300(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/LoadControl;

    move-result-object v5

    .line 761
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1400(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    move-result-object v16

    iget-object v1, v15, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    .line 763
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1500(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z

    move-result v17

    .line 764
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1600(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/SeekParameters;

    move-result-object v18

    .line 765
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1700(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J

    move-result-wide v19

    .line 766
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1800(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J

    move-result-wide v22

    .line 767
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$1900(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;

    move-result-object v24

    .line 768
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J

    move-result-wide v25

    .line 769
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2100(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z

    move-result v27

    .line 770
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2200(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/util/Clock;

    move-result-object v28

    .line 771
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$900(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/os/Looper;

    move-result-object v29
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v30, v1

    move-object v1, v6

    move-object/from16 v31, v0

    move-object v0, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v30

    move/from16 v8, v17

    move-object/from16 v9, v18

    move-wide/from16 v10, v19

    move/from16 v30, v12

    move-wide/from16 v12, v22

    move-object/from16 v22, v14

    move-object/from16 v14, v24

    move-wide/from16 v15, v25

    move/from16 v17, v27

    move-object/from16 v18, v28

    move-object/from16 v19, v29

    move-object/from16 v20, p0

    :try_start_1
    invoke-direct/range {v1 .. v21}, Lcom/google/android/exoplayer2/ExoPlayerImpl;-><init>([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSourceFactory;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;ZLcom/google/android/exoplayer2/SeekParameters;JJLcom/google/android/exoplayer2/LivePlaybackSpeedControl;JZLcom/google/android/exoplayer2/util/Clock;Landroid/os/Looper;Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Commands;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 774
    iget-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    iget-object v2, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    .line 775
    iget-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    iget-object v2, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V

    .line 776
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2300(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 777
    iget-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2300(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->experimentalSetForegroundModeTimeoutMs(J)V

    .line 780
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    .line 781
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    move-object/from16 v4, v31

    invoke-direct {v0, v2, v4, v3}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    .line 782
    iget-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2400(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 783
    new-instance v0, Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-direct {v0, v2, v4, v3}, Lcom/google/android/exoplayer2/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    .line 784
    iget-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2500(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v14, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    goto :goto_1

    :cond_2
    move-object/from16 v14, v22

    :goto_1
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 785
    new-instance v0, Lcom/google/android/exoplayer2/StreamVolumeManager;

    .line 786
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-direct {v0, v2, v4, v3}, Lcom/google/android/exoplayer2/StreamVolumeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    .line 787
    iget-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    iget-object v2, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setStreamType(I)V

    .line 788
    new-instance v0, Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/WakeLockManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    .line 789
    iget-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2600(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    move/from16 v2, v30

    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/WakeLockManager;->setEnabled(Z)V

    .line 790
    new-instance v0, Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/WifiLockManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    .line 791
    iget-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$2600(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    move/from16 v2, v30

    :goto_3
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/WifiLockManager;->setEnabled(Z)V

    .line 792
    iget-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->createDeviceInfo(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/device/DeviceInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->deviceInfo:Lcom/google/android/exoplayer2/device/DeviceInfo;

    .line 793
    sget-object v0, Lcom/google/android/exoplayer2/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplayer2/video/VideoSize;

    iput-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    .line 795
    iget v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x66

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    .line 796
    iget v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    .line 797
    iget-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v2, 0x3

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    .line 798
    iget v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    const/16 v0, 0x65

    .line 799
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v4, v0, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    .line 800
    iget-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->frameMetadataListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;

    const/4 v2, 0x6

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    .line 802
    iget-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->frameMetadataListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 805
    iget-object v0, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v15

    :goto_4
    iget-object v2, v1, Lcom/google/android/exoplayer2/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 806
    throw v0
.end method

.method static synthetic access$2702(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoFormat:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/video/VideoSize;)Lcom/google/android/exoplayer2/video/VideoSize;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/lang/Object;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoOutput:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFormat:Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    return p0
.end method

.method static synthetic access$3502(Lcom/google/android/exoplayer2/SimpleExoPlayer;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->notifySkipSilenceEnabledChanged()V

    return-void
.end method

.method static synthetic access$3702(Lcom/google/android/exoplayer2/SimpleExoPlayer;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/ExoPlayerImpl;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolderSurfaceIsVideoOutput:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/google/android/exoplayer2/SimpleExoPlayer;Ljava/lang/Object;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoOutputInternal(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/android/exoplayer2/SimpleExoPlayer;II)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/android/exoplayer2/SimpleExoPlayer;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendVolumeToRenderers()V

    return-void
.end method

.method static synthetic access$4600(ZI)I
    .locals 0

    .line 94
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReadyChangeReason(ZI)I

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lcom/google/android/exoplayer2/SimpleExoPlayer;ZII)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->updatePlayWhenReady(ZII)V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/StreamVolumeManager;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/device/DeviceInfo;
    .locals 0

    .line 94
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->createDeviceInfo(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/device/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5000(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/device/DeviceInfo;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->deviceInfo:Lcom/google/android/exoplayer2/device/DeviceInfo;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/device/DeviceInfo;)Lcom/google/android/exoplayer2/device/DeviceInfo;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->deviceInfo:Lcom/google/android/exoplayer2/device/DeviceInfo;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->deviceListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    return p0
.end method

.method static synthetic access$5302(Lcom/google/android/exoplayer2/SimpleExoPlayer;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/google/android/exoplayer2/SimpleExoPlayer;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->updateWakeAndWifiLock()V

    return-void
.end method

.method private static createDeviceInfo(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/device/DeviceInfo;
    .locals 3

    .line 2164
    new-instance v0, Lcom/google/android/exoplayer2/device/DeviceInfo;

    .line 2166
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMinVolume()I

    move-result v1

    .line 2167
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getMaxVolume()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/exoplayer2/device/DeviceInfo;-><init>(III)V

    return-object v0
.end method

.method private static getPlayWhenReadyChangeReason(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private initializeKeepSessionIdAudioTrack(I)I
    .locals 9

    .line 2140
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2141
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2142
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 2143
    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 2145
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    const/16 v3, 0xfa0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 2150
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v7, 0x0

    move-object v1, v0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 2160
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    return p1
.end method

.method private maybeNotifySurfaceSizeChanged(II)V
    .locals 2

    .line 2045
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHeight:I

    if-eq p2, v0, :cond_1

    .line 2046
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceWidth:I

    .line 2047
    iput p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHeight:I

    .line 2048
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onSurfaceSizeChanged(II)V

    .line 2049
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/VideoListener;

    .line 2050
    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer2/video/VideoListener;->onSurfaceSizeChanged(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifySkipSilenceEnabledChanged()V
    .locals 3

    .line 2062
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onSkipSilenceEnabledChanged(Z)V

    .line 2063
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioListener;

    .line 2064
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/audio/AudioListener;->onSkipSilenceEnabledChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .line 1948
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->frameMetadataListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;

    .line 1950
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/16 v2, 0x2710

    .line 1951
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1952
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1953
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    .line 1954
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->removeVideoSurfaceListener(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    .line 1955
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 1957
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 1958
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    if-eq v0, v2, :cond_1

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 1959
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1961
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1963
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    .line 1965
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 1966
    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1967
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method private sendRendererMessage(IILjava/lang/Object;)V
    .locals 5

    .line 2122
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2123
    invoke-interface {v3}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 2124
    iget-object v4, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendVolumeToRenderers()V
    .locals 3

    .line 2056
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->getVolumeMultiplier()F

    move-result v1

    mul-float/2addr v0, v1

    .line 2057
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x0

    .line 2032
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 2033
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 2034
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2035
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2036
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2037
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 2038
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_0

    .line 2040
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    :goto_0
    return-void
.end method

.method private setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1972
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1973
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1974
    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownedSurface:Landroid/view/Surface;

    return-void
.end method

.method private setVideoOutputInternal(Ljava/lang/Object;)V
    .locals 9

    .line 1980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1981
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->renderers:[Lcom/google/android/exoplayer2/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 1982
    invoke-interface {v6}, Lcom/google/android/exoplayer2/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 1983
    iget-object v7, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1985
    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v6

    .line 1986
    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    .line 1987
    invoke-virtual {v5, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    .line 1988
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v5

    .line 1983
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1992
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoOutput:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 1996
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/PlayerMessage;

    .line 1997
    iget-wide v6, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->detachSurfaceTimeoutMs:J

    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer2/PlayerMessage;->blockUntilDelivered(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2000
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    move v5, v3

    .line 2004
    :catch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoOutput:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownedSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_4

    .line 2006
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 2007
    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownedSurface:Landroid/view/Surface;

    goto :goto_2

    :cond_3
    move v5, v3

    .line 2010
    :cond_4
    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoOutput:Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 2012
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    new-instance v0, Lcom/google/android/exoplayer2/ExoTimeoutException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ExoTimeoutException;-><init>(I)V

    const/16 v1, 0x3eb

    .line 2014
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    .line 2012
    invoke-virtual {p1, v3, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stop(ZLcom/google/android/exoplayer2/ExoPlaybackException;)V

    :cond_5
    return-void
.end method

.method private updatePlayWhenReady(ZII)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    if-eq p2, v1, :cond_1

    move v0, v1

    .line 2078
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPlayWhenReady(ZII)V

    return-void
.end method

.method private updateWakeAndWifiLock()V
    .locals 5

    .line 2082
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2097
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2086
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->experimentalIsSleepingForOffload()Z

    move-result v0

    .line 2087
    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/WakeLockManager;->setStayAwake(Z)V

    .line 2089
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/WifiLockManager;->setStayAwake(Z)V

    goto :goto_2

    .line 2093
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/WakeLockManager;->setStayAwake(Z)V

    .line 2094
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/WifiLockManager;->setStayAwake(Z)V

    :goto_2
    return-void
.end method

.method private verifyApplicationThread()V
    .locals 4

    .line 2104
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->blockUninterruptible()V

    .line 2105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2112
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    .line 2107
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2113
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->throwsWhenUsingWrongThread:Z

    if-nez v1, :cond_1

    .line 2116
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->hasNotifiedFullWrongThreadWarning:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v3, "SimpleExoPlayer"

    invoke-static {v3, v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2117
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->hasNotifiedFullWrongThreadWarning:Z

    goto :goto_1

    .line 2114
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .locals 1

    .line 1140
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->addListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

.method public addAudioListener(Lcom/google/android/exoplayer2/audio/AudioListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1010
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V

    return-void
.end method

.method public addDeviceListener(Lcom/google/android/exoplayer2/device/DeviceListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1877
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->deviceListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1352
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1338
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addAudioListener(Lcom/google/android/exoplayer2/audio/AudioListener;)V

    .line 1340
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 1341
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    .line 1342
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addMetadataOutput(Lcom/google/android/exoplayer2/metadata/MetadataOutput;)V

    .line 1343
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addDeviceListener(Lcom/google/android/exoplayer2/device/DeviceListener;)V

    .line 1345
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1495
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1496
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    .line 1507
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1508
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    .line 1501
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1502
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public addMediaSources(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 1519
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1520
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 1513
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1514
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public addMetadataOutput(Lcom/google/android/exoplayer2/metadata/MetadataOutput;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1308
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1287
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1224
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAuxEffectInfo()V
    .locals 3

    .line 1089
    new-instance v0, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/AuxEffectInfo;-><init>(IF)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    return-void
.end method

.method public clearCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
    .locals 1

    .line 1272
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1273
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eq v0, p1, :cond_0

    return-void

    .line 1276
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->frameMetadataListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;

    .line 1277
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    const/4 v0, 0x7

    .line 1278
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    const/4 v0, 0x0

    .line 1279
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 1280
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method

.method public clearVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
    .locals 1

    .line 1248
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1249
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eq v0, p1, :cond_0

    return-void

    .line 1252
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->frameMetadataListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;

    .line 1253
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    const/4 v0, 0x6

    .line 1254
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    const/4 v0, 0x0

    .line 1255
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 1256
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 879
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 880
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    const/4 v0, 0x0

    .line 881
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoOutputInternal(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 882
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 887
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    if-eqz p1, :cond_0

    .line 888
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoOutput:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 926
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    if-eqz p1, :cond_0

    .line 927
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 928
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 957
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 958
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 988
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    if-eqz p1, :cond_0

    .line 989
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 1

    .line 1691
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1692
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    return-object p1
.end method

.method public decreaseDeviceVolume()V
    .locals 1

    .line 1920
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1921
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->decreaseVolume()V

    return-void
.end method

.method public experimentalIsSleepingForOffload()Z
    .locals 1

    .line 817
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 818
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->experimentalIsSleepingForOffload()Z

    move-result v0

    return v0
.end method

.method public experimentalSetOffloadSchedulingEnabled(Z)V
    .locals 1

    .line 811
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 812
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->experimentalSetOffloadSchedulingEnabled(Z)V

    return-void
.end method

.method public getAnalyticsCollector()Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    return-object v0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 1328
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    return-object v0
.end method

.method public getAudioComponent()Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;
    .locals 0

    return-object p0
.end method

.method public getAudioDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getAudioFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1078
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    return v0
.end method

.method public getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;
    .locals 1

    .line 1406
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1407
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1780
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1781
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getClock()Lcom/google/android/exoplayer2/util/Clock;
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getClock()Lcom/google/android/exoplayer2/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 1816
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1817
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 1810
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1811
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1798
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1799
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 1804
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1805
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentCues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    .line 1300
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1301
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 1756
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1757
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1774
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1775
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentStaticMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1729
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1730
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentStaticMetadata()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 1750
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1751
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 1716
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1717
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    .line 1722
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1723
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .line 1762
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1763
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDeviceComponent()Lcom/google/android/exoplayer2/ExoPlayer$DeviceComponent;
    .locals 0

    return-object p0
.end method

.method public getDeviceInfo()Lcom/google/android/exoplayer2/device/DeviceInfo;
    .locals 1

    .line 1890
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1891
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->deviceInfo:Lcom/google/android/exoplayer2/device/DeviceInfo;

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 1

    .line 1896
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1897
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->getVolume()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1768
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1769
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()I
    .locals 1

    .line 1619
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1620
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getMaxSeekToPreviousPosition()I

    move-result v0

    return v0
.end method

.method public getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataComponent()Lcom/google/android/exoplayer2/ExoPlayer$MetadataComponent;
    .locals 0

    return-object p0
.end method

.method public getPauseAtEndOfMediaItems()Z
    .locals 1

    .line 1564
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1565
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPauseAtEndOfMediaItems()Z

    move-result v0

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 1552
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1553
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 1631
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1632
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 1378
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1379
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 1385
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1386
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackSuppressionReason()I

    move-result v0

    return v0
.end method

.method public getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 1392
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1393
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 1

    .line 1740
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getRendererCount()I
    .locals 1

    .line 1697
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1698
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRendererCount()I

    move-result v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1

    .line 1703
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1704
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRendererType(I)I

    move-result p1

    return p1
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1570
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1571
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 1607
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1608
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getSeekBackIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 1613
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1614
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getSeekForwardIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekParameters()Lcom/google/android/exoplayer2/SeekParameters;
    .locals 1

    .line 1643
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1644
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getSeekParameters()Lcom/google/android/exoplayer2/SeekParameters;

    move-result-object v0

    return-object v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 1588
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1589
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getShuffleModeEnabled()Z

    move-result v0

    return v0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 1

    .line 1114
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    return v0
.end method

.method public getTextComponent()Lcom/google/android/exoplayer2/ExoPlayer$TextComponent;
    .locals 0

    return-object p0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 1786
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1787
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelector()Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 1

    .line 1710
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1711
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-result-object v0

    return-object v0
.end method

.method public getVideoComponent()Lcom/google/android/exoplayer2/ExoPlayer$VideoComponent;
    .locals 0

    return-object p0
.end method

.method public getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 1

    .line 1211
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoDecoderCounters:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-object v0
.end method

.method public getVideoFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoFormat:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    .line 869
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    return v0
.end method

.method public getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 1109
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 1

    .line 1914
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1915
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->increaseVolume()V

    return-void
.end method

.method public isDeviceMuted()Z
    .locals 1

    .line 1902
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1903
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->isMuted()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1594
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1595
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 1792
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1793
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method public moveMediaItems(III)V
    .locals 1

    .line 1525
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1526
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->moveMediaItems(III)V

    return-void
.end method

.method public prepare()V
    .locals 3

    .line 1412
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1413
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    .line 1415
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v1

    .line 1417
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReadyChangeReason(ZI)I

    move-result v2

    .line 1416
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->updatePlayWhenReady(ZII)V

    .line 1418
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->prepare()V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1428
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1438
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1439
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setMediaSources(Ljava/util/List;Z)V

    .line 1440
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare()V

    return-void
.end method

.method public release()V
    .locals 3

    .line 1664
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1665
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 1666
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 1667
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 1670
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/StreamVolumeManager;->release()V

    .line 1671
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/WakeLockManager;->setStayAwake(Z)V

    .line 1672
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/WifiLockManager;->setStayAwake(Z)V

    .line 1673
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->release()V

    .line 1674
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->release()V

    .line 1675
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->release()V

    .line 1676
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 1677
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 1678
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1679
    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->ownedSurface:Landroid/view/Surface;

    .line 1681
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    if-eqz v0, :cond_2

    .line 1682
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 1683
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    .line 1685
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    const/4 v0, 0x1

    .line 1686
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->playerReleased:Z

    return-void
.end method

.method public removeAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .locals 1

    .line 1151
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->removeListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

.method public removeAudioListener(Lcom/google/android/exoplayer2/audio/AudioListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1018
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V

    return-void
.end method

.method public removeDeviceListener(Lcom/google/android/exoplayer2/device/DeviceListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1885
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->deviceListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1372
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 1358
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeAudioListener(Lcom/google/android/exoplayer2/audio/AudioListener;)V

    .line 1360
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V

    .line 1361
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V

    .line 1362
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeMetadataOutput(Lcom/google/android/exoplayer2/metadata/MetadataOutput;)V

    .line 1363
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeDeviceListener(Lcom/google/android/exoplayer2/device/DeviceListener;)V

    .line 1365
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method

.method public removeMediaItems(II)V
    .locals 1

    .line 1531
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1532
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeMediaItems(II)V

    return-void
.end method

.method public removeMetadataOutput(Lcom/google/android/exoplayer2/metadata/MetadataOutput;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1316
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTextOutput(Lcom/google/android/exoplayer2/text/TextOutput;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1295
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeVideoListener(Lcom/google/android/exoplayer2/video/VideoListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1232
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public retry()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1400
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1401
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare()V

    return-void
.end method

.method public seekTo(IJ)V
    .locals 1

    .line 1600
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1601
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->notifySeekStarted()V

    .line 1602
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekTo(IJ)V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V
    .locals 2

    .line 1023
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1024
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->playerReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1028
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1029
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1030
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    iget v1, p1, Lcom/google/android/exoplayer2/audio/AudioAttributes;->usage:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setStreamType(I)V

    .line 1031
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 1032
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioListener;

    .line 1033
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioListener;->onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    goto :goto_0

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/AudioFocusManager;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 1038
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result p1

    .line 1040
    iget-object p2, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result p2

    .line 1042
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReadyChangeReason(ZI)I

    move-result v0

    .line 1041
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->updatePlayWhenReady(ZII)V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 3

    .line 1052
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1053
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15

    if-nez p1, :cond_2

    .line 1057
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    .line 1058
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->initializeKeepSessionIdAudioTrack(I)I

    move-result p1

    goto :goto_0

    .line 1060
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/exoplayer2/C;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    .line 1062
    :cond_2
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v1, v0, :cond_3

    .line 1065
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->initializeKeepSessionIdAudioTrack(I)I

    .line 1067
    :cond_3
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioSessionId:I

    const/4 v0, 0x1

    .line 1068
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x66

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 1069
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1070
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioSessionIdChanged(I)V

    .line 1071
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioListener;

    .line 1072
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioListener;->onAudioSessionIdChanged(I)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V
    .locals 2

    .line 1083
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 1084
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public setCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
    .locals 2

    .line 1261
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1262
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    .line 1263
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->frameMetadataListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;

    .line 1264
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/4 v1, 0x7

    .line 1265
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1266
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 1267
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 1

    .line 1926
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1927
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setMuted(Z)V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 1

    .line 1908
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1909
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->streamVolumeManager:Lcom/google/android/exoplayer2/StreamVolumeManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/StreamVolumeManager;->setVolume(I)V

    return-void
.end method

.method public setForegroundMode(Z)V
    .locals 1

    .line 1649
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1650
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setForegroundMode(Z)V

    return-void
.end method

.method public setHandleAudioBecomingNoisy(Z)V
    .locals 1

    .line 1164
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1165
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->playerReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioBecomingNoisyManager:Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/AudioBecomingNoisyManager;->setEnabled(Z)V

    return-void
.end method

.method public setHandleWakeLock(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1835
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setWakeMode(I)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 1452
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1453
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 1445
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1446
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    .line 1477
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1478
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V
    .locals 1

    .line 1489
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1490
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 1

    .line 1483
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1484
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 1458
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1459
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;IJ)V"
        }
    .end annotation

    .line 1471
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1472
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation

    .line 1464
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1465
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setPauseAtEndOfMediaItems(Z)V
    .locals 1

    .line 1558
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1559
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPauseAtEndOfMediaItems(Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    .line 1543
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1545
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v0

    .line 1547
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReadyChangeReason(ZI)I

    move-result v1

    .line 1546
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->updatePlayWhenReady(ZII)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 1625
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1626
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 1

    .line 1745
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 2

    .line 1180
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1181
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1184
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1185
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 1187
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1188
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    const/4 v0, 0x1

    .line 1189
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    goto :goto_0

    .line 1191
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->isPriorityTaskManagerRegistered:Z

    .line 1193
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->priorityTaskManager:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1576
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1577
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setRepeatMode(I)V

    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 1

    .line 1637
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1638
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 1

    .line 1582
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1583
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method public setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 1

    .line 1537
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1538
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 2

    .line 1119
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1120
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1123
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->skipSilenceEnabled:Z

    const/4 v0, 0x1

    const/16 v1, 0x65

    .line 1124
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1125
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->notifySkipSilenceEnabledChanged()V

    return-void
.end method

.method public setThrowsWhenUsingWrongThread(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1942
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->throwsWhenUsingWrongThread:Z

    return-void
.end method

.method public setVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
    .locals 2

    .line 1237
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1238
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 1239
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->frameMetadataListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;

    .line 1240
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/4 v1, 0x6

    .line 1241
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 1242
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 1243
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 2

    .line 861
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 862
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->videoScalingMode:I

    .line 863
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 895
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 896
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 897
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoOutputInternal(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 899
    :goto_0
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 904
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    if-nez p1, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    goto :goto_0

    .line 908
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    const/4 v0, 0x1

    .line 909
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 910
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 911
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 912
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 913
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 914
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 915
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 916
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 918
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoOutputInternal(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 919
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    :goto_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2

    .line 934
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 935
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/VideoDecoderOutputBufferRenderer;

    if-eqz v0, :cond_0

    .line 936
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 937
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 938
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    .line 939
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    if-eqz v0, :cond_1

    .line 940
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 941
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 942
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->frameMetadataListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$FrameMetadataListener;

    .line 943
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    const/16 v1, 0x2710

    .line 944
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setType(I)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    .line 945
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object v0

    .line 946
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/PlayerMessage;->send()Lcom/google/android/exoplayer2/PlayerMessage;

    .line 947
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->addVideoSurfaceListener(Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    .line 948
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sphericalGLSurfaceView:Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 949
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 951
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    :goto_1
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 2

    .line 963
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    if-nez p1, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->clearVideoSurface()V

    goto :goto_1

    .line 967
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeSurfaceCallbacks()V

    .line 968
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->textureView:Landroid/view/TextureView;

    .line 969
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "SimpleExoPlayer"

    const-string v1, "Replacing existing SurfaceTextureListener."

    .line 970
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->componentListener:Lcom/google/android/exoplayer2/SimpleExoPlayer$ComponentListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 975
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 977
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setVideoOutputInternal(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 978
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_1

    .line 980
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V

    .line 981
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->maybeNotifySurfaceSizeChanged(II)V

    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 1094
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1095
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result p1

    .line 1096
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1099
    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioVolume:F

    .line 1100
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->sendVolumeToRenderers()V

    .line 1101
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->analyticsCollector:Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVolumeChanged(F)V

    .line 1102
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/audio/AudioListener;

    .line 1103
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/audio/AudioListener;->onVolumeChanged(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setWakeMode(I)V
    .locals 2

    .line 1854
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1865
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/WakeLockManager;->setEnabled(Z)V

    .line 1866
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/WifiLockManager;->setEnabled(Z)V

    goto :goto_0

    .line 1861
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/WakeLockManager;->setEnabled(Z)V

    .line 1862
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/WifiLockManager;->setEnabled(Z)V

    goto :goto_0

    .line 1857
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wakeLockManager:Lcom/google/android/exoplayer2/WakeLockManager;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/WakeLockManager;->setEnabled(Z)V

    .line 1858
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->wifiLockManager:Lcom/google/android/exoplayer2/WifiLockManager;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/WifiLockManager;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public stop(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1656
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->verifyApplicationThread()V

    .line 1657
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->audioFocusManager:Lcom/google/android/exoplayer2/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/AudioFocusManager;->updateAudioFocus(ZI)I

    .line 1658
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stop(Z)V

    .line 1659
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->currentCues:Ljava/util/List;

    return-void
.end method
