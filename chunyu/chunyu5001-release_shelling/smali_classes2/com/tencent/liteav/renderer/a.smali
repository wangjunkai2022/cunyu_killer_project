.class public Lcom/tencent/liteav/renderer/a;
.super Lcom/tencent/liteav/renderer/e;
.source "TXCGLRender.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/renderer/a$a;
    }
.end annotation


# instance fields
.field private A:Lcom/tencent/liteav/renderer/c;

.field private B:Lcom/tencent/liteav/basic/structs/TXSVideoFrame;

.field private C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

.field private D:Ljava/lang/Object;

.field private E:Ljava/lang/Object;

.field private F:Lcom/tencent/liteav/renderer/h;

.field private G:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

.field private final H:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field a:Lcom/tencent/liteav/renderer/g;

.field b:Lcom/tencent/liteav/renderer/a$a;

.field c:Lcom/tencent/liteav/renderer/a$a;

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private u:Ljava/lang/Object;

.field private v:Lcom/tencent/liteav/renderer/b;

.field private w:Landroid/graphics/SurfaceTexture;

.field private x:Lcom/tencent/liteav/renderer/c;

.field private y:Z

.field private z:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/e;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/tencent/liteav/renderer/a;->q:I

    .line 17
    iput v0, p0, Lcom/tencent/liteav/renderer/a;->r:I

    .line 18
    iput v0, p0, Lcom/tencent/liteav/renderer/a;->s:I

    .line 19
    iput v0, p0, Lcom/tencent/liteav/renderer/a;->t:I

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/a;->u:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/tencent/liteav/renderer/a;->D:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/a;->E:Ljava/lang/Object;

    .line 379
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/a;->H:Ljava/util/Queue;

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 46
    iput-object v0, p0, Lcom/tencent/liteav/renderer/a;->z:[F

    return-void
.end method

.method private a(Ljava/util/Queue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)Z"
        }
    .end annotation

    .line 393
    monitor-enter p1

    .line 394
    :try_start_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p1

    return v1

    .line 395
    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 396
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    return v1

    .line 399
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    .line 396
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e(II)Z
    .locals 10

    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/a;->y:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 280
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/a;->y:Z

    .line 281
    iput-boolean v2, p0, Lcom/tencent/liteav/renderer/a;->y:Z

    move-object v3, v1

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->B:Lcom/tencent/liteav/basic/structs/TXSVideoFrame;

    if-eqz v0, :cond_10

    .line 283
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->B:Lcom/tencent/liteav/basic/structs/TXSVideoFrame;

    .line 284
    iput-object v1, p0, Lcom/tencent/liteav/renderer/a;->B:Lcom/tencent/liteav/basic/structs/TXSVideoFrame;

    move-object v3, v0

    move v0, v2

    .line 288
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_f

    if-gtz p2, :cond_1

    goto/16 :goto_5

    .line 293
    :cond_1
    invoke-static {v2, v2, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 296
    iget p1, p0, Lcom/tencent/liteav/renderer/a;->l:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 297
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/a;->b()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 299
    :goto_1
    iget-object v4, p0, Lcom/tencent/liteav/renderer/a;->c:Lcom/tencent/liteav/renderer/a$a;

    const v5, 0x8d40

    if-eqz v0, :cond_8

    .line 302
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->w:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 303
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 304
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->w:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->z:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 306
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->a:Lcom/tencent/liteav/renderer/g;

    if-eqz v0, :cond_4

    .line 307
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->x:Lcom/tencent/liteav/renderer/c;

    if-eqz v1, :cond_5

    .line 309
    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/c;->a()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/liteav/renderer/a;->z:[F

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/renderer/g;->a(I[F)I

    goto :goto_2

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->x:Lcom/tencent/liteav/renderer/c;

    if-eqz v0, :cond_5

    .line 314
    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 315
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->x:Lcom/tencent/liteav/renderer/c;

    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->w:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/c;->a(Landroid/graphics/SurfaceTexture;)V

    :cond_5
    :goto_2
    if-eqz v4, :cond_7

    .line 319
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->x:Lcom/tencent/liteav/renderer/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/c;->a()I

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->F:Lcom/tencent/liteav/renderer/h;

    if-nez v1, :cond_6

    .line 321
    new-instance v1, Lcom/tencent/liteav/renderer/h;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/liteav/renderer/h;-><init>(Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/tencent/liteav/renderer/a;->F:Lcom/tencent/liteav/renderer/h;

    .line 322
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->F:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/h;->b()V

    .line 323
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->F:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v1, p2}, Lcom/tencent/liteav/renderer/h;->a(Z)V

    .line 324
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->F:Lcom/tencent/liteav/renderer/h;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/renderer/h;->b(I)V

    .line 325
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->F:Lcom/tencent/liteav/renderer/h;

    sget v2, Lcom/tencent/liteav/renderer/h;->a:I

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/renderer/h;->a(I)V

    .line 329
    :cond_6
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->F:Lcom/tencent/liteav/renderer/h;

    iget-object v2, p0, Lcom/tencent/liteav/renderer/a;->z:[F

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/renderer/h;->a([F)V

    .line 330
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->F:Lcom/tencent/liteav/renderer/h;

    iget v2, p0, Lcom/tencent/liteav/renderer/a;->h:I

    iget v3, p0, Lcom/tencent/liteav/renderer/a;->i:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/renderer/h;->b(II)V

    .line 331
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->F:Lcom/tencent/liteav/renderer/h;

    iget v2, p0, Lcom/tencent/liteav/renderer/a;->h:I

    iget v3, p0, Lcom/tencent/liteav/renderer/a;->i:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/liteav/renderer/h;->a(II)V

    .line 334
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->F:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/renderer/h;->d(I)I

    move-result v0

    .line 335
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/a;->h()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/a;->i()I

    move-result v2

    iget v3, p0, Lcom/tencent/liteav/renderer/a;->k:I

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/tencent/liteav/renderer/a$a;->onTextureProcess(IIII)V

    .line 337
    :cond_7
    iget v0, p0, Lcom/tencent/liteav/renderer/a;->l:I

    if-ne v0, p2, :cond_e

    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->x:Lcom/tencent/liteav/renderer/c;

    if-eqz v0, :cond_e

    .line 338
    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/c;->a()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->z:[F

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/tencent/liteav/renderer/a;->a(Ljava/lang/Object;I[FZ)V

    goto/16 :goto_4

    :cond_8
    if-eqz v3, :cond_e

    .line 341
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    if-eqz v0, :cond_e

    .line 343
    iget-object v6, p0, Lcom/tencent/liteav/renderer/a;->b:Lcom/tencent/liteav/renderer/a$a;

    const/4 v7, -0x1

    if-eqz v6, :cond_9

    .line 344
    iget v5, p0, Lcom/tencent/liteav/renderer/a;->h:I

    iget v6, p0, Lcom/tencent/liteav/renderer/a;->i:I

    invoke-virtual {v0, v5, v6}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->setHasFrameBuffer(II)V

    .line 345
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->drawToTexture(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;)I

    move-result v0

    .line 346
    iget-object v5, p0, Lcom/tencent/liteav/renderer/a;->b:Lcom/tencent/liteav/renderer/a$a;

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/a;->h()I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/a;->i()I

    move-result v8

    iget v9, p0, Lcom/tencent/liteav/renderer/a;->k:I

    invoke-interface {v5, v0, v6, v8, v9}, Lcom/tencent/liteav/renderer/a$a;->onTextureProcess(IIII)V

    goto :goto_3

    .line 349
    :cond_9
    iget v0, p0, Lcom/tencent/liteav/renderer/a;->l:I

    if-nez v0, :cond_a

    .line 350
    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 351
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->drawFrame(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;)V

    :cond_a
    move v0, v7

    .line 355
    :goto_3
    iget v5, p0, Lcom/tencent/liteav/renderer/a;->l:I

    if-ne v5, p2, :cond_c

    if-ne v0, v7, :cond_b

    .line 357
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    iget v5, p0, Lcom/tencent/liteav/renderer/a;->h:I

    iget v6, p0, Lcom/tencent/liteav/renderer/a;->i:I

    invoke-virtual {v0, v5, v6}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->setHasFrameBuffer(II)V

    .line 358
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->drawToTexture(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;)I

    move-result v0

    .line 360
    :cond_b
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/tencent/liteav/renderer/a;->a(Ljava/lang/Object;I[FZ)V

    :cond_c
    if-eqz v4, :cond_e

    .line 363
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->G:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    if-nez p1, :cond_d

    .line 364
    new-instance p1, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    invoke-direct {p1}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/renderer/a;->G:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    .line 365
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->G:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    invoke-virtual {p1}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->createTexture()V

    .line 366
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->G:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    invoke-virtual {p1, v2}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->flipVertical(Z)V

    .line 368
    :cond_d
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->G:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    iget v0, p0, Lcom/tencent/liteav/renderer/a;->h:I

    iget v1, p0, Lcom/tencent/liteav/renderer/a;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->setHasFrameBuffer(II)V

    .line 369
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->G:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    invoke-virtual {p1, v3}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->drawToTexture(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;)I

    move-result p1

    .line 371
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/a;->h()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/a;->i()I

    move-result v1

    iget v2, p0, Lcom/tencent/liteav/renderer/a;->k:I

    invoke-interface {v4, p1, v0, v1, v2}, Lcom/tencent/liteav/renderer/a$a;->onTextureProcess(IIII)V

    :cond_e
    :goto_4
    return p2

    :cond_f
    :goto_5
    return v2

    .line 286
    :cond_10
    :try_start_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 288
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private p()V
    .locals 2

    .line 186
    new-instance v0, Lcom/tencent/liteav/renderer/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/renderer/c;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/a;->x:Lcom/tencent/liteav/renderer/c;

    .line 187
    new-instance v0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    invoke-direct {v0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    .line 188
    new-instance v0, Lcom/tencent/liteav/renderer/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/liteav/renderer/c;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/a;->A:Lcom/tencent/liteav/renderer/c;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->w:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method protected a(II)V
    .locals 1

    .line 135
    invoke-super {p0, p1, p2}, Lcom/tencent/liteav/renderer/e;->a(II)V

    .line 136
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->setVideoSize(II)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->x:Lcom/tencent/liteav/renderer/c;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/renderer/c;->a(II)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->w:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_2
    return-void
.end method

.method public a(IIIZI)V
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/a;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/a;->g()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 100
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->A:Lcom/tencent/liteav/renderer/c;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1, p4, p5}, Lcom/tencent/liteav/renderer/c;->a(IZI)V

    .line 104
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/tencent/liteav/renderer/e;->a(IIIZI)V

    .line 105
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->u:Ljava/lang/Object;

    monitor-enter p1

    .line 106
    :try_start_0
    iget-object p2, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    if-eqz p2, :cond_1

    .line 107
    iget-object p2, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    invoke-virtual {p2}, Lcom/tencent/liteav/renderer/b;->c()V

    .line 109
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method protected a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcom/tencent/liteav/renderer/e;->a(Landroid/graphics/SurfaceTexture;)V

    const-string p1, "TXCVideoRender"

    const-string v0, "play:vrender: create render thread when onSurfaceCreate"

    .line 124
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 125
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/renderer/a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;III)V
    .locals 1

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->B:Lcom/tencent/liteav/basic/structs/TXSVideoFrame;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->B:Lcom/tencent/liteav/basic/structs/TXSVideoFrame;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->release()V

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/renderer/a;->B:Lcom/tencent/liteav/basic/structs/TXSVideoFrame;

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;III)V

    .line 87
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->u:Ljava/lang/Object;

    monitor-enter p1

    .line 88
    :try_start_1
    iget-object p2, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    if-eqz p2, :cond_1

    .line 89
    iget-object p2, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    invoke-virtual {p2}, Lcom/tencent/liteav/renderer/b;->c()V

    .line 91
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 85
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public a(Lcom/tencent/liteav/renderer/a$a;)V
    .locals 2

    .line 64
    iput-object p1, p0, Lcom/tencent/liteav/renderer/a;->b:Lcom/tencent/liteav/renderer/a$a;

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    if-eqz p1, :cond_0

    .line 66
    iget v0, p0, Lcom/tencent/liteav/renderer/a;->h:I

    iget v1, p0, Lcom/tencent/liteav/renderer/a;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->setHasFrameBuffer(II)V

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/renderer/g;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/tencent/liteav/renderer/a;->a:Lcom/tencent/liteav/renderer/g;

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->E:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/renderer/a;->D:Ljava/lang/Object;

    const-string p1, "TXCVideoRender"

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play:vrender: TXCGLRender initTextureRender "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/a;->p()V

    .line 155
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->e:Lcom/tencent/liteav/renderer/d;

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->e:Lcom/tencent/liteav/renderer/d;

    iget v1, p0, Lcom/tencent/liteav/renderer/a;->f:I

    iget v2, p0, Lcom/tencent/liteav/renderer/a;->g:I

    invoke-virtual {p1, v1, v2}, Lcom/tencent/liteav/renderer/d;->a(II)V

    .line 157
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->e:Lcom/tencent/liteav/renderer/d;

    iget v1, p0, Lcom/tencent/liteav/renderer/a;->h:I

    iget v2, p0, Lcom/tencent/liteav/renderer/a;->i:I

    invoke-virtual {p1, v1, v2}, Lcom/tencent/liteav/renderer/d;->b(II)V

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->x:Lcom/tencent/liteav/renderer/c;

    if-eqz p1, :cond_1

    .line 161
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->x:Lcom/tencent/liteav/renderer/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/renderer/c;->b()V

    .line 162
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->x:Lcom/tencent/liteav/renderer/c;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/c;->a()I

    move-result v1

    invoke-direct {p1, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/liteav/renderer/a;->w:Landroid/graphics/SurfaceTexture;

    .line 163
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->w:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 165
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->w:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/tencent/liteav/renderer/a;->h:I

    iget v2, p0, Lcom/tencent/liteav/renderer/a;->i:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    if-eqz p1, :cond_2

    .line 168
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    invoke-virtual {p1}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->createTexture()V

    .line 171
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->b:Lcom/tencent/liteav/renderer/a$a;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    if-eqz p1, :cond_3

    .line 172
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    iget v1, p0, Lcom/tencent/liteav/renderer/a;->h:I

    iget v2, p0, Lcom/tencent/liteav/renderer/a;->i:I

    invoke-virtual {p1, v1, v2}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->setHasFrameBuffer(II)V

    .line 175
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->A:Lcom/tencent/liteav/renderer/c;

    if-eqz p1, :cond_4

    .line 176
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->A:Lcom/tencent/liteav/renderer/c;

    invoke-virtual {p1}, Lcom/tencent/liteav/renderer/c;->b()V

    .line 179
    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->o:Lcom/tencent/liteav/renderer/f;

    if-eqz p1, :cond_5

    .line 180
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->o:Lcom/tencent/liteav/renderer/f;

    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->w:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1, v1}, Lcom/tencent/liteav/renderer/f;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V

    .line 182
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/b;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected b(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lcom/tencent/liteav/renderer/e;->b(Landroid/graphics/SurfaceTexture;)V

    const-string p1, "TXCVideoRender"

    const-string v0, "play:vrender: quit render thread when onSurfaceRelease"

    .line 130
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/a;->d()V

    return-void
.end method

.method public b(Lcom/tencent/liteav/renderer/a$a;)V
    .locals 2

    .line 72
    iput-object p1, p0, Lcom/tencent/liteav/renderer/a;->c:Lcom/tencent/liteav/renderer/a$a;

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    if-eqz p1, :cond_0

    .line 74
    iget v0, p0, Lcom/tencent/liteav/renderer/a;->h:I

    iget v1, p0, Lcom/tencent/liteav/renderer/a;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->setHasFrameBuffer(II)V

    :cond_0
    return-void
.end method

.method b(Ljava/lang/Object;)V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->E:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->D:Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    const-string p1, "TXCVideoRender"

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play:vrender: TXCGLRender destroyTextureRender ignore when not the same gl thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    monitor-exit v0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 197
    iput-object p1, p0, Lcom/tencent/liteav/renderer/a;->D:Ljava/lang/Object;

    const-string v1, "TXCVideoRender"

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play:vrender: TXCGLRender destroyTextureRender "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :try_start_1
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->o:Lcom/tencent/liteav/renderer/f;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->o:Lcom/tencent/liteav/renderer/f;

    iget-object v2, p0, Lcom/tencent/liteav/renderer/a;->w:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Lcom/tencent/liteav/renderer/f;->onSurfaceTextureDestroy(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "TXCVideoRender"

    const-string v3, "callback failed."

    .line 205
    invoke-static {v2, v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->x:Lcom/tencent/liteav/renderer/c;

    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->x:Lcom/tencent/liteav/renderer/c;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/c;->c()V

    .line 209
    iput-object p1, p0, Lcom/tencent/liteav/renderer/a;->x:Lcom/tencent/liteav/renderer/c;

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    if-eqz v1, :cond_3

    .line 212
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->onSurfaceDestroy()V

    .line 213
    iput-object p1, p0, Lcom/tencent/liteav/renderer/a;->C:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->A:Lcom/tencent/liteav/renderer/c;

    if-eqz v1, :cond_4

    .line 216
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->A:Lcom/tencent/liteav/renderer/c;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/c;->c()V

    .line 217
    iput-object p1, p0, Lcom/tencent/liteav/renderer/a;->A:Lcom/tencent/liteav/renderer/c;

    .line 219
    :cond_4
    iput-object p1, p0, Lcom/tencent/liteav/renderer/a;->w:Landroid/graphics/SurfaceTexture;

    .line 220
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->F:Lcom/tencent/liteav/renderer/h;

    if-eqz v1, :cond_5

    .line 221
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->F:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/h;->c()V

    .line 222
    iput-object p1, p0, Lcom/tencent/liteav/renderer/a;->F:Lcom/tencent/liteav/renderer/h;

    .line 224
    :cond_5
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->G:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    if-eqz v1, :cond_6

    .line 225
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->G:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->onSurfaceDestroy()V

    .line 226
    iput-object p1, p0, Lcom/tencent/liteav/renderer/a;->G:Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    .line 228
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method b(II)Z
    .locals 1

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->H:Ljava/util/Queue;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/renderer/a;->a(Ljava/util/Queue;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/renderer/a;->e(II)Z

    move-result p1

    return p1
.end method

.method c()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->d:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->d:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    if-nez v1, :cond_0

    .line 252
    new-instance v1, Lcom/tencent/liteav/renderer/b;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/tencent/liteav/renderer/b;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    .line 253
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    invoke-virtual {v1, p1}, Lcom/tencent/liteav/renderer/b;->a(Ljava/lang/Object;)V

    .line 254
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/b;->start()V

    .line 255
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/b;->c()V

    const-string v1, "TXCVideoRender"

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play:vrender: start render thread id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/a;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", glContext "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "TXCVideoRender"

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play:vrender: start render thread when running "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/a;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/b;->b()V

    .line 268
    iget-object v1, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    invoke-virtual {v1}, Lcom/tencent/liteav/renderer/b;->c()V

    const/4 v1, 0x0

    .line 269
    iput-object v1, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    const-string v1, "TXCVideoRender"

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play:vrender: quit render thread id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/a;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 430
    invoke-super {p0}, Lcom/tencent/liteav/renderer/e;->finalize()V

    const-string v0, "TXCVideoRender"

    const-string v1, "play:vrender: quit render thread when finalize"

    .line 431
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "quit render thread failed."

    .line 435
    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 418
    monitor-enter p0

    const/4 p1, 0x1

    .line 420
    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/a;->y:Z

    .line 421
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 422
    iget-object p1, p0, Lcom/tencent/liteav/renderer/a;->u:Ljava/lang/Object;

    monitor-enter p1

    .line 423
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/tencent/liteav/renderer/a;->v:Lcom/tencent/liteav/renderer/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/b;->c()V

    .line 426
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 421
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
