.class public Lcom/tencent/live2/impl/V2TXLivePlayerImpl;
.super Lcom/tencent/live2/V2TXLivePlayer;
.source "V2TXLivePlayerImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "V2-TXLivePlayerImpl"


# instance fields
.field private mAsyncState:Lcom/tencent/live2/impl/a$b;

.field private mBufferType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

.field private mCacheMaxTime:F

.field private mCacheMinTime:F

.field private mContext:Landroid/content/Context;

.field private mEnableCustomRendering:Z

.field private mEnableDebugView:Z

.field private mEnableReceiveSEI:Z

.field private mInnerPlayer:Lcom/tencent/live2/V2TXLivePlayer;

.field private mIsPauseAudio:Z

.field private mIsPauseVideo:Z

.field private mMainHandler:Lcom/tencent/liteav/basic/util/f;

.field private mPixelFormat:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

.field private mPlayerObserver:Lcom/tencent/live2/V2TXLivePlayerObserver;

.field private mPlayoutVolume:I

.field private mPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderFillMode:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

.field private mRenderRotation:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;

.field private mSEIPayLoadType:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceSize:Lcom/tencent/live2/impl/a$a;

.field private mView:Ljava/lang/Object;

.field private mVolumeIntervals:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 38
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 131
    invoke-direct {p0}, Lcom/tencent/live2/V2TXLivePlayer;-><init>()V

    .line 42
    sget-object v0, Lcom/tencent/live2/impl/a$b;->a:Lcom/tencent/live2/impl/a$b;

    iput-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mAsyncState:Lcom/tencent/live2/impl/a$b;

    .line 44
    new-instance v0, Lcom/tencent/liteav/basic/util/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/basic/util/f;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mMainHandler:Lcom/tencent/liteav/basic/util/f;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mVolumeIntervals:I

    .line 59
    iput v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mPlayoutVolume:I

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create: context-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mContext:Landroid/content/Context;

    .line 134
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$002(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLivePlayerObserver;)Lcom/tencent/live2/V2TXLivePlayerObserver;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mPlayerObserver:Lcom/tencent/live2/V2TXLivePlayerObserver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Lcom/tencent/live2/V2TXLivePlayer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mInnerPlayer:Lcom/tencent/live2/V2TXLivePlayer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLivePlayer;)Lcom/tencent/live2/V2TXLivePlayer;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mInnerPlayer:Lcom/tencent/live2/V2TXLivePlayer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->setupParams()V

    return-void
.end method

.method static synthetic access$1202(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/impl/a$b;)Lcom/tencent/live2/impl/a$b;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mAsyncState:Lcom/tencent/live2/impl/a$b;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mIsPauseAudio:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mIsPauseVideo:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mPlayoutVolume:I

    return p1
.end method

.method static synthetic access$1602(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mCacheMaxTime:F

    return p1
.end method

.method static synthetic access$1702(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;F)F
    .locals 0

    .line 36
    iput p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mCacheMinTime:F

    return p1
.end method

.method static synthetic access$1802(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mVolumeIntervals:I

    return p1
.end method

.method static synthetic access$1902(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mEnableCustomRendering:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;)Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mPixelFormat:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    return-object p1
.end method

.method static synthetic access$202(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mBufferType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mEnableDebugView:Z

    return p1
.end method

.method static synthetic access$302(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/impl/a$a;)Lcom/tencent/live2/impl/a$a;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mSurfaceSize:Lcom/tencent/live2/impl/a$a;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)Ljava/util/HashMap;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mPropertyMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$502(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mEnableReceiveSEI:Z

    return p1
.end method

.method static synthetic access$602(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mSEIPayLoadType:I

    return p1
.end method

.method static synthetic access$702(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mView:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mRenderRotation:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;

    return-object p1
.end method

.method static synthetic access$902(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mRenderFillMode:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    return-object p1
.end method

.method private apiError(Ljava/lang/String;)V
    .locals 2

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v2_api_player("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V2-TXLivePlayerImpl"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private apiLog(Ljava/lang/String;)V
    .locals 2

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v2_api_player("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V2-TXLivePlayerImpl"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private runOnMainThreadAsync(Ljava/lang/Runnable;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mMainHandler:Lcom/tencent/liteav/basic/util/f;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/basic/util/f;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setupParams()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mInnerPlayer:Lcom/tencent/live2/V2TXLivePlayer;

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mPlayerObserver:Lcom/tencent/live2/V2TXLivePlayerObserver;

    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setObserver(Lcom/tencent/live2/V2TXLivePlayerObserver;)V

    .line 77
    iget-boolean v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mEnableCustomRendering:Z

    iget-object v2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mPixelFormat:Lcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;

    iget-object v3, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mBufferType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/live2/V2TXLivePlayer;->enableObserveVideoFrame(ZLcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;)I

    .line 78
    iget-boolean v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mEnableReceiveSEI:Z

    iget v2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mSEIPayLoadType:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/live2/V2TXLivePlayer;->enableReceiveSeiMessage(ZI)I

    .line 80
    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mView:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 81
    instance-of v2, v1, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v2, :cond_1

    .line 82
    check-cast v1, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    goto :goto_0

    .line 83
    :cond_1
    instance-of v2, v1, Landroid/view/TextureView;

    if-eqz v2, :cond_2

    .line 84
    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderView(Landroid/view/TextureView;)I

    goto :goto_0

    .line 85
    :cond_2
    instance-of v2, v1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_3

    .line 86
    check-cast v1, Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderView(Landroid/view/SurfaceView;)I

    .line 89
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mRenderFillMode:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    if-eqz v1, :cond_4

    .line 90
    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderFillMode(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;)I

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mRenderRotation:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;

    if-eqz v1, :cond_5

    .line 93
    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderRotation(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;)I

    .line 95
    :cond_5
    iget-boolean v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mIsPauseAudio:Z

    if-eqz v1, :cond_6

    .line 96
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->pauseAudio()I

    goto :goto_1

    .line 98
    :cond_6
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->resumeAudio()I

    .line 100
    :goto_1
    iget-boolean v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mIsPauseVideo:Z

    if-eqz v1, :cond_7

    .line 101
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->pauseVideo()I

    goto :goto_2

    .line 103
    :cond_7
    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->resumeVideo()I

    .line 105
    :goto_2
    iget v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mCacheMinTime:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_8

    iget v3, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mCacheMaxTime:F

    cmpl-float v2, v3, v2

    if-lez v2, :cond_8

    .line 106
    invoke-virtual {v0, v1, v3}, Lcom/tencent/live2/V2TXLivePlayer;->setCacheParams(FF)I

    .line 108
    :cond_8
    iget v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mPlayoutVolume:I

    if-lez v1, :cond_9

    .line 109
    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setPlayoutVolume(I)I

    .line 111
    :cond_9
    iget v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mVolumeIntervals:I

    if-lez v1, :cond_a

    .line 112
    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->enableVolumeEvaluation(I)I

    .line 114
    :cond_a
    iget-boolean v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mEnableDebugView:Z

    invoke-virtual {v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->showDebugView(Z)V

    .line 116
    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_b

    const-string v2, "setSurface"

    .line 117
    invoke-virtual {v0, v2, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)I

    .line 119
    :cond_b
    iget-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mSurfaceSize:Lcom/tencent/live2/impl/a$a;

    if-eqz v1, :cond_c

    const-string v2, "setSurfaceSize"

    .line 120
    invoke-virtual {v0, v2, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)I

    .line 122
    :cond_c
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    iget-object v2, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mInnerPlayer:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)I

    goto :goto_3

    :cond_d
    return-void
.end method


# virtual methods
.method public enableObserveVideoFrame(ZLcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;)I
    .locals 2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableCustomRendering: enable-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " pixelFormat-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " bufferType-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 491
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$19;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;ZLcom/tencent/live2/V2TXLiveDef$V2TXLivePixelFormat;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveBufferType;)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public enableReceiveSeiMessage(ZI)I
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableReceiveSeiMessage: enable-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", payloadType-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/16 v0, 0xf2

    if-eq p2, v0, :cond_0

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableReceiveSeiMessage payloadType invalid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiError(Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1

    .line 198
    :cond_0
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$3;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;ZI)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public enableVolumeEvaluation(I)I
    .locals 2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVolumeEvaluation: intervalMs-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 459
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$17;

    invoke-direct {v0, p0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$17;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;I)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isPlaying()I
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mAsyncState:Lcom/tencent/live2/impl/a$b;

    sget-object v1, Lcom/tencent/live2/impl/a$b;->a:Lcom/tencent/live2/impl/a$b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 348
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mInnerPlayer:Lcom/tencent/live2/V2TXLivePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->isPlaying()I

    move-result v2

    :cond_0
    return v2

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mAsyncState:Lcom/tencent/live2/impl/a$b;

    sget-object v1, Lcom/tencent/live2/impl/a$b;->b:Lcom/tencent/live2/impl/a$b;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    return v0

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mAsyncState:Lcom/tencent/live2/impl/a$b;

    sget-object v1, Lcom/tencent/live2/impl/a$b;->c:Lcom/tencent/live2/impl/a$b;

    if-ne v0, v1, :cond_3

    :cond_3
    return v2
.end method

.method public pauseAudio()I
    .locals 1

    const-string v0, "pauseAudio: "

    .line 359
    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 360
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$11;

    invoke-direct {v0, p0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$11;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public pauseVideo()I
    .locals 1

    const-string v0, "pauseVideo: "

    .line 389
    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 390
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$13;

    invoke-direct {v0, p0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$13;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public resumeAudio()I
    .locals 1

    const-string v0, "resumeAudio: "

    .line 374
    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 375
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$12;

    invoke-direct {v0, p0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$12;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public resumeVideo()I
    .locals 1

    const-string v0, "resumeVideo: "

    .line 404
    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 405
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$14;

    invoke-direct {v0, p0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$14;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setCacheParams(FF)I
    .locals 2

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCacheParams: minTime-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " maxTime-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_2

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->isPlaying()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string p1, "set cache param failed, cant\'s set param when playing."

    .line 440
    invoke-direct {p0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiError(Ljava/lang/String;)V

    const/4 p1, -0x3

    return p1

    .line 443
    :cond_1
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$16;

    invoke-direct {v0, p0, p2, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$16;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;FF)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const-string p1, "set cache param failed, invalid cache params."

    .line 436
    invoke-direct {p0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiError(Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1
.end method

.method public setObserver(Lcom/tencent/live2/V2TXLivePlayerObserver;)V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setObserver: observer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$1;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLivePlayerObserver;)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPlayoutVolume(I)I
    .locals 2

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayoutVolume: volume-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 420
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$15;

    invoke-direct {v0, p0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$15;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;I)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty: key-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$2;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setRenderFillMode(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;)I
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRenderFillMode: mode-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 274
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$8;

    invoke-direct {v0, p0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$8;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setRenderRotation(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;)I
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRenderRotation: rotation-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$7;

    invoke-direct {v0, p0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$7;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setRenderView(Landroid/view/SurfaceView;)I
    .locals 3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurfaceView: view-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 244
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$6;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Landroid/view/SurfaceView;)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setRenderView(Landroid/view/TextureView;)I
    .locals 3

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextureView: view-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$5;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Landroid/view/TextureView;)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setRenderView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I
    .locals 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTXCloudVideoView: view-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 214
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$4;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public showDebugView(Z)V
    .locals 2

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDebugView: enable-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 508
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$20;

    invoke-direct {v0, p0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$20;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Z)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public snapshot()I
    .locals 1

    .line 473
    invoke-virtual {p0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->isPlaying()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "snapshot: snapshot is not allowed before the player starts playing."

    .line 474
    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiError(Ljava/lang/String;)V

    const/4 v0, -0x3

    return v0

    .line 477
    :cond_0
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$18;

    invoke-direct {v0, p0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$18;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public startPlay(Ljava/lang/String;)I
    .locals 3

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPlay url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start play fail, url invalid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V2-TXLivePlayerImpl"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 293
    :cond_0
    invoke-static {p1}, Lcom/tencent/live2/impl/V2TXLiveUtils;->parsePlayerType(Ljava/lang/String;)Lcom/tencent/live2/impl/a$c;

    move-result-object v0

    .line 294
    sget-object v2, Lcom/tencent/live2/impl/a$c;->b:Lcom/tencent/live2/impl/a$c;

    if-eq v0, v2, :cond_3

    sget-object v2, Lcom/tencent/live2/impl/a$c;->a:Lcom/tencent/live2/impl/a$c;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 300
    :cond_1
    sget-object v1, Lcom/tencent/live2/impl/a$c;->d:Lcom/tencent/live2/impl/a$c;

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 303
    :cond_2
    invoke-static {p1}, Lcom/tencent/live2/a/a;->a(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    return v1

    .line 295
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/tencent/liteav/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start play fail. invalid param. [url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiError(Ljava/lang/String;)V

    return v1

    .line 308
    :cond_4
    :goto_1
    sget-object v1, Lcom/tencent/live2/impl/a$b;->b:Lcom/tencent/live2/impl/a$b;

    iput-object v1, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mAsyncState:Lcom/tencent/live2/impl/a$b;

    .line 309
    new-instance v1, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$9;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;Lcom/tencent/live2/impl/a$c;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public stopPlay()I
    .locals 1

    const-string v0, "stopPlay"

    .line 330
    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->apiLog(Ljava/lang/String;)V

    .line 331
    sget-object v0, Lcom/tencent/live2/impl/a$b;->c:Lcom/tencent/live2/impl/a$b;

    iput-object v0, p0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->mAsyncState:Lcom/tencent/live2/impl/a$b;

    .line 332
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$10;

    invoke-direct {v0, p0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl$10;-><init>(Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)V

    invoke-direct {p0, v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->runOnMainThreadAsync(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method
