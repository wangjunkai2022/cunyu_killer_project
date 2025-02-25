.class public Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;
.super Ljava/lang/Object;
.source "HwAudioKit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$FeatureType;
    }
.end annotation


# static fields
.field private static final DEFAULT_FEATURE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENGINE_CLASS_NAME:Ljava/lang/String; = "com.huawei.multimedia.audioengine.HwAudioEngineService"

.field private static final TAG:Ljava/lang/String; = "HwAudioKit.HwAudioKit"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

.field private mIHwAudioEngine:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

.field private mIsServiceConnected:Z

.field private mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->DEFAULT_FEATURE_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/multimedia/liteav/audiokit/interfaces/IAudioKitCallback;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mContext:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIHwAudioEngine:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIsServiceConnected:Z

    .line 47
    iput-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mService:Landroid/os/IBinder;

    .line 49
    new-instance v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$1;

    invoke-direct {v0, p0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$1;-><init>(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)V

    iput-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mConnection:Landroid/content/ServiceConnection;

    .line 70
    new-instance v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$2;

    invoke-direct {v0, p0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$2;-><init>(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)V

    iput-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 81
    invoke-static {}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->getInstance()Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    .line 82
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    invoke-virtual {v0, p2}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->setCallBack(Lcom/huawei/multimedia/liteav/audiokit/interfaces/IAudioKitCallback;)V

    .line 83
    iput-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIHwAudioEngine:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    return-object p0
.end method

.method static synthetic access$002(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;)Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIHwAudioEngine:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    return-object p1
.end method

.method static synthetic access$102(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIsServiceConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->serviceInit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;Landroid/os/IBinder;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->serviceLinkToDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$700(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;)Landroid/os/IBinder;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$702(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mService:Landroid/os/IBinder;

    return-object p1
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    iget-boolean v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIsServiceConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HwAudioKit.HwAudioKit"

    const-string v2, "bindService, mIsServiceConnected = %b"

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIsServiceConnected:Z

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mConnection:Landroid/content/ServiceConnection;

    const-string v2, "com.huawei.multimedia.audioengine.HwAudioEngineService"

    invoke-virtual {v0, p1, v1, v2}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private serviceInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "HwAudioKit.HwAudioKit"

    const-string v1, "serviceInit"

    .line 164
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIHwAudioEngine:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIsServiceConnected:Z

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIHwAudioEngine:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    invoke-interface {v1, p1, p2}, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;->init(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 170
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "isFeatureSupported,RemoteException ex : %s"

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private serviceLinkToDeath(Landroid/os/IBinder;)V
    .locals 2

    .line 87
    iput-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mService:Landroid/os/IBinder;

    .line 89
    :try_start_0
    iget-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mService:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mService:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    iget-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->onCallBack(I)V

    const-string p1, "HwAudioKit.HwAudioKit"

    const-string v0, "serviceLinkToDeath, RemoteException"

    .line 94
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public createFeature(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$FeatureType;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/AudioFeaturesKit;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/huawei/multimedia/liteav/audiokit/interfaces/AudioFeaturesKit;",
            ">(",
            "Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$FeatureType;",
            ")TT;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$FeatureType;->getFeatureType()I

    move-result p1

    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->createFeatureKit(ILandroid/content/Context;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/AudioFeaturesKit;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public destroy()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 121
    iget-boolean v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIsServiceConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HwAudioKit.HwAudioKit"

    const-string v3, "destroy, mIsServiceConnected = %b"

    invoke-static {v1, v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-boolean v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIsServiceConnected:Z

    if-eqz v0, :cond_0

    .line 123
    iput-boolean v2, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIsServiceConnected:Z

    .line 124
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public getSupportedFeatures()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "HwAudioKit.HwAudioKit"

    const-string v1, "getSupportedFeatures"

    .line 129
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIHwAudioEngine:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIsServiceConnected:Z

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIHwAudioEngine:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    invoke-interface {v1}, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;->getSupportedFeatures()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v1, "getSupportedFeatures, createFeature,wait bind service fail"

    .line 135
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "getSupportedFeatures, service not bind"

    .line 137
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->DEFAULT_FEATURE_LIST:Ljava/util/List;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    const-string v0, "HwAudioKit.HwAudioKit"

    const-string v1, "initialize"

    .line 99
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "mContext is null"

    .line 101
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->onCallBack(I)V

    return-void

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    invoke-virtual {v2, v1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->isAudioKitSupport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "not install AudioKitEngine"

    .line 106
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->onCallBack(I)V

    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->bindService(Landroid/content/Context;)V

    return-void
.end method

.method public isFeatureSupported(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$FeatureType;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 145
    invoke-virtual {p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$FeatureType;->getFeatureType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "HwAudioKit.HwAudioKit"

    const-string v4, "isFeatureSupported, type = %d"

    invoke-static {v3, v4, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIHwAudioEngine:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIsServiceConnected:Z

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit;->mIHwAudioEngine:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;

    invoke-virtual {p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKit$FeatureType;->getFeatureType()I

    move-result p1

    invoke-interface {v2, p1}, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioEngine;->isFeatureSupported(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 151
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "isFeatureSupported,RemoteException ex : %s"

    invoke-static {v3, p1, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v0
.end method
