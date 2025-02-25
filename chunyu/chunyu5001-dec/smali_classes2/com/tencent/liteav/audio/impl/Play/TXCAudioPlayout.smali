.class public Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;
.super Ljava/lang/Object;
.source "TXCAudioPlayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TXCAudioPlayout"


# instance fields
.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mPlayBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createStartedAudioTrack(IIII)Landroid/media/AudioTrack;
    .locals 15

    const-string v0, "TXCAudioPlayout"

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 64
    :try_start_0
    new-instance v14, Landroid/media/AudioTrack;

    const/4 v11, 0x2

    const/4 v13, 0x1

    move-object v7, v14

    move/from16 v8, p3

    move v9, p0

    move/from16 v10, p1

    move/from16 v12, p2

    invoke-direct/range {v7 .. v13}, Landroid/media/AudioTrack;-><init>(IIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :try_start_1
    invoke-virtual {v14}, Landroid/media/AudioTrack;->getState()I

    move-result v7

    if-ne v7, v6, :cond_0

    .line 69
    invoke-virtual {v14}, Landroid/media/AudioTrack;->play()V

    const-string v7, "create AudioTrack success. samplerate: %d, channelConfig: %d, bufferSize: %d, streamType: %s"

    new-array v8, v4, [Ljava/lang/Object;

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static/range {p3 .. p3}, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->streamTypeToText(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 70
    invoke-static {v0, v7, v8}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "AudioTrack is not initialized."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-object v14, v5

    :catch_1
    new-array v4, v4, [Ljava/lang/Object;

    .line 76
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static/range {p3 .. p3}, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->streamTypeToText(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "create AudioTrack failed. samplerate: %d, channelConfig: %d, bufferSize: %d, streamType: %s"

    .line 74
    invoke-static {v0, v1, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-static {v14}, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->tearDownAudioTrack(Landroid/media/AudioTrack;)V

    move-object v14, v5

    :goto_0
    return-object v14
.end method

.method private static streamTypeToText(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNSUPPORT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "STREAM_MUSIC"

    return-object p0

    :cond_1
    const-string p0, "STREAM_VOICE_CALL"

    return-object p0
.end method

.method private static tearDownAudioTrack(Landroid/media/AudioTrack;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 90
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    .line 91
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 93
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TXCAudioPlayout"

    const-string v1, "stop AudioTrack failed."

    .line 95
    invoke-static {v0, v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public startPlayout(IIII)Z
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p4, v1, v2

    const/4 p4, 0x1

    aput v2, v1, p4

    const/4 v3, 0x3

    const/4 v4, 0x2

    aput v3, v1, v4

    aput p4, v1, v3

    if-ne p2, p4, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/16 p2, 0xc

    .line 37
    :goto_0
    invoke-static {p1, p2, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v3

    if-gtz v3, :cond_1

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AudioTrack.getMinBufferSize returns invalid value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCAudioPlayout"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    move v5, v2

    .line 42
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v6, :cond_4

    .line 43
    aget v6, v1, v5

    move v7, p4

    :goto_2
    if-gt v7, v4, :cond_3

    .line 44
    iget-object v8, p0, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v8, :cond_3

    mul-int v8, v3, v7

    mul-int/lit8 v9, p3, 0x4

    if-ge v8, v9, :cond_2

    if-ge v7, v4, :cond_2

    goto :goto_3

    .line 49
    :cond_2
    invoke-static {p1, p2, v8, v6}, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->createStartedAudioTrack(IIII)Landroid/media/AudioTrack;

    move-result-object v8

    iput-object v8, p0, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->mAudioTrack:Landroid/media/AudioTrack;

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 53
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string p2, "tx_audio_playout"

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 p1, -0x13

    .line 54
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 55
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move p4, v2

    :goto_4
    return p4
.end method

.method public stopPlayout()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->tearDownAudioTrack(Landroid/media/AudioTrack;)V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->mAudioTrack:Landroid/media/AudioTrack;

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 123
    :cond_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result p2

    const/16 v0, 0x15

    const/4 v2, 0x0

    if-lt p2, v0, :cond_1

    .line 125
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p2, p1, p3, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    goto :goto_0

    .line 127
    :cond_1
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->mPlayBuffer:[B

    if-eqz p2, :cond_2

    array-length p2, p2

    if-ge p2, p3, :cond_3

    .line 128
    :cond_2
    new-array p2, p3, [B

    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->mPlayBuffer:[B

    .line 130
    :cond_3
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->mPlayBuffer:[B

    invoke-virtual {p1, p2, v2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 131
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/Play/TXCAudioPlayout;->mPlayBuffer:[B

    invoke-virtual {p1, p2, v2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1

    :goto_0
    if-gtz p1, :cond_4

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "write audio data to AudioTrack failed. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCAudioPlayout"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    return p1
.end method
