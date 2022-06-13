.class public Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;
.super Ljava/lang/Object;
.source "FeatureKitManager.java"


# static fields
.field private static final BIND_SERVICE_LOCK:Ljava/lang/Object;

.field private static final ENGINE_PACKAGE_NAME:Ljava/lang/String; = "com.huawei.multimedia.audioengine"

.field private static final NEW_FEATUREMANAGER_LOCK:Ljava/lang/Object;

.field private static final PACKAGE_INFO_FLAG:I = 0x0

.field private static final SET_CALL_BACK_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "HwAudioKit.FeatureKitManager"

.field private static final UNBIND_SERVICE_LOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;


# instance fields
.field private mCallBack:Lcom/huawei/multimedia/liteav/audiokit/interfaces/IAudioKitCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->SET_CALL_BACK_LOCK:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->NEW_FEATUREMANAGER_LOCK:Ljava/lang/Object;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->BIND_SERVICE_LOCK:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->UNBIND_SERVICE_LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->sInstance:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->mCallBack:Lcom/huawei/multimedia/liteav/audiokit/interfaces/IAudioKitCallback;

    return-void
.end method

.method protected static getInstance()Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;
    .locals 2

    .line 29
    sget-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->NEW_FEATUREMANAGER_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->sInstance:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    invoke-direct {v1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;-><init>()V

    sput-object v1, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->sInstance:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    .line 33
    :cond_0
    sget-object v1, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->sInstance:Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected bindService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 4

    .line 53
    sget-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->BIND_SERVICE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 55
    :try_start_0
    monitor-exit v0

    return-void

    .line 57
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.huawei.multimedia.audioengine"

    .line 58
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x1

    :try_start_1
    const-string v2, "HwAudioKit.FeatureKitManager"

    const-string v3, "bindService"

    .line 60
    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "HwAudioKit.FeatureKitManager"

    const-string v1, "bindService, SecurityException, %s"

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 63
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {p2, v1, p3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected createFeatureKit(ILandroid/content/Context;)Lcom/huawei/multimedia/liteav/audiokit/interfaces/AudioFeaturesKit;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/huawei/multimedia/liteav/audiokit/interfaces/AudioFeaturesKit;",
            ">(I",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "HwAudioKit.FeatureKitManager"

    const-string v3, "createFeatureKit, type = %d"

    invoke-static {v2, v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    if-eq p1, v0, :cond_1

    const-string p1, "createFeatureKit, type error"

    .line 48
    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 44
    :cond_1
    new-instance p1, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;

    invoke-direct {p1, p2}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p1, p2}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/HwAudioKaraokeFeatureKit;->initialize(Landroid/content/Context;)V

    return-object p1
.end method

.method protected getCallBack()Lcom/huawei/multimedia/liteav/audiokit/interfaces/IAudioKitCallback;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->mCallBack:Lcom/huawei/multimedia/liteav/audiokit/interfaces/IAudioKitCallback;

    return-object v0
.end method

.method protected isAudioKitSupport(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "HwAudioKit.FeatureKitManager"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    const-string v2, "com.huawei.multimedia.audioengine"

    .line 84
    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "packageInfo is null"

    .line 86
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const-string p1, "isAudioKitSupport ,NameNotFoundException"

    .line 91
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onCallBack(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "HwAudioKit.FeatureKitManager"

    const-string v2, "onCallBack, result = %d"

    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->SET_CALL_BACK_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->getCallBack()Lcom/huawei/multimedia/liteav/audiokit/interfaces/IAudioKitCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->getCallBack()Lcom/huawei/multimedia/liteav/audiokit/interfaces/IAudioKitCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huawei/multimedia/liteav/audiokit/interfaces/IAudioKitCallback;->onResult(I)V

    .line 103
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected setCallBack(Lcom/huawei/multimedia/liteav/audiokit/interfaces/IAudioKitCallback;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->mCallBack:Lcom/huawei/multimedia/liteav/audiokit/interfaces/IAudioKitCallback;

    return-void
.end method

.method protected unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2

    const-string v0, "HwAudioKit.FeatureKitManager"

    const-string v1, "unbindService"

    .line 69
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/huawei/multimedia/liteav/audiokit/interfaces/FeatureKitManager;->UNBIND_SERVICE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 74
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
