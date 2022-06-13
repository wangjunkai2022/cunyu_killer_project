.class public Lcom/tencent/liteav/audio/TXCAudioEngine;
.super Ljava/lang/Object;
.source "TXCAudioEngine.java"

# interfaces
.implements Lcom/tencent/liteav/audio/impl/b;
.implements Lcom/tencent/liteav/audio/impl/earmonitor/a;


# static fields
.field private static final EVT_AUDIO_DEVICE_RESTART_WHEN_USING_STABLE_SAMPLERATE:I = 0x2748

.field private static final EVT_AUDIO_DEVICE_ROLLBACK_TO_STABLE_SAMPLERATE:I = 0x2747

.field private static final SYSTEM_AUDIO_KIT_RESTART_INTERVAL:J

.field private static final TAG:Ljava/lang/String; = "AudioEngine :TXCAudioEngine_java"

.field private static volatile has_init:Z

.field private static has_trae:Z

.field private static mAudioCoreDataListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/audio/e;",
            ">;"
        }
    .end annotation
.end field

.field protected static mContext:Landroid/content/Context;

.field protected static final mJitterDataListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/audio/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mJitterDataListenerMapLock:Ljava/lang/Object;

.field protected static final mJitterEventListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/audio/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mJitterEventListenerMapLock:Ljava/lang/Object;

.field static sInstance:Lcom/tencent/liteav/audio/TXCAudioEngine;


# instance fields
.field private mAudioKit:Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;

.field private final mCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/a;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mDeviceIsRecording:Z

.field protected mIsCallComed:Z

.field protected mIsCustomRecord:Z

.field private final mStartStopRemoteAudioMutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->SYSTEM_AUDIO_KIT_RESTART_INTERVAL:J

    .line 50
    new-instance v0, Lcom/tencent/liteav/audio/TXCAudioEngine;

    invoke-direct {v0}, Lcom/tencent/liteav/audio/TXCAudioEngine;-><init>()V

    sput-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->sInstance:Lcom/tencent/liteav/audio/TXCAudioEngine;

    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 63
    sput-boolean v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->has_trae:Z

    .line 64
    sput-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mAudioCoreDataListener:Ljava/lang/ref/WeakReference;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mJitterDataListenerMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mJitterDataListenerMapLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mJitterEventListenerMap:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mJitterEventListenerMapLock:Ljava/lang/Object;

    .line 70
    sput-boolean v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->has_init:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mDeviceIsRecording:Z

    .line 61
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mIsCustomRecord:Z

    .line 349
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mStartStopRemoteAudioMutex:Ljava/lang/Object;

    .line 677
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mIsCallComed:Z

    return-void
.end method

.method public static declared-synchronized CreateInstance(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const-class v0, Lcom/tencent/liteav/audio/TXCAudioEngine;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/audio/TXCAudioEngine;->CreateInstanceWithoutInitDevice(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 74
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeInitAudioDevice()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized CreateInstanceWithoutInitDevice(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    const-class v0, Lcom/tencent/liteav/audio/TXCAudioEngine;

    monitor-enter v0

    :try_start_0
    const-string v1, "AudioEngine :TXCAudioEngine_java"

    const-string v2, "CreateInstance: "

    .line 80
    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->mContext:Landroid/content/Context;

    .line 82
    sget-boolean v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->has_init:Z

    if-eqz v1, :cond_0

    const-string p0, "AudioEngine :TXCAudioEngine_java"

    const-string p1, "CreateInstance already created~ "

    .line 83
    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit v0

    return-void

    .line 87
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeCheckTraeEngine(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 88
    sput-boolean v2, Lcom/tencent/liteav/audio/TXCAudioEngine;->has_trae:Z

    .line 90
    :cond_1
    sget-boolean v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->has_trae:Z

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeUseSysAudioDevice(Z)V

    .line 91
    invoke-static {p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetAudioDeviceDSPEnabled(Z)V

    .line 92
    sget-boolean v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->has_trae:Z

    if-eqz v1, :cond_3

    .line 93
    invoke-static {p0}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->InitTraeEngineLibrary(Landroid/content/Context;)V

    .line 94
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetAudioCompatibleConfig(Ljava/lang/String;)V

    .line 97
    sget-object p1, Lcom/tencent/liteav/audio/TXCAudioEngine;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getAudioResourceDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeInitBeforeEngineCreate(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/audio/impl/a;->a(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Lcom/tencent/liteav/audio/impl/a;->a()Lcom/tencent/liteav/audio/impl/a;

    move-result-object p0

    sget-object p1, Lcom/tencent/liteav/audio/TXCAudioEngine;->sInstance:Lcom/tencent/liteav/audio/TXCAudioEngine;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/b;)V

    if-nez p2, :cond_4

    .line 101
    sget-object p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeNewAudioSessionDuplicate(Landroid/content/Context;)V

    goto :goto_1

    .line 104
    :cond_3
    invoke-static {}, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->getInstance()Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;

    .line 105
    invoke-static {}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->getInstance()Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;

    .line 107
    :cond_4
    :goto_1
    sput-boolean v2, Lcom/tencent/liteav/audio/TXCAudioEngine;->has_init:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized UninitInstance()V
    .locals 3

    const-class v0, Lcom/tencent/liteav/audio/TXCAudioEngine;

    monitor-enter v0

    :try_start_0
    const-string v1, "AudioEngine :TXCAudioEngine_java"

    const-string v2, "uninit audio engine instance"

    .line 115
    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeUninitAudioDevice()V

    const/4 v1, 0x0

    .line 117
    sput-boolean v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->has_init:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic access$000(Lcom/tencent/liteav/audio/TXCAudioEngine;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/tencent/liteav/audio/TXCAudioEngine;->startSystemAudioKit()V

    return-void
.end method

.method public static buildTRAEConfig(Landroid/content/Context;Ljava/lang/Boolean;ZJ)Ljava/lang/String;
    .locals 5

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sharp {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  os android\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  trae {\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    dev {\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "        intf 2\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  closeOpensl "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "n"

    goto :goto_0

    :cond_0
    const-string p1, "y"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioSettings;->getInstance()Lcom/tencent/liteav/audio/TXCAudioSettings;

    move-result-object p1

    const-wide/16 v1, 0x0

    const-string v3, "timestamp_rollback_to_stable_samplerate"

    invoke-virtual {p1, v3, v1, v2}, Lcom/tencent/liteav/audio/TXCAudioSettings;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    cmp-long p1, v3, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 758
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v3, v1

    const-string p3, "AudioEngine :TXCAudioEngine_java"

    const-string p4, "low latency samplerate, enable: %b, isBlocked: %b, blockTime: %d"

    .line 757
    invoke-static {p3, p4, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "  }\n"

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 759
    invoke-static {p0}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getLowLatencySampleRate(Landroid/content/Context;)I

    move-result p0

    const p1, 0xbb80

    if-ne p0, p1, :cond_3

    .line 760
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  traemodes 1|2\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 761
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  cap {\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 762
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "    hw_sr 48000\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 763
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 764
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  play {\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 765
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 766
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  }"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    }\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 769
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 770
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createManufacturerAudioKit(Landroid/content/Context;)Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;
    .locals 1

    .line 856
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Manufacturer()Ljava/lang/String;

    move-result-object p1

    const-string v0, "huawei"

    .line 857
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 858
    new-instance p1, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;

    invoke-direct {p1}, Lcom/tencent/liteav/audio/impl/earmonitor/HuaweiAudioKit;-><init>()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static enableAudioEarMonitoring(Z)V
    .locals 2

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAudioEarMonitoring: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {p0}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeEnableAudioEarMonitoring(Z)V

    return-void
.end method

.method public static enableAudioVolumeEvaluation(ZI)Z
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAudioVolumeEvaluation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeEnableAudioVolumeEvaluation(ZI)V

    const/4 p0, 0x1

    return p0
.end method

.method private static getAudioResourceDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 864
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "liteav"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "audiores"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 866
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AudioEngine :TXCAudioEngine_java"

    const-string v1, "create audio resource directory failed."

    .line 868
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;
    .locals 1

    .line 54
    sget-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->sInstance:Lcom/tencent/liteav/audio/TXCAudioEngine;

    return-object v0
.end method

.method private static getLowLatencySampleRate(Landroid/content/Context;)I
    .locals 2

    .line 775
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const-string v0, "audio"

    .line 776
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 779
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "AudioEngine :TXCAudioEngine_java"

    const-string v1, "can\'t parse low latency samplerate"

    .line 781
    invoke-static {v0, v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getMixingPlayoutVolumeLevel()I
    .locals 1

    .line 583
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeGetMixingPlayoutVolumeLevel()I

    move-result v0

    return v0
.end method

.method private handleAudioEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "timestamp_rollback_to_stable_samplerate"

    const/16 p3, 0x2747

    if-ne p2, p3, :cond_0

    .line 535
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioSettings;->getInstance()Lcom/tencent/liteav/audio/TXCAudioSettings;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p1, p3, p4}, Lcom/tencent/liteav/audio/TXCAudioSettings;->setLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x2748

    if-ne p2, p3, :cond_1

    .line 538
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioSettings;->getInstance()Lcom/tencent/liteav/audio/TXCAudioSettings;

    move-result-object p2

    const-wide/16 p3, 0x0

    invoke-virtual {p2, p1, p3, p4}, Lcom/tencent/liteav/audio/TXCAudioSettings;->setLong(Ljava/lang/String;J)V

    const-string p1, "AudioEngine :TXCAudioEngine_java"

    const-string p2, "audio device restart when using stable samplerate"

    .line 539
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static hasTrae()Z
    .locals 1

    .line 111
    sget-boolean v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->has_trae:Z

    return v0
.end method

.method public static onAudioJitterBufferNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 403
    sget-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mJitterEventListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->mJitterEventListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    sget-object v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->mJitterEventListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/audio/c;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 407
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioJitterBufferNotify  cur state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-interface {v1, p0, p1, p2}, Lcom/tencent/liteav/audio/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 407
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static onAudioPlayPcmData(Ljava/lang/String;[BJII[B)V
    .locals 9

    .line 380
    sget-object v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->mJitterDataListenerMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    sget-object v2, Lcom/tencent/liteav/audio/TXCAudioEngine;->mJitterDataListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 382
    sget-object v2, Lcom/tencent/liteav/audio/TXCAudioEngine;->mJitterDataListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/audio/e;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 384
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    move-object v1, v2

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move-object v8, p6

    .line 387
    invoke-interface/range {v1 .. v8}, Lcom/tencent/liteav/audio/e;->a(Ljava/lang/String;[BJII[B)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 384
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static onCorePlayPcmData([BJII)V
    .locals 9

    .line 574
    sget-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mAudioCoreDataListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/liteav/audio/e;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    .line 577
    invoke-interface/range {v1 .. v8}, Lcom/tencent/liteav/audio/e;->a(Ljava/lang/String;[BJII[B)V

    :cond_0
    return-void
.end method

.method public static setAudioEarMonitoringVolume(I)V
    .locals 2

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioEarMonitoringVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {p0}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetAudioEarMonitoringVolume(I)V

    return-void
.end method

.method public static setAudioRoute(I)V
    .locals 2

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioRoute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-static {p0}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetAudioRoute(I)V

    return-void
.end method

.method public static setPlayoutDataListener(Lcom/tencent/liteav/audio/e;)V
    .locals 1

    .line 569
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mAudioCoreDataListener:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 570
    :goto_0
    invoke-static {p0}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetPlayoutDataListener(Z)V

    return-void
.end method

.method public static setSystemVolumeType(I)V
    .locals 2

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSystemVolumeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-static {p0}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetSystemVolumeType(I)V

    return-void
.end method

.method private startSystemAudioKit()V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mAudioKit:Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/TXCAudioEngine;->createManufacturerAudioKit(Landroid/content/Context;)Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mAudioKit:Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;

    .line 797
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mAudioKit:Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;

    if-eqz v0, :cond_1

    .line 798
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeNotifySystemEarMonitoringInitializing()V

    .line 799
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mAudioKit:Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;

    sget-object v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;->initialize(Landroid/content/Context;Lcom/tencent/liteav/audio/impl/earmonitor/a;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 801
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetSystemEarMonitoring(Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public EnableMixMode(Z)V
    .locals 0

    .line 186
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeEnableMixMode(Z)V

    return-void
.end method

.method public IsDataCallbackFormatInvalid(III)Z
    .locals 0

    .line 662
    invoke-static {p1, p2, p3}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeIsDataCallbackFormatInvalid(III)Z

    move-result p1

    return p1
.end method

.method public SetAudioCacheParams(II)V
    .locals 0

    .line 674
    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetAudioCacheParams(II)V

    return-void
.end method

.method public addEventCallback(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/a;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 477
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetEventCallbackEnabled(Z)V

    .line 478
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clean()V
    .locals 0

    .line 666
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeClean()V

    return-void
.end method

.method public enableAutoRestartDevice(Z)V
    .locals 0

    .line 709
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeEnableAutoRestartDevice(Z)V

    return-void
.end method

.method public enableCaptureEOSMode(Z)Z
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableEosMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeEnableCaptureEOSMode(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public enableDeviceAbnormalDetection(Z)V
    .locals 0

    .line 729
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeEnableDeviceAbnormalDetection(Z)V

    return-void
.end method

.method public enableEncodedDataCallback(Z)V
    .locals 0

    .line 194
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeEnableEncodedDataCallback(Z)V

    return-void
.end method

.method public enableEncodedDataPackWithTRAEHeaderCallback(Z)V
    .locals 0

    .line 190
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeEnableEncodedDataPackWithTRAEHeaderCallback(Z)V

    return-void
.end method

.method public enableInbandFEC(Z)V
    .locals 0

    .line 713
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeEnableInbandFEC(Z)V

    return-void
.end method

.method public enableSoftAEC(ZI)V
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSoftAEC: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p2, 0x0

    .line 293
    :cond_0
    invoke-static {p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetSoftAEC(I)V

    return-void
.end method

.method public enableSoftAGC(ZI)V
    .locals 2

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSoftAGC: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p2, 0x0

    .line 310
    :cond_0
    invoke-static {p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetSoftAGC(I)V

    return-void
.end method

.method public enableSoftANS(ZI)V
    .locals 2

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSoftANS: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p2, 0x0

    .line 302
    :cond_0
    invoke-static {p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetSoftANS(I)V

    return-void
.end method

.method public forceCallbackMixedPlayAudioFrame(Z)V
    .locals 0

    .line 670
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeForceCallbackMixedPlayAudioFrame(Z)V

    return-void
.end method

.method public getAECType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .line 127
    sget-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAudioEncoderConfig()Lcom/tencent/liteav/audio/TXCAudioEncoderConfig;
    .locals 1

    .line 155
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeGetEncoderConfig()Lcom/tencent/liteav/audio/TXCAudioEncoderConfig;

    move-result-object v0

    return-object v0
.end method

.method public getEncoderChannels()I
    .locals 1

    .line 151
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeGetEncoderChannels()I

    move-result v0

    return v0
.end method

.method public getEncoderSampleRate()I
    .locals 1

    .line 147
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeGetEncoderSampleRate()I

    move-result v0

    return v0
.end method

.method public getPlayAECType()I
    .locals 1

    .line 464
    sget-boolean v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->has_trae:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayChannels()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getPlaySampleRate()I
    .locals 1

    const v0, 0xbb80

    return v0
.end method

.method public getRemotePlayoutVolumeLevel(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 452
    :cond_0
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeGetRemotePlayoutVolumeLevel(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getSoftwareCaptureVolumeLevel()I
    .locals 1

    .line 342
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeGetSoftwareCaptureVolumeLevel()I

    move-result v0

    return v0
.end method

.method public getStatus(I)Lcom/tencent/liteav/basic/module/StatusBucket;
    .locals 0

    .line 587
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->getStatus(I)Lcom/tencent/liteav/basic/module/StatusBucket;

    move-result-object p1

    return-object p1
.end method

.method public isAudioDeviceCapturing()Z
    .locals 3

    .line 332
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeIsAudioDeviceCapturing()Z

    move-result v0

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public isRemoteAudioPlaying(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 445
    :cond_0
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeIsRemoteAudioPlaying(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public muteLocalAudio(Z)Z
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecordMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeMuteLocalAudio(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public muteRemoteAudio(Ljava/lang/String;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeMuteRemoteAudio(Ljava/lang/String;Z)V

    return-void
.end method

.method public muteRemoteAudioInSpeaker(Ljava/lang/String;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 431
    :cond_0
    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeMuteRemoteAudioInSpeaker(Ljava/lang/String;Z)V

    return-void
.end method

.method public onAudioKitError(Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;)V
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mAudioKit:Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const-string p1, "AudioEngine :TXCAudioEngine_java"

    const-string v0, "onAudioKitError"

    .line 839
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object p1, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mAudioKit:Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;

    if-eqz p1, :cond_1

    .line 843
    invoke-interface {p1}, Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;->stopSystemEarMonitoring()V

    .line 844
    iget-object p1, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mAudioKit:Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;

    invoke-interface {p1}, Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;->uninitialize()V

    const/4 p1, 0x0

    .line 845
    iput-object p1, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mAudioKit:Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;

    .line 847
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tencent/liteav/audio/TXCAudioEngine$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/audio/TXCAudioEngine$1;-><init>(Lcom/tencent/liteav/audio/TXCAudioEngine;)V

    sget-wide v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->SYSTEM_AUDIO_KIT_RESTART_INTERVAL:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAudioKitInitFinished(Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;Z)V
    .locals 2

    .line 808
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mAudioKit:Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 812
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "AudioEngine :TXCAudioEngine_java"

    const-string v1, "system audio kit init finished, ret: %b."

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 814
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetSystemEarMonitoring(Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;)V

    :cond_1
    return-void
.end method

.method public onCallStateChanged(I)V
    .locals 3

    const-string v0, "AudioEngine :TXCAudioEngine_java"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "TelephonyManager.CALL_STATE_OFFHOOK!"

    .line 687
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->pauseAudioCapture(Z)V

    .line 689
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->interruptAllMusics()V

    .line 690
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->interruptAllMusics()V

    .line 691
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getAutoCacheHolder()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->interruptAllMusics()V

    .line 692
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mIsCallComed:Z

    goto :goto_0

    :cond_1
    const-string p1, "TelephonyManager.CALL_STATE_RINGING!"

    .line 683
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "TelephonyManager.CALL_STATE_IDLE!"

    .line 696
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-boolean p1, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mIsCallComed:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 698
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mIsCallComed:Z

    .line 699
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->resumeAudioCapture()V

    .line 700
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->recoverAllMusics()V

    .line 701
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->recoverAllMusics()V

    .line 702
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getAutoCacheHolder()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->recoverAllMusics()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onEarMonitoringInitialized(Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;Z)V
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mAudioKit:Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 825
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "AudioEngine :TXCAudioEngine_java"

    const-string v1, "onEarMonitoringInitialized result: %b"

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 827
    iget-object p1, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mAudioKit:Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;

    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetSystemEarMonitoring(Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 829
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetSystemEarMonitoring(Lcom/tencent/liteav/audio/impl/earmonitor/TXSystemAudioKit;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    iget-object v1, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 546
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 547
    monitor-exit v1

    return-void

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 550
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 551
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 552
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/liteav/basic/c/a;

    if-eqz v3, :cond_1

    .line 554
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 556
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 559
    :cond_2
    iget-object v2, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    const/4 v2, 0x0

    .line 560
    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetEventCallbackEnabled(Z)V

    .line 562
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/basic/c/a;

    .line 564
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/tencent/liteav/basic/c/a;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 562
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 482
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/audio/TXCAudioEngine;->handleAudioEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    iget-object v1, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 485
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 486
    monitor-exit v1

    return-void

    .line 488
    :cond_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 489
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 490
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 491
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/liteav/basic/c/a;

    if-eqz v3, :cond_1

    .line 493
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 495
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 498
    :cond_2
    iget-object v2, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    const/4 v2, 0x0

    .line 499
    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetEventCallbackEnabled(Z)V

    .line 501
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/basic/c/a;

    .line 503
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/tencent/liteav/basic/c/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 501
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onWarning(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 508
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/audio/TXCAudioEngine;->handleAudioEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    iget-object v1, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 511
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 512
    monitor-exit v1

    return-void

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 515
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 516
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 517
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/liteav/basic/c/a;

    if-eqz v3, :cond_1

    .line 519
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 524
    :cond_2
    iget-object v2, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    const/4 v2, 0x0

    .line 525
    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetEventCallbackEnabled(Z)V

    .line 527
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/basic/c/a;

    .line 529
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/tencent/liteav/basic/c/a;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 527
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public pauseAudioCapture(Z)I
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseAudioCapture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->pauseAudioCapture(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public pauseLocalAudio()V
    .locals 0

    .line 178
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativePauseLocalAudio()V

    return-void
.end method

.method public resumeAudioCapture()I
    .locals 2

    const-string v0, "AudioEngine :TXCAudioEngine_java"

    const-string v1, "resumeRecord"

    .line 204
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->resumeAudioCapture()V

    const/4 v0, 0x0

    return v0
.end method

.method public resumeLocalAudio()V
    .locals 0

    .line 182
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeResumeLocalAudio()V

    return-void
.end method

.method public sendCustomPCMData(Lcom/tencent/liteav/basic/structs/a;)V
    .locals 0

    .line 218
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->sendCustomPCMData(Lcom/tencent/liteav/basic/structs/a;)V

    return-void
.end method

.method public sendCustomPCMData([BII)V
    .locals 0

    .line 214
    invoke-static {p1, p2, p3}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->sendCustomPCMData([BII)V

    return-void
.end method

.method public setAudioCaptureDataListener(Lcom/tencent/liteav/audio/f;)Z
    .locals 2

    const-string v0, "AudioEngine :TXCAudioEngine_java"

    const-string v1, "setRecordListener "

    .line 222
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 224
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->setAudioCaptureDataListener(Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->setAudioCaptureDataListener(Ljava/lang/ref/WeakReference;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setAudioDumpingListener(Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI$a;)V
    .locals 0

    .line 619
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->SetAudioDumpingListener(Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI$a;)V

    return-void
.end method

.method public setAudioEncoderParam(II)Z
    .locals 0

    .line 319
    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetAudioEncoderParam(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public setAudioFrameExtraData([B)V
    .locals 0

    .line 210
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetAudioFrameExtraData([B)V

    return-void
.end method

.method public setAudioQuality(II)V
    .locals 0

    .line 131
    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetAudioQuality(II)V

    return-void
.end method

.method public setAudioQuality(IIIIII)V
    .locals 0

    .line 135
    invoke-static/range {p1 .. p6}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetAudioQualityEx(IIIIII)V

    return-void
.end method

.method public setCaptureDataCallbackFormat(III)V
    .locals 2

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCaptureDataCallbackFormat: sampleRate-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channels-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-static {p1, p2, p3}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetCaptureDataCallbackFormat(III)V

    return-void
.end method

.method public setCaptureEqualizationParam(II)Z
    .locals 2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCaptureEqualizationParam: bandIndex ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bandGain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetCaptureEqualizationParam(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public setCaptureEqualizationType(I)Z
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCaptureEqualizationType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetCaptureEqualizationType(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setEncoderChannels(I)V
    .locals 0

    .line 143
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetEncoderChannels(I)V

    return-void
.end method

.method public setEncoderFECPercent(F)Z
    .locals 0

    .line 314
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetEncoderFECPercent(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public setEncoderSampleRate(I)V
    .locals 0

    .line 139
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetEncoderSampleRate(I)V

    return-void
.end method

.method public setLocalAudioMuteAction(II)V
    .locals 0

    .line 733
    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetLocalAudioMuteAction(II)V

    return-void
.end method

.method public setLocalProcessedDataCallbackFormat(III)V
    .locals 2

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalProcessedDataCallbackFormat: sampleRate-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channels-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-static {p1, p2, p3}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetLocalProcessedDataCallbackFormat(III)V

    return-void
.end method

.method public setMaxSelectedPlayStreams(I)V
    .locals 0

    .line 717
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetMaxSelectedPlayStreams(I)V

    return-void
.end method

.method public setMixedAllDataListener(Lcom/tencent/liteav/audio/d;)V
    .locals 0

    .line 725
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->setMixedAllDataListener(Lcom/tencent/liteav/audio/d;)V

    return-void
.end method

.method public setMixingPlayoutVolume(F)Z
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayoutVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetMixingPlayoutVolume(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public setPlayoutDataCallbackFormat(III)V
    .locals 2

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayoutDataCallbackFormat: sampleRate-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channels-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-static {p1, p2, p3}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetPlayoutDataCallbackFormat(III)V

    return-void
.end method

.method public setRemoteAudioCacheParams(Ljava/lang/String;ZIII)V
    .locals 0

    .line 417
    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetRemoteAudioCacheParams(Ljava/lang/String;ZIII)V

    return-void
.end method

.method public setRemoteAudioParallel(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 721
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetRemoteAudioParallel([Ljava/lang/String;I)V

    return-void
.end method

.method public setRemoteAudioStreamEventListener(Ljava/lang/String;Lcom/tencent/liteav/audio/c;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 396
    :cond_0
    sget-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mJitterEventListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->mJitterEventListenerMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRemotePlayoutVolume(Ljava/lang/String;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetRemotePlayoutVolume(Ljava/lang/String;I)V

    return-void
.end method

.method public setRemoteStreamDataCallbackFormat(Ljava/lang/String;III)V
    .locals 2

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRemoteStreamDataCallbackFormat: id-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sampleRate-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channels-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-static {p1, p2, p3, p4}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetRemoteStreamDataCallbackFormat(Ljava/lang/String;III)V

    return-void
.end method

.method public setReverbParamType(IF)Z
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReverbParamType: reverbParamType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetRecordReverbParam(IF)V

    const/4 p1, 0x1

    return p1
.end method

.method public setReverbType(I)Z
    .locals 0

    .line 238
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetRecordReverb(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setServer3AConfig(III)V
    .locals 0

    .line 285
    invoke-static {p1, p2, p3}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetServer3AConfig(III)V

    return-void
.end method

.method public setSetAudioEngineRemoteStreamDataListener(Ljava/lang/String;Lcom/tencent/liteav/audio/e;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 372
    :cond_0
    sget-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mJitterDataListenerMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->mJitterDataListenerMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 375
    :goto_0
    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetAudioEngineRemoteStreamDataListener(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 374
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSoftwareCaptureVolume(F)Z
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecordVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetSoftwareCaptureVolume(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public setSystemAudioKitEnabled()V
    .locals 0

    .line 789
    invoke-direct {p0}, Lcom/tencent/liteav/audio/TXCAudioEngine;->startSystemAudioKit()V

    return-void
.end method

.method public setVoiceChangerType(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;)Z
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceChangerType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->getNativeValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->getNativeValue()I

    move-result p1

    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetCaptureVoiceChanger(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setVoicePitch(D)Z
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoicePitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetVoicePitch(D)V

    const/4 p1, 0x1

    return p1
.end method

.method public startLocalAudio(IZ)I
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startLocalAudio audioFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioEngine :TXCAudioEngine_java"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "Please call CreateInstance fisrt!!!"

    .line 161
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x385

    return p1

    .line 164
    :cond_0
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->InitTraeEngineLibrary(Landroid/content/Context;)V

    .line 165
    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeStartLocalAudio(IZ)V

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mDeviceIsRecording:Z

    const/4 p1, 0x0

    return p1
.end method

.method public startLocalAudioDumping(IIILjava/lang/String;)I
    .locals 0

    .line 611
    invoke-static {p1, p2, p3, p4}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeStartLocalAudioDumping(IIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public startRemoteAudio(Ljava/lang/String;Z)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mStartStopRemoteAudioMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/audio/TXCAudioEngine;->sInstance:Lcom/tencent/liteav/audio/TXCAudioEngine;

    invoke-static {v1, p2, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeStartRemoteAudio(Lcom/tencent/liteav/audio/TXCAudioEngine;ZLjava/lang/String;)Ljava/lang/String;

    .line 354
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object p2

    const-string v0, "Audio"

    const-string v1, "LIVE_JitterCycle"

    invoke-virtual {p2, v0, v1}, Lcom/tencent/liteav/basic/f/c;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetRemoteAudioJitterCycle(Ljava/lang/String;J)V

    .line 356
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object p2

    const-string v0, "Audio"

    const-string v1, "LoadingThreshold"

    invoke-virtual {p2, v0, v1}, Lcom/tencent/liteav/basic/f/c;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeSetRemoteAudioBlockThreshold(Ljava/lang/String;J)V

    return-void

    :catchall_0
    move-exception p1

    .line 354
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopLocalAudio()I
    .locals 2

    const-string v0, "AudioEngine :TXCAudioEngine_java"

    const-string v1, "stopLocalAudio"

    .line 171
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeStopLocalAudio()V

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mDeviceIsRecording:Z

    return v0
.end method

.method public stopLocalAudioDumping()V
    .locals 0

    .line 615
    invoke-static {}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeStopLocalAudioDumping()V

    return-void
.end method

.method public stopRemoteAudio(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioEngine;->mStartStopRemoteAudioMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_0
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/TXCAudioEngineJNI;->nativeStopRemoteAudio(Ljava/lang/String;)V

    .line 365
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
