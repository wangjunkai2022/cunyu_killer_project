.class public Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;
.super Ljava/lang/Object;
.source "HuaweiAudioKit.java"

# interfaces
.implements Lcom/huawei/multimedia/liteav/audiokit/interfaces/IAudioKitCallback;
.implements Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;
.implements Lcom/tencent/liteav/basic/util/j$a;


# static fields
.field private static final BACKGROUND_CHECK_INTERVAL:I

.field private static final TAG:Ljava/lang/String; = "HuaweiAudioKit"


# instance fields
.field private mAudioKitCallback:Lcom/tencent/liteav/audio/impl/earmonitor/a;

.field private mBackgroundCheckTimer:Lcom/tencent/liteav/basic/util/j;

.field private mHwAudioKit:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

.field private mIsAudioKitIniting:Z

.field private mIsBackgroundWhenLastCheck:Z

.field private mIsEarMonitoringEnabled:Z

.field private mKaraokeKit:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->BACKGROUND_CHECK_INTERVAL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mUiHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mIsAudioKitIniting:Z

    .line 34
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mIsEarMonitoringEnabled:Z

    .line 35
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mIsBackgroundWhenLastCheck:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mHwAudioKit:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mHwAudioKit:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    return-object p1
.end method

.method static synthetic access$102(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mIsAudioKitIniting:Z

    return p1
.end method

.method static synthetic access$202(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;Lcom/tencent/liteav/audio/impl/earmonitor/a;)Lcom/tencent/liteav/audio/impl/earmonitor/a;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mAudioKitCallback:Lcom/tencent/liteav/audio/impl/earmonitor/a;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mKaraokeKit:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mKaraokeKit:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->startTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->startSystemEarMonitoringInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->stopTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->stopSystemEarMonitoringInternal()V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->setSystemEarMonitoringVolumeInternal(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->dealWithAudioKitResultInternal(I)V

    return-void
.end method

.method private dealWithAudioKitResultInternal(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "HuaweiAudioKit"

    const-string v4, "on audio kit callback: %d"

    invoke-static {v2, v4, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_2

    .line 169
    iput-boolean v3, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mIsAudioKitIniting:Z

    .line 170
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mAudioKitCallback:Lcom/tencent/liteav/audio/impl/earmonitor/a;

    if-eqz p1, :cond_0

    .line 171
    invoke-interface {p1, p0, v0}, Lcom/tencent/liteav/audio/impl/earmonitor/a;->onAudioKitInitFinished(Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;Z)V

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mHwAudioKit:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    sget-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$FeatureType;->HWAUDIO_FEATURE_KARAOKE:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$FeatureType;

    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->isFeatureSupported(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$FeatureType;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mHwAudioKit:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;

    sget-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$FeatureType;->HWAUDIO_FEATURE_KARAOKE:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$FeatureType;

    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->createFeature(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$FeatureType;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/AudioFeaturesKit;

    move-result-object p1

    check-cast p1, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mKaraokeKit:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    goto :goto_0

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mAudioKitCallback:Lcom/tencent/liteav/audio/impl/earmonitor/a;

    if-eqz p1, :cond_5

    .line 177
    invoke-interface {p1, p0, v3}, Lcom/tencent/liteav/audio/impl/earmonitor/a;->onEarMonitoringInitialized(Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;Z)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_3

    .line 180
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mAudioKitCallback:Lcom/tencent/liteav/audio/impl/earmonitor/a;

    if-eqz p1, :cond_5

    .line 181
    invoke-interface {p1, p0, v0}, Lcom/tencent/liteav/audio/impl/earmonitor/a;->onEarMonitoringInitialized(Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;Z)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x70d

    if-eq p1, v0, :cond_5

    .line 184
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mAudioKitCallback:Lcom/tencent/liteav/audio/impl/earmonitor/a;

    if-eqz p1, :cond_5

    .line 185
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mIsAudioKitIniting:Z

    if-eqz v0, :cond_4

    .line 186
    invoke-interface {p1, p0, v3}, Lcom/tencent/liteav/audio/impl/earmonitor/a;->onAudioKitInitFinished(Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;Z)V

    .line 187
    iput-boolean v3, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mIsAudioKitIniting:Z

    goto :goto_0

    .line 189
    :cond_4
    invoke-interface {p1, p0}, Lcom/tencent/liteav/audio/impl/earmonitor/a;->onAudioKitError(Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private setSystemEarMonitoringVolumeInternal(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mKaraokeKit:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "HuaweiAudioKit"

    const-string v2, "setSystemEarMonitoringVolumeInternal: %d, kit: %s"

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mKaraokeKit:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    if-eqz v0, :cond_1

    .line 149
    sget-object v1, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->CMD_SET_VOCAL_VOLUME_BASE:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->setParameter(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;I)I

    move-result p1

    const/16 v0, 0x70e

    const/4 v1, -0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    .line 151
    :cond_0
    invoke-direct {p0, v1}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->dealWithAudioKitResultInternal(I)V

    :cond_1
    return-void
.end method

.method private startSystemEarMonitoringInternal()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 97
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mKaraokeKit:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "HuaweiAudioKit"

    const-string v3, "startSystemEarMonitoring kit: %s"

    invoke-static {v2, v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mKaraokeKit:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    if-nez v1, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {v1, v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->enableKaraokeFeature(Z)I

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x70d

    if-eq v1, v2, :cond_1

    const/16 v0, 0x3eb

    .line 103
    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->dealWithAudioKitResultInternal(I)V

    goto :goto_0

    .line 105
    :cond_1
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mIsEarMonitoringEnabled:Z

    :goto_0
    return-void
.end method

.method private startTimer()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mBackgroundCheckTimer:Lcom/tencent/liteav/basic/util/j;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "HuaweiAudioKit"

    const-string v1, "start background checking timer"

    .line 91
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/tencent/liteav/basic/util/j;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/tencent/liteav/basic/util/j;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/basic/util/j$a;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mBackgroundCheckTimer:Lcom/tencent/liteav/basic/util/j;

    .line 93
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mBackgroundCheckTimer:Lcom/tencent/liteav/basic/util/j;

    const/4 v1, 0x0

    sget v2, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->BACKGROUND_CHECK_INTERVAL:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/basic/util/j;->a(II)V

    return-void
.end method

.method private stopSystemEarMonitoringInternal()V
    .locals 2

    const-string v0, "HuaweiAudioKit"

    const-string v1, "stopSystemEarMonitoring"

    .line 129
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mKaraokeKit:Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->enableKaraokeFeature(Z)I

    .line 132
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mIsEarMonitoringEnabled:Z

    :cond_0
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mBackgroundCheckTimer:Lcom/tencent/liteav/basic/util/j;

    if-eqz v0, :cond_0

    const-string v0, "HuaweiAudioKit"

    const-string v1, "stop background checking timer"

    .line 122
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mBackgroundCheckTimer:Lcom/tencent/liteav/basic/util/j;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/util/j;->a()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mBackgroundCheckTimer:Lcom/tencent/liteav/basic/util/j;

    :cond_0
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/tencent/liteav/audio/impl/earmonitor/a;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$1;-><init>(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;Lcom/tencent/liteav/audio/impl/earmonitor/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResult(I)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$6;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$6;-><init>(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTimeout()V
    .locals 3

    .line 197
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/basic/util/h;->a(Landroid/content/Context;)Z

    move-result v0

    .line 198
    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mIsEarMonitoringEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mIsBackgroundWhenLastCheck:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->stopSystemEarMonitoringInternal()V

    .line 200
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->startSystemEarMonitoringInternal()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 201
    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mIsBackgroundWhenLastCheck:Z

    if-nez v1, :cond_1

    const-string v1, "HuaweiAudioKit"

    const-string v2, "app has gone to background."

    .line 202
    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mIsBackgroundWhenLastCheck:Z

    return-void
.end method

.method public setSystemEarMonitoringVolume(I)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$5;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$5;-><init>(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startSystemEarMonitoring()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$3;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$3;-><init>(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopSystemEarMonitoring()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$4;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$4;-><init>(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public uninitialize()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit$2;-><init>(Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
