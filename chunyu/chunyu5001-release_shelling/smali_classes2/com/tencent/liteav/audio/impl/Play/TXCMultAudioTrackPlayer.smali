.class public Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;
.super Ljava/lang/Object;
.source "TXCMultAudioTrackPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$TXCMultAudioTrackPlayerHolder;,
        Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioMode:I

.field private mAudioThread:Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;

.field private volatile mAudioTrackStarted:Z

.field private mBits:I

.field private mChannel:I

.field private mContext:Landroid/content/Context;

.field private volatile mIsStarted:Z

.field private mMute:Z

.field private mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCenter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioThread:Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mMute:Z

    .line 38
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mIsStarted:Z

    .line 39
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioTrackStarted:Z

    .line 40
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mContext:Landroid/content/Context;

    .line 41
    iput v1, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioMode:I

    const v0, 0xbb80

    .line 42
    iput v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mSampleRate:I

    const/4 v0, 0x2

    .line 43
    iput v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mChannel:I

    const/16 v0, 0x10

    .line 44
    iput v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mBits:I

    .line 57
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->nativeClassInit()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mChannel:I

    return p0
.end method

.method static synthetic access$200(Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mBits:I

    return p0
.end method

.method static synthetic access$300(Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mSampleRate:I

    return p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioTrackStarted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;)Landroid/content/Context;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioMode:I

    return p0
.end method

.method static synthetic access$800(Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;)[B
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->nativeGetMixedTracksDataToAudioTrack()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mMute:Z

    return p0
.end method

.method public static getInstance()Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;
    .locals 1

    .line 53
    invoke-static {}, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$TXCMultAudioTrackPlayerHolder;->getInstance()Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;

    move-result-object v0

    return-object v0
.end method

.method private native nativeClassInit()V
.end method

.method private native nativeGetMixedTracksDataToAudioTrack()[B
.end method


# virtual methods
.method public isPlaying()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mIsStarted:Z

    return v0
.end method

.method public declared-synchronized setAudioMode(Landroid/content/Context;I)V
    .locals 0

    monitor-enter p0

    .line 198
    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mContext:Landroid/content/Context;

    .line 199
    iput p2, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioMode:I

    .line 200
    iget-boolean p1, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioTrackStarted:Z

    if-eqz p1, :cond_0

    .line 201
    sget-object p1, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->TAG:Ljava/lang/String;

    const-string p2, "mult-track-player setAudioRoute~"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_0
    sget-object p1, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->TAG:Ljava/lang/String;

    const-string p2, "mult-track-player do\'not setAudioRoute~"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMute(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mMute:Z

    return-void
.end method

.method public start()V
    .locals 3

    .line 60
    sget-object v0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->TAG:Ljava/lang/String;

    const-string v1, "mult-track-player start!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->TAG:Ljava/lang/String;

    const-string v1, "mult-track-player can not start because of has started!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 65
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mSampleRate:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mChannel:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mIsStarted:Z

    .line 72
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioThread:Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;

    if-nez v0, :cond_2

    .line 73
    new-instance v0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$1;

    const-string v1, "AUDIO_TRACK"

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$1;-><init>(Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioThread:Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;

    .line 173
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioThread:Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;->startLoop()V

    .line 174
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioThread:Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;->start()V

    .line 177
    :cond_2
    sget-object v0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->TAG:Ljava/lang/String;

    const-string v1, "mult-track-player thread start finish!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_3
    :goto_0
    sget-object v0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strat mult-track-player failed with invalid audio info , samplerate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", channels:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 181
    sget-object v0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->TAG:Ljava/lang/String;

    const-string v1, "mult-track-player stop!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->TAG:Ljava/lang/String;

    const-string v1, "mult-track-player can not stop because of not started yet!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioThread:Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;->stopLoop()V

    .line 188
    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioThread:Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer$AudioTrackThread;

    :cond_1
    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioMode:I

    .line 191
    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mContext:Landroid/content/Context;

    .line 192
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mAudioTrackStarted:Z

    .line 193
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->mIsStarted:Z

    .line 194
    sget-object v0, Lcom/tencent/liteav/audio/impl/Play/TXCMultAudioTrackPlayer;->TAG:Ljava/lang/String;

    const-string v1, "mult-track-player stop finish!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
