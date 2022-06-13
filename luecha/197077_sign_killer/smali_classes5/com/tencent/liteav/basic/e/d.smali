.class public Lcom/tencent/liteav/basic/e/d;
.super Ljava/lang/Object;
.source "TXCGLSurfaceRenderThread.java"

# interfaces
.implements Lcom/tencent/liteav/basic/e/e$a;


# instance fields
.field private volatile a:Landroid/os/HandlerThread;

.field private volatile b:Lcom/tencent/liteav/basic/e/e;

.field private c:Lcom/tencent/liteav/basic/e/f;

.field private d:I

.field private e:Z

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Lcom/tencent/liteav/basic/e/k;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/tencent/liteav/basic/e/d;->a:Landroid/os/HandlerThread;

    .line 25
    iput-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    .line 28
    iput-object v0, p0, Lcom/tencent/liteav/basic/e/d;->c:Lcom/tencent/liteav/basic/e/f;

    const/4 v1, 0x0

    .line 29
    iput v1, p0, Lcom/tencent/liteav/basic/e/d;->d:I

    .line 30
    iput-boolean v1, p0, Lcom/tencent/liteav/basic/e/d;->e:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    iput v2, p0, Lcom/tencent/liteav/basic/e/d;->f:F

    .line 32
    iput v2, p0, Lcom/tencent/liteav/basic/e/d;->g:F

    .line 33
    iput v1, p0, Lcom/tencent/liteav/basic/e/d;->h:I

    .line 34
    iput v1, p0, Lcom/tencent/liteav/basic/e/d;->i:I

    .line 36
    iput v1, p0, Lcom/tencent/liteav/basic/e/d;->j:I

    .line 37
    iput v1, p0, Lcom/tencent/liteav/basic/e/d;->k:I

    .line 38
    iput-boolean v1, p0, Lcom/tencent/liteav/basic/e/d;->l:Z

    .line 39
    iput-object v0, p0, Lcom/tencent/liteav/basic/e/d;->m:Lcom/tencent/liteav/basic/e/k;

    .line 40
    iput-boolean v1, p0, Lcom/tencent/liteav/basic/e/d;->n:Z

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/basic/e/e;->sendEmptyMessage(I)Z

    .line 187
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(II)V
    .locals 13

    .line 323
    iget-boolean v0, p0, Lcom/tencent/liteav/basic/e/d;->l:Z

    if-eqz v0, :cond_5

    .line 324
    iget v0, p0, Lcom/tencent/liteav/basic/e/d;->j:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/tencent/liteav/basic/e/d;->k:I

    if-eqz v2, :cond_4

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 326
    :goto_0
    iget v2, p0, Lcom/tencent/liteav/basic/e/d;->k:I

    iget v3, p0, Lcom/tencent/liteav/basic/e/d;->j:I

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 327
    :goto_1
    iget v3, p0, Lcom/tencent/liteav/basic/e/d;->k:I

    iget v4, p0, Lcom/tencent/liteav/basic/e/d;->j:I

    if-lt v3, v4, :cond_2

    move v3, v4

    :cond_2
    if-eqz v0, :cond_3

    move v12, v3

    move v3, v2

    move v2, v12

    :cond_3
    mul-int v0, v2, v3

    mul-int/lit8 v0, v0, 0x4

    .line 336
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 337
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 339
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move v4, p1

    move v5, p2

    move v6, v2

    move v7, v3

    move-object v10, v0

    .line 340
    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 344
    iget-object v10, p0, Lcom/tencent/liteav/basic/e/d;->m:Lcom/tencent/liteav/basic/e/k;

    if-eqz v10, :cond_4

    .line 346
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/tencent/liteav/basic/e/d$2;

    move-object v4, p2

    move-object v5, p0

    move-object v6, v0

    move-object v7, v11

    move v8, v2

    move v9, v3

    invoke-direct/range {v4 .. v10}, Lcom/tencent/liteav/basic/e/d$2;-><init>(Lcom/tencent/liteav/basic/e/d;Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap;IILcom/tencent/liteav/basic/e/k;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 360
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_4
    const/4 p1, 0x0

    .line 363
    iput-object p1, p0, Lcom/tencent/liteav/basic/e/d;->m:Lcom/tencent/liteav/basic/e/k;

    .line 364
    iput-boolean v1, p0, Lcom/tencent/liteav/basic/e/d;->l:Z

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/e/d;IZIIIIIZZ)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p9}, Lcom/tencent/liteav/basic/e/d;->b(IZIIIIIZZ)V

    return-void
.end method

.method private a(IIII)[I
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [I

    int-to-float v1, p2

    int-to-float v2, p1

    div-float v3, v1, v2

    int-to-float p4, p4

    int-to-float p3, p3

    div-float/2addr p4, p3

    cmpl-float p3, v3, p4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lez p3, :cond_0

    mul-float/2addr v2, p4

    float-to-int p3, v2

    sub-int/2addr p2, p3

    .line 309
    div-int/2addr p2, v3

    move p4, p2

    move p2, p3

    move p3, v4

    goto :goto_0

    :cond_0
    div-float/2addr v1, p4

    float-to-int p3, v1

    sub-int/2addr p1, p3

    .line 313
    div-int/2addr p1, v3

    move p4, v4

    move v5, p3

    move p3, p1

    move p1, v5

    :goto_0
    aput p1, v0, v4

    const/4 p1, 0x1

    aput p2, v0, p1

    aput p3, v0, v3

    const/4 p1, 0x3

    aput p4, v0, p1

    return-object v0
.end method

.method private b(IZIIIIIZZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p6

    move/from16 v3, p7

    if-eqz v2, :cond_19

    if-eqz v3, :cond_19

    .line 202
    iget-object v4, v0, Lcom/tencent/liteav/basic/e/d;->c:Lcom/tencent/liteav/basic/e/f;

    if-nez v4, :cond_0

    goto/16 :goto_14

    .line 204
    :cond_0
    iget-boolean v4, v0, Lcom/tencent/liteav/basic/e/d;->n:Z

    const/4 v9, 0x0

    if-eqz v4, :cond_1

    .line 205
    iput-boolean v9, v0, Lcom/tencent/liteav/basic/e/d;->n:Z

    return-void

    :cond_1
    const v10, 0x8d40

    const/16 v11, 0x4100

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v4, 0x1

    if-eqz p8, :cond_3

    .line 210
    invoke-static {v13, v13, v13, v12}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 211
    invoke-static {v11}, Landroid/opengl/GLES20;->glClear(I)V

    .line 212
    invoke-static {v10, v9}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 213
    iget-object v5, v0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    if-eqz v5, :cond_2

    .line 214
    iget-object v5, v0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    invoke-virtual {v5}, Lcom/tencent/liteav/basic/e/e;->b()V

    .line 216
    :cond_2
    iput-boolean v4, v0, Lcom/tencent/liteav/basic/e/d;->n:Z

    :cond_3
    if-eqz p4, :cond_4

    move/from16 v5, p4

    goto :goto_0

    :cond_4
    move v5, v2

    :goto_0
    if-eqz p5, :cond_5

    move/from16 v6, p5

    goto :goto_1

    :cond_5
    move v6, v3

    .line 223
    :goto_1
    iget v7, v0, Lcom/tencent/liteav/basic/e/d;->h:I

    const/16 v8, 0x10e

    const/4 v14, 0x2

    const/16 v15, 0x5a

    if-nez v7, :cond_6

    goto :goto_6

    :cond_6
    if-ne v7, v4, :cond_b

    rsub-int v7, v1, 0x2d0

    .line 227
    rem-int/lit16 v7, v7, 0x168

    if-eq v7, v15, :cond_8

    if-ne v7, v8, :cond_7

    goto :goto_2

    :cond_7
    move v7, v9

    goto :goto_3

    :cond_8
    :goto_2
    move v7, v4

    :goto_3
    if-eqz v7, :cond_9

    move v10, v3

    goto :goto_4

    :cond_9
    move v10, v2

    :goto_4
    if-eqz v7, :cond_a

    move v7, v2

    goto :goto_5

    :cond_a
    move v7, v3

    .line 231
    :goto_5
    invoke-direct {v0, v5, v6, v10, v7}, Lcom/tencent/liteav/basic/e/d;->a(IIII)[I

    move-result-object v5

    .line 232
    aget v6, v5, v9

    .line 233
    aget v7, v5, v4

    .line 234
    aget v10, v5, v14

    const/16 v16, 0x3

    .line 235
    aget v5, v5, v16

    move/from16 v17, v7

    move v7, v5

    move v5, v6

    move/from16 v6, v17

    goto :goto_7

    :cond_b
    :goto_6
    move v7, v9

    move v10, v7

    .line 238
    :goto_7
    iput v5, v0, Lcom/tencent/liteav/basic/e/d;->j:I

    .line 239
    iput v6, v0, Lcom/tencent/liteav/basic/e/d;->k:I

    .line 240
    invoke-static {v10, v7, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 243
    iget v11, v0, Lcom/tencent/liteav/basic/e/d;->i:I

    if-ne v11, v4, :cond_c

    if-nez p9, :cond_d

    :goto_8
    xor-int/lit8 v11, p2, 0x1

    goto :goto_9

    :cond_c
    if-ne v11, v14, :cond_d

    if-eqz p9, :cond_d

    goto :goto_8

    :cond_d
    move/from16 v11, p2

    :goto_9
    if-eqz v6, :cond_e

    int-to-float v14, v5

    int-to-float v12, v6

    div-float v12, v14, v12

    goto :goto_a

    :cond_e
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_a
    if-eqz v3, :cond_f

    int-to-float v14, v2

    int-to-float v13, v3

    div-float v13, v14, v13

    goto :goto_b

    :cond_f
    const/high16 v13, 0x3f800000    # 1.0f

    .line 255
    :goto_b
    iget-boolean v14, v0, Lcom/tencent/liteav/basic/e/d;->e:Z

    if-ne v14, v11, :cond_11

    iget v14, v0, Lcom/tencent/liteav/basic/e/d;->d:I

    if-ne v14, v1, :cond_11

    iget v14, v0, Lcom/tencent/liteav/basic/e/d;->f:F

    cmpl-float v14, v14, v12

    if-nez v14, :cond_11

    iget v14, v0, Lcom/tencent/liteav/basic/e/d;->g:F

    cmpl-float v14, v14, v13

    if-eqz v14, :cond_10

    goto :goto_d

    :cond_10
    move v11, v7

    :goto_c
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    goto/16 :goto_13

    .line 256
    :cond_11
    :goto_d
    iput-boolean v11, v0, Lcom/tencent/liteav/basic/e/d;->e:Z

    .line 257
    iput v1, v0, Lcom/tencent/liteav/basic/e/d;->d:I

    .line 258
    iput v12, v0, Lcom/tencent/liteav/basic/e/d;->f:F

    .line 259
    iput v13, v0, Lcom/tencent/liteav/basic/e/d;->g:F

    .line 260
    iget v1, v0, Lcom/tencent/liteav/basic/e/d;->d:I

    rsub-int v1, v1, 0x2d0

    rem-int/lit16 v11, v1, 0x168

    if-eq v11, v15, :cond_13

    if-ne v11, v8, :cond_12

    goto :goto_e

    :cond_12
    move v12, v9

    goto :goto_f

    :cond_13
    :goto_e
    move v12, v4

    :goto_f
    if-eqz v12, :cond_14

    move v1, v6

    goto :goto_10

    :cond_14
    move v1, v5

    :goto_10
    if-eqz v12, :cond_15

    move v6, v5

    .line 270
    :cond_15
    iget-object v5, v0, Lcom/tencent/liteav/basic/e/d;->c:Lcom/tencent/liteav/basic/e/f;

    sget-object v8, Lcom/tencent/liteav/basic/e/h;->a:Lcom/tencent/liteav/basic/e/h;

    .line 271
    invoke-static {v8, v9, v4}, Lcom/tencent/liteav/basic/e/i;->a(Lcom/tencent/liteav/basic/e/h;ZZ)[F

    move-result-object v8

    int-to-float v1, v1

    int-to-float v4, v6

    div-float v6, v1, v4

    if-eqz v12, :cond_16

    move v13, v9

    goto :goto_11

    :cond_16
    iget-boolean v1, v0, Lcom/tencent/liteav/basic/e/d;->e:Z

    move v13, v1

    :goto_11
    if-eqz v12, :cond_17

    iget-boolean v1, v0, Lcom/tencent/liteav/basic/e/d;->e:Z

    move v14, v1

    goto :goto_12

    :cond_17
    move v14, v9

    :goto_12
    move-object v1, v5

    move/from16 v2, p6

    move/from16 v3, p7

    move v4, v11

    move-object v5, v8

    move v11, v7

    move v7, v13

    move v8, v14

    .line 270
    invoke-virtual/range {v1 .. v8}, Lcom/tencent/liteav/basic/e/f;->a(III[FFZZ)V

    if-eqz v12, :cond_18

    .line 277
    iget-object v1, v0, Lcom/tencent/liteav/basic/e/d;->c:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/f;->g()V

    goto :goto_c

    .line 279
    :cond_18
    iget-object v1, v0, Lcom/tencent/liteav/basic/e/d;->c:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/f;->h()V

    goto :goto_c

    .line 283
    :goto_13
    invoke-static {v2, v2, v2, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4100

    .line 284
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x8d40

    .line 285
    invoke-static {v1, v9}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 287
    iget-object v1, v0, Lcom/tencent/liteav/basic/e/d;->c:Lcom/tencent/liteav/basic/e/f;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/basic/e/f;->a(I)I

    .line 289
    invoke-direct {v0, v10, v11}, Lcom/tencent/liteav/basic/e/d;->a(II)V

    .line 293
    iget-object v1, v0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    if-eqz v1, :cond_19

    .line 294
    iget-object v1, v0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/basic/e/e;->b()V

    :cond_19
    :goto_14
    return-void
.end method

.method private b(Ljava/lang/Object;Landroid/view/Surface;)V
    .locals 2

    .line 148
    invoke-direct {p0}, Lcom/tencent/liteav/basic/e/d;->f()V

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TXGLSurfaceRenderThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/basic/e/d;->a:Landroid/os/HandlerThread;

    .line 152
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 153
    new-instance v0, Lcom/tencent/liteav/basic/e/e;

    iget-object v1, p0, Lcom/tencent/liteav/basic/e/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/basic/e/e;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    .line 154
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/basic/e/e;->a(Lcom/tencent/liteav/basic/e/e$a;)V

    if-eqz p1, :cond_1

    .line 156
    instance-of v0, p1, Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/liteav/basic/e/e;->d:Z

    .line 161
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    check-cast p1, Landroid/opengl/EGLContext;

    iput-object p1, v0, Lcom/tencent/liteav/basic/e/e;->f:Landroid/opengl/EGLContext;

    goto :goto_1

    .line 157
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/liteav/basic/e/e;->d:Z

    .line 158
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    check-cast p1, Ljavax/microedition/khronos/egl/EGLContext;

    iput-object p1, v0, Lcom/tencent/liteav/basic/e/e;->h:Ljavax/microedition/khronos/egl/EGLContext;

    .line 163
    :goto_1
    iget-object p1, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    iput-object p2, p1, Lcom/tencent/liteav/basic/e/e;->c:Landroid/view/Surface;

    const-string p1, "TXGLSurfaceRenderThread"

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "surface-render: create gl thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x64

    .line 167
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/e/d;->a(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 165
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private f()V
    .locals 2

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    iget-object v1, p0, Lcom/tencent/liteav/basic/e/d;->a:Landroid/os/HandlerThread;

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/e/e;->a(Landroid/os/Handler;Landroid/os/HandlerThread;)V

    const-string v0, "TXGLSurfaceRenderThread"

    const-string v1, "surface-render: destroy gl thread"

    .line 174
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    .line 178
    iput-object v0, p0, Lcom/tencent/liteav/basic/e/d;->a:Landroid/os/HandlerThread;

    .line 179
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surface-render: surface render stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXGLSurfaceRenderThread"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/tencent/liteav/basic/e/d;->f()V

    return-void
.end method

.method public a(IZIIIIIZZ)V
    .locals 14

    move-object v12, p0

    .line 95
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, v12, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, v12, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    new-instance v13, Lcom/tencent/liteav/basic/e/d$1;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/tencent/liteav/basic/e/d$1;-><init>(Lcom/tencent/liteav/basic/e/d;IZIIIIIZZ)V

    invoke-virtual {v0, v13}, Lcom/tencent/liteav/basic/e/e;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/tencent/liteav/basic/e/k;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/tencent/liteav/basic/e/d;->m:Lcom/tencent/liteav/basic/e/k;

    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Lcom/tencent/liteav/basic/e/d;->l:Z

    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/view/Surface;)V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surface-render: surface render start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXGLSurfaceRenderThread"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/basic/e/d;->b(Ljava/lang/Object;Landroid/view/Surface;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/basic/e/e;->post(Ljava/lang/Runnable;)Z

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Landroid/view/Surface;
    .locals 1

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->b:Lcom/tencent/liteav/basic/e/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/e;->a()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 65
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 4

    .line 125
    new-instance v0, Lcom/tencent/liteav/basic/e/f;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/e/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/basic/e/d;->c:Lcom/tencent/liteav/basic/e/f;

    .line 126
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->c:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->c:Lcom/tencent/liteav/basic/e/f;

    sget-object v1, Lcom/tencent/liteav/basic/e/i;->e:[F

    sget-object v2, Lcom/tencent/liteav/basic/e/h;->a:Lcom/tencent/liteav/basic/e/h;

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lcom/tencent/liteav/basic/e/i;->a(Lcom/tencent/liteav/basic/e/h;ZZ)[F

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/basic/e/f;->a([F[F)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d;->c:Lcom/tencent/liteav/basic/e/f;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/f;->d()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/tencent/liteav/basic/e/d;->c:Lcom/tencent/liteav/basic/e/f;

    :cond_0
    return-void
.end method
