.class public Lcom/tencent/liteav/audio/impl/Record/TXCAudioCapturer;
.super Ljava/lang/Object;
.source "TXCAudioCapturer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TXCAudioCapturer"


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static audioSourceToText(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNSUPPORT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "VOICE_COMMUNICATION"

    return-object p0

    :cond_1
    const-string p0, "MIC"

    return-object p0
.end method

.method private static createStartedAudioRecord(IIII)Landroid/media/AudioRecord;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    :try_start_0
    new-instance v8, Landroid/media/AudioRecord;

    const/4 v6, 0x2

    move-object v2, v8

    move v3, p0

    move v4, p1

    move v5, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :try_start_1
    invoke-virtual {v8}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 69
    invoke-virtual {v8}, Landroid/media/AudioRecord;->startRecording()V

    move-object v1, v8

    goto :goto_0

    .line 67
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "AudioRecord is not initialized."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-object v8, v1

    :catch_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 73
    invoke-static {p0}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioCapturer;->audioSourceToText(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const/4 p0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "TXCAudioCapturer"

    const-string p1, "create AudioRecord failed. source: %s, samplerate: %d, channelConfig: %d, bufferSize: %d"

    .line 71
    invoke-static {p0, p1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-static {v8}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioCapturer;->tearDownAudioRecord(Landroid/media/AudioRecord;)V

    :goto_0
    return-object v1
.end method

.method private static tearDownAudioRecord(Landroid/media/AudioRecord;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 86
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 87
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V

    .line 89
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TXCAudioCapturer"

    const-string v1, "stop AudioRecord failed."

    .line 91
    invoke-static {v0, v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioCapturer;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioCapturer;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2, p1, p2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gtz p1, :cond_1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "TXCAudioCapturer"

    const-string v0, "read failed, %d"

    invoke-static {p1, v0, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    return p1
.end method

.method public startRecord(IIII)Z
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p1, v1, p1

    const/4 v3, 0x2

    const/4 v4, 0x5

    aput v4, v1, v3

    const/4 v4, 0x3

    aput v2, v1, v4

    if-ne p3, p1, :cond_0

    const/16 p3, 0x10

    goto :goto_0

    :cond_0
    const/16 p3, 0xc

    .line 35
    :goto_0
    invoke-static {p2, p3, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v4

    if-gtz v4, :cond_1

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AudioRecord.getMinBufferSize returns invalid value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCAudioCapturer"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    move v5, v2

    .line 41
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioCapturer;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v6, :cond_4

    .line 42
    aget v6, v1, v5

    move v7, p1

    :goto_2
    if-gt v7, v3, :cond_3

    .line 44
    iget-object v8, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioCapturer;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v8, :cond_3

    mul-int v8, v4, v7

    mul-int/lit8 v9, p4, 0x4

    if-ge v8, v9, :cond_2

    if-ge v7, v3, :cond_2

    goto :goto_3

    .line 49
    :cond_2
    invoke-static {v6, p2, p3, v8}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioCapturer;->createStartedAudioRecord(IIII)Landroid/media/AudioRecord;

    move-result-object v8

    iput-object v8, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioCapturer;->mAudioRecord:Landroid/media/AudioRecord;

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 53
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    const-string p3, "tx_audio_capturer"

    invoke-virtual {p2, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 p2, -0x13

    .line 54
    invoke-static {p2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 55
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioCapturer;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    move p1, v2

    :goto_4
    return p1
.end method

.method public stopRecord()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioCapturer;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/Record/TXCAudioCapturer;->tearDownAudioRecord(Landroid/media/AudioRecord;)V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/TXCAudioCapturer;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method
