.class public Lcom/tencent/liteav/muxer/d;
.super Ljava/lang/Object;
.source "TXCMP4SWMuxer.java"

# interfaces
.implements Lcom/tencent/liteav/muxer/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/muxer/d$a;
    }
.end annotation


# static fields
.field public static a:F = 0.5f

.field public static b:F = 0.8f

.field public static c:F = 1.25f

.field public static d:F = 2.0f


# instance fields
.field private e:I

.field private f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

.field private g:Ljava/lang/String;

.field private h:Landroid/media/MediaFormat;

.field private i:Landroid/media/MediaFormat;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/tencent/liteav/muxer/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/tencent/liteav/muxer/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private p:J

.field private q:J

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 23
    iput v0, p0, Lcom/tencent/liteav/muxer/d;->e:I

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->g:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;

    .line 55
    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->i:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/tencent/liteav/muxer/d;->j:I

    .line 57
    iput v0, p0, Lcom/tencent/liteav/muxer/d;->k:I

    .line 58
    iput-boolean v0, p0, Lcom/tencent/liteav/muxer/d;->l:Z

    .line 59
    iput-boolean v0, p0, Lcom/tencent/liteav/muxer/d;->m:Z

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 v0, -0x1

    .line 62
    iput-wide v0, p0, Lcom/tencent/liteav/muxer/d;->p:J

    .line 63
    iput-wide v0, p0, Lcom/tencent/liteav/muxer/d;->q:J

    .line 64
    iput-wide v0, p0, Lcom/tencent/liteav/muxer/d;->r:J

    return-void
.end method

.method private a(J)V
    .locals 2

    .line 459
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/muxer/d$a;

    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/d$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "TXCMP4SWMuxer"

    const-string v1, "flushAudioCache, bufferInfo is null"

    .line 462
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/muxer/d$a;

    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/d$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/muxer/d$a;

    .line 468
    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/d$a;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/d$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/muxer/d;->d(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(ZLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 8

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 392
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 393
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_1

    .line 394
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 395
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 397
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 398
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 400
    new-instance p2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 401
    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v7, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 403
    new-instance p3, Lcom/tencent/liteav/muxer/d$a;

    invoke-direct {p3, v0, p2}, Lcom/tencent/liteav/muxer/d$a;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    if-eqz p1, :cond_3

    .line 405
    iget-object p1, p0, Lcom/tencent/liteav/muxer/d;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    const/16 p2, 0xc8

    if-ge p1, p2, :cond_2

    .line 406
    iget-object p1, p0, Lcom/tencent/liteav/muxer/d;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "TXCMP4SWMuxer"

    const-string p2, "drop video frame. video cache size is larger than 200"

    .line 408
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private c(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 11

    .line 309
    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lcom/tencent/liteav/muxer/d;->p:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const-string v9, "TXCMP4SWMuxer"

    if-gez v5, :cond_1

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pts error! first frame offset timeus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/tencent/liteav/muxer/d;->p:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", current timeus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-wide v1, p0, Lcom/tencent/liteav/muxer/d;->q:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    .line 314
    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/tencent/liteav/muxer/d;->q:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video is not in chronological order. current frame\'s pts("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") smaller than pre frame\'s pts("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/tencent/liteav/muxer/d;->q:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :cond_2
    iput-wide v1, p0, Lcom/tencent/liteav/muxer/d;->q:J

    .line 320
    :goto_1
    iget v3, p0, Lcom/tencent/liteav/muxer/d;->e:I

    const/4 v4, 0x2

    const/4 v10, 0x1

    if-ne v3, v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    long-to-float v1, v1

    .line 322
    sget v2, Lcom/tencent/liteav/muxer/d;->b:F

    :goto_2
    mul-float/2addr v1, v2

    float-to-long v1, v1

    goto :goto_3

    :cond_4
    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    long-to-float v1, v1

    .line 324
    sget v2, Lcom/tencent/liteav/muxer/d;->a:F

    goto :goto_2

    :cond_5
    if-ne v3, v10, :cond_6

    long-to-float v1, v1

    .line 326
    sget v2, Lcom/tencent/liteav/muxer/d;->c:F

    goto :goto_2

    :cond_6
    if-nez v3, :cond_7

    long-to-float v1, v1

    .line 328
    sget v2, Lcom/tencent/liteav/muxer/d;->d:F

    goto :goto_2

    .line 330
    :cond_7
    :goto_3
    iput-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 332
    :try_start_0
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 333
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 335
    iget-object v1, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    const/4 v3, 0x1

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-ne v2, v10, :cond_8

    move v6, v10

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    move v6, v2

    :goto_4
    iget-wide v7, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a(Ljava/nio/ByteBuffer;IIIIJ)I

    .line 338
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v0, v10

    if-eqz v0, :cond_9

    .line 339
    iput-boolean v10, p0, Lcom/tencent/liteav/muxer/d;->m:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write frame IllegalArgumentException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write frame IllegalStateException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void
.end method

.method private d()Ljava/nio/ByteBuffer;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->i:Landroid/media/MediaFormat;

    const-string v1, "csd-0"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-object v0
.end method

.method private d(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 12

    .line 349
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Lcom/tencent/liteav/muxer/d;->p:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "TXCMP4SWMuxer"

    if-ltz v2, :cond_7

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    goto/16 :goto_4

    .line 354
    :cond_0
    iget-wide v4, p0, Lcom/tencent/liteav/muxer/d;->r:J

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio is not in chronological order. current audio\'s pts pts("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") must larger than pre audio\'s pts("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/liteav/muxer/d;->r:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-wide v0, p0, Lcom/tencent/liteav/muxer/d;->r:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 359
    :cond_1
    iput-wide v0, p0, Lcom/tencent/liteav/muxer/d;->r:J

    .line 361
    :goto_0
    iget v2, p0, Lcom/tencent/liteav/muxer/d;->e:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    long-to-float v0, v0

    .line 363
    sget v1, Lcom/tencent/liteav/muxer/d;->b:F

    :goto_1
    mul-float/2addr v0, v1

    float-to-long v0, v0

    goto :goto_2

    :cond_3
    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    long-to-float v0, v0

    .line 365
    sget v1, Lcom/tencent/liteav/muxer/d;->a:F

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    long-to-float v0, v0

    .line 367
    sget v1, Lcom/tencent/liteav/muxer/d;->c:F

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    long-to-float v0, v0

    .line 369
    sget v1, Lcom/tencent/liteav/muxer/d;->d:F

    goto :goto_1

    .line 371
    :cond_6
    :goto_2
    iput-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 373
    :try_start_0
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 374
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 375
    iget-object v4, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    const/4 v6, 0x0

    iget v7, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v8, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v9, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a(Ljava/nio/ByteBuffer;IIIIJ)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 379
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "write sample IllegalArgumentException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 377
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "write sample IllegalStateException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    .line 351
    :cond_7
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "drop sample. first frame offset timeus = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/liteav/muxer/d;->p:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", current sample timeus = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()Ljava/nio/ByteBuffer;
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;

    const-string v1, "csd-0"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/nio/ByteBuffer;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;

    const-string v1, "csd-1"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private g()J
    .locals 5

    .line 421
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/muxer/d$a;

    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/d$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 424
    :goto_0
    iget-object v2, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 425
    iget-object v2, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/muxer/d$a;

    if-eqz v2, :cond_1

    .line 427
    invoke-virtual {v2}, Lcom/tencent/liteav/muxer/d$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 429
    iget-object v2, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/muxer/d$a;

    invoke-virtual {v2}, Lcom/tencent/liteav/muxer/d$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    :cond_1
    return-wide v0
.end method

.method private h()V
    .locals 2

    .line 440
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/muxer/d$a;

    .line 442
    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/d$a;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/d$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/muxer/d;->c(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 444
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/muxer/d$a;

    .line 446
    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/d$a;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/d$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/muxer/d;->d(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private i()V
    .locals 3

    .line 451
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/muxer/d$a;

    .line 453
    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/d$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v1

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v1, v2}, Lcom/tencent/liteav/muxer/d;->a(J)V

    .line 454
    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/d$a;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/d$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/muxer/d;->c(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 8

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/muxer/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TXCMP4SWMuxer"

    const-string v1, "video track not set yet!"

    .line 119
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x2

    .line 120
    monitor-exit p0

    return v0

    .line 126
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "TXCMP4SWMuxer"

    const-string v2, "start has been called. stop must be called before start"

    .line 127
    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    const-string v0, "TXCMP4SWMuxer"

    const-string v2, "start"

    .line 130
    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    invoke-direct {v0}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    .line 133
    new-instance v0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI$AVOptions;

    invoke-direct {v0}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI$AVOptions;-><init>()V

    .line 134
    iget-object v2, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;

    if-eqz v2, :cond_5

    .line 135
    iget-object v2, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;

    const-string v3, "width"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 136
    iget-object v3, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;

    const-string v4, "height"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 137
    iput v3, v0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI$AVOptions;->videoHeight:I

    .line 138
    iput v2, v0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI$AVOptions;->videoWidth:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x3

    .line 140
    :try_start_3
    iget-object v3, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;

    const-string v4, "i-frame-interval"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;

    const-string v4, "i-frame-interval"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    iput v3, v0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI$AVOptions;->videoGOP:I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 143
    :catch_0
    :try_start_4
    iget-object v3, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;

    const-string v4, "i-frame-interval"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;

    const-string v4, "i-frame-interval"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    iput v3, v0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI$AVOptions;->videoGOP:I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 145
    :catch_1
    :try_start_5
    iput v2, v0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI$AVOptions;->videoGOP:I

    .line 149
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/tencent/liteav/muxer/d;->i:Landroid/media/MediaFormat;

    if-eqz v2, :cond_6

    .line 150
    iget-object v2, p0, Lcom/tencent/liteav/muxer/d;->i:Landroid/media/MediaFormat;

    const-string v3, "channel-count"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 151
    iget-object v3, p0, Lcom/tencent/liteav/muxer/d;->i:Landroid/media/MediaFormat;

    const-string v4, "sample-rate"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 152
    iput v2, v0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI$AVOptions;->audioChannels:I

    .line 153
    iput v3, v0, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI$AVOptions;->audioSampleRate:I

    .line 155
    :cond_6
    invoke-direct {p0}, Lcom/tencent/liteav/muxer/d;->e()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 156
    invoke-direct {p0}, Lcom/tencent/liteav/muxer/d;->f()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    .line 158
    iget-object v5, p0, Lcom/tencent/liteav/muxer/d;->i:Landroid/media/MediaFormat;

    if-eqz v5, :cond_7

    .line 159
    invoke-direct {p0}, Lcom/tencent/liteav/muxer/d;->d()Ljava/nio/ByteBuffer;

    move-result-object v4

    :cond_7
    const/4 v5, -0x3

    if-eqz v2, :cond_b

    if-nez v3, :cond_8

    goto :goto_3

    .line 165
    :cond_8
    iget-object v6, p0, Lcom/tencent/liteav/muxer/d;->i:Landroid/media/MediaFormat;

    if-eqz v6, :cond_9

    if-nez v4, :cond_9

    const-string v0, "TXCMP4SWMuxer"

    const-string v1, "audio format contains error csd!"

    .line 167
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 168
    monitor-exit p0

    return v5

    .line 171
    :cond_9
    :try_start_6
    iget-object v5, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v5, v2, v6, v3, v7}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V

    .line 172
    iget-object v2, p0, Lcom/tencent/liteav/muxer/d;->i:Landroid/media/MediaFormat;

    if-eqz v2, :cond_a

    .line 173
    iget-object v2, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a(Ljava/nio/ByteBuffer;I)V

    .line 175
    :cond_a
    iget-object v2, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a(Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI$AVOptions;)V

    .line 176
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    iget-object v2, p0, Lcom/tencent/liteav/muxer/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->a()I

    const-wide/16 v2, -0x1

    .line 179
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/d;->p:J

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/tencent/liteav/muxer/d;->l:Z

    .line 181
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/d;->m:Z

    .line 182
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/d;->q:J

    .line 183
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/d;->r:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 184
    monitor-exit p0

    return v1

    :cond_b
    :goto_3
    :try_start_7
    const-string v0, "TXCMP4SWMuxer"

    const-string v1, "video format contains error csd!"

    .line 162
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 163
    monitor-exit p0

    return v5

    :cond_c
    :goto_4
    :try_start_8
    const-string v0, "TXCMP4SWMuxer"

    const-string v1, "target path not set yet!"

    .line 115
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v0, -0x1

    .line 116
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/media/MediaFormat;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TXCMP4SWMuxer"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVideoTrack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;

    .line 70
    iget-object p1, p0, Lcom/tencent/liteav/muxer/d;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 218
    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/muxer/d;->g:Ljava/lang/String;

    .line 219
    iget-object p1, p0, Lcom/tencent/liteav/muxer/d;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 220
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->g:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 225
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "TXCMP4SWMuxer"

    const-string v1, "create new file failed."

    .line 231
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 265
    invoke-direct {p0, v1, p1, p2}, Lcom/tencent/liteav/muxer/d;->a(ZLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string p1, "TXCMP4SWMuxer"

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache frame before muexer ready. ptsUs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit p0

    return-void

    .line 269
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/tencent/liteav/muxer/d;->p:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 271
    invoke-direct {p0, v1, p1, p2}, Lcom/tencent/liteav/muxer/d;->a(ZLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 272
    invoke-direct {p0}, Lcom/tencent/liteav/muxer/d;->g()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/liteav/muxer/d;->p:J

    const-string p1, "TXCMP4SWMuxer"

    .line 273
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "first frame offset = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/liteav/muxer/d;->p:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/tencent/liteav/muxer/d;->i()V

    goto :goto_0

    .line 276
    :cond_1
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/muxer/d;->a(J)V

    .line 277
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/muxer/d;->c(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([BIIJI)V
    .locals 1

    monitor-enter p0

    .line 251
    :try_start_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 252
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 253
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 254
    iput-wide p4, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 p2, 0x0

    .line 255
    iput p2, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 256
    iput p3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 257
    iput p6, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 259
    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/muxer/d;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()I
    .locals 8

    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 190
    invoke-direct {p0}, Lcom/tencent/liteav/muxer/d;->h()V

    const-string v0, "TXCMP4SWMuxer"

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop. start flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/tencent/liteav/muxer/d;->l:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", video key frame set = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/tencent/liteav/muxer/d;->m:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 193
    :try_start_1
    iget-boolean v4, p0, Lcom/tencent/liteav/muxer/d;->l:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/tencent/liteav/muxer/d;->m:Z

    if-eqz v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    invoke-virtual {v4}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->b()I

    .line 196
    :cond_0
    iget-object v4, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    invoke-virtual {v4}, Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;->c()V

    .line 197
    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :try_start_2
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/d;->l:Z

    .line 203
    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    .line 204
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/d;->m:Z

    .line 205
    iget-object v4, p0, Lcom/tencent/liteav/muxer/d;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 206
    iget-object v4, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 207
    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;

    .line 208
    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->i:Landroid/media/MediaFormat;

    .line 209
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/d;->q:J

    .line 210
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/d;->r:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "TXCMP4SWMuxer"

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "muxer stop/release exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, -0x1

    .line 202
    :try_start_4
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/d;->l:Z

    .line 203
    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    .line 204
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/d;->m:Z

    .line 205
    iget-object v1, p0, Lcom/tencent/liteav/muxer/d;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 206
    iget-object v1, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 207
    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;

    .line 208
    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->i:Landroid/media/MediaFormat;

    .line 209
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/d;->q:J

    .line 210
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/d;->r:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 200
    monitor-exit p0

    return v4

    .line 202
    :goto_0
    :try_start_5
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/d;->l:Z

    .line 203
    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->f:Lcom/tencent/liteav/muxer/jni/TXSWMuxerJNI;

    .line 204
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/d;->m:Z

    .line 205
    iget-object v1, p0, Lcom/tencent/liteav/muxer/d;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 206
    iget-object v1, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 207
    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;

    .line 208
    iput-object v0, p0, Lcom/tencent/liteav/muxer/d;->i:Landroid/media/MediaFormat;

    .line 209
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/d;->q:J

    .line 210
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/d;->r:J

    .line 211
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 213
    :cond_1
    :goto_1
    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Landroid/media/MediaFormat;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TXCMP4SWMuxer"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAudioTrack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/tencent/liteav/muxer/d;->i:Landroid/media/MediaFormat;

    .line 77
    iget-object p1, p0, Lcom/tencent/liteav/muxer/d;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 284
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/liteav/muxer/d;->a(ZLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b([BIIJI)V
    .locals 1

    monitor-enter p0

    .line 238
    :try_start_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 239
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 240
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 241
    iput-wide p4, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 p2, 0x0

    .line 242
    iput p2, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 243
    iput p3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 244
    iput p6, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 246
    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/muxer/d;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/d;->h:Landroid/media/MediaFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 83
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 85
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
