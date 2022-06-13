.class public Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;
.super Ljava/lang/Object;
.source "TXCAudioUGCRecorder.java"

# interfaces
.implements Lcom/tencent/liteav/audio/impl/Record/c;


# static fields
.field private static final INSTANCE:Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;

.field private static final TAG:Ljava/lang/String; = "AudioCenter:TXCAudioUGCRecorder"


# instance fields
.field private final AAC_SAMPLE_NUM:I

.field protected mAACFrameLength:I

.field protected mAECType:I

.field private mBGMRecorder:Lcom/tencent/liteav/audio/impl/Record/a;

.field protected mBits:I

.field protected mChannels:I

.field protected mContext:Landroid/content/Context;

.field private mCurBGMRecordFlag:Z

.field private mEnableBGMRecord:Z

.field private final mEncodedAudioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field protected mIsEarphoneOn:Z

.field private mIsMute:Z

.field private mIsPause:Z

.field private mIsRunning:Z

.field private mLastPTS:J

.field protected mReverbType:I

.field protected mSampleRate:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mShouldClearAACDataCnt:I

.field private mSpeedRate:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected mVoiceChangerType:I

.field private mVolume:F

.field private mWeakRecordListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/audio/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    .line 52
    new-instance v0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;

    invoke-direct {v0}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;-><init>()V

    sput-object v0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->INSTANCE:Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 28
    iput v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->AAC_SAMPLE_NUM:I

    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v2, 0xbb80

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mSampleRate:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    .line 31
    iput v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mChannels:I

    const/16 v1, 0x10

    .line 32
    iput v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mBits:I

    .line 33
    iget v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mChannels:I

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mBits:I

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mAACFrameLength:I

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mReverbType:I

    .line 35
    iput v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mVoiceChangerType:I

    .line 36
    iput v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mAECType:I

    .line 38
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsEarphoneOn:Z

    const-wide/16 v1, 0x0

    .line 40
    iput-wide v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mLastPTS:J

    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    iput v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mVolume:F

    const/4 v2, 0x0

    .line 42
    iput-object v2, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mBGMRecorder:Lcom/tencent/liteav/audio/impl/Record/a;

    .line 43
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEnableBGMRecord:Z

    .line 44
    iput v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mShouldClearAACDataCnt:I

    .line 45
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mCurBGMRecordFlag:Z

    .line 46
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mSpeedRate:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsRunning:Z

    .line 48
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsPause:Z

    .line 49
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsMute:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEncodedAudioList:Ljava/util/List;

    .line 59
    invoke-static {}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->getInstance()Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;

    .line 60
    invoke-direct {p0}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeClassInit()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;
    .locals 1

    .line 55
    sget-object v0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->INSTANCE:Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;

    return-object v0
.end method

.method private native nativeClassInit()V
.end method

.method private native nativeEnableMixMode(Z)V
.end method

.method private native nativeSetChangerType(I)V
.end method

.method private native nativeSetReverbType(I)V
.end method

.method private native nativeSetSpeedRate(F)V
.end method

.method private native nativeSetVolume(F)V
.end method

.method private native nativeStartAudioRecord(III)V
.end method

.method private native nativeStopAudioRecord()V
.end method

.method private declared-synchronized updateAudioEffector()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 299
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEnableBGMRecord:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mAECType:I

    if-ne v1, v2, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 303
    iget v2, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mReverbType:I

    invoke-direct {p0, v2}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetReverbType(I)V

    .line 304
    iget v2, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mVoiceChangerType:I

    invoke-direct {p0, v2}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetChangerType(I)V

    .line 305
    iget-boolean v2, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsMute:Z

    if-eqz v2, :cond_2

    .line 306
    invoke-direct {p0, v1}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetVolume(F)V

    goto :goto_0

    .line 308
    :cond_2
    iget v2, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mVolume:F

    invoke-direct {p0, v2}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetVolume(F)V

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 312
    invoke-direct {p0, v1}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetVolume(F)V

    .line 314
    :cond_4
    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeEnableMixMode(Z)V

    .line 315
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mSpeedRate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetSpeedRate(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearCache()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AudioCenter:TXCAudioUGCRecorder"

    const-string v1, "clearCache"

    .line 231
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEncodedAudioList:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    :try_start_1
    iget-object v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEncodedAudioList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 234
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 234
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableBGMRecord(Z)V
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBGMRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXCAudioUGCRecorder"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEnableBGMRecord:Z

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x2

    .line 188
    iput v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mShouldClearAACDataCnt:I

    .line 191
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEnableBGMRecord:Z

    .line 192
    invoke-direct {p0}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->updateAudioEffector()V

    return-void
.end method

.method public getAECType()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mAECType:I

    return v0
.end method

.method public getChannels()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mChannels:I

    return v0
.end method

.method public declared-synchronized getIsMute()Z
    .locals 1

    monitor-enter p0

    .line 221
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getListener()Lcom/tencent/liteav/audio/f;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mWeakRecordListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/f;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mSampleRate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsPause:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsRunning:Z

    return v0
.end method

.method public onAudioRecordError(ILjava/lang/String;)V
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sys audio record error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXCAudioUGCRecorder"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->getListener()Lcom/tencent/liteav/audio/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0, p1, p2}, Lcom/tencent/liteav/audio/f;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAudioRecordPCM([BIJ)V
    .locals 7

    .line 259
    iget-wide p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mLastPTS:J

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    const-wide/16 p3, 0x2

    add-long/2addr p3, p1

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEncodedAudioList:Ljava/util/List;

    monitor-enter p1

    .line 267
    :try_start_0
    iget-object p2, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEncodedAudioList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsPause:Z

    if-nez p2, :cond_1

    .line 268
    iget-object p2, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEncodedAudioList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 269
    iget-object v2, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEncodedAudioList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 272
    iget v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mShouldClearAACDataCnt:I

    if-lez v1, :cond_2

    .line 274
    iget p2, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mShouldClearAACDataCnt:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mShouldClearAACDataCnt:I

    :cond_1
    move-object p2, v0

    :cond_2
    if-eqz p2, :cond_4

    .line 281
    iput-wide p3, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mLastPTS:J

    .line 282
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->getListener()Lcom/tencent/liteav/audio/f;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 284
    iget-object v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mSampleRate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mChannels:I

    iget v6, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mBits:I

    move-object v1, p2

    move-wide v2, p3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/liteav/audio/f;->b([BJIII)V

    goto :goto_0

    :cond_3
    const-string v0, "AudioCenter:TXCAudioUGCRecorder"

    const-string v1, "onAudioRecordPCM listener is null"

    .line 286
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mSampleRate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_4

    const/high16 v1, 0x497a0000    # 1024000.0f

    .line 290
    iget-object v2, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mSpeedRate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v1

    int-to-float v0, v0

    div-float/2addr v2, v0

    float-to-long v0, v2

    add-long/2addr p3, v0

    .line 293
    :cond_4
    monitor-exit p1

    if-nez p2, :cond_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onAudioRecordStart()V
    .locals 2

    const-string v0, "AudioCenter:TXCAudioUGCRecorder"

    const-string v1, "sys audio record start"

    .line 239
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioRecordStop()V
    .locals 2

    const-string v0, "AudioCenter:TXCAudioUGCRecorder"

    const-string v1, "sys audio record stop"

    .line 244
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEncodedData([B)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEncodedAudioList:Ljava/util/List;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEncodedAudioList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pause()V
    .locals 2

    const-string v0, "AudioCenter:TXCAudioUGCRecorder"

    const-string v1, "pause"

    .line 100
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/TXCAudioEngine;->pauseLocalAudio()V

    .line 102
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEncodedAudioList:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x1

    .line 103
    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsPause:Z

    .line 104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 2

    const-string v0, "AudioCenter:TXCAudioUGCRecorder"

    const-string v1, "resume"

    .line 108
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/TXCAudioEngine;->resumeLocalAudio()V

    .line 110
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEncodedAudioList:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 111
    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsPause:Z

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEnableBGMRecord:Z

    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeEnableMixMode(Z)V

    .line 114
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsMute:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEnableBGMRecord:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mVolume:F

    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetVolume(F)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetVolume(F)V

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 112
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setAECType(ILandroid/content/Context;)V
    .locals 2

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAECType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AudioCenter:TXCAudioUGCRecorder"

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iput v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mAECType:I

    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public declared-synchronized setChangerType(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "AudioCenter:TXCAudioUGCRecorder"

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChangerType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iput p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mVoiceChangerType:I

    .line 322
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetChangerType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setChannels(I)V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChannels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXCAudioUGCRecorder"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iput p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mChannels:I

    return-void
.end method

.method public declared-synchronized setListener(Lcom/tencent/liteav/audio/f;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 123
    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mWeakRecordListener:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mWeakRecordListener:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMute(Z)V
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXCAudioUGCRecorder"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsMute:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 177
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetVolume(F)V

    goto :goto_0

    .line 179
    :cond_0
    iget p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mVolume:F

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetVolume(F)V

    :goto_0
    return-void
.end method

.method public declared-synchronized setReverbType(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "AudioCenter:TXCAudioUGCRecorder"

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReverbType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iput p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mReverbType:I

    .line 157
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetReverbType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSampleRate(I)V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSampleRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCenter:TXCAudioUGCRecorder"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mSampleRate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public declared-synchronized setSpeedRate(F)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "AudioCenter:TXCAudioUGCRecorder"

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeedRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mSpeedRate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 227
    iget-object p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mSpeedRate:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetSpeedRate(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setVolume(F)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "AudioCenter:TXCAudioUGCRecorder"

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iput p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mVolume:F

    .line 213
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsMute:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 214
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetVolume(F)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetVolume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startRecord(Landroid/content/Context;)I
    .locals 2

    const-string v0, "AudioCenter:TXCAudioUGCRecorder"

    const-string v1, "startRecord"

    .line 66
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mContext:Landroid/content/Context;

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->updateAudioEffector()V

    .line 71
    invoke-static {}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->getInstance()Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->setAudioRecordListener(Lcom/tencent/liteav/audio/impl/Record/c;)V

    .line 72
    iget-object p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mSampleRate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mChannels:I

    iget v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mBits:I

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeStartAudioRecord(III)V

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsRunning:Z

    const-wide/16 v0, 0x0

    .line 74
    iput-wide v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mLastPTS:J

    const/4 p1, 0x0

    return p1
.end method

.method public stopRecord()I
    .locals 3

    const-string v0, "AudioCenter:TXCAudioUGCRecorder"

    const-string v1, "stopRecord"

    .line 79
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->getInstance()Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->setAudioRecordListener(Lcom/tencent/liteav/audio/impl/Record/c;)V

    .line 81
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mBGMRecorder:Lcom/tencent/liteav/audio/impl/Record/a;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/Record/a;->a()V

    .line 83
    iput-object v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mBGMRecorder:Lcom/tencent/liteav/audio/impl/Record/a;

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeStopAudioRecord()V

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeEnableMixMode(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 87
    invoke-direct {p0, v1}, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->nativeSetVolume(F)V

    .line 88
    iget-object v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEncodedAudioList:Ljava/util/List;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mEncodedAudioList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 90
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsRunning:Z

    const-wide/16 v1, 0x0

    .line 92
    iput-wide v1, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mLastPTS:J

    .line 93
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsPause:Z

    .line 94
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mIsMute:Z

    .line 95
    iput v0, p0, Lcom/tencent/liteav/audio/TXCAudioUGCRecorder;->mShouldClearAACDataCnt:I

    return v0

    :catchall_0
    move-exception v0

    .line 90
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
