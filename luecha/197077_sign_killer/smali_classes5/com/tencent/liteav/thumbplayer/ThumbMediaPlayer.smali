.class public Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;
.super Lcom/tencent/liteav/txcplayer/a;
.source "ThumbMediaPlayer.java"


# static fields
.field private static final AUDIO_TUNNEL_CLOSE:I = -0x1

.field private static final THUMB_PLAYER_GUID:Ljava/lang/String; = "liteav_tbplayer_android_"

.field private static final THUMB_PLAYER_PLATFORM_ID:I = 0x238ebf

.field private static volatile mSDKInited:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBitrate:J

.field private mBitrateIndex:I

.field private mCachedBytes:J

.field private mConfig:Lcom/tencent/liteav/txcplayer/h;

.field private mDataSource:Ljava/lang/String;

.field private mEnableAccurateSeek:Z

.field private mHasReceiveFirstVideoRenderEvent:Z

.field private mIsLooping:Z

.field private mPlayoutAudioTunnelId:I

.field private mPublishAudioTunnelId:I

.field private mRate:F

.field private mScreenOnWhilePlaying:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private volatile mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

.field private mTXCAudioEngineJNI:Ljava/lang/Class;

.field private mTcpSpeed:J

.field private mTotalFileSize:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 93
    const-class v0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    invoke-direct {p0}, Lcom/tencent/liteav/txcplayer/a;-><init>()V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 67
    iput-boolean v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mEnableAccurateSeek:Z

    const/4 v2, 0x0

    .line 74
    iput-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/16 v3, -0x3e8

    .line 75
    iput v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    const-wide/16 v3, 0x0

    .line 76
    iput-wide v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mCachedBytes:J

    .line 77
    iput-wide v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrate:J

    .line 78
    iput-wide v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTcpSpeed:J

    .line 79
    iput-wide v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTotalFileSize:J

    .line 81
    iput-boolean v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mHasReceiveFirstVideoRenderEvent:Z

    const/4 v1, -0x1

    .line 89
    iput v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPublishAudioTunnelId:I

    .line 90
    iput v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPlayoutAudioTunnelId:I

    .line 91
    iput-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTXCAudioEngineJNI:Ljava/lang/Class;

    .line 94
    monitor-enter v0

    .line 95
    :try_start_0
    sget-boolean v1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSDKInited:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setTPPLibCustomLoader()V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "liteav_tbplayer_android_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x238ebf

    invoke-static {p1, v1, v3}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->initSdk(Landroid/content/Context;Ljava/lang/String;I)V

    .line 98
    invoke-static {v2}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->setDebugEnable(Z)V

    .line 99
    sput-boolean v2, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSDKInited:Z

    .line 101
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    if-nez v0, :cond_1

    .line 103
    invoke-static {v2}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->setDebugEnable(Z)V

    .line 104
    invoke-static {p1}, Lcom/tencent/thumbplayer/api/TPPlayerFactory;->createTPPlayer(Landroid/content/Context;)Lcom/tencent/thumbplayer/api/ITPPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    .line 105
    new-instance p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V

    .line 106
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->attachToPlayer()V

    .line 107
    invoke-direct {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->initOpenAudioTunnel()V

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setCustomReportData()V

    return-void

    :catchall_0
    move-exception p1

    .line 101
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic access$000(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)Lcom/tencent/thumbplayer/api/ITPPlayer;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->closeAudioTunnel()V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getTXCAudioEngineJNIMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPlayoutAudioTunnelId:I

    return p0
.end method

.method static synthetic access$400(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->callTXCAudioEngineJNIMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPublishAudioTunnelId:I

    return p0
.end method

.method private varargs callTXCAudioEngineJNIMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 940
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 942
    iget-object p2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private closeAudioTunnel()V
    .locals 7

    .line 985
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "closeAudioTunnel"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPlayoutAudioTunnelId:I

    const-string v1, "nativeCloseAudioTunnel"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    new-array v0, v3, [Ljava/lang/Class;

    .line 992
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v2

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getTXCAudioEngineJNIMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v5, v3, [Ljava/lang/Object;

    .line 993
    iget v6, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPlayoutAudioTunnelId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-direct {p0, v0, v5}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->callTXCAudioEngineJNIMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    iput v4, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPlayoutAudioTunnelId:I

    .line 996
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPublishAudioTunnelId:I

    if-eq v0, v4, :cond_1

    new-array v0, v3, [Ljava/lang/Class;

    .line 998
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v2

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getTXCAudioEngineJNIMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 999
    iget v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPublishAudioTunnelId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->callTXCAudioEngineJNIMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    iput v4, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPublishAudioTunnelId:I

    :cond_1
    return-void
.end method

.method private varargs getTXCAudioEngineJNIMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 918
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTXCAudioEngineJNI:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.tencent.liteav.audio.impl.TXCAudioEngineJNI"

    .line 919
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTXCAudioEngineJNI:Ljava/lang/Class;

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTXCAudioEngineJNI:Ljava/lang/Class;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 923
    iget-object p2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private initOpenAudioTunnel()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 898
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nativeOpenAudioTunnel"

    invoke-direct {p0, v2, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getTXCAudioEngineJNIMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 899
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->callTXCAudioEngineJNIMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPlayoutAudioTunnelId:I

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlayoutAudioTunnelId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPlayoutAudioTunnelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPlayoutAudioTunnelId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 906
    invoke-direct {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setConfigOpenAudioTunnel()V

    :cond_1
    return-void
.end method

.method private processUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "voddrm.token."

    .line 1053
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    add-int/lit8 v3, v0, 0xd

    const-string v4, "."

    .line 1055
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v2, :cond_0

    .line 1056
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 1057
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "?"

    .line 1059
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_1

    .line 1061
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private setConfigOpenAudioTunnel()V
    .locals 5

    .line 952
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setConfigOpenAudioTunnel"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x194

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 955
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x78

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildBoolean(IZ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 958
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$6;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$6;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnAudioFrameOutputListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioFrameOutputListener;)V

    return-void
.end method

.method private setCustomReportData()V
    .locals 7

    .line 137
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getReportManager()Lcom/tencent/thumbplayer/api/report/ITPBusinessReportManager;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$2;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V

    .line 144
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getAppID()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/tencent/thumbplayer/api/report/TPDefaultReportInfo;->scenesId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 149
    iget-object v4, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set scenesId fail for parse appid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,error="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/report/ITPBusinessReportManager;->setReportInfoGetter(Lcom/tencent/thumbplayer/api/report/TPDefaultReportInfo;)V

    :cond_0
    return-void
.end method

.method private setTPPLibCustomLoader()V
    .locals 4

    .line 119
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$1;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V

    invoke-static {v0}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->setLibLoader(Lcom/tencent/thumbplayer/api/ITPModuleLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 128
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTPPLibCustomLoader, ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setVideoInfo(Ljava/lang/String;)V
    .locals 9

    .line 311
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    if-eqz v0, :cond_8

    .line 312
    new-instance v0, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;-><init>()V

    .line 314
    new-instance v1, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;-><init>(I)V

    const-string v3, ".hls"

    .line 317
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 319
    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 322
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "m3u8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mp4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 328
    invoke-direct {p0, p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->processUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x2f

    .line 336
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x238ebf

    .line 337
    invoke-static {v8}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->getTPDownloadProxy(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    move-result-object v8

    .line 338
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v8, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->updateStoragePath(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1, v5}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->setDlType(I)V

    .line 340
    invoke-virtual {v1, v6}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->setOffline(Z)V

    move-object v2, v7

    .line 342
    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;->fileId(Ljava/lang/String;)Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;

    .line 344
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/h;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->r()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 345
    invoke-virtual {v1, v5}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->setDlType(I)V

    .line 346
    invoke-virtual {v1, v6}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->setSelfAdaption(Z)V

    .line 348
    :cond_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 349
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v2}, Lcom/tencent/liteav/txcplayer/h;->u()I

    move-result v2

    const-string v3, "dl_param_buffer_size"

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v2}, Lcom/tencent/liteav/txcplayer/h;->n()Z

    move-result v2

    if-nez v2, :cond_5

    .line 351
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v2}, Lcom/tencent/liteav/txcplayer/h;->u()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 352
    :cond_5
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v2}, Lcom/tencent/liteav/txcplayer/h;->l()I

    move-result v2

    if-lez v2, :cond_6

    .line 353
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v2}, Lcom/tencent/liteav/txcplayer/h;->l()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 356
    invoke-virtual {v1, p1}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->setExtInfoMap(Ljava/util/Map;)V

    .line 358
    :cond_7
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;->downloadParam(Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;)Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;

    .line 359
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;->build()Lcom/tencent/thumbplayer/api/TPVideoInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setVideoInfo(Lcom/tencent/thumbplayer/api/TPVideoInfo;)V

    :cond_8
    return-void
.end method

.method private transferToITrackInfo(Lcom/tencent/thumbplayer/api/TPTrackInfo;)Lcom/tencent/liteav/txcplayer/c/b;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 749
    :cond_0
    new-instance v0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$5;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$5;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;Lcom/tencent/thumbplayer/api/TPTrackInfo;)V

    return-object v0
.end method


# virtual methods
.method public enableAdaptiveBitrate()V
    .locals 5

    .line 822
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x1f8

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    const/4 v0, -0x1

    .line 836
    iput v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    return-void
.end method

.method public getBitrateIndex()I
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitrateIndex \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    return v0
.end method

.method public getConfig()Lcom/tencent/liteav/txcplayer/h;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/h;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getCurrentPositionMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 4

    .line 526
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDuration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getDurationMs()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo()Lcom/tencent/liteav/txcplayer/f;
    .locals 8

    .line 588
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getMediaInfo"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    new-instance v0, Lcom/tencent/liteav/txcplayer/f;

    invoke-direct {v0}, Lcom/tencent/liteav/txcplayer/f;-><init>()V

    const-string v1, "thumbplayer"

    .line 590
    iput-object v1, v0, Lcom/tencent/liteav/txcplayer/f;->a:Ljava/lang/String;

    .line 591
    new-instance v1, Lcom/tencent/liteav/txcplayer/g;

    invoke-direct {v1}, Lcom/tencent/liteav/txcplayer/g;-><init>()V

    iput-object v1, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    .line 592
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getPropertyString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 593
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    const-string v3, "\\n"

    .line 594
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 595
    array-length v3, v1

    if-lez v3, :cond_b

    .line 596
    iget-object v3, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    invoke-virtual {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getSupportedBitrates()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/liteav/txcplayer/g;->b:Ljava/util/ArrayList;

    .line 597
    iget v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    const/16 v4, -0x3e8

    if-ne v3, v4, :cond_0

    move v3, v2

    .line 601
    :cond_0
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    new-instance v5, Lcom/tencent/liteav/txcplayer/g$a;

    invoke-direct {v5, v3}, Lcom/tencent/liteav/txcplayer/g$a;-><init>(I)V

    iput-object v5, v4, Lcom/tencent/liteav/txcplayer/g;->e:Lcom/tencent/liteav/txcplayer/g$a;

    .line 602
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    new-instance v5, Lcom/tencent/liteav/txcplayer/g$a;

    invoke-direct {v5, v3}, Lcom/tencent/liteav/txcplayer/g$a;-><init>(I)V

    iput-object v5, v4, Lcom/tencent/liteav/txcplayer/g;->d:Lcom/tencent/liteav/txcplayer/g$a;

    .line 603
    iget-object v3, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    iget-object v3, v3, Lcom/tencent/liteav/txcplayer/g;->c:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/g;->e:Lcom/tencent/liteav/txcplayer/g$a;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v3, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    iget-object v3, v3, Lcom/tencent/liteav/txcplayer/g;->c:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/g;->d:Lcom/tencent/liteav/txcplayer/g$a;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_b

    aget-object v4, v1, v2

    if-eqz v4, :cond_a

    const-string v5, "="

    .line 607
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ContainerFormat="

    .line 609
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 610
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    iput-object v5, v4, Lcom/tencent/liteav/txcplayer/g;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v6, "VideoCodec="

    .line 614
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "avcodec"

    if-eqz v6, :cond_2

    .line 615
    iput-object v7, v0, Lcom/tencent/liteav/txcplayer/f;->b:Ljava/lang/String;

    .line 616
    iput-object v5, v0, Lcom/tencent/liteav/txcplayer/f;->c:Ljava/lang/String;

    .line 617
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/g;->d:Lcom/tencent/liteav/txcplayer/g$a;

    iput-object v5, v4, Lcom/tencent/liteav/txcplayer/g$a;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v6, "VideoProfile="

    .line 620
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 621
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/g;->d:Lcom/tencent/liteav/txcplayer/g$a;

    iput-object v5, v4, Lcom/tencent/liteav/txcplayer/g$a;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v6, "Width="

    .line 624
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 625
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/g;->d:Lcom/tencent/liteav/txcplayer/g$a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/tencent/liteav/txcplayer/g$a;->e:I

    goto/16 :goto_1

    :cond_4
    const-string v6, "Height="

    .line 628
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 629
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/g;->d:Lcom/tencent/liteav/txcplayer/g$a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/tencent/liteav/txcplayer/g$a;->f:I

    goto :goto_1

    :cond_5
    const-string v6, "VideoBitRate="

    .line 632
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 633
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/g;->d:Lcom/tencent/liteav/txcplayer/g$a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/tencent/liteav/txcplayer/g$a;->d:J

    goto :goto_1

    :cond_6
    const-string v6, "AudioCodec="

    .line 637
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 638
    iput-object v7, v0, Lcom/tencent/liteav/txcplayer/f;->d:Ljava/lang/String;

    .line 639
    iput-object v5, v0, Lcom/tencent/liteav/txcplayer/f;->e:Ljava/lang/String;

    .line 640
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/g;->e:Lcom/tencent/liteav/txcplayer/g$a;

    iput-object v5, v4, Lcom/tencent/liteav/txcplayer/g$a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v6, "AudioProfile="

    .line 643
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 644
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/g;->e:Lcom/tencent/liteav/txcplayer/g$a;

    iput-object v5, v4, Lcom/tencent/liteav/txcplayer/g$a;->c:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v6, "AudioBitRate="

    .line 647
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 648
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/g;->e:Lcom/tencent/liteav/txcplayer/g$a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/tencent/liteav/txcplayer/g$a;->d:J

    goto :goto_1

    :cond_9
    const-string v6, "SampleRate="

    .line 651
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 652
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/f;->f:Lcom/tencent/liteav/txcplayer/g;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/g;->e:Lcom/tencent/liteav/txcplayer/g$a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/tencent/liteav/txcplayer/g$a;->g:I

    :cond_a
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-object v0
.end method

.method public getPropertyLong(I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v0, 0xd1

    const/16 v1, 0xd0

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 421
    :pswitch_0
    iget-wide v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTcpSpeed:J

    return-wide v0

    .line 414
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlayableDurationMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getPlayableDurationMs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-wide v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrate:J

    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getPlayableDurationMs()J

    move-result-wide v2

    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getCurrentPositionMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0

    .line 412
    :pswitch_2
    iget-wide v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrate:J

    return-wide v0

    :pswitch_3
    const/16 p1, 0xce

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xcd

    goto :goto_0

    :pswitch_5
    const/16 p1, 0xcc

    goto :goto_0

    :pswitch_6
    const/16 p1, 0xcb

    goto :goto_0

    :pswitch_7
    const/16 p1, 0xca

    goto :goto_0

    :pswitch_8
    const/16 p1, 0xc9

    goto :goto_0

    :pswitch_9
    const/16 p1, 0x67

    goto :goto_0

    :pswitch_a
    const/16 p1, 0x66

    goto :goto_0

    :pswitch_b
    const/16 p1, 0x65

    goto :goto_0

    :pswitch_c
    const/16 p1, 0x64

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v1

    .line 423
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getPropertyLong(I)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRate()F
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mRate:F

    return v0
.end method

.method public getSupportedBitrates()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/txcplayer/b;",
            ">;"
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getProgramInfo()[Lcom/tencent/thumbplayer/api/TPProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 844
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 845
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    if-eqz v5, :cond_2

    .line 847
    new-instance v6, Lcom/tencent/liteav/txcplayer/b;

    invoke-direct {v6}, Lcom/tencent/liteav/txcplayer/b;-><init>()V

    .line 848
    iget-object v7, v5, Lcom/tencent/thumbplayer/api/TPProgramInfo;->resolution:Ljava/lang/String;

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 849
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 850
    aget-object v8, v7, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lcom/tencent/liteav/txcplayer/b;->b:I

    const/4 v8, 0x1

    .line 851
    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcom/tencent/liteav/txcplayer/b;->c:I

    .line 853
    :cond_0
    iget-wide v7, v5, Lcom/tencent/thumbplayer/api/TPProgramInfo;->bandwidth:J

    long-to-int v7, v7

    iput v7, v6, Lcom/tencent/liteav/txcplayer/b;->d:I

    .line 854
    iget v5, v5, Lcom/tencent/thumbplayer/api/TPProgramInfo;->programId:I

    iput v5, v6, Lcom/tencent/liteav/txcplayer/b;->a:I

    .line 855
    iget v5, v6, Lcom/tencent/liteav/txcplayer/b;->a:I

    iget v7, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    if-ne v5, v7, :cond_1

    .line 856
    iget v5, v6, Lcom/tencent/liteav/txcplayer/b;->d:I

    int-to-long v7, v5

    iput-wide v7, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrate:J

    .line 858
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    iget-object v5, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSupportedBitrates item index\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/tencent/liteav/txcplayer/b;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":width:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/tencent/liteav/txcplayer/b;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":height:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/tencent/liteav/txcplayer/b;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":bitrate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/tencent/liteav/txcplayer/b;->d:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 864
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBitrateIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":mBitrate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrate:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 3

    .line 792
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSurface \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method getTPPPlayer()Lcom/tencent/thumbplayer/api/ITPPlayer;
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    return-object v0
.end method

.method public getTrackInfo()[Lcom/tencent/liteav/txcplayer/c/b;
    .locals 6

    .line 734
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getTrackInfo()[Lcom/tencent/thumbplayer/api/TPTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    array-length v1, v0

    if-lez v1, :cond_0

    .line 736
    array-length v1, v0

    new-array v1, v1, [Lcom/tencent/liteav/txcplayer/c/b;

    const/4 v2, 0x0

    .line 737
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 738
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->transferToITrackInfo(Lcom/tencent/thumbplayer/api/TPTrackInfo;)Lcom/tencent/liteav/txcplayer/c/b;

    move-result-object v3

    aput-object v3, v1, v2

    .line 739
    iget-object v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTrackInfo \uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public getVideoHeight()I
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getVideoSarDen \uff1a0"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getVideoSarNum \uff1a0"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoWidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 3

    .line 727
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLooping \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mIsLooping:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-boolean v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mIsLooping:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "isPlayable\uff1a true"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    .line 504
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getCurrentState()I

    move-result v0

    .line 505
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onReceiveFirstVideoRenderEvent()V
    .locals 3

    .line 1040
    invoke-virtual {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getConfig()Lcom/tencent/liteav/txcplayer/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1048
    iput-boolean v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mHasReceiveFirstVideoRenderEvent:Z

    return-void

    :cond_1
    :goto_0
    const/16 v0, 0x7e1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1042
    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyOnInfo(IIILjava/lang/Object;)Z

    const/16 v0, 0x7ea

    .line 1043
    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyOnInfo(IIILjava/lang/Object;)Z

    const/16 v0, 0x7d3

    .line 1044
    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyOnInfo(IIILjava/lang/Object;)Z

    .line 1045
    iput-boolean v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mHasReceiveFirstVideoRenderEvent:Z

    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->pause()V

    return-void
.end method

.method public prepareAsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "prepareAsync"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    const-string v1, "taskInfo_player_start"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->updateTaskInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->prepareAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 434
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public publishAudioToNetwork()V
    .locals 4

    .line 870
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "publishAudioToNetwork \uff1anone"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPublishAudioTunnelId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 873
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "nativeOpenAudioTunnel"

    invoke-direct {p0, v2, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getTXCAudioEngineJNIMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 874
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->callTXCAudioEngineJNIMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 876
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPublishAudioTunnelId:I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 532
    invoke-static {}, Lcom/tencent/liteav/txcplayer/a/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$4;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$4;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reset()V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "taskInfo_player_start"

    invoke-interface {v0, v2, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->updateTaskInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekTo msec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\uff1amEnableAccurateSeek\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mEnableAccurateSeek:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-boolean v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mEnableAccurateSeek:Z

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    long-to-int p1, p1

    iget-object p2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    const/4 p2, 0x3

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->seekTo(II)V

    goto :goto_0

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    long-to-int p1, p1

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->seekTo(I)V

    :goto_0
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioStreamType\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAudioVolume(I)V
    .locals 5

    .line 576
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioVolume\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPlayoutAudioTunnelId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 579
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "nativeSetVolumeToTunnel"

    invoke-direct {p0, v2, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getTXCAudioEngineJNIMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 580
    iget v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPlayoutAudioTunnelId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->callTXCAudioEngineJNIMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    int-to-float p1, p1

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setAudioGainRatio(F)V

    return-void
.end method

.method public setBitrateIndex(I)V
    .locals 6

    .line 804
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBitrateIndex \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 807
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v4, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v5, 0x1f8

    invoke-virtual {v4, v5, v1, v2}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    :cond_0
    if-eq p1, v3, :cond_1

    .line 811
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getProgramInfo()[Lcom/tencent/thumbplayer/api/TPProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 812
    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0, p1, v1, v2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->selectProgram(IJ)V

    .line 816
    :cond_1
    iput p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    return-void
.end method

.method public setConfig(Lcom/tencent/liteav/txcplayer/h;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/h;

    .line 198
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setProxyDataDir(Ljava/lang/String;)V

    .line 199
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcplayer/h;->f()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "VodCacheReserveSizeMB"

    .line 203
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v2}, Lcom/tencent/liteav/txcplayer/h;->f()I

    move-result v2

    mul-int/lit8 v2, v2, 0x32

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "httpproxy_config"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->parseHostConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 207
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 209
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->i()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setEnableAccurateSeek(Z)V

    .line 212
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x64

    .line 213
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->m()J

    move-result-wide v3

    .line 212
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 215
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x65

    .line 216
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->i()Z

    move-result v3

    .line 215
    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildBoolean(IZ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 218
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x66

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 221
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x75

    const-wide/32 v5, 0x9c40

    invoke-virtual {v1, v2, v5, v6}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 224
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x67

    const-wide/16 v5, 0xc8

    invoke-virtual {v1, v2, v5, v6}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 227
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x69

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 230
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x6a

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 233
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x6b

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 236
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x6c

    .line 237
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->c()F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    float-to-long v3, v3

    .line 236
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 239
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x6d

    .line 240
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->a()F

    move-result v3

    float-to-long v3, v3

    .line 239
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 242
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x1f8

    .line 243
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->r()Z

    move-result v3

    int-to-long v3, v3

    .line 242
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 246
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0xb4

    .line 247
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->p()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildString(ILjava/lang/String;)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 248
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0xb5

    .line 249
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->q()Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildString(ILjava/lang/String;)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 252
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0xc8

    const-wide/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 256
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0xc9

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildBoolean(IZ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 260
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x191

    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildBoolean(IZ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 264
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0xca

    const-wide/16 v4, 0x2

    invoke-virtual {v1, v2, v4, v5}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 267
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0xcb

    .line 269
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    move-wide v6, v4

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x4

    .line 267
    :goto_1
    invoke-virtual {v1, v2, v6, v7}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 271
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_3

    .line 272
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x84

    iget v6, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    int-to-long v6, v6

    invoke-virtual {v1, v2, v6, v7}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x85

    .line 277
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->t()J

    move-result-wide v6

    .line 276
    invoke-virtual {v1, v2, v6, v7}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 279
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x1c2

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v2, v6, v7}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 281
    new-instance v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;-><init>()V

    const/16 v1, 0x360

    .line 282
    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->canvasWidth:I

    const/16 v1, 0x1e6

    .line 283
    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->canvasHeight:I

    .line 284
    iget-wide v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const-wide/16 v6, 0x1

    or-long/2addr v1, v6

    iput-wide v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    .line 285
    iget-wide v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    or-long/2addr v1, v4

    iput-wide v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const/4 v1, -0x1

    .line 287
    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->fontColor:I

    .line 288
    iget-wide v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const-wide/16 v4, 0x8

    or-long/2addr v1, v4

    iput-wide v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    .line 290
    iget v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->fontStyleFlags:I

    or-int/2addr v1, v3

    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->fontStyleFlags:I

    .line 291
    iget-wide v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const-wide/16 v4, 0x400

    or-long/2addr v1, v4

    iput-wide v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const v1, 0x3e19999a    # 0.15f

    .line 293
    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->verticalMargin:F

    .line 294
    iget-wide v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const-wide/16 v4, 0x200

    or-long/2addr v1, v4

    iput-wide v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    .line 296
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v2, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v2}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x1fb

    invoke-virtual {v2, v4, v0}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildObject(ILjava/lang/Object;)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 298
    invoke-static {v3}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setP2PEnable(Z)V

    .line 299
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->o()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setVideoInfo(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->f()I

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->f()I

    move-result p1

    mul-int/lit8 p1, p1, 0x32

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setMaxCacheSize(I)V

    :cond_4
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 171
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mDataSource:Ljava/lang/String;

    const-string p2, ".hls?"

    .line 173
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x5

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {p2, p1, p3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setDataSource(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 188
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 158
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 161
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method setEnableAccurateSeek(Z)V
    .locals 0

    .line 1017
    iput-boolean p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mEnableAccurateSeek:Z

    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeepInBackground none\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    .line 665
    invoke-static {p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->setDebugEnable(Z)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 3

    .line 720
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLooping \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iput-boolean p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mIsLooping:Z

    .line 722
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setLoopback(Z)V

    return-void
.end method

.method public setMaxCacheSize(I)V
    .locals 2

    int-to-long v0, p1

    .line 1009
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->setProxyMaxStorageSizeMB(J)V

    return-void
.end method

.method public setRate(F)V
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iput p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mRate:F

    .line 553
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlaySpeedRatio(F)V

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOnWhilePlaying(true) screenOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-boolean v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 484
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_1

    .line 485
    iget-boolean v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mScreenOnWhilePlaying:Z

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    const/4 v0, 0x0

    .line 784
    iput-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 785
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 786
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setSurface(Landroid/view/Surface;)V

    .line 787
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurface mSurface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume leftVolume\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " \uff1arightVolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 566
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOutputMute(Z)V

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOutputMute(Z)V

    .line 570
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    add-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setAudioGainRatio(F)V

    :goto_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3

    .line 698
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWakeMode \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 701
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 703
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    .line 705
    iput-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "power"

    .line 709
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/high16 v2, 0x20000000

    or-int/2addr p2, v2

    .line 710
    const-class v2, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    .line 711
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 710
    invoke-virtual {p1, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 712
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v0, :cond_2

    .line 714
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "TPPlayer start"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-boolean v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mHasReceiveFirstVideoRenderEvent:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x7e1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 442
    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyOnInfo(IIILjava/lang/Object;)Z

    const/16 v0, 0x7ea

    .line 443
    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyOnInfo(IIILjava/lang/Object;)Z

    const/16 v0, 0x7d3

    .line 444
    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->notifyOnInfo(IIILjava/lang/Object;)Z

    .line 445
    iput-boolean v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mHasReceiveFirstVideoRenderEvent:Z

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->l()I

    move-result v0

    if-lez v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcplayer/h;->l()I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "taskinfo_buffer_size_byte"

    invoke-interface {v0, v2, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->updateTaskInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "taskInfo_player_start"

    invoke-interface {v0, v2, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->updateTaskInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getCurrentState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getCurrentState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 458
    invoke-static {}, Lcom/tencent/liteav/txcplayer/a/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$3;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$3;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public unpublishAudioToNetwork()V
    .locals 5

    .line 883
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "unpublishAudioToNetwork \uff1anone"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPublishAudioTunnelId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Class;

    .line 886
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "nativeCloseAudioTunnel"

    invoke-direct {p0, v3, v2}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getTXCAudioEngineJNIMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    .line 887
    iget v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPublishAudioTunnelId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-direct {p0, v2, v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->callTXCAudioEngineJNIMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    iput v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPublishAudioTunnelId:I

    :cond_0
    return-void
.end method

.method updateBitrate(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1025
    iget-wide v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTotalFileSize:J

    cmp-long v3, v3, p1

    if-eqz v3, :cond_0

    .line 1026
    iput-wide p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTotalFileSize:J

    .line 1027
    invoke-virtual {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getDuration()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-lez v0, :cond_0

    if-lez v2, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    const-wide/16 v0, 0x8

    mul-long/2addr p1, v0

    .line 1029
    div-long/2addr p1, v3

    iput-wide p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrate:J

    .line 1030
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateBitrate:mTotalFileSize:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTotalFileSize:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":bitRate:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrate:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateTcpSpeed(J)V
    .locals 0

    .line 1021
    iput-wide p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTcpSpeed:J

    return-void
.end method
