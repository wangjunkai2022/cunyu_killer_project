.class public Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector$HeadsetPluginReceiver;,
        Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector$HeadsetPluginListener;
    }
.end annotation


# static fields
.field private static final AUDIO_TYPE_BLUETOOTH_A2DP:I = 0x2

.field private static final AUDIO_TYPE_BUILTIN_OTHERS:I = 0x63

.field private static final AUDIO_TYPE_BUILTIN_SPEAKER:I = 0x0

.field private static final AUDIO_TYPE_HEADPHONES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TPHeadsetPluginDetector"

.field private static hasRegisterReceiver:Z

.field private static isInitted:Z

.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector$HeadsetPluginListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurOutputs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mCurOutputs:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mCurOutputs:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->getAudioOutputs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->notifyAudioOutputStateChange(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public static addHeadsetPluginListener(Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector$HeadsetPluginListener;)V
    .locals 2

    const-class v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->listeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->hasRegisterReceiver:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->registerReceiver()V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->hasRegisterReceiver:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static deinit()V
    .locals 4

    const-class v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->isInitted:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->isInitted:Z

    const/4 v1, 0x2

    const-string v2, "TPHeadsetPluginDetector"

    const-string v3, "HeadsetPluginDetector deinit succeed!"

    invoke-static {v1, v2, v3}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getAudioManager()Landroid/media/AudioManager;
    .locals 5

    sget-boolean v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->isInitted:Z

    const/4 v1, 0x0

    const-string v2, "TPHeadsetPluginDetector"

    const/4 v3, 0x4

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "getAudioManager failed, context is null, maybe is invalid!"

    :goto_0
    invoke-static {v3, v2, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_2

    const-string v0, "getAudioManager failed, audioMgr is null!"

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const-string v0, "getAudioManager failed, HeadsetPluginDetector is not init yet!"

    goto :goto_0
.end method

.method private static getAudioOutputs()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-lt v2, v3, :cond_4

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v2, v1

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v7, v1, v3

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    if-ne v8, v6, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_1
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->isHeadsetPlugin()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->isBluetoothPlugin()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method public static getCurrentRoutes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mCurOutputs:Ljava/util/Set;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->isInitted:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mContextRef:Ljava/lang/ref/WeakReference;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->isInitted:Z

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->initCurrentOutputs()V

    const/4 p0, 0x2

    const-string v1, "TPHeadsetPluginDetector"

    const-string v2, "HeadsetPluginDetector init succeed!"

    invoke-static {p0, v1, v2}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static initCurrentOutputs()V
    .locals 1

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->getAudioOutputs()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mCurOutputs:Ljava/util/Set;

    return-void
.end method

.method public static isAudioRouteTypeOn(I)Z
    .locals 1

    sget-object v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mCurOutputs:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isBluetoothPlugin()Z
    .locals 1

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    return v0
.end method

.method public static isHeadsetPlugin()Z
    .locals 1

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private static notifyAudioOutputStateChange(Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    sput-object p1, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mCurOutputs:Ljava/util/Set;

    const-class v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector$HeadsetPluginListener;

    invoke-interface {v2, p0, p1}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector$HeadsetPluginListener;->onHeadsetPlugin(Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static registerDeviceCallback()Z
    .locals 3

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v1, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector$1;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector$1;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    const/4 v0, 0x1

    return v0
.end method

.method private static registerReceiver()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->registerDeviceCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector$HeadsetPluginReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector$HeadsetPluginReceiver;-><init>(Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector$1;)V

    sput-object v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    sget-boolean v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->isInitted:Z

    const-string v1, "TPHeadsetPluginDetector"

    const/4 v2, 0x4

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_3

    const-string v0, "registerReceiver failed, context is null, maybe is invalid!"

    invoke-static {v2, v1, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_4
    :goto_0
    const-string v0, "registerReceiver failed, TPHeadsetPluginDetector is not init yet!"

    invoke-static {v2, v1, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static removeHeadsetPluginListener(Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector$HeadsetPluginListener;)V
    .locals 2

    const-class v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->listeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->hasRegisterReceiver:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->unregisterReceiver()V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->hasRegisterReceiver:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static unregisterReceiver()V
    .locals 3

    sget-boolean v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->isInitted:Z

    const-string v1, "TPHeadsetPluginDetector"

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "registerReceiver failed, context is null, maybe is invalid!"

    invoke-static {v2, v1, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v1, Lcom/tencent/thumbplayer/core/common/TPHeadsetPluginDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "registerReceiver failed, HeadsetPluginDetector is not init yet!"

    invoke-static {v2, v1, v0}, Lcom/tencent/thumbplayer/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
