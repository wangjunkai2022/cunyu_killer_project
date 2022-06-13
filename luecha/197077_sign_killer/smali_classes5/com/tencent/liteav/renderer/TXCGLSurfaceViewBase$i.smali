.class Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;
.super Ljava/lang/Thread;
.source "TXCGLSurfaceViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;

.field private t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;",
            ">;)V"
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->q:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 759
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->r:Z

    const/4 v1, 0x0

    .line 267
    iput v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->l:I

    .line 268
    iput v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->m:I

    .line 269
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->o:Z

    .line 270
    iput v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->n:I

    .line 271
    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->t:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;Z)Z
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->b:Z

    return p1
.end method

.method private i()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 304
    new-instance v0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;

    iget-object v2, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->t:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->s:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;

    const/4 v2, 0x0

    .line 305
    iput-boolean v2, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->h:Z

    .line 306
    iput-boolean v2, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->i:Z

    move v0, v2

    move v4, v0

    move v5, v4

    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    const/4 v6, 0x0

    const/4 v14, 0x0

    .line 322
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 324
    :goto_1
    :try_start_1
    iget-boolean v3, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->a:Z

    if-eqz v3, :cond_0

    .line 325
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 563
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v2

    monitor-enter v2

    .line 564
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->j()V

    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->k()V

    .line 566
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 327
    :cond_0
    :try_start_3
    iget-object v3, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 328
    iget-object v3, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->q:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    move-object v14, v3

    move v2, v10

    const/4 v10, 0x0

    goto/16 :goto_a

    .line 332
    :cond_1
    iget-boolean v3, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->d:Z

    iget-boolean v2, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->c:Z

    if-eq v3, v2, :cond_2

    .line 333
    iget-boolean v2, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->c:Z

    .line 334
    iget-boolean v3, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->c:Z

    iput-boolean v3, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->d:Z

    .line 335
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 340
    :goto_2
    iget-boolean v3, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->k:Z

    if-eqz v3, :cond_3

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->j()V

    .line 345
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->k()V

    const/4 v3, 0x0

    .line 346
    iput-boolean v3, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->k:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->j()V

    .line 351
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->k()V

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    if-eqz v2, :cond_5

    .line 354
    iget-boolean v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->i:Z

    if-eqz v0, :cond_5

    .line 358
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->j()V

    :cond_5
    if-eqz v2, :cond_8

    .line 360
    iget-boolean v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->h:Z

    if-eqz v0, :cond_8

    .line 361
    iget-object v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    .line 363
    :cond_6
    invoke-static {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->a(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_7

    .line 364
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 365
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->k()V

    :cond_8
    if-eqz v2, :cond_9

    .line 372
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 373
    iget-object v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->s:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->g()V

    .line 379
    :cond_9
    iget-boolean v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->e:Z

    if-nez v0, :cond_b

    iget-boolean v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->g:Z

    if-nez v0, :cond_b

    .line 383
    iget-boolean v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->i:Z

    if-eqz v0, :cond_a

    .line 384
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->j()V

    :cond_a
    const/4 v2, 0x1

    .line 386
    iput-boolean v2, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->g:Z

    const/4 v2, 0x0

    .line 387
    iput-boolean v2, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->f:Z

    .line 388
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 390
    :cond_b
    iget-boolean v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->e:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->g:Z

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    .line 394
    iput-boolean v2, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->g:Z

    .line 395
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_c
    if-eqz v4, :cond_d

    const/4 v2, 0x1

    .line 403
    iput-boolean v2, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->p:Z

    .line 404
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 406
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->l()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 407
    iget-boolean v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->h:Z

    if-nez v0, :cond_f

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_7

    .line 410
    :cond_e
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->b(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_f

    .line 412
    :try_start_4
    iget-object v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->s:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_5
    const/4 v2, 0x1

    goto :goto_6

    :catch_0
    move-exception v0

    .line 414
    :try_start_5
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->c(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;)V

    const-string v2, "TXCGLSurfaceViewBase"

    const-string v9, "egl start error "

    .line 415
    invoke-static {v2, v9, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 417
    :goto_6
    iput-boolean v2, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->h:Z

    .line 420
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v9, 0x1

    .line 424
    :cond_f
    :goto_7
    iget-boolean v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->h:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->i:Z

    if-nez v0, :cond_10

    const/4 v2, 0x1

    .line 425
    iput-boolean v2, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->i:Z

    const/4 v2, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_8

    :cond_10
    move v2, v10

    .line 431
    :goto_8
    iget-boolean v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->i:Z

    if-eqz v0, :cond_1e

    .line 432
    iget-boolean v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->r:Z

    if-eqz v0, :cond_11

    .line 434
    iget v7, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->l:I

    .line 435
    iget v8, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->m:I

    const/4 v10, 0x0

    .line 446
    iput-boolean v10, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->r:Z

    const/4 v2, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    .line 448
    :goto_9
    iput-boolean v10, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->o:Z

    .line 449
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    move v0, v3

    .line 471
    :goto_a
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v14, :cond_12

    .line 474
    :try_start_6
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    const/4 v14, 0x0

    :goto_b
    move/from16 v16, v10

    move v10, v2

    move/from16 v2, v16

    goto/16 :goto_0

    :cond_12
    if-eqz v2, :cond_14

    .line 483
    iget-object v3, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->s:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;

    invoke-virtual {v3}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->b()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 484
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v3, 0x1

    .line 485
    :try_start_7
    iput-boolean v3, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->j:Z

    .line 486
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 487
    monitor-exit v2

    move v2, v10

    goto :goto_c

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 489
    :cond_13
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v3

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v15, 0x1

    .line 490
    :try_start_9
    iput-boolean v15, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->j:Z

    .line 491
    iput-boolean v15, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->f:Z

    .line 492
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 493
    monitor-exit v3

    goto :goto_b

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_14
    :goto_c
    if-eqz v11, :cond_15

    .line 500
    iget-object v3, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->s:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;

    invoke-virtual {v3}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->d()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/opengles/GL10;

    .line 502
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    move-object v6, v3

    move v11, v10

    :cond_15
    if-eqz v9, :cond_17

    .line 510
    iget-object v3, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

    if-eqz v3, :cond_16

    .line 512
    invoke-static {v3}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->b(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v3

    iget-object v9, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->s:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;

    iget-object v9, v9, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v3, v6, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_16
    move v9, v10

    :cond_17
    if-eqz v12, :cond_19

    .line 521
    iget-object v3, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

    if-eqz v3, :cond_18

    .line 523
    invoke-static {v3}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->b(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v3

    invoke-interface {v3, v6, v7, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_18
    move v12, v10

    .line 533
    :cond_19
    iget-object v3, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

    const/16 v15, 0x3000

    if-eqz v3, :cond_1a

    .line 535
    invoke-static {v3}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->b(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v10

    invoke-interface {v10, v6}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 536
    invoke-virtual {v3}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->b()I

    move-result v3

    goto :goto_d

    :cond_1a
    move v3, v15

    :goto_d
    if-eq v3, v15, :cond_1c

    const/16 v10, 0x300e

    if-eq v3, v10, :cond_1b

    const-string v10, "GLThread"

    const-string v15, "eglSwapBuffers"

    .line 549
    invoke-static {v10, v15, v3}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 550
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v3

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v10, 0x1

    .line 551
    :try_start_b
    iput-boolean v10, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->f:Z

    .line 552
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 553
    monitor-exit v3

    goto :goto_e

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_1b
    const/4 v10, 0x1

    move v0, v10

    goto :goto_e

    :cond_1c
    const/4 v10, 0x1

    :goto_e
    if-eqz v13, :cond_1d

    move v4, v10

    :cond_1d
    move v10, v2

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_1e
    move v10, v2

    :cond_1f
    const/4 v2, 0x0

    .line 469
    :try_start_d
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    move v0, v3

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    .line 471
    monitor-exit v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    .line 563
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v2

    monitor-enter v2

    .line 564
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->j()V

    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->k()V

    .line 566
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 567
    throw v0

    :catchall_6
    move-exception v0

    .line 566
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0
.end method

.method private j()V
    .locals 1

    .line 570
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 571
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->i:Z

    .line 572
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->s:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->f()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 576
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->h:Z

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->s:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->g()V

    const/4 v0, 0x0

    .line 578
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->h:Z

    .line 579
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;

    if-eqz v1, :cond_0

    .line 581
    iput-boolean v0, v1, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->f:Z

    .line 583
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->c(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;)V

    :cond_1
    return-void
.end method

.method private l()Z
    .locals 2

    .line 590
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->m:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->o:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->n:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->s:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;->c()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 598
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    monitor-enter v0

    .line 599
    :try_start_0
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->n:I

    .line 600
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 601
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 596
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)V
    .locals 1

    .line 690
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    monitor-enter v0

    .line 691
    :try_start_0
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->l:I

    .line 692
    iput p2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->m:I

    const/4 p1, 0x1

    .line 693
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->r:Z

    .line 694
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->o:Z

    const/4 p1, 0x0

    .line 695
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->p:Z

    .line 696
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 699
    :goto_0
    iget-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->b:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->d:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->p:Z

    if-nez p1, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->c()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 705
    :try_start_1
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 707
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 710
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 735
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    monitor-enter v0

    .line 736
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 738
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 733
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->s:Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$h;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 587
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()I
    .locals 2

    .line 604
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    monitor-enter v0

    .line 605
    :try_start_0
    iget v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->n:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 606
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 2

    .line 615
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 619
    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->e:Z

    const/4 v1, 0x0

    .line 620
    iput-boolean v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->j:Z

    .line 621
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 622
    :goto_0
    iget-boolean v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 626
    :try_start_1
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 628
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 631
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 2

    .line 634
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 638
    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->e:Z

    .line 639
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 640
    :goto_0
    iget-boolean v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 642
    :try_start_1
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 644
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 647
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 2

    .line 715
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 716
    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->a:Z

    .line 717
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 718
    :goto_0
    iget-boolean v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 720
    :try_start_1
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 722
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 725
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 728
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->k:Z

    .line 729
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->setName(Ljava/lang/String;)V

    .line 280
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;->i()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :catch_0
    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->a(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->d()Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$j;->a(Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase$i;)V

    .line 285
    throw v0

    :goto_0
    return-void
.end method
