.class public Lcom/tencent/liteav/basic/e/f;
.super Ljava/lang/Object;
.source "TXCGPUFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/basic/e/f$a;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Z

.field protected h:Ljava/nio/FloatBuffer;

.field protected i:Ljava/nio/FloatBuffer;

.field protected j:[F

.field protected k:[F

.field protected l:Lcom/tencent/liteav/basic/e/f$a;

.field protected m:I

.field protected n:I

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field private final r:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private u:Z

.field private v:I

.field private w:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying lowp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/liteav/basic/e/f;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/liteav/basic/e/f;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/tencent/liteav/basic/e/f;->u:Z

    const/4 v1, -0x1

    .line 72
    iput v1, p0, Lcom/tencent/liteav/basic/e/f;->v:I

    const/4 v2, 0x0

    .line 73
    iput-object v2, p0, Lcom/tencent/liteav/basic/e/f;->w:[F

    .line 75
    iput v1, p0, Lcom/tencent/liteav/basic/e/f;->m:I

    .line 76
    iput v1, p0, Lcom/tencent/liteav/basic/e/f;->n:I

    .line 78
    iput-boolean v0, p0, Lcom/tencent/liteav/basic/e/f;->o:Z

    .line 79
    iput-boolean v0, p0, Lcom/tencent/liteav/basic/e/f;->p:Z

    .line 80
    iput-boolean v0, p0, Lcom/tencent/liteav/basic/e/f;->q:Z

    .line 92
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/basic/e/f;->r:Ljava/util/LinkedList;

    .line 93
    iput-object p1, p0, Lcom/tencent/liteav/basic/e/f;->s:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/tencent/liteav/basic/e/f;->t:Ljava/lang/String;

    .line 95
    iput-boolean p3, p0, Lcom/tencent/liteav/basic/e/f;->q:Z

    const/4 p1, 0x1

    if-ne p1, p3, :cond_0

    const-string p2, "TXCGPUFilter"

    const-string p3, "set Oes fileter"

    .line 97
    invoke-static {p2, p3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    sget-object p2, Lcom/tencent/liteav/basic/e/i;->e:[F

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 101
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 102
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/liteav/basic/e/f;->h:Ljava/nio/FloatBuffer;

    .line 103
    sget-object p2, Lcom/tencent/liteav/basic/e/i;->e:[F

    iput-object p2, p0, Lcom/tencent/liteav/basic/e/f;->j:[F

    .line 104
    iget-object p2, p0, Lcom/tencent/liteav/basic/e/f;->h:Ljava/nio/FloatBuffer;

    iget-object p3, p0, Lcom/tencent/liteav/basic/e/f;->j:[F

    invoke-virtual {p2, p3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    sget-object p2, Lcom/tencent/liteav/basic/e/i;->a:[F

    array-length p2, p2

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 107
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 108
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/liteav/basic/e/f;->i:Ljava/nio/FloatBuffer;

    .line 109
    sget-object p2, Lcom/tencent/liteav/basic/e/h;->a:Lcom/tencent/liteav/basic/e/h;

    invoke-static {p2, v0, p1}, Lcom/tencent/liteav/basic/e/i;->a(Lcom/tencent/liteav/basic/e/h;ZZ)[F

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/basic/e/f;->k:[F

    .line 110
    iget-object p1, p0, Lcom/tencent/liteav/basic/e/f;->i:Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lcom/tencent/liteav/basic/e/f;->k:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/f;->h:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/tencent/liteav/basic/e/f;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/liteav/basic/e/f;->b(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result p1

    return p1
.end method

.method public a(III)I
    .locals 2

    .line 379
    iget-boolean v0, p0, Lcom/tencent/liteav/basic/e/f;->g:Z

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const v0, 0x8d40

    .line 381
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 382
    iget-object p2, p0, Lcom/tencent/liteav/basic/e/f;->h:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/tencent/liteav/basic/e/f;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1, p2, v1}, Lcom/tencent/liteav/basic/e/f;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 383
    iget-object p1, p0, Lcom/tencent/liteav/basic/e/f;->l:Lcom/tencent/liteav/basic/e/f$a;

    instance-of p2, p1, Lcom/tencent/liteav/basic/e/f$a;

    if-eqz p2, :cond_1

    .line 384
    invoke-interface {p1, p3}, Lcom/tencent/liteav/basic/e/f$a;->a(I)V

    :cond_1
    const/4 p1, 0x0

    .line 386
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return p3
.end method

.method public a(IF)V
    .locals 1

    .line 823
    new-instance v0, Lcom/tencent/liteav/basic/e/f$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/basic/e/f$1;-><init>(Lcom/tencent/liteav/basic/e/f;IF)V

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/basic/e/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 228
    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->f:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->e:I

    if-ne v0, p1, :cond_0

    return-void

    .line 230
    :cond_0
    iput p1, p0, Lcom/tencent/liteav/basic/e/f;->e:I

    .line 231
    iput p2, p0, Lcom/tencent/liteav/basic/e/f;->f:I

    .line 232
    iget-boolean v0, p0, Lcom/tencent/liteav/basic/e/f;->o:Z

    if-eqz v0, :cond_2

    .line 233
    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/e/f;->f()V

    :goto_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 239
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 240
    aget v0, v1, v2

    iput v0, p0, Lcom/tencent/liteav/basic/e/f;->m:I

    const/16 v0, 0x1908

    .line 241
    invoke-static {p1, p2, v0, v0}, Lcom/tencent/liteav/basic/e/g;->a(IIII)I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/basic/e/f;->n:I

    .line 244
    iget p1, p0, Lcom/tencent/liteav/basic/e/f;->m:I

    const p2, 0x8d40

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p1, 0x8ce0

    const/16 v0, 0xde1

    .line 245
    iget v1, p0, Lcom/tencent/liteav/basic/e/f;->n:I

    invoke-static {p2, p1, v0, v1, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 247
    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :cond_2
    return-void
.end method

.method public a(III[FFZZ)V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p4, :cond_0

    .line 542
    sget-object v2, Lcom/tencent/liteav/basic/e/h;->a:Lcom/tencent/liteav/basic/e/h;

    invoke-static {v2, v0, v1}, Lcom/tencent/liteav/basic/e/i;->a(Lcom/tencent/liteav/basic/e/h;ZZ)[F

    move-result-object v2

    move-object v3, v2

    move/from16 v2, p1

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    move-object/from16 v3, p4

    :goto_0
    int-to-float v4, v2

    move/from16 v5, p2

    int-to-float v6, v5

    div-float v7, v4, v6

    cmpl-float v8, v7, p5

    if-lez v8, :cond_1

    mul-float v2, v6, p5

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    cmpg-float v7, v7, p5

    if-gez v7, :cond_2

    div-float v5, v4, p5

    float-to-int v5, v5

    :cond_2
    :goto_1
    int-to-float v2, v2

    div-float/2addr v2, v4

    int-to-float v4, v5

    div-float/2addr v4, v6

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v2, v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float v4, v5, v4

    div-float/2addr v4, v6

    move v6, v0

    .line 562
    :goto_2
    array-length v7, v3

    const/4 v8, 0x2

    div-int/2addr v7, v8

    if-ge v6, v7, :cond_5

    mul-int/lit8 v7, v6, 0x2

    .line 563
    aget v8, v3, v7

    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 564
    aget v8, v3, v7

    add-float/2addr v8, v2

    aput v8, v3, v7

    goto :goto_3

    .line 565
    :cond_3
    aget v8, v3, v7

    sub-float/2addr v8, v2

    aput v8, v3, v7

    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 566
    aget v8, v3, v7

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 567
    aget v8, v3, v7

    add-float/2addr v8, v4

    aput v8, v3, v7

    goto :goto_4

    .line 568
    :cond_4
    aget v8, v3, v7

    sub-float/2addr v8, v4

    aput v8, v3, v7

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 571
    :cond_5
    div-int/lit8 v2, p3, 0x5a

    move v4, v0

    :goto_5
    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x3

    if-ge v4, v2, :cond_6

    .line 573
    aget v12, v3, v0

    .line 574
    aget v13, v3, v1

    .line 575
    aget v14, v3, v8

    aput v14, v3, v0

    .line 576
    aget v14, v3, v11

    aput v14, v3, v1

    .line 577
    aget v14, v3, v10

    aput v14, v3, v8

    .line 578
    aget v14, v3, v9

    aput v14, v3, v11

    .line 579
    aget v11, v3, v7

    aput v11, v3, v10

    .line 580
    aget v10, v3, v6

    aput v10, v3, v9

    .line 581
    aput v12, v3, v7

    .line 582
    aput v13, v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_9

    if-ne v2, v8, :cond_7

    goto :goto_6

    :cond_7
    if-eqz p7, :cond_8

    .line 599
    aget v2, v3, v0

    sub-float v2, v5, v2

    aput v2, v3, v0

    .line 600
    aget v0, v3, v8

    sub-float v0, v5, v0

    aput v0, v3, v8

    .line 601
    aget v0, v3, v7

    sub-float v0, v5, v0

    aput v0, v3, v7

    .line 602
    aget v0, v3, v10

    sub-float v0, v5, v0

    aput v0, v3, v10

    :cond_8
    if-eqz p6, :cond_b

    .line 605
    aget v0, v3, v1

    sub-float v0, v5, v0

    aput v0, v3, v1

    .line 606
    aget v0, v3, v11

    sub-float v0, v5, v0

    aput v0, v3, v11

    .line 607
    aget v0, v3, v6

    sub-float v0, v5, v0

    aput v0, v3, v6

    .line 608
    aget v0, v3, v9

    sub-float/2addr v5, v0

    aput v5, v3, v9

    goto :goto_7

    :cond_9
    :goto_6
    if-eqz p6, :cond_a

    .line 586
    aget v2, v3, v0

    sub-float v2, v5, v2

    aput v2, v3, v0

    .line 587
    aget v0, v3, v8

    sub-float v0, v5, v0

    aput v0, v3, v8

    .line 588
    aget v0, v3, v7

    sub-float v0, v5, v0

    aput v0, v3, v7

    .line 589
    aget v0, v3, v10

    sub-float v0, v5, v0

    aput v0, v3, v10

    :cond_a
    if-eqz p7, :cond_b

    .line 592
    aget v0, v3, v1

    sub-float v0, v5, v0

    aput v0, v3, v1

    .line 593
    aget v0, v3, v11

    sub-float v0, v5, v0

    aput v0, v3, v11

    .line 594
    aget v0, v3, v6

    sub-float v0, v5, v0

    aput v0, v3, v6

    .line 595
    aget v0, v3, v9

    sub-float/2addr v5, v0

    aput v5, v3, v9

    .line 611
    :cond_b
    :goto_7
    sget-object v0, Lcom/tencent/liteav/basic/e/i;->e:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    move-object v1, p0

    invoke-virtual {p0, v0, v3}, Lcom/tencent/liteav/basic/e/f;->a([F[F)V

    return-void
.end method

.method public a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    .line 253
    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 254
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/e/f;->k()V

    .line 255
    iget-boolean v0, p0, Lcom/tencent/liteav/basic/e/f;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 258
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 259
    iget v1, p0, Lcom/tencent/liteav/basic/e/f;->b:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 260
    iget p2, p0, Lcom/tencent/liteav/basic/e/f;->b:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 261
    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 262
    iget v1, p0, Lcom/tencent/liteav/basic/e/f;->d:I

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 264
    iget p2, p0, Lcom/tencent/liteav/basic/e/f;->d:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 265
    iget p2, p0, Lcom/tencent/liteav/basic/e/f;->v:I

    const/4 p3, 0x1

    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/basic/e/f;->w:[F

    if-eqz v1, :cond_1

    .line 266
    invoke-static {p2, p3, v0, v1, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    :cond_1
    const/4 p2, -0x1

    const v1, 0x8d65

    const/16 v2, 0xde1

    if-eq p1, p2, :cond_3

    const p2, 0x84c0

    .line 269
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 270
    iget-boolean p2, p0, Lcom/tencent/liteav/basic/e/f;->q:Z

    if-ne p3, p2, :cond_2

    .line 271
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    .line 273
    :cond_2
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 275
    :goto_0
    iget p1, p0, Lcom/tencent/liteav/basic/e/f;->c:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 277
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/e/f;->i()V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 278
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 279
    iget p1, p0, Lcom/tencent/liteav/basic/e/f;->b:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 280
    iget p1, p0, Lcom/tencent/liteav/basic/e/f;->d:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 281
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/e/f;->j()V

    .line 282
    iget-boolean p1, p0, Lcom/tencent/liteav/basic/e/f;->q:Z

    if-ne p3, p1, :cond_4

    .line 283
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_1

    .line 285
    :cond_4
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_1
    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/e/f$a;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    iput-boolean v0, p0, Lcom/tencent/liteav/basic/e/f;->u:Z

    .line 165
    iput-object p1, p0, Lcom/tencent/liteav/basic/e/f;->l:Lcom/tencent/liteav/basic/e/f$a;

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 901
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/f;->r:Ljava/util/LinkedList;

    monitor-enter v0

    .line 902
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/basic/e/f;->r:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 903
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/tencent/liteav/basic/e/f;->o:Z

    return-void
.end method

.method public a([F[F)V
    .locals 2

    .line 413
    iput-object p1, p0, Lcom/tencent/liteav/basic/e/f;->j:[F

    .line 414
    sget-object v0, Lcom/tencent/liteav/basic/e/i;->e:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 415
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/basic/e/f;->h:Ljava/nio/FloatBuffer;

    .line 417
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/f;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 419
    iput-object p2, p0, Lcom/tencent/liteav/basic/e/f;->k:[F

    .line 420
    sget-object p1, Lcom/tencent/liteav/basic/e/i;->a:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 421
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 422
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/basic/e/f;->i:Ljava/nio/FloatBuffer;

    .line 423
    iget-object p1, p0, Lcom/tencent/liteav/basic/e/f;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public a()Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/f;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/liteav/basic/e/f;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/e/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/basic/e/f;->a:I

    .line 115
    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->a:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/liteav/basic/e/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/tencent/liteav/basic/e/f;->g:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/tencent/liteav/basic/e/f;->g:Z

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/e/f;->c()V

    .line 119
    iget-boolean v0, p0, Lcom/tencent/liteav/basic/e/f;->g:Z

    return v0
.end method

.method public b(I)I
    .locals 2

    .line 391
    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->m:I

    iget v1, p0, Lcom/tencent/liteav/basic/e/f;->n:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/liteav/basic/e/f;->a(III)I

    move-result p1

    return p1
.end method

.method public b(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/tencent/liteav/basic/e/f;->g:Z

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 317
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/liteav/basic/e/f;->a(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 319
    iget-object p2, p0, Lcom/tencent/liteav/basic/e/f;->l:Lcom/tencent/liteav/basic/e/f$a;

    instance-of p3, p2, Lcom/tencent/liteav/basic/e/f$a;

    if-eqz p3, :cond_1

    .line 320
    invoke-interface {p2, p1}, Lcom/tencent/liteav/basic/e/f$a;->a(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .locals 2

    .line 173
    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->a:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/basic/e/f;->b:I

    .line 174
    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->a:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/basic/e/f;->c:I

    .line 175
    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->a:I

    const-string v1, "textureTransform"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/basic/e/f;->v:I

    .line 176
    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->a:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/basic/e/f;->d:I

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    .line 186
    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 187
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/e/f;->e()V

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/tencent/liteav/basic/e/f;->g:Z

    return-void
.end method

.method public e()V
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/e/f;->f()V

    const/4 v0, -0x1

    .line 194
    iput v0, p0, Lcom/tencent/liteav/basic/e/f;->f:I

    .line 195
    iput v0, p0, Lcom/tencent/liteav/basic/e/f;->e:I

    return-void
.end method

.method public f()V
    .locals 5

    .line 211
    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    new-array v4, v2, [I

    aput v0, v4, v1

    .line 216
    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 217
    iput v3, p0, Lcom/tencent/liteav/basic/e/f;->m:I

    .line 219
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->n:I

    if-eq v0, v3, :cond_1

    new-array v4, v2, [I

    aput v0, v4, v1

    .line 222
    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 223
    iput v3, p0, Lcom/tencent/liteav/basic/e/f;->n:I

    :cond_1
    return-void
.end method

.method public g()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/f;->k:[F

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/tencent/liteav/basic/e/f;->k:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aget v3, v1, v0

    sub-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/f;->j:[F

    iget-object v1, p0, Lcom/tencent/liteav/basic/e/f;->k:[F

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/basic/e/f;->a([F[F)V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/f;->k:[F

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/tencent/liteav/basic/e/f;->k:[F

    const/high16 v2, 0x3f800000    # 1.0f

    aget v3, v1, v0

    sub-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/f;->j:[F

    iget-object v1, p0, Lcom/tencent/liteav/basic/e/f;->k:[F

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/basic/e/f;->a([F[F)V

    :cond_1
    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected k()V
    .locals 1

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/f;->r:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/f;->r:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l()I
    .locals 1

    .line 395
    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->n:I

    return v0
.end method

.method public m()I
    .locals 1

    .line 399
    iget v0, p0, Lcom/tencent/liteav/basic/e/f;->m:I

    return v0
.end method
