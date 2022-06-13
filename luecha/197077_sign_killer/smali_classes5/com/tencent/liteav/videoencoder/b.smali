.class public Lcom/tencent/liteav/videoencoder/b;
.super Lcom/tencent/liteav/videoencoder/c;
.source "TXCHWVideoEncoder.java"


# instance fields
.field private A:Landroid/view/Surface;

.field private B:Z

.field private C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private D:Z

.field private E:[Ljava/nio/ByteBuffer;

.field private F:[B

.field private volatile G:J

.field private H:J

.field private I:J

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:I

.field private T:I

.field private U:I

.field private V:J

.field private W:I

.field private X:I

.field private Y:I

.field private Z:Lcom/tencent/liteav/basic/e/f;

.field private a:I

.field private final aa:Ljava/lang/Object;

.field private ab:Z

.field private ac:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private ad:I

.field private ae:Z

.field private af:J

.field private ag:I

.field private ah:I

.field private ai:Z

.field private aj:Z

.field private ak:J

.field private al:Z

.field private am:I

.field private an:Ljava/lang/Runnable;

.field private b:J

.field private c:D

.field private d:J

.field private e:J

.field private f:I

.field private g:Z

.field private h:Z

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:Z

.field private p:Z

.field private q:J

.field private r:J

.field private s:Landroid/media/MediaCodec;

.field private t:Ljava/lang/String;

.field private u:Lcom/tencent/liteav/basic/util/i;

.field private v:Ljava/lang/Runnable;

.field private w:Ljava/lang/Runnable;

.field private x:Ljava/lang/Runnable;

.field private y:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 48
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/c;-><init>()V

    const/4 v0, 0x0

    .line 1305
    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->a:I

    const-wide/16 v1, 0x0

    .line 1306
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->b:J

    const-wide/16 v3, 0x0

    .line 1307
    iput-wide v3, p0, Lcom/tencent/liteav/videoencoder/b;->c:D

    .line 1308
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->d:J

    .line 1309
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->e:J

    .line 1310
    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->f:I

    .line 1311
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/b;->g:Z

    const/4 v3, 0x1

    .line 1312
    iput-boolean v3, p0, Lcom/tencent/liteav/videoencoder/b;->h:Z

    .line 1314
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->i:J

    .line 1315
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->j:J

    .line 1316
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->k:J

    .line 1317
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->l:J

    .line 1318
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->m:J

    .line 1319
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->n:J

    .line 1322
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->q:J

    .line 1323
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->r:J

    const/4 v4, 0x0

    .line 1325
    iput-object v4, p0, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    const-string v5, "video/avc"

    .line 1326
    iput-object v5, p0, Lcom/tencent/liteav/videoencoder/b;->t:Ljava/lang/String;

    .line 1327
    iput-object v4, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    .line 1328
    new-instance v5, Lcom/tencent/liteav/videoencoder/b$10;

    invoke-direct {v5, p0}, Lcom/tencent/liteav/videoencoder/b$10;-><init>(Lcom/tencent/liteav/videoencoder/b;)V

    iput-object v5, p0, Lcom/tencent/liteav/videoencoder/b;->v:Ljava/lang/Runnable;

    .line 1334
    new-instance v5, Lcom/tencent/liteav/videoencoder/b$11;

    invoke-direct {v5, p0}, Lcom/tencent/liteav/videoencoder/b$11;-><init>(Lcom/tencent/liteav/videoencoder/b;)V

    iput-object v5, p0, Lcom/tencent/liteav/videoencoder/b;->w:Ljava/lang/Runnable;

    .line 1340
    new-instance v5, Lcom/tencent/liteav/videoencoder/b$2;

    invoke-direct {v5, p0}, Lcom/tencent/liteav/videoencoder/b$2;-><init>(Lcom/tencent/liteav/videoencoder/b;)V

    iput-object v5, p0, Lcom/tencent/liteav/videoencoder/b;->x:Ljava/lang/Runnable;

    .line 1346
    new-instance v5, Ljava/util/ArrayDeque;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v5, p0, Lcom/tencent/liteav/videoencoder/b;->y:Ljava/util/ArrayDeque;

    .line 1348
    iput-object v4, p0, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;

    .line 1349
    iput-boolean v3, p0, Lcom/tencent/liteav/videoencoder/b;->B:Z

    .line 1350
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, p0, Lcom/tencent/liteav/videoencoder/b;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1351
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/b;->D:Z

    .line 1352
    iput-object v4, p0, Lcom/tencent/liteav/videoencoder/b;->E:[Ljava/nio/ByteBuffer;

    .line 1353
    iput-object v4, p0, Lcom/tencent/liteav/videoencoder/b;->F:[B

    .line 1354
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->G:J

    .line 1355
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->H:J

    .line 1356
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->I:J

    .line 1364
    iput-boolean v3, p0, Lcom/tencent/liteav/videoencoder/b;->P:Z

    .line 1365
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/b;->Q:Z

    .line 1366
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/b;->R:Z

    .line 1371
    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->S:I

    .line 1372
    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->T:I

    .line 1373
    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->U:I

    .line 1374
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->V:J

    .line 1375
    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->W:I

    .line 1376
    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->X:I

    const/4 v4, -0x1

    .line 1378
    iput v4, p0, Lcom/tencent/liteav/videoencoder/b;->Y:I

    .line 1380
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/tencent/liteav/videoencoder/b;->aa:Ljava/lang/Object;

    .line 1381
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/b;->ab:Z

    .line 1387
    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->ad:I

    .line 1388
    iput-boolean v3, p0, Lcom/tencent/liteav/videoencoder/b;->ae:Z

    .line 1393
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->af:J

    const/4 v4, 0x3

    .line 1395
    iput v4, p0, Lcom/tencent/liteav/videoencoder/b;->ag:I

    .line 1397
    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->ah:I

    .line 1400
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/b;->ai:Z

    .line 1402
    iput-boolean v3, p0, Lcom/tencent/liteav/videoencoder/b;->aj:Z

    .line 1404
    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->ak:J

    .line 1406
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/b;->al:Z

    .line 1408
    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->am:I

    .line 1410
    new-instance v0, Lcom/tencent/liteav/videoencoder/b$3;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoencoder/b$3;-><init>(Lcom/tencent/liteav/videoencoder/b;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->an:Ljava/lang/Runnable;

    .line 49
    new-instance v0, Lcom/tencent/liteav/basic/util/i;

    const-string v1, "HWVideoEncoder"

    invoke-direct {v0, v1}, Lcom/tencent/liteav/basic/util/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    return-void
.end method

.method private a(I)I
    .locals 30

    move-object/from16 v1, p0

    const-string v2, "TXCHWVideoEncoder"

    .line 607
    iget-object v0, v1, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    const/4 v3, -0x1

    if-nez v0, :cond_0

    return v3

    .line 608
    :cond_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 611
    :try_start_0
    iget-object v4, v1, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    move/from16 v5, p1

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v4, v0, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v5, 0x0

    if-ne v4, v3, :cond_1

    return v5

    :cond_1
    const/4 v6, -0x3

    const/4 v7, 0x1

    if-ne v4, v6, :cond_2

    .line 621
    iget-object v0, v1, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/liteav/videoencoder/b;->E:[Ljava/nio/ByteBuffer;

    return v7

    :cond_2
    const/4 v6, -0x2

    if-ne v4, v6, :cond_3

    .line 625
    :try_start_1
    iget-object v0, v1, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 626
    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videoencoder/b;->callDelegate(Landroid/media/MediaFormat;)V

    .line 627
    iput-boolean v7, v1, Lcom/tencent/liteav/videoencoder/b;->al:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return v7

    :catch_0
    move-exception v0

    .line 630
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mediacodec getOutputFormat failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    if-gez v4, :cond_4

    return v3

    .line 637
    :cond_4
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v8

    .line 638
    iget-object v10, v1, Lcom/tencent/liteav/videoencoder/b;->E:[Ljava/nio/ByteBuffer;

    aget-object v10, v10, v4

    if-nez v10, :cond_5

    goto/16 :goto_e

    .line 644
    :cond_5
    iget v11, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v11, v11, [B

    .line 645
    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 646
    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v13, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v12, v13

    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 647
    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v10, v11, v5, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 654
    array-length v12, v11

    .line 656
    iget v13, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/4 v6, 0x2

    if-le v13, v14, :cond_8

    aget-byte v13, v11, v5

    if-nez v13, :cond_8

    aget-byte v13, v11, v7

    if-nez v13, :cond_8

    aget-byte v13, v11, v6

    if-nez v13, :cond_8

    const/4 v13, 0x3

    aget-byte v16, v11, v13

    if-nez v16, :cond_8

    aget-byte v16, v11, v15

    if-nez v16, :cond_8

    aget-byte v14, v11, v14

    if-nez v14, :cond_8

    .line 657
    :goto_0
    array-length v14, v11

    sub-int/2addr v14, v15

    if-ge v13, v14, :cond_7

    .line 658
    aget-byte v14, v11, v13

    if-nez v14, :cond_6

    add-int/lit8 v14, v13, 0x1

    aget-byte v14, v11, v14

    if-nez v14, :cond_6

    add-int/lit8 v14, v13, 0x2

    aget-byte v14, v11, v14

    if-nez v14, :cond_6

    add-int/lit8 v14, v13, 0x3

    aget-byte v14, v11, v14

    if-ne v14, v7, :cond_6

    sub-int/2addr v12, v13

    goto :goto_1

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_7
    move v13, v5

    .line 665
    :goto_1
    new-array v14, v12, [B

    .line 666
    invoke-static {v11, v13, v14, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_8
    move-object v14, v11

    .line 671
    :goto_2
    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v13, 0x0

    if-nez v12, :cond_a

    .line 672
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v0, v15

    if-eqz v0, :cond_27

    .line 673
    iget-object v0, v1, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    if-eqz v0, :cond_9

    .line 674
    iget-object v0, v1, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    invoke-interface {v0, v13, v5}, Lcom/tencent/liteav/videoencoder/d;->a(Lcom/tencent/liteav/basic/structs/TXSNALPacket;I)V

    :cond_9
    const/4 v3, -0x2

    goto/16 :goto_e

    .line 683
    :cond_a
    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v12, v6

    if-ne v12, v6, :cond_c

    .line 684
    iget-boolean v0, v1, Lcom/tencent/liteav/videoencoder/b;->g:Z

    if-eqz v0, :cond_b

    .line 685
    invoke-virtual {v14}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Lcom/tencent/liteav/videoencoder/b;->F:[B

    goto :goto_3

    .line 688
    :cond_b
    invoke-virtual {v14}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/tencent/liteav/videoencoder/b;->a([B)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/liteav/videoencoder/b;->F:[B

    :goto_3
    move v3, v7

    goto/16 :goto_e

    .line 692
    :cond_c
    iget v12, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v12, v7

    if-ne v12, v7, :cond_e

    .line 694
    iput v3, v1, Lcom/tencent/liteav/videoencoder/b;->J:I

    .line 695
    iget-boolean v3, v1, Lcom/tencent/liteav/videoencoder/b;->g:Z

    if-eqz v3, :cond_d

    .line 696
    iget-object v3, v1, Lcom/tencent/liteav/videoencoder/b;->F:[B

    array-length v12, v3

    array-length v13, v14

    add-int/2addr v12, v13

    new-array v12, v12, [B

    .line 697
    array-length v13, v3

    invoke-static {v3, v5, v12, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 698
    iget-object v3, v1, Lcom/tencent/liteav/videoencoder/b;->F:[B

    array-length v3, v3

    array-length v13, v14

    invoke-static {v14, v5, v12, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v5

    move-object v14, v12

    goto :goto_4

    .line 702
    :cond_d
    invoke-direct {v1, v14}, Lcom/tencent/liteav/videoencoder/b;->a([B)[B

    move-result-object v3

    .line 703
    iget-object v12, v1, Lcom/tencent/liteav/videoencoder/b;->F:[B

    array-length v13, v12

    array-length v14, v3

    add-int/2addr v13, v14

    new-array v14, v13, [B

    .line 704
    array-length v13, v12

    invoke-static {v12, v5, v14, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 705
    iget-object v12, v1, Lcom/tencent/liteav/videoencoder/b;->F:[B

    array-length v12, v12

    array-length v13, v3

    invoke-static {v3, v5, v14, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v5

    goto :goto_4

    .line 709
    :cond_e
    iget-boolean v3, v1, Lcom/tencent/liteav/videoencoder/b;->g:Z

    if-nez v3, :cond_f

    .line 710
    invoke-direct {v1, v14}, Lcom/tencent/liteav/videoencoder/b;->a([B)[B

    move-result-object v14

    :cond_f
    move v3, v7

    .line 714
    :goto_4
    iget-boolean v12, v1, Lcom/tencent/liteav/videoencoder/b;->O:Z

    if-nez v12, :cond_10

    iget v12, v1, Lcom/tencent/liteav/videoencoder/b;->J:I

    add-int/2addr v12, v7

    iput v12, v1, Lcom/tencent/liteav/videoencoder/b;->J:I

    iget v13, v1, Lcom/tencent/liteav/videoencoder/b;->f:I

    iget v15, v1, Lcom/tencent/liteav/videoencoder/b;->K:I

    mul-int/2addr v13, v15

    if-ne v12, v13, :cond_10

    .line 716
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videoencoder/b;->f()V

    .line 719
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videoencoder/b;->a()J

    move-result-wide v12

    .line 720
    iget-wide v5, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v18, 0x3e8

    div-long v5, v5, v18

    move-wide/from16 v20, v8

    .line 724
    iget-wide v7, v1, Lcom/tencent/liteav/videoencoder/b;->n:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_15

    iget-boolean v7, v1, Lcom/tencent/liteav/videoencoder/b;->o:Z

    if-nez v7, :cond_15

    iget-boolean v7, v1, Lcom/tencent/liteav/videoencoder/b;->R:Z

    if-nez v7, :cond_11

    iget-boolean v7, v1, Lcom/tencent/liteav/videoencoder/b;->h:Z

    if-eqz v7, :cond_15

    :cond_11
    const/4 v7, 0x1

    .line 726
    iput-boolean v7, v1, Lcom/tencent/liteav/videoencoder/b;->o:Z

    .line 728
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Encoder] pts error, maybe have b frames. profile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/tencent/liteav/videoencoder/b;->N:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getDeviceInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " last pts:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/tencent/liteav/videoencoder/b;->n:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " current pts:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 731
    iget-boolean v8, v1, Lcom/tencent/liteav/videoencoder/b;->R:Z

    if-eqz v8, :cond_12

    .line 732
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " hevc"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 734
    :cond_12
    invoke-static {v2, v7}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, ""

    const/4 v9, 0x2

    const/4 v15, 0x0

    .line 735
    invoke-static {v9, v7, v8, v15}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 737
    iget-boolean v7, v1, Lcom/tencent/liteav/videoencoder/b;->R:Z

    if-eqz v7, :cond_13

    .line 738
    invoke-static {}, Lcom/tencent/liteav/basic/util/g;->a()Lcom/tencent/liteav/basic/util/g;

    move-result-object v7

    const-string v8, "enable_hw_hevc_encode"

    invoke-virtual {v7, v8, v15}, Lcom/tencent/liteav/basic/util/g;->a(Ljava/lang/String;Z)V

    const v7, 0x989686

    .line 739
    invoke-virtual {v1, v7}, Lcom/tencent/liteav/videoencoder/b;->callDelegate(I)V

    const-string v7, "[Encoder] hevc Got BFrame ,post ErrorCode_EncodeGotBFrame callback."

    .line 740
    invoke-static {v2, v7}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 742
    :cond_13
    iget v7, v1, Lcom/tencent/liteav/videoencoder/b;->N:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_14

    .line 743
    iput v8, v1, Lcom/tencent/liteav/videoencoder/b;->N:I

    const-string v7, "[Encoder] force reset profile to baseline when recv b frame."

    .line 744
    invoke-static {v2, v7}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_14
    invoke-static {}, Lcom/tencent/liteav/basic/util/g;->a()Lcom/tencent/liteav/basic/util/g;

    move-result-object v7

    const-string v8, "enable_high_profile"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/tencent/liteav/basic/util/g;->a(Ljava/lang/String;Z)V

    const-string v7, "[Encoder] post restart encoder task."

    .line 747
    invoke-static {v2, v7}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v7, v1, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    if-eqz v7, :cond_15

    .line 750
    iget-object v8, v1, Lcom/tencent/liteav/videoencoder/b;->an:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/tencent/liteav/basic/util/i;->b(Ljava/lang/Runnable;)V

    .line 755
    :cond_15
    :goto_5
    iput-wide v5, v1, Lcom/tencent/liteav/videoencoder/b;->n:J

    .line 757
    iget-wide v7, v1, Lcom/tencent/liteav/videoencoder/b;->I:J

    move-object/from16 v17, v10

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_16

    iput-wide v12, v1, Lcom/tencent/liteav/videoencoder/b;->I:J

    .line 758
    :cond_16
    iget-wide v7, v1, Lcom/tencent/liteav/videoencoder/b;->H:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_17

    iput-wide v5, v1, Lcom/tencent/liteav/videoencoder/b;->H:J

    .line 760
    :cond_17
    iget-wide v7, v1, Lcom/tencent/liteav/videoencoder/b;->I:J

    iget-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->H:J

    sub-long/2addr v7, v9

    add-long/2addr v5, v7

    .line 762
    iget-wide v7, v1, Lcom/tencent/liteav/videoencoder/b;->m:J

    cmp-long v9, v12, v7

    const-wide/16 v22, 0x1

    if-gtz v9, :cond_18

    add-long v12, v7, v22

    :cond_18
    cmp-long v7, v12, v5

    if-lez v7, :cond_19

    move-wide v12, v5

    .line 770
    :cond_19
    iput-wide v12, v1, Lcom/tencent/liteav/videoencoder/b;->m:J

    .line 772
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v7

    if-nez v3, :cond_1c

    .line 776
    iget-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->d:J

    add-long v18, v9, v18

    cmp-long v12, v7, v18

    if-lez v12, :cond_1a

    .line 777
    iget-wide v12, v1, Lcom/tencent/liteav/videoencoder/b;->q:J

    long-to-double v12, v12

    const-wide v18, 0x40bf400000000000L    # 8000.0

    mul-double v12, v12, v18

    sub-long v9, v7, v9

    long-to-double v9, v9

    div-double/2addr v12, v9

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    div-double/2addr v12, v9

    double-to-long v9, v12

    iput-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->b:J

    const-wide/16 v9, 0x0

    .line 778
    iput-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->q:J

    .line 779
    iput-wide v7, v1, Lcom/tencent/liteav/videoencoder/b;->d:J

    .line 780
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/videoencoder/b;->g()V

    goto :goto_6

    :cond_1a
    const-wide/16 v9, 0x0

    .line 782
    :goto_6
    iget-wide v12, v1, Lcom/tencent/liteav/videoencoder/b;->j:J

    add-long v12, v12, v22

    iput-wide v12, v1, Lcom/tencent/liteav/videoencoder/b;->j:J

    .line 783
    iget-wide v12, v1, Lcom/tencent/liteav/videoencoder/b;->j:J

    const-wide/16 v18, 0x100

    rem-long v18, v12, v18

    cmp-long v18, v18, v9

    if-nez v18, :cond_1b

    add-long v12, v12, v22

    .line 785
    iput-wide v12, v1, Lcom/tencent/liteav/videoencoder/b;->j:J

    .line 787
    :cond_1b
    iput-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->k:J

    goto :goto_7

    .line 790
    :cond_1c
    iget-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->k:J

    add-long v9, v9, v22

    iput-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->k:J

    .line 793
    :goto_7
    iget-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->q:J

    array-length v12, v14

    int-to-long v12, v12

    add-long/2addr v9, v12

    iput-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->q:J

    .line 795
    iget-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->e:J

    const-wide/16 v12, 0x7d0

    add-long/2addr v12, v9

    cmp-long v12, v7, v12

    if-lez v12, :cond_1f

    .line 796
    iget-wide v12, v1, Lcom/tencent/liteav/videoencoder/b;->r:J

    long-to-double v12, v12

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v12, v12, v18

    sub-long v9, v7, v9

    long-to-double v9, v9

    div-double/2addr v12, v9

    iput-wide v12, v1, Lcom/tencent/liteav/videoencoder/b;->c:D

    const-wide/16 v9, 0x0

    .line 797
    iput-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->r:J

    .line 798
    iput-wide v7, v1, Lcom/tencent/liteav/videoencoder/b;->e:J

    .line 800
    iget-object v7, v1, Lcom/tencent/liteav/videoencoder/b;->ac:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1d
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 801
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v9

    if-lez v12, :cond_1d

    .line 802
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-wide v9, v8

    goto :goto_8

    .line 804
    :cond_1e
    iget-object v7, v1, Lcom/tencent/liteav/videoencoder/b;->ac:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v7, 0x3

    mul-long/2addr v9, v7

    long-to-int v7, v9

    .line 805
    iput v7, v1, Lcom/tencent/liteav/videoencoder/b;->ad:I

    .line 809
    :cond_1f
    iget-wide v7, v1, Lcom/tencent/liteav/videoencoder/b;->r:J

    add-long v7, v7, v22

    iput-wide v7, v1, Lcom/tencent/liteav/videoencoder/b;->r:J

    .line 811
    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v8, v17

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 813
    iget-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->l:J

    add-long v9, v9, v22

    iput-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->l:J

    .line 814
    iget-object v7, v1, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    if-eqz v7, :cond_20

    .line 815
    iget-object v7, v1, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    const/16 v25, 0x2

    iget-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->j:J

    iget-wide v12, v1, Lcom/tencent/liteav/videoencoder/b;->k:J

    move-object/from16 v24, v7

    move-wide/from16 v26, v9

    move-wide/from16 v28, v12

    invoke-interface/range {v24 .. v29}, Lcom/tencent/liteav/videoencoder/d;->a(IJJ)V

    .line 818
    :cond_20
    iget-boolean v7, v1, Lcom/tencent/liteav/videoencoder/b;->o:Z

    if-eqz v7, :cond_21

    const-string v3, "[Encoder] drop all frame when find b frame."

    .line 819
    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_c

    .line 821
    :cond_21
    new-instance v7, Lcom/tencent/liteav/basic/structs/TXSNALPacket;

    invoke-direct {v7}, Lcom/tencent/liteav/basic/structs/TXSNALPacket;-><init>()V

    .line 822
    iget-boolean v9, v1, Lcom/tencent/liteav/videoencoder/b;->h:Z

    if-eqz v9, :cond_22

    .line 823
    iput-object v14, v7, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    goto :goto_9

    .line 825
    :cond_22
    iput-object v11, v7, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalData:[B

    .line 828
    :goto_9
    iput v3, v7, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    .line 829
    iget-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->j:J

    iput-wide v9, v7, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->gopIndex:J

    .line 830
    iget-wide v9, v1, Lcom/tencent/liteav/videoencoder/b;->k:J

    iput-wide v9, v7, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->gopFrameIndex:J

    .line 831
    iget-wide v11, v1, Lcom/tencent/liteav/videoencoder/b;->l:J

    iput-wide v11, v7, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->frameIndex:J

    if-nez v3, :cond_23

    goto :goto_a

    :cond_23
    sub-long v9, v9, v22

    .line 832
    :goto_a
    iput-wide v9, v7, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->refFremeIndex:J

    .line 833
    iput-wide v5, v7, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    .line 834
    iput-wide v5, v7, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->dts:J

    if-eqz v8, :cond_24

    .line 835
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    goto :goto_b

    :cond_24
    const/4 v13, 0x0

    :goto_b
    iput-object v13, v7, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->buffer:Ljava/nio/ByteBuffer;

    .line 836
    iget-boolean v3, v1, Lcom/tencent/liteav/videoencoder/b;->R:Z

    iput v3, v7, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->codecId:I

    .line 839
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 840
    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v11, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v13, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 841
    iput-object v3, v7, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->info:Landroid/media/MediaCodec$BufferInfo;

    const/4 v3, 0x0

    .line 844
    invoke-virtual {v1, v7, v3}, Lcom/tencent/liteav/videoencoder/b;->callDelegate(Lcom/tencent/liteav/basic/structs/TXSNALPacket;I)V

    .line 846
    :goto_c
    iget v5, v1, Lcom/tencent/liteav/videoencoder/b;->T:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v1, Lcom/tencent/liteav/videoencoder/b;->T:I

    .line 849
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x4

    and-int/2addr v0, v5

    if-eqz v0, :cond_26

    .line 850
    iget-object v0, v1, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    if-eqz v0, :cond_25

    .line 851
    iget-object v0, v1, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3}, Lcom/tencent/liteav/videoencoder/d;->a(Lcom/tencent/liteav/basic/structs/TXSNALPacket;I)V

    :cond_25
    const/4 v3, -0x2

    goto :goto_d

    :cond_26
    const/4 v3, 0x1

    .line 856
    :goto_d
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v5

    .line 857
    iget-object v0, v1, Lcom/tencent/liteav/videoencoder/b;->ac:Ljava/util/ArrayList;

    sub-long v5, v5, v20

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    :cond_27
    :goto_e
    :try_start_2
    iget-object v0, v1, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    if-eqz v0, :cond_28

    .line 862
    iget-object v0, v1, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 864
    :cond_28
    iget v0, v1, Lcom/tencent/liteav/videoencoder/b;->am:I

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    iput v0, v1, Lcom/tencent/liteav/videoencoder/b;->am:I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    .line 866
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseOutputBuffer failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return v3

    :catch_2
    move-exception v0

    .line 613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dequeueOutputBuffer failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private a(II[B[BI)I
    .locals 3

    if-lez p2, :cond_0

    if-le p1, p2, :cond_0

    sub-int/2addr p1, p2

    const/4 v0, 0x4

    :try_start_0
    new-array v1, v0, [B

    .line 906
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 907
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 908
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 909
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p3, p5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, p5, 0x4

    .line 910
    invoke-static {p4, p2, p3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, v0

    add-int/2addr p5, p1

    goto :goto_0

    :catch_0
    const-string p1, "TXCHWVideoEncoder"

    const-string p2, "setNalData exception"

    .line 915
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return p5
.end method

.method private a()J
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->y:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private a(Landroid/media/MediaCodec;IIIIIII)Landroid/media/MediaFormat;
    .locals 6

    .line 404
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->t:Ljava/lang/String;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/videoencoder/a;->a(Ljava/lang/String;IIIII)Landroid/media/MediaFormat;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 408
    :cond_0
    iget-object p3, p0, Lcom/tencent/liteav/videoencoder/b;->t:Ljava/lang/String;

    iget-boolean p6, p0, Lcom/tencent/liteav/videoencoder/b;->O:Z

    move-object p2, v0

    move p4, p7

    move p5, p8

    invoke-static/range {p1 .. p6}, Lcom/tencent/liteav/videoencoder/a;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Ljava/lang/String;IIZ)V

    const-string p1, "width"

    .line 410
    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->mOutputWidth:I

    const-string p1, "height"

    .line 411
    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->mOutputHeight:I

    const-string p1, "bitrate"

    .line 412
    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    float-to-double p1, p1

    const-wide/high16 p3, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, p3

    double-to-int p1, p1

    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->a:I

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createEffectiveFormat fix:w:  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/tencent/liteav/videoencoder/b;->mOutputWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/tencent/liteav/videoencoder/b;->mOutputHeight:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/tencent/liteav/videoencoder/b;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCHWVideoEncoder"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(II)V
    .locals 3

    const-string v0, "TXCHWVideoEncoder"

    const-string v1, "createCopyTexture"

    .line 1269
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->aa:Ljava/lang/Object;

    monitor-enter v0

    .line 1271
    :try_start_0
    new-instance v1, Lcom/tencent/liteav/basic/e/f;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/e/f;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->Z:Lcom/tencent/liteav/basic/e/f;

    .line 1272
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->Z:Lcom/tencent/liteav/basic/e/f;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/basic/e/f;->a(Z)V

    .line 1273
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->Z:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/f;->a()Z

    .line 1274
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->Z:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/liteav/basic/e/f;->a(II)V

    .line 1275
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(J)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->y:Ljava/util/ArrayDeque;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoencoder/b;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->e()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoencoder/b;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoencoder/b;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/videoencoder/b;J)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videoencoder/b;->a(J)V

    return-void
.end method

.method private a(Landroid/view/Surface;II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 431
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HWVideoEncode createGL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->mGLContextExternal:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXCHWVideoEncoder"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->mGLContextExternal:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->mGLContextExternal:Ljava/lang/Object;

    instance-of v1, v1, Landroid/opengl/EGLContext;

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->mGLContextExternal:Ljava/lang/Object;

    check-cast v1, Landroid/opengl/EGLContext;

    invoke-static {v2, v1, p1, p2, p3}, Lcom/tencent/liteav/basic/e/b;->a(Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/liteav/basic/e/b;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->z:Ljava/lang/Object;

    goto :goto_0

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->mGLContextExternal:Ljava/lang/Object;

    check-cast v1, Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {v2, v1, p1, p2, p3}, Lcom/tencent/liteav/basic/e/a;->a(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/liteav/basic/e/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->z:Ljava/lang/Object;

    .line 438
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->z:Ljava/lang/Object;

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 440
    invoke-static {v1, v1, v1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 441
    new-instance p1, Lcom/tencent/liteav/basic/e/f;

    invoke-direct {p1}, Lcom/tencent/liteav/basic/e/f;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->mEncodeFilter:Lcom/tencent/liteav/basic/e/f;

    .line 442
    iget-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->mEncodeFilter:Lcom/tencent/liteav/basic/e/f;

    sget-object v1, Lcom/tencent/liteav/basic/e/i;->e:[F

    sget-object v3, Lcom/tencent/liteav/basic/e/h;->a:Lcom/tencent/liteav/basic/e/h;

    invoke-static {v3, v0, v0}, Lcom/tencent/liteav/basic/e/i;->a(Lcom/tencent/liteav/basic/e/h;ZZ)[F

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/tencent/liteav/basic/e/f;->a([F[F)V

    .line 443
    iget-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->mEncodeFilter:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {p1}, Lcom/tencent/liteav/basic/e/f;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 445
    iput-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->mEncodeFilter:Lcom/tencent/liteav/basic/e/f;

    return v0

    .line 448
    :cond_3
    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method private a(Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)Z
    .locals 9

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Encoder] onMsgInitEncoder param = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCHWVideoEncoder"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 478
    iput-boolean v2, p0, Lcom/tencent/liteav/videoencoder/b;->B:Z

    const-wide/16 v3, 0x0

    .line 479
    iput-wide v3, p0, Lcom/tencent/liteav/videoencoder/b;->b:J

    const-wide/16 v5, 0x0

    .line 480
    iput-wide v5, p0, Lcom/tencent/liteav/videoencoder/b;->c:D

    .line 481
    iput-wide v3, p0, Lcom/tencent/liteav/videoencoder/b;->d:J

    .line 482
    iput-wide v3, p0, Lcom/tencent/liteav/videoencoder/b;->e:J

    .line 483
    iput v2, p0, Lcom/tencent/liteav/videoencoder/b;->f:I

    .line 484
    iput-wide v3, p0, Lcom/tencent/liteav/videoencoder/b;->i:J

    .line 485
    iget-wide v5, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->baseGopIndex:J

    iput-wide v5, p0, Lcom/tencent/liteav/videoencoder/b;->j:J

    .line 486
    iput-wide v3, p0, Lcom/tencent/liteav/videoencoder/b;->k:J

    .line 487
    iget-wide v5, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->baseFrameIndex:J

    iput-wide v5, p0, Lcom/tencent/liteav/videoencoder/b;->l:J

    .line 488
    iput-wide v3, p0, Lcom/tencent/liteav/videoencoder/b;->m:J

    .line 489
    iput-wide v3, p0, Lcom/tencent/liteav/videoencoder/b;->n:J

    .line 490
    iput-wide v3, p0, Lcom/tencent/liteav/videoencoder/b;->q:J

    .line 491
    iput-wide v3, p0, Lcom/tencent/liteav/videoencoder/b;->r:J

    const/4 v0, 0x0

    .line 492
    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->E:[Ljava/nio/ByteBuffer;

    .line 493
    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->F:[B

    .line 494
    iput-wide v3, p0, Lcom/tencent/liteav/videoencoder/b;->G:J

    const/4 v0, -0x1

    .line 495
    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->J:I

    .line 496
    iget v3, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    iput v3, p0, Lcom/tencent/liteav/videoencoder/b;->mOutputWidth:I

    .line 497
    iget v3, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    iput v3, p0, Lcom/tencent/liteav/videoencoder/b;->mOutputHeight:I

    .line 498
    iget v3, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->gop:I

    iput v3, p0, Lcom/tencent/liteav/videoencoder/b;->K:I

    .line 499
    iget v3, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->fps:I

    iput v3, p0, Lcom/tencent/liteav/videoencoder/b;->L:I

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init with fps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/tencent/liteav/videoencoder/b;->L:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-boolean v3, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->fullIFrame:Z

    iput-boolean v3, p0, Lcom/tencent/liteav/videoencoder/b;->O:Z

    .line 502
    iget-boolean v3, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->syncOutput:Z

    iput-boolean v3, p0, Lcom/tencent/liteav/videoencoder/b;->p:Z

    .line 503
    iget-boolean v3, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->enableEGL14:Z

    iput-boolean v3, p0, Lcom/tencent/liteav/videoencoder/b;->D:Z

    .line 504
    iget-boolean v3, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->forceSetBitrateMode:Z

    iput-boolean v3, p0, Lcom/tencent/liteav/videoencoder/b;->Q:Z

    .line 505
    iget-object v3, p0, Lcom/tencent/liteav/videoencoder/b;->y:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 506
    iget-boolean v3, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->bLimitFps:Z

    iput-boolean v3, p0, Lcom/tencent/liteav/videoencoder/b;->P:Z

    const/4 v3, 0x1

    if-eqz p1, :cond_10

    .line 507
    iget v4, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    if-eqz v4, :cond_10

    iget v4, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    if-eqz v4, :cond_10

    iget v4, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->fps:I

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 513
    :cond_0
    iget-boolean v4, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->isH265EncoderEnabled:Z

    iput-boolean v4, p0, Lcom/tencent/liteav/videoencoder/b;->R:Z

    .line 514
    iget-boolean v4, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->annexb:Z

    iput-boolean v4, p0, Lcom/tencent/liteav/videoencoder/b;->g:Z

    .line 515
    iget-boolean v4, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->appendSpsPps:Z

    iput-boolean v4, p0, Lcom/tencent/liteav/videoencoder/b;->h:Z

    .line 517
    iget v4, p0, Lcom/tencent/liteav/videoencoder/b;->a:I

    if-nez v4, :cond_1

    .line 518
    iget v4, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    iget v5, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    mul-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    iget v6, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    iget v7, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    mul-int/2addr v6, v7

    int-to-double v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v6, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/tencent/liteav/videoencoder/b;->a:I

    .line 520
    :cond_1
    iget v4, p0, Lcom/tencent/liteav/videoencoder/b;->a:I

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/tencent/liteav/videoencoder/b;->i:J

    .line 521
    iget v4, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->fps:I

    iput v4, p0, Lcom/tencent/liteav/videoencoder/b;->f:I

    .line 524
    iget v4, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderMode:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v4, v3, :cond_2

    if-eq v4, v6, :cond_4

    if-eq v4, v5, :cond_3

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_0

    :cond_4
    move v4, v3

    .line 538
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Encoder] HWEncValue: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/liteav/basic/f/c;->c()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget v7, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderProfile:I

    if-ne v7, v6, :cond_5

    const-string v7, "[Encoder] force reset profile to high. android is\'t support main profile."

    .line 541
    invoke-static {v1, v7}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iput v5, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderProfile:I

    .line 545
    :cond_5
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/liteav/basic/f/c;->c()I

    move-result v7

    if-ne v7, v3, :cond_6

    .line 546
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Encoder] force reset profile to baseline. device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getDeviceInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iput v3, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderProfile:I

    .line 551
    :cond_6
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/liteav/basic/f/c;->e()Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "[Encoder] force reset profile to baseline. this cmd from config."

    .line 552
    invoke-static {v1, v7}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iput v3, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderProfile:I

    .line 557
    :cond_7
    invoke-static {}, Lcom/tencent/liteav/basic/util/g;->a()Lcom/tencent/liteav/basic/util/g;

    move-result-object v7

    const-string v8, "enable_high_profile"

    invoke-virtual {v7, v8, v3}, Lcom/tencent/liteav/basic/util/g;->b(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "[Encoder] force set profile to baseline. this cmd from local."

    .line 559
    invoke-static {v1, v7}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iput v3, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderProfile:I

    .line 564
    :cond_8
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/liteav/basic/f/c;->f()Z

    move-result v7

    if-nez v7, :cond_9

    .line 565
    iput v3, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderProfile:I

    .line 567
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMsgInitEncoder: param.encoderProfile\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderProfile:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget p1, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderProfile:I

    if-eq p1, v3, :cond_a

    if-eq p1, v6, :cond_c

    if-eq p1, v5, :cond_b

    :cond_a
    move p1, v3

    goto :goto_1

    :cond_b
    const/16 p1, 0x8

    goto :goto_1

    :cond_c
    move p1, v6

    .line 580
    :goto_1
    iput v4, p0, Lcom/tencent/liteav/videoencoder/b;->M:I

    .line 581
    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->N:I

    .line 582
    iget-boolean p1, p0, Lcom/tencent/liteav/videoencoder/b;->R:Z

    if-eqz p1, :cond_d

    .line 583
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result p1

    const/16 v4, 0x15

    if-lt p1, v4, :cond_d

    .line 584
    iput v3, p0, Lcom/tencent/liteav/videoencoder/b;->N:I

    .line 588
    :cond_d
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->c()Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "[Encoder] startEncoder error result = false"

    .line 590
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 594
    :cond_e
    iput-boolean v3, p0, Lcom/tencent/liteav/videoencoder/b;->mInit:Z

    .line 595
    iget-boolean p1, p0, Lcom/tencent/liteav/videoencoder/b;->P:Z

    if-eqz p1, :cond_f

    .line 596
    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->Y:I

    .line 597
    iget-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/basic/util/i;->b(Ljava/lang/Runnable;)V

    .line 600
    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->ac:Ljava/util/ArrayList;

    .line 601
    iput v2, p0, Lcom/tencent/liteav/videoencoder/b;->ad:I

    return v3

    .line 508
    :cond_10
    :goto_2
    iput-boolean v3, p0, Lcom/tencent/liteav/videoencoder/b;->B:Z

    const-string p1, "[Encoder] onMsgInitEncoder return false"

    .line 509
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method static synthetic a(Lcom/tencent/liteav/videoencoder/b;Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/liteav/videoencoder/b;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/tencent/liteav/videoencoder/b;->B:Z

    return p1
.end method

.method private a([B)[B
    .locals 11

    .line 875
    array-length v0, p1

    add-int/lit8 v1, v0, 0x14

    .line 879
    new-array v1, v1, [B

    const/4 v8, 0x0

    move v4, v8

    move v7, v4

    move v9, v7

    :goto_0
    if-ge v9, v0, :cond_4

    .line 882
    aget-byte v2, p1, v9

    const/4 v10, 0x1

    if-nez v2, :cond_0

    add-int/lit8 v2, v9, 0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v9, 0x2

    aget-byte v2, p1, v2

    if-ne v2, v10, :cond_0

    move-object v2, p0

    move v3, v9

    move-object v5, v1

    move-object v6, p1

    .line 883
    invoke-direct/range {v2 .. v7}, Lcom/tencent/liteav/videoencoder/b;->a(II[B[BI)I

    move-result v7

    add-int/lit8 v9, v9, 0x3

    :goto_1
    move v4, v9

    goto :goto_2

    .line 886
    :cond_0
    aget-byte v2, p1, v9

    if-nez v2, :cond_1

    add-int/lit8 v2, v9, 0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_1

    add-int/lit8 v2, v9, 0x2

    aget-byte v2, p1, v2

    if-nez v2, :cond_1

    add-int/lit8 v2, v9, 0x3

    aget-byte v2, p1, v2

    if-ne v2, v10, :cond_1

    move-object v2, p0

    move v3, v9

    move-object v5, v1

    move-object v6, p1

    .line 887
    invoke-direct/range {v2 .. v7}, Lcom/tencent/liteav/videoencoder/b;->a(II[B[BI)I

    move-result v7

    add-int/lit8 v9, v9, 0x4

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v0, -0x4

    if-ne v9, v2, :cond_3

    add-int/lit8 v2, v9, 0x1

    .line 891
    aget-byte v2, p1, v2

    if-nez v2, :cond_2

    add-int/lit8 v2, v9, 0x2

    aget-byte v2, p1, v2

    if-nez v2, :cond_2

    add-int/lit8 v2, v9, 0x3

    aget-byte v2, p1, v2

    if-eq v2, v10, :cond_3

    :cond_2
    move v3, v0

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    move v3, v9

    :goto_3
    move-object v2, p0

    move-object v5, v1

    move-object v6, p1

    .line 896
    invoke-direct/range {v2 .. v7}, Lcom/tencent/liteav/videoencoder/b;->a(II[B[BI)I

    move-result p1

    .line 897
    new-array v0, p1, [B

    .line 898
    invoke-static {v1, v8, v0, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/liteav/videoencoder/b;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/tencent/liteav/videoencoder/b;->ak:J

    return-wide p1
.end method

.method private b()V
    .locals 3

    const-string v0, "TXCHWVideoEncoder"

    const-string v1, "HWVideoEncode destroyGL"

    .line 454
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->mEncodeFilter:Lcom/tencent/liteav/basic/e/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->mEncodeFilter:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/f;->d()V

    .line 458
    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->mEncodeFilter:Lcom/tencent/liteav/basic/e/f;

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->z:Ljava/lang/Object;

    instance-of v2, v0, Lcom/tencent/liteav/basic/e/a;

    if-eqz v2, :cond_1

    .line 461
    check-cast v0, Lcom/tencent/liteav/basic/e/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/a;->c()V

    .line 462
    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->z:Ljava/lang/Object;

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->z:Ljava/lang/Object;

    instance-of v2, v0, Lcom/tencent/liteav/basic/e/b;

    if-eqz v2, :cond_2

    .line 465
    check-cast v0, Lcom/tencent/liteav/basic/e/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/b;->d()V

    .line 466
    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->z:Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private b(I)V
    .locals 13

    .line 923
    iget-boolean v0, p0, Lcom/tencent/liteav/videoencoder/b;->B:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->z:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->aa:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_0
    iget v2, p0, Lcom/tencent/liteav/videoencoder/b;->Y:I

    .line 926
    iget-boolean v3, p0, Lcom/tencent/liteav/videoencoder/b;->P:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    .line 927
    iput v4, p0, Lcom/tencent/liteav/videoencoder/b;->Y:I

    if-ne v2, v4, :cond_1

    .line 929
    iput-boolean v1, p0, Lcom/tencent/liteav/videoencoder/b;->ab:Z

    .line 930
    monitor-exit v0

    return-void

    .line 932
    :cond_1
    iget v3, p0, Lcom/tencent/liteav/videoencoder/b;->X:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/tencent/liteav/videoencoder/b;->X:I

    .line 933
    iget-object v3, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    iget-object v5, p0, Lcom/tencent/liteav/videoencoder/b;->w:Ljava/lang/Runnable;

    const/16 v6, 0x3e8

    iget v7, p0, Lcom/tencent/liteav/videoencoder/b;->L:I

    div-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/tencent/liteav/basic/util/i;->a(Ljava/lang/Runnable;J)V

    :cond_2
    if-ne v2, v4, :cond_3

    .line 935
    monitor-exit v0

    return-void

    .line 936
    :cond_3
    iget-wide v5, p0, Lcom/tencent/liteav/videoencoder/b;->G:J

    invoke-direct {p0, v5, v6}, Lcom/tencent/liteav/videoencoder/b;->a(J)V

    .line 937
    iget v3, p0, Lcom/tencent/liteav/videoencoder/b;->mRotation:I

    rsub-int v3, v3, 0x2d0

    rem-int/lit16 v8, v3, 0x168

    const/16 v3, 0x10e

    const/16 v5, 0x5a

    if-eq v8, v5, :cond_5

    if-ne v8, v3, :cond_4

    goto :goto_0

    .line 938
    :cond_4
    iget v6, p0, Lcom/tencent/liteav/videoencoder/b;->mOutputWidth:I

    goto :goto_1

    :cond_5
    :goto_0
    iget v6, p0, Lcom/tencent/liteav/videoencoder/b;->mOutputHeight:I

    :goto_1
    if-eq v8, v5, :cond_7

    if-ne v8, v3, :cond_6

    goto :goto_2

    .line 939
    :cond_6
    iget v3, p0, Lcom/tencent/liteav/videoencoder/b;->mOutputHeight:I

    goto :goto_3

    :cond_7
    :goto_2
    iget v3, p0, Lcom/tencent/liteav/videoencoder/b;->mOutputWidth:I

    .line 941
    :goto_3
    iget-object v5, p0, Lcom/tencent/liteav/videoencoder/b;->mEncodeFilter:Lcom/tencent/liteav/basic/e/f;

    iget v7, p0, Lcom/tencent/liteav/videoencoder/b;->mInputWidth:I

    iget v9, p0, Lcom/tencent/liteav/videoencoder/b;->mInputHeight:I

    const/4 v10, 0x0

    int-to-float v6, v6

    int-to-float v3, v3

    div-float v3, v6, v3

    iget-boolean v11, p0, Lcom/tencent/liteav/videoencoder/b;->mEnableXMirror:Z

    const/4 v12, 0x1

    move v6, v7

    move v7, v9

    move-object v9, v10

    move v10, v3

    invoke-virtual/range {v5 .. v12}, Lcom/tencent/liteav/basic/e/f;->a(III[FFZZ)V

    .line 942
    iget-object v3, p0, Lcom/tencent/liteav/videoencoder/b;->mEncodeFilter:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {v3, v2}, Lcom/tencent/liteav/basic/e/f;->a(I)I

    .line 943
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->z:Ljava/lang/Object;

    instance-of v2, v2, Lcom/tencent/liteav/basic/e/b;

    if-eqz v2, :cond_8

    .line 944
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->z:Ljava/lang/Object;

    check-cast v2, Lcom/tencent/liteav/basic/e/b;

    iget-wide v5, p0, Lcom/tencent/liteav/videoencoder/b;->G:J

    const-wide/32 v7, 0xf4240

    mul-long/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Lcom/tencent/liteav/basic/e/b;->a(J)V

    .line 945
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->z:Ljava/lang/Object;

    check-cast v2, Lcom/tencent/liteav/basic/e/b;

    invoke-virtual {v2}, Lcom/tencent/liteav/basic/e/b;->e()Z

    .line 947
    :cond_8
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->z:Ljava/lang/Object;

    instance-of v2, v2, Lcom/tencent/liteav/basic/e/a;

    if-eqz v2, :cond_9

    .line 948
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->z:Ljava/lang/Object;

    check-cast v2, Lcom/tencent/liteav/basic/e/a;

    invoke-virtual {v2}, Lcom/tencent/liteav/basic/e/a;->a()Z

    .line 950
    :cond_9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    :goto_4
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoencoder/b;->a(I)I

    move-result v0

    if-lez v0, :cond_a

    goto :goto_4

    :cond_a
    if-eq v0, v4, :cond_c

    const/4 p1, -0x2

    if-ne v0, p1, :cond_b

    goto :goto_5

    .line 964
    :cond_b
    iget p1, p0, Lcom/tencent/liteav/videoencoder/b;->S:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->S:I

    return-void

    .line 956
    :cond_c
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Encoder] dequeEncoder ret = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TXCHWVideoEncoder"

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v4, :cond_d

    const p1, 0x989685

    .line 958
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoencoder/b;->callDelegate(I)V

    .line 960
    :cond_d
    iput-boolean v1, p0, Lcom/tencent/liteav/videoencoder/b;->B:Z

    .line 961
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->e()V

    return-void

    :catchall_0
    move-exception p1

    .line 950
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_e
    :goto_6
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoencoder/b;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoencoder/b;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/videoencoder/b;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/tencent/liteav/videoencoder/b;->B:Z

    return p0
.end method

.method static synthetic c(Lcom/tencent/liteav/videoencoder/b;I)I
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoencoder/b;->a(I)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/tencent/liteav/videoencoder/b;)Ljava/lang/Object;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tencent/liteav/videoencoder/b;->z:Ljava/lang/Object;

    return-object p0
.end method

.method private c(I)V
    .locals 8

    .line 1141
    iget-boolean p1, p0, Lcom/tencent/liteav/videoencoder/b;->mInit:Z

    if-nez p1, :cond_0

    return-void

    .line 1142
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->i:J

    iget p1, p0, Lcom/tencent/liteav/videoencoder/b;->a:I

    int-to-long v2, p1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    int-to-long v2, p1

    cmp-long p1, v2, v0

    const/4 v0, 0x0

    if-gez p1, :cond_3

    .line 1145
    iget-boolean p1, p0, Lcom/tencent/liteav/videoencoder/b;->aj:Z

    if-eqz p1, :cond_3

    .line 1146
    iget-boolean p1, p0, Lcom/tencent/liteav/videoencoder/b;->ai:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restart video hw encoder when down bps\u3002[module:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Model()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] [Hardware:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Hardware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] [osVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Version()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const-string v3, ""

    .line 1150
    invoke-static {v2, v1, v3, v0}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 1153
    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->ag:I

    .line 1154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/liteav/videoencoder/b;->af:J

    .line 1155
    iget p1, p0, Lcom/tencent/liteav/videoencoder/b;->a:I

    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->ah:I

    :cond_3
    move p1, v0

    .line 1159
    :goto_0
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->a:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->i:J

    .line 1161
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 1164
    iget-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    invoke-virtual {p1}, Lcom/tencent/liteav/basic/util/i;->a()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->an:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1166
    iget-wide v2, p0, Lcom/tencent/liteav/videoencoder/b;->ak:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x7d0

    cmp-long p1, v4, v6

    if-ltz p1, :cond_4

    .line 1167
    iget-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->an:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1170
    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    iget-object v4, p0, Lcom/tencent/liteav/videoencoder/b;->an:Ljava/lang/Runnable;

    sub-long/2addr v0, v2

    sub-long/2addr v6, v0

    invoke-virtual {p1, v4, v6, v7}, Lcom/tencent/liteav/basic/util/i;->a(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 1174
    :cond_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1175
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->a:I

    mul-int/lit16 v0, v0, 0x400

    const-string v1, "video-bitrate"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1176
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private c()Z
    .locals 20

    move-object/from16 v10, p0

    const-string v11, "[Encoder] set fmt error. fmt:"

    .line 971
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const-string v12, "TXCHWVideoEncoder"

    const/4 v13, 0x0

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    const-string v0, "[Encoder] startEncoder TXCBuild.VersionInt() < 18"

    .line 972
    invoke-static {v12, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    .line 976
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object v0

    const-string v1, "Video"

    const-string v2, "CheckVideoEncDownBps"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/basic/f/c;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v14, 0x1

    if-lez v0, :cond_1

    move v0, v14

    goto :goto_0

    :cond_1
    move v0, v13

    .line 977
    :goto_0
    iput-boolean v0, v10, Lcom/tencent/liteav/videoencoder/b;->aj:Z

    .line 979
    iput-boolean v13, v10, Lcom/tencent/liteav/videoencoder/b;->o:Z

    .line 982
    iput v13, v10, Lcom/tencent/liteav/videoencoder/b;->S:I

    .line 983
    iput v13, v10, Lcom/tencent/liteav/videoencoder/b;->T:I

    .line 984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/tencent/liteav/videoencoder/b;->V:J

    .line 985
    iput v13, v10, Lcom/tencent/liteav/videoencoder/b;->W:I

    .line 986
    iput v13, v10, Lcom/tencent/liteav/videoencoder/b;->U:I

    .line 987
    iput v13, v10, Lcom/tencent/liteav/videoencoder/b;->X:I

    .line 990
    iget-boolean v0, v10, Lcom/tencent/liteav/videoencoder/b;->R:Z

    if-eqz v0, :cond_2

    const-string v0, "video/hevc"

    .line 991
    iput-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->t:Ljava/lang/String;

    :cond_2
    const/4 v9, 0x0

    .line 996
    :try_start_0
    iget-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    .line 997
    iget-object v2, v10, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    iget v3, v10, Lcom/tencent/liteav/videoencoder/b;->mOutputWidth:I

    iget v4, v10, Lcom/tencent/liteav/videoencoder/b;->mOutputHeight:I

    iget v5, v10, Lcom/tencent/liteav/videoencoder/b;->a:I

    iget v6, v10, Lcom/tencent/liteav/videoencoder/b;->L:I

    iget v7, v10, Lcom/tencent/liteav/videoencoder/b;->K:I

    iget v8, v10, Lcom/tencent/liteav/videoencoder/b;->M:I

    iget v0, v10, Lcom/tencent/liteav/videoencoder/b;->N:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-object/from16 v1, p0

    move-object v15, v9

    move v9, v0

    :try_start_1
    invoke-direct/range {v1 .. v9}, Lcom/tencent/liteav/videoencoder/b;->a(Landroid/media/MediaCodec;IIIIIII)Landroid/media/MediaFormat;

    move-result-object v9

    if-nez v9, :cond_3

    .line 1000
    iput-boolean v14, v10, Lcom/tencent/liteav/videoencoder/b;->B:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    return v13

    :cond_3
    const/16 v16, 0x2

    .line 1005
    :try_start_2
    iget-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->mEncFmt:Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v0, :cond_4

    move v0, v13

    .line 1007
    :goto_1
    :try_start_3
    iget-object v1, v10, Lcom/tencent/liteav/videoencoder/b;->mEncFmt:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1008
    iget-object v1, v10, Lcom/tencent/liteav/videoencoder/b;->mEncFmt:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "key"

    .line 1009
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    .line 1010
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1011
    invoke-virtual {v9, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  :"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1015
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config custom format error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1020
    :cond_4
    :try_start_5
    iget-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v0, v9, v15, v15, v14}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v8, v0

    .line 1023
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1026
    iget-boolean v0, v10, Lcom/tencent/liteav/videoencoder/b;->Q:Z

    const/16 v7, 0x15

    if-eqz v0, :cond_7

    .line 1027
    iget-object v2, v10, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    iget v3, v10, Lcom/tencent/liteav/videoencoder/b;->mOutputWidth:I

    iget v4, v10, Lcom/tencent/liteav/videoencoder/b;->mOutputHeight:I

    iget v5, v10, Lcom/tencent/liteav/videoencoder/b;->a:I

    iget v6, v10, Lcom/tencent/liteav/videoencoder/b;->L:I

    iget v0, v10, Lcom/tencent/liteav/videoencoder/b;->K:I

    iget v1, v10, Lcom/tencent/liteav/videoencoder/b;->M:I

    iget v13, v10, Lcom/tencent/liteav/videoencoder/b;->N:I

    move/from16 v17, v1

    move-object/from16 v1, p0

    move v7, v0

    move-object/from16 v18, v8

    move/from16 v8, v17

    move-object/from16 v19, v9

    move v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/tencent/liteav/videoencoder/b;->a(Landroid/media/MediaCodec;IIIIIII)Landroid/media/MediaFormat;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1030
    :try_start_7
    iget-object v1, v10, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v15, v15, v14}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 1033
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v1

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6

    instance-of v0, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_6

    .line 1035
    :cond_5
    iget-object v1, v10, Lcom/tencent/liteav/videoencoder/b;->t:Ljava/lang/String;

    iget v2, v10, Lcom/tencent/liteav/videoencoder/b;->mOutputWidth:I

    iget v3, v10, Lcom/tencent/liteav/videoencoder/b;->mOutputHeight:I

    iget v4, v10, Lcom/tencent/liteav/videoencoder/b;->a:I

    iget v5, v10, Lcom/tencent/liteav/videoencoder/b;->L:I

    iget v6, v10, Lcom/tencent/liteav/videoencoder/b;->K:I

    invoke-static/range {v1 .. v6}, Lcom/tencent/liteav/videoencoder/a;->a(Ljava/lang/String;IIIII)Landroid/media/MediaFormat;

    move-result-object v0

    .line 1036
    iget-object v1, v10, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v15, v15, v14}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1038
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_7
    move v2, v7

    move-object v1, v8

    .line 1042
    instance-of v0, v1, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    if-lt v0, v2, :cond_8

    instance-of v0, v1, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_8

    goto :goto_2

    .line 1046
    :cond_8
    throw v1

    .line 1043
    :cond_9
    :goto_2
    iget-object v2, v10, Lcom/tencent/liteav/videoencoder/b;->t:Ljava/lang/String;

    iget v3, v10, Lcom/tencent/liteav/videoencoder/b;->mOutputWidth:I

    iget v4, v10, Lcom/tencent/liteav/videoencoder/b;->mOutputHeight:I

    iget v5, v10, Lcom/tencent/liteav/videoencoder/b;->a:I

    iget v6, v10, Lcom/tencent/liteav/videoencoder/b;->L:I

    iget v7, v10, Lcom/tencent/liteav/videoencoder/b;->K:I

    invoke-static/range {v2 .. v7}, Lcom/tencent/liteav/videoencoder/a;->a(Ljava/lang/String;IIIII)Landroid/media/MediaFormat;

    move-result-object v0

    .line 1044
    iget-object v1, v10, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v15, v15, v14}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :goto_3
    const/4 v1, 0x3

    .line 1051
    :try_start_9
    iget-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;

    const/4 v1, 0x4

    .line 1053
    iget-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1055
    :try_start_a
    iget-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->E:[Ljava/nio/ByteBuffer;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    const/4 v1, 0x5

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move/from16 v1, v16

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v15, v9

    :goto_4
    move v1, v14

    :goto_5
    const-string v2, "create encode format failed."

    .line 1058
    invoke-static {v12, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x5

    if-lt v1, v2, :cond_a

    .line 1060
    :try_start_b
    iget-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    if-eqz v0, :cond_a

    iget-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 1061
    :cond_a
    iput-object v15, v10, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    .line 1062
    iget-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;

    if-eqz v0, :cond_b

    iget-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1063
    :cond_b
    iput-object v15, v10, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 1069
    :catch_8
    :goto_6
    iget-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    if-eqz v0, :cond_e

    iget-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->E:[Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e

    iget-object v0, v10, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;

    if-nez v0, :cond_c

    goto :goto_7

    .line 1074
    :cond_c
    iget v1, v10, Lcom/tencent/liteav/videoencoder/b;->mOutputWidth:I

    iget v2, v10, Lcom/tencent/liteav/videoencoder/b;->mOutputHeight:I

    invoke-direct {v10, v0, v1, v2}, Lcom/tencent/liteav/videoencoder/b;->a(Landroid/view/Surface;II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1075
    iput-boolean v14, v10, Lcom/tencent/liteav/videoencoder/b;->B:Z

    const/4 v1, 0x0

    return v1

    :cond_d
    return v14

    :cond_e
    :goto_7
    const/4 v1, 0x0

    .line 1070
    iput-boolean v14, v10, Lcom/tencent/liteav/videoencoder/b;->B:Z

    return v1
.end method

.method private d()V
    .locals 5

    const-string v0, "release encoder failed."

    const-string v1, "TXCHWVideoEncoder"

    .line 1082
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 1084
    :try_start_0
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    :try_start_1
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 1091
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;

    if-eqz v2, :cond_1

    .line 1092
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 1094
    :cond_1
    iput-object v3, p0, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1097
    invoke-static {v1, v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_2
    const-string v4, "stop encoder failed."

    .line 1086
    invoke-static {v1, v4, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1090
    :try_start_3
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 1091
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;

    if-eqz v2, :cond_2

    .line 1092
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 1094
    :cond_2
    iput-object v3, p0, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1101
    :goto_0
    iput-object v3, p0, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    return-void

    .line 1090
    :goto_1
    :try_start_4
    iget-object v4, p0, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 1091
    iget-object v4, p0, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;

    if-eqz v4, :cond_3

    .line 1092
    iget-object v4, p0, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->release()V

    .line 1094
    :cond_3
    iput-object v3, p0, Lcom/tencent/liteav/videoencoder/b;->A:Landroid/view/Surface;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 1097
    invoke-static {v1, v0, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1099
    :goto_2
    throw v2
.end method

.method private d(I)V
    .locals 2

    .line 1191
    iget-boolean v0, p0, Lcom/tencent/liteav/videoencoder/b;->mInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 1192
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->L:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 1193
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x12

    if-ge v0, v1, :cond_2

    return-void

    .line 1196
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set fps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", restart encoder."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCHWVideoEncoder"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->b()V

    .line 1198
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->d()V

    .line 1199
    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->L:I

    .line 1200
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->c()Z

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoencoder/b;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoencoder/b;->b(I)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/videoencoder/b;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/tencent/liteav/videoencoder/b;->O:Z

    return p0
.end method

.method private e()V
    .locals 4

    .line 1105
    iget-boolean v0, p0, Lcom/tencent/liteav/videoencoder/b;->mInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1106
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/b;->B:Z

    .line 1107
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1109
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->b()V

    .line 1111
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->d()V

    const/4 v0, -0x1

    .line 1113
    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->Y:I

    const-wide/16 v0, 0x0

    .line 1114
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->b:J

    const-wide/16 v2, 0x0

    .line 1115
    iput-wide v2, p0, Lcom/tencent/liteav/videoencoder/b;->c:D

    .line 1116
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->d:J

    .line 1117
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->e:J

    const/4 v2, 0x0

    .line 1118
    iput v2, p0, Lcom/tencent/liteav/videoencoder/b;->f:I

    .line 1119
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->i:J

    .line 1120
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->j:J

    .line 1121
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->k:J

    .line 1122
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->l:J

    .line 1123
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->m:J

    .line 1124
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->q:J

    .line 1125
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->r:J

    const/4 v3, 0x0

    .line 1126
    iput-object v3, p0, Lcom/tencent/liteav/videoencoder/b;->mGLContextExternal:Ljava/lang/Object;

    .line 1127
    iput-object v3, p0, Lcom/tencent/liteav/videoencoder/b;->E:[Ljava/nio/ByteBuffer;

    .line 1128
    iput-object v3, p0, Lcom/tencent/liteav/videoencoder/b;->F:[B

    .line 1129
    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->G:J

    .line 1130
    iput v2, p0, Lcom/tencent/liteav/videoencoder/b;->mOutputWidth:I

    .line 1131
    iput v2, p0, Lcom/tencent/liteav/videoencoder/b;->mOutputHeight:I

    .line 1132
    iput-boolean v2, p0, Lcom/tencent/liteav/videoencoder/b;->mInit:Z

    .line 1133
    iput-object v3, p0, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    .line 1135
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->y:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 1136
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1137
    iput v2, p0, Lcom/tencent/liteav/videoencoder/b;->ad:I

    return-void
.end method

.method static synthetic e(Lcom/tencent/liteav/videoencoder/b;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->f()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/liteav/videoencoder/b;)I
    .locals 2

    .line 41
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->am:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/liteav/videoencoder/b;->am:I

    return v0
.end method

.method private f()V
    .locals 3

    .line 1182
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 1183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "request-sync"

    .line 1184
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1185
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 11

    .line 1208
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->af:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 1209
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->L:I

    iget-wide v4, p0, Lcom/tencent/liteav/videoencoder/b;->c:D

    double-to-int v1, v4

    sub-int v1, v0, v1

    .line 1210
    div-int/lit8 v0, v0, 0x2

    const/4 v4, 0x5

    if-ge v0, v4, :cond_0

    move v0, v4

    :cond_0
    if-gt v1, v0, :cond_6

    .line 1216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1217
    iget-wide v4, p0, Lcom/tencent/liteav/videoencoder/b;->af:J

    sub-long/2addr v0, v4

    iget v4, p0, Lcom/tencent/liteav/videoencoder/b;->ag:I

    const/4 v5, 0x3

    rsub-int/lit8 v4, v4, 0x3

    const/4 v6, 0x1

    add-int/2addr v4, v6

    mul-int/lit16 v4, v4, 0x7d0

    int-to-long v7, v4

    cmp-long v0, v0, v7

    if-lez v0, :cond_6

    .line 1219
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->ah:I

    int-to-long v0, v0

    iget-wide v7, p0, Lcom/tencent/liteav/videoencoder/b;->b:J

    sub-long/2addr v0, v7

    .line 1220
    iget-wide v7, p0, Lcom/tencent/liteav/videoencoder/b;->i:J

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    const-wide/16 v9, 0x64

    cmp-long v4, v7, v9

    if-gez v4, :cond_1

    move-wide v7, v9

    :cond_1
    cmp-long v0, v0, v7

    if-lez v0, :cond_5

    .line 1226
    iput-boolean v6, p0, Lcom/tencent/liteav/videoencoder/b;->ai:Z

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "real bitrate is too much lower than target bitrate![current profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/b;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][targetBr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/b;->ah:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [realBr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/tencent/liteav/videoencoder/b;->b:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]. restart encoder. [module:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Model()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] [Hardware:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Hardware()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] [osVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCHWVideoEncoder"

    .line 1235
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v7, ""

    .line 1236
    invoke-static {v5, v0, v7, v4}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1238
    iget-boolean v0, p0, Lcom/tencent/liteav/videoencoder/b;->R:Z

    if-eqz v0, :cond_2

    .line 1239
    iput v6, p0, Lcom/tencent/liteav/videoencoder/b;->N:I

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Encoder] force reset hevc profile to HEVCProfileMain when restart encoder. device:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getDeviceInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1240
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1245
    :cond_2
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->N:I

    if-eq v0, v6, :cond_3

    .line 1246
    iput v6, p0, Lcom/tencent/liteav/videoencoder/b;->N:I

    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Encoder] force reset profile to baseline when restart encoder. device:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getDeviceInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1247
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    if-eqz v0, :cond_4

    .line 1253
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->an:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/util/i;->b(Ljava/lang/Runnable;)V

    .line 1255
    :cond_4
    iput-wide v2, p0, Lcom/tencent/liteav/videoencoder/b;->af:J

    goto :goto_1

    .line 1258
    :cond_5
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->ag:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->ag:I

    .line 1259
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->ag:I

    if-gtz v0, :cond_6

    .line 1260
    iput-wide v2, p0, Lcom/tencent/liteav/videoencoder/b;->af:J

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic g(Lcom/tencent/liteav/videoencoder/b;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->i()V

    return-void
.end method

.method static synthetic h(Lcom/tencent/liteav/videoencoder/b;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/tencent/liteav/videoencoder/b;->am:I

    return p0
.end method

.method private h()V
    .locals 2

    const-string v0, "TXCHWVideoEncoder"

    const-string v1, "destroyCopyTexture"

    .line 1279
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->aa:Ljava/lang/Object;

    monitor-enter v0

    .line 1281
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->Z:Lcom/tencent/liteav/basic/e/f;

    if-eqz v1, :cond_0

    .line 1282
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->Z:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/f;->d()V

    const/4 v1, 0x0

    .line 1283
    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->Z:Lcom/tencent/liteav/basic/e/f;

    :cond_0
    const/4 v1, -0x1

    .line 1285
    iput v1, p0, Lcom/tencent/liteav/videoencoder/b;->Y:I

    .line 1286
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic i(Lcom/tencent/liteav/videoencoder/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tencent/liteav/videoencoder/b;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x0

    .line 1291
    :goto_0
    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/b;->al:Z

    if-nez v1, :cond_1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 1292
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    .line 1295
    invoke-direct {p0, v1}, Lcom/tencent/liteav/videoencoder/b;->a(I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1298
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: wait for encoderReady try:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCHWVideoEncoder"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/tencent/liteav/videoencoder/b;)I
    .locals 2

    .line 41
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->S:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/liteav/videoencoder/b;->S:I

    return v0
.end method

.method static synthetic k(Lcom/tencent/liteav/videoencoder/b;)Landroid/media/MediaCodec;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tencent/liteav/videoencoder/b;->s:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic l(Lcom/tencent/liteav/videoencoder/b;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->b()V

    return-void
.end method

.method static synthetic m(Lcom/tencent/liteav/videoencoder/b;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->d()V

    return-void
.end method

.method static synthetic n(Lcom/tencent/liteav/videoencoder/b;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->c()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getEncodeCost()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->ad:I

    return v0
.end method

.method public getRealBitrate()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->b:J

    return-wide v0
.end method

.method public getRealFPS()D
    .locals 2

    .line 176
    iget-wide v0, p0, Lcom/tencent/liteav/videoencoder/b;->c:D

    return-wide v0
.end method

.method public isH265Encoder()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/tencent/liteav/videoencoder/b;->R:Z

    return v0
.end method

.method public pushVideoFrame(IIIJ)J
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 p1, 0x989684

    return-wide p1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->aa:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->Z:Lcom/tencent/liteav/basic/e/f;

    if-nez v1, :cond_1

    .line 202
    invoke-direct {p0, p2, p3}, Lcom/tencent/liteav/videoencoder/b;->a(II)V

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/b;->Z:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {v1, p2, p3}, Lcom/tencent/liteav/basic/e/f;->a(II)V

    const/4 v1, 0x0

    .line 205
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 206
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b;->Z:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {v2, p1}, Lcom/tencent/liteav/basic/e/f;->b(I)I

    move-result p1

    .line 208
    iget-boolean v2, p0, Lcom/tencent/liteav/videoencoder/b;->ae:Z

    if-eqz v2, :cond_2

    .line 209
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    goto :goto_0

    .line 211
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 213
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->U:I

    if-nez v0, :cond_3

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/liteav/videoencoder/b;->V:J

    .line 218
    :cond_3
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b;->U:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/liteav/videoencoder/b;->U:I

    .line 221
    iput-wide p4, p0, Lcom/tencent/liteav/videoencoder/b;->G:J

    .line 223
    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->Y:I

    .line 224
    iput p2, p0, Lcom/tencent/liteav/videoencoder/b;->mInputWidth:I

    .line 225
    iput p3, p0, Lcom/tencent/liteav/videoencoder/b;->mInputHeight:I

    .line 226
    iget-boolean p1, p0, Lcom/tencent/liteav/videoencoder/b;->O:Z

    if-eqz p1, :cond_4

    .line 227
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->f()V

    .line 229
    :cond_4
    iget-boolean p1, p0, Lcom/tencent/liteav/videoencoder/b;->P:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/tencent/liteav/videoencoder/b;->ab:Z

    if-eqz p1, :cond_6

    .line 230
    :cond_5
    iget p1, p0, Lcom/tencent/liteav/videoencoder/b;->X:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->X:I

    .line 231
    iget-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    iget-object p2, p0, Lcom/tencent/liteav/videoencoder/b;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/basic/util/i;->b(Ljava/lang/Runnable;)V

    .line 232
    iput-boolean v1, p0, Lcom/tencent/liteav/videoencoder/b;->ab:Z

    .line 235
    :cond_6
    iget p1, p0, Lcom/tencent/liteav/videoencoder/b;->S:I

    iget p2, p0, Lcom/tencent/liteav/videoencoder/b;->T:I

    add-int/lit8 p2, p2, 0x1e

    const/4 p3, 0x3

    const/4 p4, 0x2

    if-le p1, p2, :cond_7

    new-array p2, p4, [Ljava/lang/Object;

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    iget p1, p0, Lcom/tencent/liteav/videoencoder/b;->T:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "hw encoder error when render[%d] pop[%d]"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCHWVideoEncoder"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    if-eqz p1, :cond_7

    .line 238
    iget-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    iget p2, p0, Lcom/tencent/liteav/videoencoder/b;->mStreamType:I

    invoke-interface {p1, p2}, Lcom/tencent/liteav/videoencoder/d;->a(I)V

    .line 239
    iget-boolean p1, p0, Lcom/tencent/liteav/videoencoder/b;->R:Z

    if-eqz p1, :cond_7

    .line 240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array p2, p3, [Ljava/lang/Object;

    iget p5, p0, Lcom/tencent/liteav/videoencoder/b;->S:I

    .line 242
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p2, v1

    iget p5, p0, Lcom/tencent/liteav/videoencoder/b;->T:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p2, v2

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getDeviceInfo()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p2, p4

    const-string p5, "VideoEncoder: hevc hardware encoder error: mRendIdx= %d,mPopIdx= %d , switch to 264 hardware encoder. %s"

    .line 240
    invoke-static {p1, p5, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-static {p4, p1, p2, v1}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 247
    :cond_7
    iget-wide p1, p0, Lcom/tencent/liteav/videoencoder/b;->V:J

    const-wide/16 v3, 0x1388

    add-long/2addr p1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long p1, p1, v3

    if-gez p1, :cond_9

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/liteav/videoencoder/b;->V:J

    .line 249
    iget p1, p0, Lcom/tencent/liteav/videoencoder/b;->W:I

    iget p2, p0, Lcom/tencent/liteav/videoencoder/b;->S:I

    if-ne p1, p2, :cond_8

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    .line 250
    iget p2, p0, Lcom/tencent/liteav/videoencoder/b;->U:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    iget p2, p0, Lcom/tencent/liteav/videoencoder/b;->X:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    iget p2, p0, Lcom/tencent/liteav/videoencoder/b;->S:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p4

    iget p2, p0, Lcom/tencent/liteav/videoencoder/b;->T:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "hw encoder error when push[%d] render task[%d] render[%d] pop[%d]"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCHWVideoEncoder"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    if-eqz p1, :cond_8

    .line 252
    iget-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    iget p2, p0, Lcom/tencent/liteav/videoencoder/b;->mStreamType:I

    invoke-interface {p1, p2}, Lcom/tencent/liteav/videoencoder/d;->a(I)V

    .line 253
    iget-boolean p1, p0, Lcom/tencent/liteav/videoencoder/b;->R:Z

    if-eqz p1, :cond_8

    .line 254
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 256
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getDeviceInfo()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    const-string p3, "VideoEncoder: hevc hardware encoder error: timecheck , switch to 264 hardware encoder. %s"

    .line 254
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-static {p4, p1, p2, v1}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 260
    :cond_8
    iget p1, p0, Lcom/tencent/liteav/videoencoder/b;->S:I

    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->W:I

    :cond_9
    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 213
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public pushVideoFrameAsync(IIIJ)J
    .locals 0

    .line 270
    iget-object p2, p0, Lcom/tencent/liteav/videoencoder/b;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    const-wide/32 p1, 0x989684

    return-wide p1

    .line 271
    :cond_0
    iget-boolean p2, p0, Lcom/tencent/liteav/videoencoder/b;->ae:Z

    if-eqz p2, :cond_1

    .line 272
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    goto :goto_0

    .line 274
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 281
    :goto_0
    iget-object p2, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    invoke-virtual {p2}, Lcom/tencent/liteav/basic/util/i;->a()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/tencent/liteav/videoencoder/b$8;

    invoke-direct {p3, p0, p1, p4, p5}, Lcom/tencent/liteav/videoencoder/b$8;-><init>(Lcom/tencent/liteav/videoencoder/b;IJ)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public pushVideoFrameSync(IIIJ)J
    .locals 0

    .line 359
    iget-object p2, p0, Lcom/tencent/liteav/videoencoder/b;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_0

    const-wide/32 p1, 0x989684

    return-wide p1

    .line 360
    :cond_0
    iget-boolean p2, p0, Lcom/tencent/liteav/videoencoder/b;->ae:Z

    if-eqz p2, :cond_1

    .line 361
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    goto :goto_0

    .line 363
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 365
    :goto_0
    iput-wide p4, p0, Lcom/tencent/liteav/videoencoder/b;->G:J

    .line 366
    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->Y:I

    .line 368
    iget-boolean p1, p0, Lcom/tencent/liteav/videoencoder/b;->O:Z

    if-eqz p1, :cond_2

    .line 369
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->f()V

    .line 372
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    iget-object p2, p0, Lcom/tencent/liteav/videoencoder/b;->x:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/basic/util/i;->a(Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public setBitrate(I)V
    .locals 2

    .line 150
    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->a:I

    .line 151
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    new-instance v1, Lcom/tencent/liteav/videoencoder/b$6;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/videoencoder/b$6;-><init>(Lcom/tencent/liteav/videoencoder/b;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/util/i;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBitrateFromQos(II)V
    .locals 1

    .line 161
    iput p1, p0, Lcom/tencent/liteav/videoencoder/b;->a:I

    .line 162
    iget-object p2, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    new-instance v0, Lcom/tencent/liteav/videoencoder/b$7;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/videoencoder/b$7;-><init>(Lcom/tencent/liteav/videoencoder/b;I)V

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/basic/util/i;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEncodeIdrFpsFromQos(I)V
    .locals 0

    return-void
.end method

.method public setFPS(I)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    new-instance v1, Lcom/tencent/liteav/videoencoder/b$5;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/videoencoder/b$5;-><init>(Lcom/tencent/liteav/videoencoder/b;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/util/i;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGLFinishedTextureNeed(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/tencent/liteav/videoencoder/b;->ae:Z

    return-void
.end method

.method public signalEOSAndFlush()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    new-instance v1, Lcom/tencent/liteav/videoencoder/b$9;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoencoder/b$9;-><init>(Lcom/tencent/liteav/videoencoder/b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)I
    .locals 3

    .line 54
    invoke-super {p0, p1}, Lcom/tencent/liteav/videoencoder/c;->start(Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)I

    .line 56
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    move p1, v1

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    new-instance v2, Lcom/tencent/liteav/videoencoder/b$1;

    invoke-direct {v2, p0, p1}, Lcom/tencent/liteav/videoencoder/b$1;-><init>(Lcom/tencent/liteav/videoencoder/b;Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)V

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/basic/util/i;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x989684

    :goto_1
    return v1
.end method

.method public stop()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 117
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b;->u:Lcom/tencent/liteav/basic/util/i;

    new-instance v1, Lcom/tencent/liteav/videoencoder/b$4;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/videoencoder/b$4;-><init>(Lcom/tencent/liteav/videoencoder/b;)V

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/util/i;->b(Ljava/lang/Runnable;)V

    .line 130
    invoke-direct {p0}, Lcom/tencent/liteav/videoencoder/b;->h()V

    return-void
.end method
