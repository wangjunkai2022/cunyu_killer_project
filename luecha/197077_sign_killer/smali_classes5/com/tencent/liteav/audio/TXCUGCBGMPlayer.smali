.class public Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;
.super Ljava/lang/Object;
.source "TXCUGCBGMPlayer.java"

# interfaces
.implements Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/TXCUGCBGMPlayer$a;
    }
.end annotation


# static fields
.field private static final PLAY_ERR_OPEN:I = -0x1

.field private static final PLAY_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioCenter:TXCUGCBGMPlayer"


# instance fields
.field private mBGMId:I

.field private mEndTimeMS:J

.field private mIsRunning:Z

.field private mSeekBytes:J

.field private mSpeedRate:F

.field private mStartTimeMS:J

.field private mVolume:F

.field private mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/audio/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 17
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mWeakListener:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mIsRunning:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mVolume:F

    .line 28
    iput v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mSpeedRate:F

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mStartTimeMS:J

    .line 30
    iput-wide v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mEndTimeMS:J

    .line 31
    iput-wide v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mSeekBytes:J

    const/high16 v0, -0x80000000

    .line 32
    iput v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    .line 46
    invoke-static {}, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->getInstance()Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/audio/TXCUGCBGMPlayer$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;
    .locals 1

    .line 42
    invoke-static {}, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer$a;->a()Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;

    move-result-object v0

    return-object v0
.end method

.method private onPlayEnd(I)V
    .locals 1

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mWeakListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v0, p1}, Lcom/tencent/liteav/audio/g;->a(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 175
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onPlayProgress(JJ)V
    .locals 1

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mWeakListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 187
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 189
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/liteav/audio/g;->a(JJ)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 187
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onPlayStart()V
    .locals 1

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mWeakListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 165
    invoke-interface {v0}, Lcom/tencent/liteav/audio/g;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 163
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDurationMS(Ljava/lang/String;)J
    .locals 2

    .line 154
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getMusicDurationInMS(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onComplete(II)V
    .locals 0

    .line 205
    invoke-direct {p0, p2}, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->onPlayEnd(I)V

    return-void
.end method

.method public onPlayProgress(IJJ)V
    .locals 0

    .line 195
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->onPlayProgress(JJ)V

    return-void
.end method

.method public onStart(II)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->onPlayStart()V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "AudioCenter:TXCUGCBGMPlayer"

    const-string v1, "pause"

    .line 101
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v0

    iget v1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->pausePlayMusic(I)V

    return-void
.end method

.method public playFromTime(JJ)V
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPlayRange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXCUGCBGMPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput-wide p1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mStartTimeMS:J

    .line 135
    iput-wide p3, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mEndTimeMS:J

    return-void
.end method

.method public resume()V
    .locals 2

    const-string v0, "AudioCenter:TXCUGCBGMPlayer"

    const-string v1, "resume"

    .line 106
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v0

    iget v1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->resumePlayMusic(I)V

    return-void
.end method

.method public seekBytes(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-string v3, "AudioCenter:TXCUGCBGMPlayer"

    if-gez v2, :cond_0

    const-string p1, "seek bytes can not be negative. change to 0"

    .line 141
    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide p1, v0

    .line 144
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v2

    iget v4, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    invoke-virtual {v2, v4}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getAvailableBGMBytes(I)J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    .line 146
    rem-long/2addr p1, v4

    .line 148
    :cond_1
    iput-wide p1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mSeekBytes:J

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSeekBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mSeekBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v0

    iget v1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->seekMusicToPosInBytes(IJ)V

    return-void
.end method

.method public setChangerType(I)V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changerType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXCUGCBGMPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v0

    iget v1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    invoke-virtual {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->setMusicChangerType(II)V

    return-void
.end method

.method public declared-synchronized setOnPlayListener(Lcom/tencent/liteav/audio/g;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 51
    :try_start_0
    iput-object v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mWeakListener:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setReverbType(I)V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "int reverbType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXCUGCBGMPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v0

    iget v1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    invoke-virtual {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->setMusicReverbType(II)V

    return-void
.end method

.method public setSpeedRate(F)V
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeedRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXCUGCBGMPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iput p1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mSpeedRate:F

    .line 119
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v0

    iget v1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    invoke-virtual {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->setMusicPlayoutSpeedRate(IF)V

    return-void
.end method

.method public setVolume(F)V
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXCUGCBGMPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput p1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mVolume:F

    .line 113
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v0

    iget v1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->setMusicVolume(II)V

    return-void
.end method

.method public startPlay(Ljava/lang/String;Z)V
    .locals 5

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "record:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXCUGCBGMPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 61
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mIsRunning:Z

    if-eqz v0, :cond_1

    const-string v0, "BGM is playing, restarting..."

    .line 62
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->stopPlay()V

    :cond_1
    const-wide/16 v2, 0x0

    .line 65
    iput-wide v2, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mSeekBytes:J

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mIsRunning:Z

    .line 68
    new-instance v2, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;

    iget v3, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    invoke-direct {v2, v3, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;-><init>(ILjava/lang/String;)V

    .line 69
    iput-boolean p2, v2, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->publish:Z

    const/4 v3, 0x0

    .line 70
    iput v3, v2, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->loopCount:I

    .line 71
    iget-wide v3, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mStartTimeMS:J

    iput-wide v3, v2, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->startTimeMS:J

    .line 72
    iget-wide v3, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mEndTimeMS:J

    iput-wide v3, v2, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->endTimeMS:J

    .line 73
    iput-boolean v0, v2, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->isShortFile:Z

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start bgm play : filePath = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " publish:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " startTimeMS:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mStartTimeMS:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " endTimeMS:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mEndTimeMS:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " isShortFile:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v2, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->isShortFile:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "mVolume:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mVolume:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object p1

    iget v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    iget v1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mVolume:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->setMusicVolume(II)V

    .line 76
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object p1

    iget v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    iget v1, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mSpeedRate:F

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->setMusicPlayoutSpeedRate(IF)V

    if-eqz p2, :cond_2

    .line 78
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object p1

    iget p2, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    const/16 v0, 0xc8

    invoke-virtual {p1, p2, v0}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->setMuteDataDurationToPublish(II)V

    .line 80
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->startPlayMusic(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)Z

    move-result p1

    .line 81
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object p2

    iget v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    invoke-virtual {p2, v0, p0}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->setMusicObserver(ILcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;)V

    if-nez p1, :cond_3

    const/4 p1, -0x1

    .line 83
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->onPlayEnd(I)V

    return-void

    .line 86
    :cond_3
    invoke-direct {p0}, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->onPlayStart()V

    :cond_4
    :goto_0
    return-void
.end method

.method public stopPlay()V
    .locals 5

    const-string v0, "AudioCenter:TXCUGCBGMPlayer"

    const-string v1, "stopPlay"

    .line 90
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mIsRunning:Z

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v2

    iget v3, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->setMusicObserver(ILcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;)V

    .line 95
    invoke-static {}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->getCacheInstance()Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;

    move-result-object v2

    iget v3, p0, Lcom/tencent/liteav/audio/TXCUGCBGMPlayer;->mBGMId:I

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->stopPlayMusic(I)V

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopBGMPlay cost(MS): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXCUGCBGMPlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
