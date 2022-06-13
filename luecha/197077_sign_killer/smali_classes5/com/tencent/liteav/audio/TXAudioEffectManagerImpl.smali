.class public Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;
.super Ljava/lang/Object;
.source "TXAudioEffectManagerImpl.java"

# interfaces
.implements Lcom/tencent/liteav/audio/TXAudioEffectManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$TXAudioEffectManagerListener;,
        Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioEffectManagerAutoCacheHolder;,
        Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioEffectManagerCacheHolder;,
        Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioEffectManagerHolder;
    }
.end annotation


# static fields
.field private static final EFFECT_PLAYER_ID_TYPE:I = 0x2

.field private static final NEW_BGM_PLAYER_ID_TYPE:I = 0x1

.field private static final OLD_BGM_PLAYER_ID_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioCenter:TXAudioEffectManager"

.field private static final mMainHandler:Landroid/os/Handler;

.field private static final mMusicObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCopyrightedMediaProcessor:Lcom/tencent/liteav/audio/b;


# instance fields
.field private mAudioEffectManagerListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$TXAudioEffectManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdType:I

.field private final mPlayingMusicIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMusicObserverMap:Ljava/util/HashMap;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMainHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Lcom/tencent/liteav/audio/b;

    invoke-direct {v0}, Lcom/tencent/liteav/audio/b;-><init>()V

    sput-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->sCopyrightedMediaProcessor:Lcom/tencent/liteav/audio/b;

    .line 34
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    .line 35
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mPlayingMusicIDList:Ljava/util/List;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mAudioEffectManagerListener:Ljava/lang/ref/WeakReference;

    .line 63
    iput p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;-><init>(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    return p0
.end method

.method static synthetic access$500(II)J
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .locals 1

    .line 16
    sget-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMusicObserverMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;J)J
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeGetCurrentPositionInMs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$800()Lcom/tencent/liteav/audio/b;
    .locals 1

    .line 16
    sget-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->sCopyrightedMediaProcessor:Lcom/tencent/liteav/audio/b;

    return-object v0
.end method

.method private static convertIdToInt64(II)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static getAutoCacheHolder()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;
    .locals 1

    .line 59
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioEffectManagerAutoCacheHolder;->access$300()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;
    .locals 1

    .line 55
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioEffectManagerCacheHolder;->access$200()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;
    .locals 1

    .line 51
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioEffectManagerHolder;->access$100()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeGetAvailableBGMBytes(J)J
.end method

.method private native nativeGetCurrentPositionInMs(J)J
.end method

.method private native nativeGetDurationMS(J)J
.end method

.method private static native nativeGetDurationMSByPath(Ljava/lang/String;)J
.end method

.method private native nativePause(J)V
.end method

.method private native nativeResume(J)V
.end method

.method private native nativeSeekToPosition(JJ)V
.end method

.method private native nativeSeekToTime(JI)V
.end method

.method private native nativeSetAllVolume(I)V
.end method

.method private native nativeSetChangerType(JI)V
.end method

.method private native nativeSetMuteDataDurationToPublish(JI)V
.end method

.method private native nativeSetPitch(JF)V
.end method

.method private native nativeSetPlayoutSpeedRate(JF)V
.end method

.method private native nativeSetPlayoutVolume(JI)V
.end method

.method private native nativeSetPublishVolume(JI)V
.end method

.method private native nativeSetReverbType(JI)V
.end method

.method private native nativeSetSpeedRate(JF)V
.end method

.method private native nativeSetVolume(JI)V
.end method

.method private native nativeStartPlay(JLjava/lang/String;IZZZ)Z
.end method

.method private native nativeStartPlayRange(JJJ)V
.end method

.method private native nativeStopPlay(J)V
.end method

.method public static onEffectFinish(JI)V
    .locals 2

    .line 325
    sget-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$3;-><init>(JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onEffectLoop(JJ)V
    .locals 2

    .line 369
    sget-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$6;-><init>(JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onEffectProgress(JJJ)V
    .locals 9

    .line 354
    sget-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v8, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$5;

    move-object v1, v8

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$5;-><init>(JJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static onEffectStart(JI)V
    .locals 2

    .line 340
    sget-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$4;-><init>(JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public enableVoiceEarMonitor(Z)V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVoiceEarMonitor enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mAudioEffectManagerListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$TXAudioEffectManagerListener;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$TXAudioEffectManagerListener;->onSwitchVoiceEarMonitor(Z)V

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->enableAudioEarMonitoring(Z)V

    return-void
.end method

.method public getAvailableBGMBytes(I)J
    .locals 2

    .line 290
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeGetAvailableBGMBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMusicCurrentPosInMS(I)J
    .locals 2

    .line 286
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeGetCurrentPositionInMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMusicDurationInMS(Ljava/lang/String;)J
    .locals 2

    .line 311
    sget-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->sCopyrightedMediaProcessor:Lcom/tencent/liteav/audio/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 315
    :cond_0
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeGetDurationMSByPath(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMusicDurationInMSById(I)J
    .locals 2

    .line 319
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeGetDurationMS(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public interruptAllMusics()V
    .locals 3

    const-string v0, "AudioCenter:TXAudioEffectManager"

    const-string v1, "interruptAllMusics"

    .line 206
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mPlayingMusicIDList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 208
    invoke-direct {p0, v1, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativePause(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pausePlayMusic(I)V
    .locals 4

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pausePlayMusic id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    .line 189
    iget-object p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mPlayingMusicIDList:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 190
    sget-object p1, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->sCopyrightedMediaProcessor:Lcom/tencent/liteav/audio/b;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeGetCurrentPositionInMs(J)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/liteav/audio/b;->b(JJ)V

    .line 191
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativePause(J)V

    return-void
.end method

.method public preloadMusic(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)Z
    .locals 13

    const-string v0, "AudioBGMPlayer"

    const-string v1, "loadMusic"

    .line 160
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-wide v0, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->startTimeMS:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 162
    iget-wide v0, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->endTimeMS:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 163
    sget-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->sCopyrightedMediaProcessor:Lcom/tencent/liteav/audio/b;

    iget-object v1, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 164
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    iget v1, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->id:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v11

    .line 168
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mPlayingMusicIDList:Ljava/util/List;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mPlayingMusicIDList:Ljava/util/List;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, p0

    move-wide v1, v11

    move-wide v3, v4

    move-wide v5, v8

    .line 171
    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStartPlayRange(JJJ)V

    .line 172
    iget v4, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->loopCount:I

    iget-boolean v5, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->publish:Z

    iget-boolean v6, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->isShortFile:Z

    const/4 v7, 0x1

    move-object v3, v10

    invoke-direct/range {v0 .. v7}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStartPlay(JLjava/lang/String;IZZZ)Z

    move-result v0

    return v0
.end method

.method public recoverAllMusics()V
    .locals 3

    const-string v0, "AudioCenter:TXAudioEffectManager"

    const-string v1, "recoverAllMusics"

    .line 213
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mPlayingMusicIDList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 215
    invoke-direct {p0, v1, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeResume(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resumePlayMusic(I)V
    .locals 4

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumePlayMusic id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    .line 198
    iget-object p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mPlayingMusicIDList:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mPlayingMusicIDList:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    sget-object p1, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->sCopyrightedMediaProcessor:Lcom/tencent/liteav/audio/b;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeGetCurrentPositionInMs(J)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/liteav/audio/b;->c(JJ)V

    .line 202
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeResume(J)V

    return-void
.end method

.method public seekMusicToPosInBytes(IJ)V
    .locals 2

    .line 294
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSeekToPosition(JJ)V

    return-void
.end method

.method public seekMusicToPosInMS(II)V
    .locals 4

    .line 299
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    .line 300
    sget-object p1, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->sCopyrightedMediaProcessor:Lcom/tencent/liteav/audio/b;

    int-to-long v2, p2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/liteav/audio/b;->d(JJ)V

    .line 301
    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSeekToTime(JI)V

    return-void
.end method

.method public setAllMusicVolume(I)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetAllVolume(I)V

    return-void
.end method

.method public setAudioEffectManagerListener(Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$TXAudioEffectManagerListener;)V
    .locals 1

    .line 387
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mAudioEffectManagerListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setAudioPlayoutVolume(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 110
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setMixingPlayoutVolume(F)Z

    return-void
.end method

.method public setMusicChangerType(II)V
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicChangerType id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " voiceChangerType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetChangerType(JI)V

    return-void
.end method

.method public setMusicObserver(ILcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;)V
    .locals 1

    .line 115
    new-instance v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$1;-><init>(Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;I)V

    .line 126
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    sget-object p2, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 131
    :cond_0
    sget-object p1, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setMusicPitch(IF)V
    .locals 2

    .line 262
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetPitch(JF)V

    return-void
.end method

.method public setMusicPlayoutSpeedRate(IF)V
    .locals 2

    .line 271
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetPlayoutSpeedRate(JF)V

    return-void
.end method

.method public setMusicPlayoutVolume(II)V
    .locals 2

    .line 252
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetPlayoutVolume(JI)V

    return-void
.end method

.method public setMusicPublishVolume(II)V
    .locals 2

    .line 247
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetPublishVolume(JI)V

    return-void
.end method

.method public setMusicReverbType(II)V
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicReverbType id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reverbType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetReverbType(JI)V

    return-void
.end method

.method public setMusicSpeedRate(IF)V
    .locals 2

    .line 267
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetSpeedRate(JF)V

    return-void
.end method

.method public setMusicVolume(II)V
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMusicVolume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetVolume(JI)V

    return-void
.end method

.method public setMuteDataDurationToPublish(II)V
    .locals 2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMuteDataDurationToPublish id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " millis:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMuteDataDurationToPublish(JI)V

    return-void
.end method

.method public setVoiceCaptureVolume(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 99
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setSoftwareCaptureVolume(F)Z

    return-void
.end method

.method public setVoiceChangerType(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceChangerType voiceChangerType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setVoiceChangerType(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;)Z

    return-void
.end method

.method public setVoiceEarMonitorVolume(I)V
    .locals 0

    .line 81
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setAudioEarMonitoringVolume(I)V

    return-void
.end method

.method public setVoicePitch(D)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoicePitch pitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setVoicePitch(D)Z

    return-void
.end method

.method public setVoiceReverbType(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;)V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceReverbType reverbType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->getNativeValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setReverbType(I)Z

    return-void
.end method

.method public startPlayMusic(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)Z
    .locals 13

    const/4 v0, 0x0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    if-eqz p1, :cond_5

    .line 137
    iget-object v2, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 141
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPlayMusic param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-wide v1, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->startTimeMS:J

    .line 143
    iget-wide v3, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->endTimeMS:J

    const-wide/16 v5, 0x0

    cmp-long v8, v1, v5

    if-gez v8, :cond_1

    move-wide v8, v5

    goto :goto_0

    :cond_1
    move-wide v8, v1

    :goto_0
    cmp-long v1, v3, v5

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    move-wide v5, v3

    .line 146
    :goto_1
    sget-object v1, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->sCopyrightedMediaProcessor:Lcom/tencent/liteav/audio/b;

    iget-object v2, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/audio/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 147
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 150
    :cond_3
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    iget v1, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->id:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v11

    .line 151
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mPlayingMusicIDList:Ljava/util/List;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mPlayingMusicIDList:Ljava/util/List;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_4
    sget-object v0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->sCopyrightedMediaProcessor:Lcom/tencent/liteav/audio/b;

    iget-object v1, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->path:Ljava/lang/String;

    invoke-virtual {v0, v11, v12, v1}, Lcom/tencent/liteav/audio/b;->a(JLjava/lang/String;)V

    move-object v0, p0

    move-wide v1, v11

    move-wide v3, v8

    .line 155
    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStartPlayRange(JJJ)V

    .line 156
    iget v4, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->loopCount:I

    iget-boolean v5, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->publish:Z

    iget-boolean v6, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->isShortFile:Z

    const/4 v7, 0x0

    move-object v3, v10

    invoke-direct/range {v0 .. v7}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStartPlay(JLjava/lang/String;IZZZ)Z

    move-result v0

    return v0

    .line 138
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPlayMusic failed. invalid param:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public stopAllMusics()V
    .locals 1

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->stopAllMusics(Z)V

    return-void
.end method

.method public stopAllMusics(Z)V
    .locals 5

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAllMusics, cleanObserver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mPlayingMusicIDList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 226
    invoke-direct {p0, v1, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStopPlay(J)V

    if-eqz p1, :cond_0

    .line 229
    sget-object v3, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$2;-><init>(Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 237
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mPlayingMusicIDList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public stopPlayMusic(I)V
    .locals 4

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPlayMusic id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXAudioEffectManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mIdType:I

    invoke-static {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertIdToInt64(II)J

    move-result-wide v0

    .line 180
    iget-object p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mPlayingMusicIDList:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 181
    sget-object p1, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->sCopyrightedMediaProcessor:Lcom/tencent/liteav/audio/b;

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeGetCurrentPositionInMs(J)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/liteav/audio/b;->f(JJ)V

    .line 182
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStopPlay(J)V

    return-void
.end method
