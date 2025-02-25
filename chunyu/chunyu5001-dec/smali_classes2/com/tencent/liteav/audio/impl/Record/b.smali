.class public Lcom/tencent/liteav/audio/impl/Record/b;
.super Ljava/lang/Thread;
.source "TXCAudioHWEncoder.java"


# instance fields
.field private a:Landroid/media/MediaCodec$BufferInfo;

.field private b:Landroid/media/MediaCodecInfo;

.field private c:Landroid/media/MediaFormat;

.field private d:Landroid/media/MediaCodec;

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[B>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/audio/f;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:Z

.field private volatile h:Z

.field private final i:Ljava/lang/Object;

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "TXAudioRecordThread"

    .line 55
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->g:Z

    .line 45
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->h:Z

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->i:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->j:J

    const v0, 0xbb80

    .line 48
    iput v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->k:I

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->l:I

    const/16 v0, 0x10

    .line 50
    iput v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->m:I

    return-void
.end method

.method private static final a(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 9

    const-string v0, "AudioCenter:TXCAudioHWEncoder"

    const-string v1, "selectAudioCodec:"

    .line 272
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 279
    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 280
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 283
    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    move v6, v2

    .line 284
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "supportedType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",MIME="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    aget-object v7, v5, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_3
    return-object v4
.end method

.method private a(Ljava/nio/ByteBuffer;IJ)V
    .locals 11

    .line 197
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const-string v1, "AudioCenter:TXCAudioHWEncoder"

    if-ltz v5, :cond_3

    .line 202
    aget-object v0, v0, v5

    .line 203
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_1
    if-gtz p2, :cond_2

    const-string p1, "send BUFFER_FLAG_END_OF_STREAM"

    .line 209
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x4

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v7, p2

    move-wide v8, p3

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 227
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 231
    :cond_4
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    iget-object p3, p0, Lcom/tencent/liteav/audio/impl/Record/b;->a:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p2, p3, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_5

    goto :goto_1

    :cond_5
    const/4 p3, -0x3

    if-ne p2, p3, :cond_6

    .line 234
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_1

    :cond_6
    const/4 p3, -0x2

    if-ne p2, p3, :cond_7

    .line 236
    iget-object p3, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    invoke-virtual {p3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    goto :goto_1

    :cond_7
    if-gez p2, :cond_8

    goto :goto_1

    .line 244
    :cond_8
    aget-object p3, p1, p2

    .line 245
    iget-object p4, p0, Lcom/tencent/liteav/audio/impl/Record/b;->a:Landroid/media/MediaCodec$BufferInfo;

    iget p4, p4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p4, p4, 0x2

    const/4 v0, 0x0

    if-eqz p4, :cond_9

    const-string p4, "drain:BUFFER_FLAG_CODEC_CONFIG"

    .line 246
    invoke-static {v1, p4}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object p4, p0, Lcom/tencent/liteav/audio/impl/Record/b;->a:Landroid/media/MediaCodec$BufferInfo;

    iput v0, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 250
    :cond_9
    iget-object p4, p0, Lcom/tencent/liteav/audio/impl/Record/b;->a:Landroid/media/MediaCodec$BufferInfo;

    iget p4, p4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz p4, :cond_a

    .line 251
    iget-object p4, p0, Lcom/tencent/liteav/audio/impl/Record/b;->a:Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Record/b;->f()J

    move-result-wide v4

    iput-wide v4, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 252
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p4

    new-array p4, p4, [B

    iput-object p4, p0, Lcom/tencent/liteav/audio/impl/Record/b;->n:[B

    .line 253
    iget-object p4, p0, Lcom/tencent/liteav/audio/impl/Record/b;->n:[B

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 255
    iget-object p3, p0, Lcom/tencent/liteav/audio/impl/Record/b;->n:[B

    iget-object p4, p0, Lcom/tencent/liteav/audio/impl/Record/b;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, p4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, p3, v4, v5}, Lcom/tencent/liteav/audio/impl/Record/b;->b([BJ)V

    .line 256
    iget-object p3, p0, Lcom/tencent/liteav/audio/impl/Record/b;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide p3, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide p3, p0, Lcom/tencent/liteav/audio/impl/Record/b;->j:J

    .line 259
    :cond_a
    iget-object p3, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    invoke-virtual {p3, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_1
    if-gez p2, :cond_4

    return-void
.end method

.method private b()V
    .locals 5

    const-string v0, "audio/mp4a-latm"

    .line 92
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/Record/b;->a(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->b:Landroid/media/MediaCodecInfo;

    .line 93
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->b:Landroid/media/MediaCodecInfo;

    const-string v2, "AudioCenter:TXCAudioHWEncoder"

    if-nez v1, :cond_0

    const-string v0, "Unable to find an appropriate codec for audio/mp4a-latm"

    .line 94
    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected codec: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/Record/b;->b:Landroid/media/MediaCodecInfo;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget v1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->k:I

    const/16 v3, 0x7d00

    if-lt v1, v3, :cond_1

    const v3, 0xfa00

    .line 104
    :cond_1
    iget v1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->k:I

    iget v4, p0, Lcom/tencent/liteav/audio/impl/Record/b;->l:I

    invoke-static {v0, v1, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->c:Landroid/media/MediaFormat;

    .line 105
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->c:Landroid/media/MediaFormat;

    const-string v1, "bitrate"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 106
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->c:Landroid/media/MediaFormat;

    iget v1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->l:I

    const-string v3, "channel-count"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 107
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->c:Landroid/media/MediaFormat;

    iget v1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->k:I

    const-string v3, "sample-rate"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 108
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->c:Landroid/media/MediaFormat;

    const/4 v1, 0x2

    const-string v3, "aac-profile"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->c:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Record/b;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "start media codec failed."

    .line 114
    invoke-static {v2, v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/Record/b;->start()V

    return-void
.end method

.method private b([BJ)V
    .locals 8

    .line 299
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/liteav/audio/f;

    if-eqz v1, :cond_0

    .line 301
    iget v5, p0, Lcom/tencent/liteav/audio/impl/Record/b;->k:I

    iget v6, p0, Lcom/tencent/liteav/audio/impl/Record/b;->l:I

    iget v7, p0, Lcom/tencent/liteav/audio/impl/Record/b;->m:I

    move-object v2, p1

    move-wide v3, p2

    invoke-interface/range {v1 .. v7}, Lcom/tencent/liteav/audio/f;->b([BJIII)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->h:Z

    return-void
.end method

.method private d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "audio/mp4a-latm"

    .line 129
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    .line 130
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->c:Landroid/media/MediaFormat;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 131
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const-string v0, "AudioCenter:TXCAudioHWEncoder"

    const-string v1, "prepare finishing"

    .line 132
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/Record/b;->g:Z

    return-void
.end method

.method private e()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 141
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->d:Landroid/media/MediaCodec;

    :cond_0
    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Record/b;->g:Z

    return-void
.end method

.method private f()J
    .locals 5

    .line 265
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    .line 266
    iget-wide v2, p0, Lcom/tencent/liteav/audio/impl/Record/b;->j:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sub-long/2addr v2, v0

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Record/b;->c()V

    return-void
.end method

.method public a(IIIILjava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/audio/f;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p5, p0, Lcom/tencent/liteav/audio/impl/Record/b;->f:Ljava/lang/ref/WeakReference;

    .line 60
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->a:Landroid/media/MediaCodec$BufferInfo;

    .line 61
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->e:Ljava/util/Vector;

    .line 62
    iput p2, p0, Lcom/tencent/liteav/audio/impl/Record/b;->k:I

    .line 63
    iput p3, p0, Lcom/tencent/liteav/audio/impl/Record/b;->l:I

    .line 64
    iput p4, p0, Lcom/tencent/liteav/audio/impl/Record/b;->m:I

    .line 67
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Record/b;->b()V

    return-void
.end method

.method public a([BJ)V
    .locals 0

    .line 73
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/Record/b;->e:Ljava/util/Vector;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 74
    monitor-enter p2

    .line 75
    :try_start_0
    iget-object p3, p0, Lcom/tencent/liteav/audio/impl/Record/b;->e:Ljava/util/Vector;

    if-nez p3, :cond_0

    .line 76
    monitor-exit p2

    return-void

    .line 78
    :cond_0
    iget-object p3, p0, Lcom/tencent/liteav/audio/impl/Record/b;->e:Ljava/util/Vector;

    invoke-virtual {p3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 79
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 82
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->i:Ljava/lang/Object;

    monitor-enter p1

    .line 83
    :try_start_1
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/Record/b;->i:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 84
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2
.end method

.method public run()V
    .locals 4

    const/16 v0, 0x400

    .line 149
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 150
    :catch_0
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->h:Z

    if-nez v1, :cond_4

    .line 151
    iget-boolean v1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->g:Z

    if-eqz v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->e:Ljava/util/Vector;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Record/b;->e:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    .line 155
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    const-wide/16 v1, 0xa

    .line 158
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 164
    :cond_1
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Record/b;->e:Ljava/util/Vector;

    monitor-enter v2

    .line 165
    :try_start_2
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->e:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 166
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 169
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 170
    array-length v2, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 171
    array-length v2, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 173
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 174
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 176
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 177
    array-length v1, v1

    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Record/b;->f()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/liteav/audio/impl/Record/b;->a(Ljava/nio/ByteBuffer;IJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "AudioCenter:TXCAudioHWEncoder"

    const-string v3, "encode frame failed."

    .line 179
    invoke-static {v2, v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 166
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 155
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Record/b;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_6
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Record/b;->i:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 190
    :catch_2
    :goto_1
    :try_start_7
    monitor-exit v1

    goto :goto_0

    :goto_2
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 193
    :cond_4
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Record/b;->e()V

    return-void
.end method
