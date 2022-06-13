.class public Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;
.super Lcom/huawei/multimedia/liteav/audiokit/interfaces/AudioFeaturesKit;
.source "HwAudioKaraokeFeatureKit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;
    }
.end annotation


# static fields
.field private static final ENGINE_CLASS_NAME:Ljava/lang/String; = "com.huawei.multimedia.audioengine.HwAudioKaraokeFeatureService"

.field private static final TAG:Ljava/lang/String; = "HwAudioKit.HwAudioKaraokeFeatureKit"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

.field private mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;

.field private mIsServiceConnected:Z

.field private mService:Landroid/os/IBinder;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/AudioFeaturesKit;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIsServiceConnected:Z

    .line 43
    iput-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mService:Landroid/os/IBinder;

    .line 45
    new-instance v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$1;

    invoke-direct {v0, p0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$1;-><init>(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;)V

    iput-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mConnection:Landroid/content/ServiceConnection;

    .line 66
    new-instance v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$2;

    invoke-direct {v0, p0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$2;-><init>(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;)V

    iput-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 76
    invoke-static {}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->getInstance()Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    .line 77
    iput-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;

    return-object p0
.end method

.method static synthetic access$002(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;)Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;

    return-object p1
.end method

.method static synthetic access$102(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIsServiceConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Landroid/content/Context;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->serviceInit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;Landroid/os/IBinder;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->serviceLinkToDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$700(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;)Landroid/os/IBinder;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$702(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mService:Landroid/os/IBinder;

    return-object p1
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 3

    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v1, "bindService"

    .line 107
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIsServiceConnected:Z

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mConnection:Landroid/content/ServiceConnection;

    const-string v2, "com.huawei.multimedia.audioengine.HwAudioKaraokeFeatureService"

    invoke-virtual {v0, p1, v1, v2}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private serviceInit(Ljava/lang/String;)V
    .locals 2

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIsServiceConnected:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;

    invoke-interface {v0, p1}, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;->init(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 181
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v1, "isFeatureSupported,RemoteException ex : %s"

    invoke-static {p1, v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private serviceLinkToDeath(Landroid/os/IBinder;)V
    .locals 2

    .line 81
    iput-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mService:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    iget-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->onCallBack(I)V

    const-string p1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v0, "serviceLinkToDeath, RemoteException"

    .line 88
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    iget-boolean v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIsServiceConnected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v3, "destroy, mIsServiceConnected = %b"

    invoke-static {v1, v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-boolean v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIsServiceConnected:Z

    if-eqz v0, :cond_0

    .line 116
    iput-boolean v2, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIsServiceConnected:Z

    .line 117
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public enableKaraokeFeature(Z)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 135
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v4, "enableKaraokeFeature, enable = %b"

    invoke-static {v2, v4, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIsServiceConnected:Z

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;

    invoke-interface {v1, p1}, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;->enableKaraokeFeature(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 141
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "enableKaraokeFeature,RemoteException ex : %s"

    invoke-static {v2, p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method public getKaraokeLatency()I
    .locals 4

    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v1, "getKaraokeLatency"

    .line 148
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIsServiceConnected:Z

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;

    invoke-interface {v1}, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;->getKaraokeLatency()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 154
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "getKaraokeLatency,RemoteException ex : %s"

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v1, "initialize"

    .line 93
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "initialize, context is null"

    .line 95
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    invoke-virtual {v1, p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->isAudioKitSupport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mFeatureKitManager:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->onCallBack(I)V

    const-string p1, "initialize, not install AudioEngine"

    .line 100
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->bindService(Landroid/content/Context;)V

    return-void
.end method

.method public isKaraokeFeatureSupport()Z
    .locals 4

    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    const-string v1, "isKaraokeFeatureSupport"

    .line 122
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIsServiceConnected:Z

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;

    invoke-interface {v2}, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;->isKaraokeFeatureSupport()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 128
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v2, "isFeatureSupported,RemoteException ex : %s"

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method

.method public setParameter(Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;I)I
    .locals 6

    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    if-nez p1, :cond_0

    const/16 p1, 0x70f

    return p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "parame.getParameName() = %s, parameValue = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 165
    invoke-virtual {p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->getParameName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v3, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIsServiceConnected:Z

    if-eqz v3, :cond_1

    .line 167
    iget-object v3, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;

    invoke-virtual {p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit$ParameName;->getParameName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, p2}, Lcom/huawei/multimedia/liteav/audioengine/IHwAudioKaraokeFeature;->setParameter(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 170
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "setParameter,RemoteException ex : %s"

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p1, -0x2

    return p1
.end method
