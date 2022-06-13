.class public Lcom/tencent/liteav/muxer/b;
.super Ljava/lang/Object;
.source "TXCMP4HWMuxer.java"

# interfaces
.implements Lcom/tencent/liteav/muxer/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/muxer/b$a;
    }
.end annotation


# static fields
.field public static a:F = 0.5f

.field public static b:F = 0.8f

.field public static c:F = 1.25f

.field public static d:F = 2.0f


# instance fields
.field private e:I

.field private f:Landroid/media/MediaMuxer;

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
            "Lcom/tencent/liteav/muxer/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/tencent/liteav/muxer/b$a;",
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 21
    iput v0, p0, Lcom/tencent/liteav/muxer/b;->e:I

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->g:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->h:Landroid/media/MediaFormat;

    .line 53
    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->i:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/tencent/liteav/muxer/b;->j:I

    .line 55
    iput v0, p0, Lcom/tencent/liteav/muxer/b;->k:I

    .line 56
    iput-boolean v0, p0, Lcom/tencent/liteav/muxer/b;->l:Z

    .line 57
    iput-boolean v0, p0, Lcom/tencent/liteav/muxer/b;->m:Z

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 v0, -0x1

    .line 60
    iput-wide v0, p0, Lcom/tencent/liteav/muxer/b;->p:J

    .line 61
    iput-wide v0, p0, Lcom/tencent/liteav/muxer/b;->q:J

    .line 62
    iput-wide v0, p0, Lcom/tencent/liteav/muxer/b;->r:J

    return-void
.end method

.method private a(ZLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 8

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 350
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 351
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_1

    .line 352
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 353
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 355
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 356
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 358
    new-instance p2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 359
    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v7, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 361
    new-instance p3, Lcom/tencent/liteav/muxer/b$a;

    invoke-direct {p3, v0, p2}, Lcom/tencent/liteav/muxer/b$a;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string p2, "TXCMP4HWMuxer"

    if-eqz p1, :cond_3

    .line 363
    iget-object p1, p0, Lcom/tencent/liteav/muxer/b;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_2

    .line 364
    iget-object p1, p0, Lcom/tencent/liteav/muxer/b;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "drop video frame. video cache size is larger than 200"

    .line 366
    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/muxer/b;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    const/16 v0, 0x258

    if-ge p1, v0, :cond_4

    .line 370
    iget-object p1, p0, Lcom/tencent/liteav/muxer/b;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string p1, "drop audio frame. audio cache size is larger than 600"

    .line 372
    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private c(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 9

    const-string v0, "write frame info.presentationTimeUs: "

    .line 266
    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v3, p0, Lcom/tencent/liteav/muxer/b;->p:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const-string v6, "TXCMP4HWMuxer"

    if-gez v5, :cond_1

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pts error! first frame offset timeus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/tencent/liteav/muxer/b;->p:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", current timeus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-wide v1, p0, Lcom/tencent/liteav/muxer/b;->q:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    .line 272
    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/tencent/liteav/muxer/b;->q:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video is not in chronological order. current frame\'s pts("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") smaller than pre frame\'s pts("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/tencent/liteav/muxer/b;->q:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_2
    iput-wide v1, p0, Lcom/tencent/liteav/muxer/b;->q:J

    .line 279
    :goto_1
    iget v3, p0, Lcom/tencent/liteav/muxer/b;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    long-to-float v1, v1

    .line 281
    sget v2, Lcom/tencent/liteav/muxer/b;->b:F

    :goto_2
    mul-float/2addr v1, v2

    float-to-long v1, v1

    goto :goto_3

    :cond_4
    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    long-to-float v1, v1

    .line 283
    sget v2, Lcom/tencent/liteav/muxer/b;->a:F

    goto :goto_2

    :cond_5
    if-ne v3, v5, :cond_6

    long-to-float v1, v1

    .line 285
    sget v2, Lcom/tencent/liteav/muxer/b;->c:F

    goto :goto_2

    :cond_6
    if-nez v3, :cond_7

    long-to-float v1, v1

    .line 287
    sget v2, Lcom/tencent/liteav/muxer/b;->d:F

    goto :goto_2

    .line 289
    :cond_7
    :goto_3
    iput-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 291
    :try_start_0
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 292
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 293
    iget-object v1, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;

    iget v2, p0, Lcom/tencent/liteav/muxer/b;->k:I

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 294
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr p1, v5

    if-eqz p1, :cond_8

    .line 295
    iput-boolean v5, p0, Lcom/tencent/liteav/muxer/b;->m:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", IllegalArgumentException: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", IllegalStateException: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method

.method private d()J
    .locals 5

    .line 379
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/muxer/b$a;

    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/b$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 382
    :goto_0
    iget-object v2, p0, Lcom/tencent/liteav/muxer/b;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/tencent/liteav/muxer/b;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/muxer/b$a;

    if-eqz v2, :cond_1

    .line 385
    invoke-virtual {v2}, Lcom/tencent/liteav/muxer/b$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 387
    iget-object v2, p0, Lcom/tencent/liteav/muxer/b;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/muxer/b$a;

    invoke-virtual {v2}, Lcom/tencent/liteav/muxer/b$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    :cond_1
    return-wide v0
.end method

.method private d(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    .line 307
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, p0, Lcom/tencent/liteav/muxer/b;->p:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "TXCMP4HWMuxer"

    if-ltz v2, :cond_7

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    goto/16 :goto_4

    .line 313
    :cond_0
    iget-wide v4, p0, Lcom/tencent/liteav/muxer/b;->r:J

    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio is not in chronological order. current audio\'s pts pts("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") must larger than pre audio\'s pts("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/liteav/muxer/b;->r:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-wide v0, p0, Lcom/tencent/liteav/muxer/b;->r:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 319
    :cond_1
    iput-wide v0, p0, Lcom/tencent/liteav/muxer/b;->r:J

    .line 321
    :goto_0
    iget v2, p0, Lcom/tencent/liteav/muxer/b;->e:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    long-to-float v0, v0

    .line 323
    sget v1, Lcom/tencent/liteav/muxer/b;->b:F

    :goto_1
    mul-float/2addr v0, v1

    float-to-long v0, v0

    goto :goto_2

    :cond_3
    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    long-to-float v0, v0

    .line 325
    sget v1, Lcom/tencent/liteav/muxer/b;->a:F

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    long-to-float v0, v0

    .line 327
    sget v1, Lcom/tencent/liteav/muxer/b;->c:F

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    long-to-float v0, v0

    .line 329
    sget v1, Lcom/tencent/liteav/muxer/b;->d:F

    goto :goto_1

    .line 331
    :cond_6
    :goto_2
    iput-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/tencent/liteav/muxer/b;->j:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 337
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

    .line 335
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

    .line 309
    :cond_7
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "drop sample. first frame offset timeus = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/liteav/muxer/b;->p:J

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

.method private e()V
    .locals 2

    .line 398
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/muxer/b$a;

    .line 400
    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/b$a;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/b$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/muxer/b;->c(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 402
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/muxer/b$a;

    .line 404
    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/b$a;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/liteav/muxer/b$a;->b()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/muxer/b;->d(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 4

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/muxer/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TXCMP4HWMuxer"

    const-string v1, "video track not set yet!"

    .line 99
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x2

    .line 100
    monitor-exit p0

    return v0

    .line 106
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "TXCMP4HWMuxer"

    const-string v2, "start has been called. stop must be called before start"

    .line 107
    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    const-string v0, "TXCMP4HWMuxer"

    const-string v2, "start"

    .line 110
    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :try_start_3
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/tencent/liteav/muxer/b;->g:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    :try_start_4
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->h:Landroid/media/MediaFormat;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    .line 119
    :try_start_5
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/tencent/liteav/muxer/b;->h:Landroid/media/MediaFormat;

    invoke-virtual {v0, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/muxer/b;->k:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "TXCMP4HWMuxer"

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVideoTrack IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v0, -0x6

    .line 125
    monitor-exit p0

    return v0

    :catch_1
    move-exception v0

    :try_start_7
    const-string v1, "TXCMP4HWMuxer"

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVideoTrack IllegalArgumentException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v0, -0x5

    .line 122
    monitor-exit p0

    return v0

    .line 128
    :cond_3
    :goto_0
    :try_start_8
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->i:Landroid/media/MediaFormat;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_4

    .line 130
    :try_start_9
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;

    iget-object v2, p0, Lcom/tencent/liteav/muxer/b;->i:Landroid/media/MediaFormat;

    invoke-virtual {v0, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/muxer/b;->j:I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_a
    const-string v1, "TXCMP4HWMuxer"

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAudioTrack IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v0, -0x8

    .line 136
    monitor-exit p0

    return v0

    :catch_3
    move-exception v0

    :try_start_b
    const-string v1, "TXCMP4HWMuxer"

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAudioTrack IllegalArgumentException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v0, -0x7

    .line 133
    monitor-exit p0

    return v0

    .line 139
    :cond_4
    :goto_1
    :try_start_c
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    const-wide/16 v2, -0x1

    .line 140
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/b;->p:J

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/tencent/liteav/muxer/b;->l:Z

    .line 142
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/b;->m:Z

    .line 143
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/b;->q:J

    .line 144
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/b;->r:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 145
    monitor-exit p0

    return v1

    :catch_4
    move-exception v0

    :try_start_d
    const-string v1, "TXCMP4HWMuxer"

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create MediaMuxer exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const/4 v0, -0x4

    .line 115
    monitor-exit p0

    return v0

    :cond_5
    :goto_2
    :try_start_e
    const-string v0, "TXCMP4HWMuxer"

    const-string v1, "target path not set yet!"

    .line 95
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v0, -0x1

    .line 96
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
    const-string v0, "TXCMP4HWMuxer"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addVideoTrack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/tencent/liteav/muxer/b;->h:Landroid/media/MediaFormat;

    .line 68
    iget-object p1, p0, Lcom/tencent/liteav/muxer/b;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
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

    .line 177
    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/muxer/b;->g:Ljava/lang/String;

    .line 178
    iget-object p1, p0, Lcom/tencent/liteav/muxer/b;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 179
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->g:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 184
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
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
    const-string v0, "TXCMP4HWMuxer"

    const-string v1, "create new file failed."

    .line 190
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
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

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 224
    invoke-direct {p0, v1, p1, p2}, Lcom/tencent/liteav/muxer/b;->a(ZLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string p1, "TXCMP4HWMuxer"

    .line 225
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

    .line 226
    monitor-exit p0

    return-void

    .line 228
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/tencent/liteav/muxer/b;->p:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 230
    invoke-direct {p0, v1, p1, p2}, Lcom/tencent/liteav/muxer/b;->a(ZLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 231
    invoke-direct {p0}, Lcom/tencent/liteav/muxer/b;->d()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/liteav/muxer/b;->p:J

    const-string p1, "TXCMP4HWMuxer"

    .line 232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "first frame offset = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/liteav/muxer/b;->p:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/tencent/liteav/muxer/b;->e()V

    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/muxer/b;->c(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
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

    .line 210
    :try_start_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 212
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 213
    iput-wide p4, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 p2, 0x0

    .line 214
    iput p2, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 215
    iput p3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 216
    iput p6, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 218
    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/muxer/b;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
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

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "TXCMP4HWMuxer"

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop. start flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/tencent/liteav/muxer/b;->l:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", video key frame set = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/tencent/liteav/muxer/b;->m:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 153
    :try_start_1
    iget-boolean v4, p0, Lcom/tencent/liteav/muxer/b;->l:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/tencent/liteav/muxer/b;->m:Z

    if-eqz v4, :cond_0

    .line 154
    iget-object v4, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;

    invoke-virtual {v4}, Landroid/media/MediaMuxer;->stop()V

    .line 156
    :cond_0
    iget-object v4, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;

    invoke-virtual {v4}, Landroid/media/MediaMuxer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/b;->l:Z

    .line 162
    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;

    .line 163
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/b;->m:Z

    .line 164
    iget-object v4, p0, Lcom/tencent/liteav/muxer/b;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 165
    iget-object v4, p0, Lcom/tencent/liteav/muxer/b;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 166
    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->h:Landroid/media/MediaFormat;

    .line 167
    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->i:Landroid/media/MediaFormat;

    .line 168
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/b;->q:J

    .line 169
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/b;->r:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "TXCMP4HWMuxer"

    .line 158
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

    .line 161
    :try_start_4
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/b;->l:Z

    .line 162
    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;

    .line 163
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/b;->m:Z

    .line 164
    iget-object v1, p0, Lcom/tencent/liteav/muxer/b;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 165
    iget-object v1, p0, Lcom/tencent/liteav/muxer/b;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 166
    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->h:Landroid/media/MediaFormat;

    .line 167
    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->i:Landroid/media/MediaFormat;

    .line 168
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/b;->q:J

    .line 169
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/b;->r:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 159
    monitor-exit p0

    return v4

    .line 161
    :goto_0
    :try_start_5
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/b;->l:Z

    .line 162
    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;

    .line 163
    iput-boolean v1, p0, Lcom/tencent/liteav/muxer/b;->m:Z

    .line 164
    iget-object v1, p0, Lcom/tencent/liteav/muxer/b;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 165
    iget-object v1, p0, Lcom/tencent/liteav/muxer/b;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 166
    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->h:Landroid/media/MediaFormat;

    .line 167
    iput-object v0, p0, Lcom/tencent/liteav/muxer/b;->i:Landroid/media/MediaFormat;

    .line 168
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/b;->q:J

    .line 169
    iput-wide v2, p0, Lcom/tencent/liteav/muxer/b;->r:J

    .line 170
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 172
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
    const-string v0, "TXCMP4HWMuxer"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAudioTrack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/tencent/liteav/muxer/b;->i:Landroid/media/MediaFormat;

    .line 75
    iget-object p1, p0, Lcom/tencent/liteav/muxer/b;->o:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 4

    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->f:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/liteav/muxer/b;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/muxer/b;->d(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "TXCMP4HWMuxer"

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache sample before muexer ready. ptsUs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/liteav/muxer/b;->a(ZLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
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

    .line 197
    :try_start_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 198
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 199
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 200
    iput-wide p4, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 p2, 0x0

    .line 201
    iput p2, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 202
    iput p3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 203
    iput p6, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 205
    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/muxer/b;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
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

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/muxer/b;->h:Landroid/media/MediaFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 80
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 82
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
