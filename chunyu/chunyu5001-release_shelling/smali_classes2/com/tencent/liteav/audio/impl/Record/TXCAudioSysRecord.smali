.class public Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;
.super Ljava/lang/Object;
.source "TXCAudioSysRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;


# instance fields
.field private mAECType:I

.field private mBits:I

.field private mChannels:I

.field private mContext:Landroid/content/Context;

.field private mIsCapFirstFrame:Z

.field private mIsRunning:Z

.field private mMic:Landroid/media/AudioRecord;

.field private mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRecordBuffer:[B

.field private mRecordThread:Ljava/lang/Thread;

.field private mSampleRate:I

.field private mSendMuteData:Z

.field private mWeakRefListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/audio/impl/Record/c;",
            ">;"
        }
    .end annotation
.end field

.field private threadMutex:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCenter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->instance:Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xbb80

    .line 28
    iput v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mSampleRate:I

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mChannels:I

    const/16 v0, 0x10

    .line 30
    iput v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mBits:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mAECType:I

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordBuffer:[B

    .line 35
    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordThread:Ljava/lang/Thread;

    .line 36
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mIsRunning:Z

    .line 37
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mIsCapFirstFrame:Z

    .line 38
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mSendMuteData:Z

    .line 39
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->threadMutex:Ljava/lang/Object;

    .line 54
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->nativeClassInit()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;
    .locals 2

    .line 43
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->instance:Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->instance:Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;

    invoke-direct {v1}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;-><init>()V

    sput-object v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->instance:Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->instance:Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;

    return-object v0
.end method

.method private init()V
    .locals 18

    move-object/from16 v1, p0

    .line 115
    iget v8, v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mSampleRate:I

    .line 116
    iget v9, v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mChannels:I

    .line 117
    iget v10, v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mBits:I

    .line 118
    iget v0, v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mAECType:I

    .line 119
    sget-object v2, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const/4 v11, 0x4

    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v3, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v13, 0x1

    aput-object v4, v3, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v14, 0x2

    aput-object v4, v3, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v15, 0x3

    aput-object v0, v3, v15

    const-string v0, "audio record sampleRate = %d, channels = %d, bits = %d, aectype = %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v9, v13, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    move v5, v0

    const/16 v7, 0x8

    if-ne v10, v7, :cond_1

    move v6, v15

    goto :goto_1

    :cond_1
    move v6, v14

    .line 130
    :goto_1
    invoke-static {v8, v5, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v4

    .line 133
    :try_start_0
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string v2, "audio record type: system normal"

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    mul-int/lit8 v16, v4, 0x2

    move-object v2, v0

    move v11, v4

    move v4, v8

    move/from16 v17, v7

    move/from16 v7, v16

    :try_start_1
    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mMic:Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move v11, v4

    move/from16 v17, v7

    .line 136
    :goto_2
    sget-object v2, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string v3, "create AudioRecord failed."

    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    :goto_3
    iget-object v0, v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mMic:Landroid/media/AudioRecord;

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v13, :cond_2

    goto :goto_6

    :cond_2
    mul-int/lit16 v0, v9, 0x400

    mul-int/2addr v0, v10

    .line 146
    div-int/lit8 v0, v0, 0x8

    if-le v0, v11, :cond_3

    .line 148
    new-array v0, v11, [B

    iput-object v0, v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordBuffer:[B

    goto :goto_4

    .line 150
    :cond_3
    new-array v0, v0, [B

    iput-object v0, v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordBuffer:[B

    .line 152
    :goto_4
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 153
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v15

    iget-object v4, v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordBuffer:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const/4 v4, 0x5

    iget-object v5, v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mMic:Landroid/media/AudioRecord;

    invoke-virtual {v5}, Landroid/media/AudioRecord;->getState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "audio record: mic open rate=%dHZ, channels=%d, bits=%d, buffer=%d/%d, state=%d"

    .line 152
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, v1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mMic:Landroid/media/AudioRecord;

    if-eqz v0, :cond_4

    .line 157
    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 159
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string v4, "mic startRecording failed."

    invoke-static {v0, v4, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "start recording failed!"

    .line 160
    invoke-direct {v1, v2, v0}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->onRecordError(ILjava/lang/String;)V

    :cond_4
    :goto_5
    return-void

    .line 140
    :cond_5
    :goto_6
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string v3, "audio record: initialize the mic failed."

    invoke-static {v0, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->uninit()V

    const-string v0, "microphone permission denied!"

    .line 142
    invoke-direct {v1, v2, v0}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->onRecordError(ILjava/lang/String;)V

    return-void
.end method

.method private native nativeClassInit()V
.end method

.method private native nativeSendSysRecordAudioData([BIIII)V
.end method

.method private onRecordError(ILjava/lang/String;)V
    .locals 1

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mWeakRefListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mWeakRefListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/Record/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 205
    invoke-interface {v0, p1, p2}, Lcom/tencent/liteav/audio/impl/Record/c;->onAudioRecordError(ILjava/lang/String;)V

    goto :goto_1

    .line 207
    :cond_1
    sget-object p1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string p2, "onRecordError:no callback"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 203
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onRecordPcmData([BIJ)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mWeakRefListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/Record/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 191
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/liteav/audio/impl/Record/c;->onAudioRecordPCM([BIJ)V

    goto :goto_1

    .line 193
    :cond_1
    sget-object p1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string p2, "onRecordPcmData:no callback"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private onRecordStart()V
    .locals 2

    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mWeakRefListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mWeakRefListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/Record/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 219
    invoke-interface {v0}, Lcom/tencent/liteav/audio/impl/Record/c;->onAudioRecordStart()V

    goto :goto_1

    .line 221
    :cond_1
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string v1, "onRecordStart:no callback"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 217
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onRecordStop()V
    .locals 2

    .line 227
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mWeakRefListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mWeakRefListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/Record/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 233
    invoke-interface {v0}, Lcom/tencent/liteav/audio/impl/Record/c;->onAudioRecordStop()V

    goto :goto_1

    .line 235
    :cond_1
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string v1, "onRecordStop:no callback"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 231
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private uninit()V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mMic:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string v2, "stop mic"

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mMic:Landroid/media/AudioRecord;

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    .line 171
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mMic:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 172
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mMic:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 177
    sget-object v2, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string v3, "stop AudioRecord failed."

    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mMic:Landroid/media/AudioRecord;

    .line 181
    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordBuffer:[B

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mIsCapFirstFrame:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized isRecording()Z
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pause(Z)V
    .locals 2

    .line 99
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string v1, "system audio record pause"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mSendMuteData:Z

    return-void
.end method

.method public resume()V
    .locals 2

    .line 105
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string v1, "system audio record resume"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public run()V
    .locals 12

    .line 241
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mIsRunning:Z

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string v1, "audio record: abandom start audio sys record thread!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->onRecordStart()V

    .line 247
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start capture audio data ...,mIsRunning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Thread.interrupted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mMic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mMic:Landroid/media/AudioRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->init()V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    move v1, v0

    move v3, v1

    .line 252
    :goto_1
    iget-boolean v4, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mIsRunning:Z

    const/4 v5, 0x5

    if-eqz v4, :cond_8

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mMic:Landroid/media/AudioRecord;

    if-eqz v4, :cond_8

    if-gt v1, v5, :cond_8

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 254
    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mMic:Landroid/media/AudioRecord;

    iget-object v5, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordBuffer:[B

    array-length v6, v5

    sub-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v4

    .line 255
    iget-object v5, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordBuffer:[B

    array-length v5, v5

    sub-int/2addr v5, v3

    if-eq v4, v5, :cond_3

    if-gtz v4, :cond_2

    .line 257
    sget-object v5, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read pcm error, len ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v3, v4

    goto :goto_1

    .line 267
    :cond_3
    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mIsCapFirstFrame:Z

    const/4 v3, 0x1

    if-nez v1, :cond_4

    const/4 v1, -0x6

    const-string v4, "First frame captured#"

    .line 268
    invoke-direct {p0, v1, v4}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->onRecordError(ILjava/lang/String;)V

    .line 269
    iput-boolean v3, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mIsCapFirstFrame:Z

    .line 271
    :cond_4
    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mSendMuteData:Z

    if-eqz v1, :cond_5

    .line 272
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordBuffer:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 274
    :cond_5
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mPause:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mSendMuteData:Z

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v3, v0

    :cond_7
    :goto_2
    if-eqz v3, :cond_1

    .line 276
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordBuffer:[B

    array-length v3, v1

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v4

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->onRecordPcmData([BIJ)V

    .line 277
    iget-object v7, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordBuffer:[B

    array-length v8, v7

    iget v9, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mSampleRate:I

    iget v10, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mChannels:I

    iget v11, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mBits:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->nativeSendSysRecordAudioData([BIIII)V

    goto/16 :goto_0

    .line 281
    :cond_8
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop capture audio data ...,mIsRunning:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mIsRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mMic:Landroid/media/AudioRecord;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nFailedCount:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->uninit()V

    if-le v1, v5, :cond_9

    const/4 v0, -0x1

    const-string v1, "read data failed!"

    .line 285
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->onRecordError(ILjava/lang/String;)V

    goto :goto_3

    .line 287
    :cond_9
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->onRecordStop()V

    :goto_3
    return-void
.end method

.method public declared-synchronized setAudioRecordListener(Lcom/tencent/liteav/audio/impl/Record/c;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 59
    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mWeakRefListener:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mWeakRefListener:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public start(III)V
    .locals 2

    .line 66
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->threadMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->stop()V

    .line 69
    iput p1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mSampleRate:I

    .line 70
    iput p2, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mChannels:I

    .line 71
    iput p3, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mBits:I

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mIsRunning:Z

    .line 73
    new-instance p1, Ljava/lang/Thread;

    const-string p2, "AudioSysRecord Thread"

    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordThread:Ljava/lang/Thread;

    .line 74
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-object p1, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string p2, "start ok"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 76
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 7

    .line 81
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->threadMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 83
    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mIsRunning:Z

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 85
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordThread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 87
    :try_start_1
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 89
    :try_start_2
    sget-object v4, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "record stop Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    sget-object v3, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop ok,stop record cost time(MS): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->mRecordThread:Ljava/lang/Thread;

    .line 94
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    sget-object v0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioSysRecord;->TAG:Ljava/lang/String;

    const-string v1, "stop ok"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 94
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
