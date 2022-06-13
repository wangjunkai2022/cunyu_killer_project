.class public Lcom/tencent/rtmp/TXVodPlayer;
.super Ljava/lang/Object;
.source "TXVodPlayer.java"

# interfaces
.implements Lcom/tencent/liteav/basic/c/b;
.implements Lcom/tencent/liteav/network/j;


# static fields
.field public static final INDEX_AUTO:I = -0x1

.field public static final PLAYER_TYPE_IJK:I = 0x1

.field public static final PLAYER_TYPE_THUMB:I = 0x2

.field public static final TAG:Ljava/lang/String; = "TXVodPlayer"


# instance fields
.field private mAudioPlayoutVolume:I

.field private mAutoPlay:Z

.field private mBitrateIndex:I

.field private mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

.field private mContext:Landroid/content/Context;

.field private mEnableHWDec:Z

.field private mIsGainAudioFocus:Z

.field private mIsGetPlayInfo:Z

.field private mIsStoped:Z

.field private mListener:Lcom/tencent/rtmp/ITXLivePlayListener;

.field private mLoop:Z

.field private mMirror:Z

.field private mMute:Z

.field private mNetApi:Lcom/tencent/liteav/network/i;

.field private mNewListener:Lcom/tencent/rtmp/ITXVodPlayListener;

.field private mPlayUrl:Ljava/lang/String;

.field private final mPlayer:Lcom/tencent/liteav/h;

.field private mRate:F

.field private mRenderMode:I

.field private mRenderRotation:I

.field private mSnapshotRunning:Z

.field protected mStartTime:F

.field private mSurface:Landroid/view/Surface;

.field private mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

.field private mTextureView:Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mEnableHWDec:Z

    const-string v1, ""

    .line 70
    iput-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayUrl:Ljava/lang/String;

    .line 71
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mMute:Z

    const/4 v1, -0x1

    .line 72
    iput v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mAudioPlayoutVolume:I

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mIsGainAudioFocus:Z

    .line 79
    iput-boolean v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mAutoPlay:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 80
    iput v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mRate:F

    .line 81
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mSnapshotRunning:Z

    const/16 v1, -0x3e8

    .line 86
    iput v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mBitrateIndex:I

    .line 90
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mIsStoped:Z

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mListener:Lcom/tencent/rtmp/ITXLivePlayListener;

    .line 98
    iput-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mNewListener:Lcom/tencent/rtmp/ITXVodPlayListener;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mContext:Landroid/content/Context;

    .line 100
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setAppContext(Landroid/content/Context;)V

    .line 101
    invoke-static {}, Lcom/tencent/liteav/basic/log/TXCLog;->init()Z

    .line 102
    new-instance p1, Lcom/tencent/liteav/h;

    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/tencent/liteav/h;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/rtmp/TXVodPlayer;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mIsStoped:Z

    return p0
.end method

.method static synthetic access$100(Lcom/tencent/rtmp/TXVodPlayer;)Lcom/tencent/rtmp/TXVodPlayConfig;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    return-object p0
.end method

.method static synthetic access$102(Lcom/tencent/rtmp/TXVodPlayer;Lcom/tencent/rtmp/TXVodPlayConfig;)Lcom/tencent/rtmp/TXVodPlayConfig;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    return-object p1
.end method

.method static synthetic access$202(Lcom/tencent/rtmp/TXVodPlayer;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mSnapshotRunning:Z

    return p1
.end method

.method private checkPlayUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "http"

    .line 377
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->tryEncodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 381
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getEncryptedPlayKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 942
    invoke-static {p0}, Lcom/tencent/liteav/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isAVCDecBlacklistDevices()Z
    .locals 2

    .line 809
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Manufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Model()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Che2-TL00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private postBitmapToMainThread(Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 820
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 821
    new-instance v1, Lcom/tencent/rtmp/TXVodPlayer$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/rtmp/TXVodPlayer$2;-><init>(Lcom/tencent/rtmp/TXVodPlayer;Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public attachTRTC(Ljava/lang/Object;)V
    .locals 1

    .line 901
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public detachTRTC()V
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->r()V

    :cond_0
    return-void
.end method

.method public enableHardwareDecode(Z)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 591
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    const-string v3, "HardwareDecode"

    if-ge v0, v1, :cond_0

    .line 592
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableHardwareDecode failed, android system build.version = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", the minimum build.version should be 18(android 4.3 or later)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/tencent/rtmp/TXVodPlayer;->isAVCDecBlacklistDevices()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableHardwareDecode failed, MANUFACTURER = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Manufacturer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", MODEL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Model()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 601
    :cond_1
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mEnableHWDec:Z

    .line 603
    invoke-virtual {p0}, Lcom/tencent/rtmp/TXVodPlayer;->updateConfig()V

    const/4 p1, 0x1

    return p1
.end method

.method public getBitrateIndex()I
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->p()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferDuration()F
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->k()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPlaybackTime()F
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->i()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()F
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->l()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->o()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayableDuration()F
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->m()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportedBitrates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/rtmp/TXBitrateItem;",
            ">;"
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->q()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 711
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->n()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoop()Z
    .locals 1

    .line 897
    iget-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mLoop:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->c()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNetFailed(Lcom/tencent/liteav/network/i;Ljava/lang/String;I)V
    .locals 4

    .line 863
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mNetApi:Lcom/tencent/liteav/network/i;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 865
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mIsGetPlayInfo:Z

    .line 866
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 v0, -0x902

    const-string v1, "EVT_ID"

    .line 867
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 868
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    const-string v3, "EVT_TIME"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 869
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v1

    const-string v3, "EVT_UTC_TIME"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "EVT_MSG"

    .line 870
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "EVT_PARAM1"

    .line 871
    invoke-virtual {p1, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 872
    invoke-virtual {p0, v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->onNotifyEvent(ILandroid/os/Bundle;)V

    .line 873
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onNetFailed: eventId: -2306 description:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXVodPlayer"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNetSuccess(Lcom/tencent/liteav/network/i;)V
    .locals 5

    .line 837
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mNetApi:Lcom/tencent/liteav/network/i;

    if-eq p1, v0, :cond_0

    return-void

    .line 840
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/liteav/network/i;->a()Lcom/tencent/liteav/network/m;

    move-result-object p1

    .line 841
    iget-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mIsGetPlayInfo:Z

    if-nez v0, :cond_1

    .line 842
    invoke-virtual {p1}, Lcom/tencent/liteav/network/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/TXVodPlayer;->startPlay(Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 843
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mIsGetPlayInfo:Z

    .line 845
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x7da

    const-string v2, "EVT_ID"

    .line 846
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 847
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    const-string v4, "EVT_TIME"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 848
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v2

    const-string v4, "EVT_UTC_TIME"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "EVT_MSG"

    const-string v3, "Requested file information successfully"

    .line 849
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-virtual {p1}, Lcom/tencent/liteav/network/m;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EVT_PLAY_URL"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    invoke-virtual {p1}, Lcom/tencent/liteav/network/m;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EVT_PLAY_COVER_URL"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-virtual {p1}, Lcom/tencent/liteav/network/m;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EVT_PLAY_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-virtual {p1}, Lcom/tencent/liteav/network/m;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EVT_PLAY_DESCRIPTION"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {p1}, Lcom/tencent/liteav/network/m;->f()Lcom/tencent/liteav/network/n;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 855
    invoke-virtual {p1}, Lcom/tencent/liteav/network/m;->f()Lcom/tencent/liteav/network/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/network/n;->c()I

    move-result p1

    const-string v2, "EVT_PLAY_DURATION"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 858
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/tencent/rtmp/TXVodPlayer;->onNotifyEvent(ILandroid/os/Bundle;)V

    const-string p1, "TXVodPlayer"

    const-string v0, "onNetSuccess: Requested file information successfully"

    .line 859
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x3a99

    if-ne p1, v1, :cond_2

    .line 785
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 786
    invoke-virtual {p1, p2, v0, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setLogText(Landroid/os/Bundle;Landroid/os/Bundle;I)V

    .line 788
    :cond_0
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mListener:Lcom/tencent/rtmp/ITXLivePlayListener;

    if-eqz p1, :cond_1

    .line 789
    invoke-interface {p1, p2}, Lcom/tencent/rtmp/ITXLivePlayListener;->onNetStatus(Landroid/os/Bundle;)V

    .line 791
    :cond_1
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mNewListener:Lcom/tencent/rtmp/ITXVodPlayListener;

    if-eqz p1, :cond_5

    .line 792
    invoke-interface {p1, p0, p2}, Lcom/tencent/rtmp/ITXVodPlayListener;->onNetStatus(Lcom/tencent/rtmp/TXVodPlayer;Landroid/os/Bundle;)V

    goto :goto_0

    .line 795
    :cond_2
    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v1, :cond_3

    .line 796
    invoke-virtual {v1, v0, p2, p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setLogText(Landroid/os/Bundle;Landroid/os/Bundle;I)V

    .line 798
    :cond_3
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mListener:Lcom/tencent/rtmp/ITXLivePlayListener;

    if-eqz v0, :cond_4

    .line 799
    invoke-interface {v0, p1, p2}, Lcom/tencent/rtmp/ITXLivePlayListener;->onPlayEvent(ILandroid/os/Bundle;)V

    .line 801
    :cond_4
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mNewListener:Lcom/tencent/rtmp/ITXVodPlayListener;

    if-eqz v0, :cond_5

    .line 802
    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/rtmp/ITXVodPlayListener;->onPlayEvent(Lcom/tencent/rtmp/TXVodPlayer;ILandroid/os/Bundle;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause player="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->a()V

    :cond_0
    return-void
.end method

.method public publishAudio()V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->u()V

    :cond_0
    return-void
.end method

.method public publishVideo()V
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->s()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume player="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->b()V

    :cond_0
    return-void
.end method

.method public seek(F)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(F)V

    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->f(I)V

    :cond_0
    return-void
.end method

.method public setAudioPlayoutVolume(I)V
    .locals 2

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioPlayoutVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mAudioPlayoutVolume:I

    .line 629
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->g(I)V

    :cond_0
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 2

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoPlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mAutoPlay:Z

    .line 656
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->e(Z)V

    :cond_0
    return-void
.end method

.method public setBitrateIndex(I)V
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->h(I)V

    .line 696
    :cond_0
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mBitrateIndex:I

    return-void
.end method

.method public setConfig(Lcom/tencent/rtmp/TXVodPlayConfig;)V
    .locals 5

    .line 113
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    .line 115
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    if-nez p1, :cond_0

    .line 116
    new-instance p1, Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-direct {p1}, Lcom/tencent/rtmp/TXVodPlayConfig;-><init>()V

    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz p1, :cond_2

    .line 120
    invoke-virtual {p1}, Lcom/tencent/liteav/h;->w()Lcom/tencent/liteav/d;

    move-result-object p1

    if-nez p1, :cond_1

    .line 122
    new-instance p1, Lcom/tencent/liteav/d;

    invoke-direct {p1}, Lcom/tencent/liteav/d;-><init>()V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->mConnectRetryCount:I

    iput v0, p1, Lcom/tencent/liteav/d;->e:I

    .line 126
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->mConnectRetryInterval:I

    iput v0, p1, Lcom/tencent/liteav/d;->f:I

    .line 127
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->mTimeout:I

    iput v0, p1, Lcom/tencent/liteav/d;->r:I

    .line 128
    iget-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mEnableHWDec:Z

    iput-boolean v0, p1, Lcom/tencent/liteav/d;->h:Z

    .line 129
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-object v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->mCacheFolderPath:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/liteav/d;->n:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->mMaxCacheItems:I

    iput v0, p1, Lcom/tencent/liteav/d;->o:I

    .line 131
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->mPlayerType:I

    iput v0, p1, Lcom/tencent/liteav/d;->p:I

    .line 132
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-object v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->mHeaders:Ljava/util/Map;

    iput-object v0, p1, Lcom/tencent/liteav/d;->q:Ljava/util/Map;

    .line 133
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-boolean v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->enableAccurateSeek:Z

    iput-boolean v0, p1, Lcom/tencent/liteav/d;->s:Z

    .line 134
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-boolean v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->autoRotate:Z

    iput-boolean v0, p1, Lcom/tencent/liteav/d;->t:Z

    .line 135
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-boolean v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->smoothSwitchBitrate:Z

    iput-boolean v0, p1, Lcom/tencent/liteav/d;->u:Z

    .line 136
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-object v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->cacheMp4ExtName:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/liteav/d;->v:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->progressInterval:I

    iput v0, p1, Lcom/tencent/liteav/d;->w:I

    .line 138
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->maxBufferSize:I

    iput v0, p1, Lcom/tencent/liteav/d;->x:I

    .line 139
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->maxPreloadSize:I

    iput v0, p1, Lcom/tencent/liteav/d;->y:I

    .line 140
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->mFirstStartPlayBufferTime:I

    iput v0, p1, Lcom/tencent/liteav/d;->z:I

    .line 141
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->mNextStartPlayBufferTime:I

    iput v0, p1, Lcom/tencent/liteav/d;->A:I

    .line 142
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-object v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->mOverlayKey:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/liteav/d;->C:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-object v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->mOverlayIv:Ljava/lang/String;

    iput-object v0, p1, Lcom/tencent/liteav/d;->D:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-object v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->mExtInfoMap:Ljava/util/Map;

    iput-object v0, p1, Lcom/tencent/liteav/d;->E:Ljava/util/Map;

    .line 145
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-boolean v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->mEnableRenderProcess:Z

    iput-boolean v0, p1, Lcom/tencent/liteav/d;->F:Z

    .line 146
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-wide v0, v0, Lcom/tencent/rtmp/TXVodPlayConfig;->mPreferredResolution:J

    iput-wide v0, p1, Lcom/tencent/liteav/d;->G:J

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig [connectRetryCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v1, v1, Lcom/tencent/rtmp/TXVodPlayConfig;->mConnectRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(default 3 times)][connectRetryInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v1, v1, Lcom/tencent/rtmp/TXVodPlayConfig;->mConnectRetryInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(default 3s,min:3s max:30s)][vodTimeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v1, v1, Lcom/tencent/rtmp/TXVodPlayConfig;->mTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(default 10s)][enableHardwareDecoder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mEnableHWDec:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "(default false)][cacheFolderPath for mp4/HLS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-object v1, v1, Lcom/tencent/rtmp/TXVodPlayConfig;->mCacheFolderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][maxCacheItems:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v1, v1, Lcom/tencent/rtmp/TXVodPlayConfig;->mMaxCacheItems:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][enableAccurateSeek:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-boolean v1, v1, Lcom/tencent/rtmp/TXVodPlayConfig;->enableAccurateSeek:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "(default true)][autoRotate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-boolean v1, v1, Lcom/tencent/rtmp/TXVodPlayConfig;->autoRotate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "(default true)][HLS smoothSwitchBitrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-boolean v1, v1, Lcom/tencent/rtmp/TXVodPlayConfig;->smoothSwitchBitrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "(default false)][progressInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v2, v2, Lcom/tencent/rtmp/TXVodPlayConfig;->progressInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(default 0.5s)][preload maxBufferSize:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v3, v3, Lcom/tencent/rtmp/TXVodPlayConfig;->maxBufferSize:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "][firstStartPlayBufferTime:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v3, v3, Lcom/tencent/rtmp/TXVodPlayConfig;->mFirstStartPlayBufferTime:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "][nextStartPlayBufferTime:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v3, v3, Lcom/tencent/rtmp/TXVodPlayConfig;->mNextStartPlayBufferTime:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-boolean v4, v4, Lcom/tencent/rtmp/TXVodPlayConfig;->smoothSwitchBitrate:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v1, v1, Lcom/tencent/rtmp/TXVodPlayConfig;->progressInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget v1, v1, Lcom/tencent/rtmp/TXVodPlayConfig;->maxBufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][mOverlayKey for HLS Encrypt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-object v1, v1, Lcom/tencent/rtmp/TXVodPlayConfig;->mOverlayKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][mOverlayIv for HLS Encrypt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-object v1, v1, Lcom/tencent/rtmp/TXVodPlayConfig;->mOverlayIv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][mEnableRenderProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-boolean v1, v1, Lcom/tencent/rtmp/TXVodPlayConfig;->mEnableRenderProcess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "][mPreferredResolution:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    iget-wide v1, v1, Lcom/tencent/rtmp/TXVodPlayConfig;->mPreferredResolution:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/d;)V

    :cond_2
    return-void
.end method

.method public setLoop(Z)V
    .locals 2

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLoop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mLoop:Z

    .line 891
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz p1, :cond_0

    .line 892
    iget-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mLoop:Z

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/h;->f(Z)V

    :cond_0
    return-void
.end method

.method public setMirror(Z)V
    .locals 2

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMirror:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->g(Z)V

    .line 766
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mMirror:Z

    return-void
.end method

.method public setMute(Z)V
    .locals 2

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mMute:Z

    .line 616
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->b(Z)V

    :cond_0
    return-void
.end method

.method public setPlayListener(Lcom/tencent/rtmp/ITXLivePlayListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 547
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mListener:Lcom/tencent/rtmp/ITXLivePlayListener;

    return-void
.end method

.method public setPlayerView(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayerView TextureRenderView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mTextureView:Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    .line 186
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)V

    :cond_0
    return-void
.end method

.method public setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayerView TXCloudVideoView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 171
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    :cond_0
    return-void
.end method

.method public setRate(F)V
    .locals 1

    .line 666
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mRate:F

    .line 667
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->b(F)V

    :cond_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 565
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mRenderMode:I

    .line 566
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(I)V

    :cond_0
    return-void
.end method

.method public setRenderRotation(I)V
    .locals 1

    .line 577
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mRenderRotation:I

    .line 578
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->b(I)V

    :cond_0
    return-void
.end method

.method public setRequestAudioFocus(Z)Z
    .locals 1

    .line 642
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mIsGainAudioFocus:Z

    .line 643
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->d(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setStartTime(F)V
    .locals 0

    .line 778
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mStartTime:F

    return-void
.end method

.method public setStringOption(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurface Surface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mSurface:Landroid/view/Surface;

    .line 200
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/h;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mToken:Ljava/lang/String;

    return-void
.end method

.method public setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mNewListener:Lcom/tencent/rtmp/ITXVodPlayListener;

    return-void
.end method

.method public snapshot(Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;)V
    .locals 10

    .line 731
    iget-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mSnapshotRunning:Z

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 734
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mSnapshotRunning:Z

    .line 736
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 737
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->d()Landroid/view/TextureView;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 740
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 744
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v7

    .line 745
    iget-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mMirror:Z

    if-eqz v0, :cond_2

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 746
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 748
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, v9

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 749
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_3
    move-object v0, v9

    .line 751
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/tencent/rtmp/TXVodPlayer;->postBitmapToMainThread(Lcom/tencent/rtmp/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 753
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mSnapshotRunning:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public startPlay(Lcom/tencent/rtmp/TXPlayerAuthBuilder;)I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    new-instance v0, Lcom/tencent/liteav/network/i;

    invoke-direct {v0}, Lcom/tencent/liteav/network/i;-><init>()V

    iput-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mNetApi:Lcom/tencent/liteav/network/i;

    .line 285
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mNetApi:Lcom/tencent/liteav/network/i;

    iget-boolean v1, p1, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->isHttps:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/i;->a(Z)V

    .line 286
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mNetApi:Lcom/tencent/liteav/network/i;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/network/i;->a(Lcom/tencent/liteav/network/j;)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPlay [FileId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][Timeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->timeout:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][Unique identification request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->us:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "][Trial duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->exper:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][Sign:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/tencent/rtmp/TXVodPlayer;->mNetApi:Lcom/tencent/liteav/network/i;

    iget v3, p1, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->appId:I

    iget-object v4, p1, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->fileId:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->timeout:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->us:Ljava/lang/String;

    iget v7, p1, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->exper:I

    iget-object v8, p1, Lcom/tencent/rtmp/TXPlayerAuthBuilder;->sign:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/liteav/network/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startPlay(Ljava/lang/String;)I
    .locals 5

    const-string v0, "TXVodPlayer"

    if-eqz p1, :cond_7

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->initCrashReport(Landroid/content/Context;)V

    .line 219
    iget v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mBitrateIndex:I

    const/4 v2, 0x0

    .line 220
    invoke-virtual {p0, v2}, Lcom/tencent/rtmp/TXVodPlayer;->stopPlay(Z)I

    .line 221
    iput v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mBitrateIndex:I

    .line 223
    iget-object v1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mToken:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 224
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "/"

    .line 227
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 228
    array-length v3, v1

    if-lez v3, :cond_1

    .line 229
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    .line 230
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "voddrm.token."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/rtmp/TXVodPlayer;->mToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 235
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->checkPlayUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayUrl:Ljava/lang/String;

    const-string p1, "==========================================================================================================================================================="

    .line 237
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====  StartPlay url = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " SDKVersion = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKID()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    ====== player="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/tencent/rtmp/TXVodPlayer;->updateConfig()V

    .line 245
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz p1, :cond_2

    .line 246
    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->clearLog()V

    .line 247
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p1, v2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/h;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    goto :goto_0

    .line 249
    :cond_2
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mSurface:Landroid/view/Surface;

    if-eqz p1, :cond_3

    .line 250
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(Landroid/view/Surface;)V

    goto :goto_0

    .line 251
    :cond_3
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mTextureView:Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    if-eqz p1, :cond_4

    .line 252
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)V

    .line 255
    :cond_4
    :goto_0
    iget p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mBitrateIndex:I

    const/16 v0, -0x3e8

    if-eq p1, v0, :cond_5

    .line 256
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->h(I)V

    .line 258
    :cond_5
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/h;->a(Lcom/tencent/liteav/basic/c/b;)V

    .line 259
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    iget-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mIsGainAudioFocus:Z

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/h;->d(Z)Z

    .line 260
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    iget-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mAutoPlay:Z

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/h;->e(Z)V

    .line 261
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    iget v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mStartTime:F

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/h;->c(F)V

    .line 262
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/tencent/liteav/h;->a(Ljava/lang/String;I)I

    .line 263
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    iget-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mMute:Z

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/h;->b(Z)V

    .line 264
    iget p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mAudioPlayoutVolume:I

    if-ltz p1, :cond_6

    .line 265
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->g(I)V

    .line 267
    :cond_6
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    iget v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mRate:F

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/h;->b(F)V

    .line 268
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    iget v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mRenderRotation:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/h;->b(I)V

    .line 269
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    iget v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mRenderMode:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/h;->a(I)V

    .line 270
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    iget-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mLoop:Z

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/h;->f(Z)V

    .line 271
    iget-boolean p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mMirror:Z

    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->setMirror(Z)V

    return v2

    :cond_7
    :goto_1
    const-string p1, "startPlay playUrl is empty"

    .line 213
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public startPlay(Lcom/tencent/rtmp/b;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mIsStoped:Z

    .line 305
    new-instance v0, Lcom/tencent/liteav/network/g;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/network/g;-><init>(Lcom/tencent/rtmp/b;)V

    .line 306
    new-instance p1, Lcom/tencent/rtmp/TXVodPlayer$1;

    invoke-direct {p1, p0}, Lcom/tencent/rtmp/TXVodPlayer$1;-><init>(Lcom/tencent/rtmp/TXVodPlayer;)V

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/network/g;->a(Lcom/tencent/liteav/network/g$a;)V

    :cond_0
    return-void
.end method

.method public stopPlay(Z)I
    .locals 2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPlay needClearLastImg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " player="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXVodPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 395
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setVisibility(I)V

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/h;->a(Z)I

    :cond_1
    const-string p1, ""

    .line 401
    iput-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayUrl:Ljava/lang/String;

    .line 402
    iget-object p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mNetApi:Lcom/tencent/liteav/network/i;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p1, v0}, Lcom/tencent/liteav/network/i;->a(Lcom/tencent/liteav/network/j;)V

    .line 404
    iput-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mNetApi:Lcom/tencent/liteav/network/i;

    :cond_2
    const/16 p1, -0x3e8

    .line 406
    iput p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mBitrateIndex:I

    const/4 p1, 0x0

    .line 407
    iput-boolean p1, p0, Lcom/tencent/rtmp/TXVodPlayer;->mIsGetPlayInfo:Z

    const/4 v0, 0x1

    .line 408
    iput-boolean v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mIsStoped:Z

    return p1
.end method

.method public unpublishAudio()V
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->v()V

    :cond_0
    return-void
.end method

.method public unpublishVideo()V
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/h;

    if-eqz v0, :cond_0

    .line 920
    invoke-virtual {v0}, Lcom/tencent/liteav/h;->t()V

    :cond_0
    return-void
.end method

.method updateConfig()V
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/tencent/rtmp/TXVodPlayer;->mConfig:Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/TXVodPlayer;->setConfig(Lcom/tencent/rtmp/TXVodPlayConfig;)V

    return-void
.end method
