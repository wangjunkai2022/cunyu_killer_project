.class public Lcom/tencent/liteav/renderer/TXCGLSurfaceView;
.super Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;
.source "TXCGLSurfaceView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private A:Lcom/tencent/liteav/basic/e/k;

.field private B:I

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Lcom/tencent/liteav/basic/e/j;

.field private G:J

.field private H:[B

.field private I:J

.field private J:I

.field private K:I

.field private final L:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/graphics/SurfaceTexture;

.field private h:Ljavax/microedition/khronos/egl/EGLContext;

.field private i:Lcom/tencent/liteav/basic/e/f;

.field private j:[I

.field private k:[F

.field private l:I

.field private m:Z

.field private n:F

.field private o:F

.field private p:I

.field private q:J

.field private r:J

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/Object;

.field private w:Landroid/os/Handler;

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 82
    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 49
    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->k:[F

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->l:I

    .line 52
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->m:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    iput v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->n:F

    .line 54
    iput v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->o:F

    const/16 v0, 0x14

    .line 56
    iput v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->p:I

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->q:J

    .line 58
    iput-wide v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->r:J

    const/16 v2, 0x3000

    .line 61
    iput v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->s:I

    const/4 v2, 0x1

    .line 62
    iput-boolean v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->t:Z

    .line 63
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->u:Z

    .line 64
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->v:Ljava/lang/Object;

    .line 68
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->x:I

    .line 69
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->y:I

    .line 70
    iput-boolean v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->z:Z

    const/4 v3, 0x0

    .line 71
    iput-object v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->A:Lcom/tencent/liteav/basic/e/k;

    .line 72
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->B:I

    .line 73
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->C:I

    .line 75
    iput-boolean v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->D:Z

    .line 76
    iput-boolean v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->E:Z

    .line 257
    iput-object v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->H:[B

    .line 295
    iput-wide v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->I:J

    .line 296
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->J:I

    .line 297
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->K:I

    .line 360
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->L:Ljava/util/Queue;

    const/4 p1, 0x2

    .line 83
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->setEGLContextClientVersion(I)V

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    .line 84
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(IIIIII)V

    .line 85
    invoke-virtual {p0, p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 49
    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->k:[F

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->l:I

    .line 52
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->m:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 53
    iput p2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->n:F

    .line 54
    iput p2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->o:F

    const/16 p2, 0x14

    .line 56
    iput p2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->p:I

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->q:J

    .line 58
    iput-wide v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->r:J

    const/16 p2, 0x3000

    .line 61
    iput p2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->s:I

    const/4 p2, 0x1

    .line 62
    iput-boolean p2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->t:Z

    .line 63
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->u:Z

    .line 64
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->v:Ljava/lang/Object;

    .line 68
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->x:I

    .line 69
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->y:I

    .line 70
    iput-boolean p2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->z:Z

    const/4 v2, 0x0

    .line 71
    iput-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->A:Lcom/tencent/liteav/basic/e/k;

    .line 72
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->B:I

    .line 73
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->C:I

    .line 75
    iput-boolean p2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->D:Z

    .line 76
    iput-boolean p2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->E:Z

    .line 257
    iput-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->H:[B

    .line 295
    iput-wide v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->I:J

    .line 296
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->J:I

    .line 297
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->K:I

    .line 360
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->L:Ljava/util/Queue;

    const/4 p1, 0x2

    .line 91
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->setEGLContextClientVersion(I)V

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    .line 92
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(IIIIII)V

    .line 93
    invoke-virtual {p0, p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->p:I

    return p0
.end method

.method static synthetic a(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->p:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->r:J

    return-wide p1
.end method

.method private a(J)V
    .locals 0

    .line 636
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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

    .line 369
    monitor-enter p1

    .line 370
    :try_start_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p1

    return v1

    .line 371
    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 372
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    return v1

    .line 375
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    .line 372
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->B:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->q:J

    return-wide p1
.end method

.method static synthetic c(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->C:I

    return p1
.end method

.method private e()V
    .locals 2

    .line 644
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->E:Z

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 646
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 647
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->w:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 648
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoCaptureThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 650
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->w:Landroid/os/Handler;

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->w:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_0

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 659
    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceDestroyed-->enter with mSurfaceTextureListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->F:Lcom/tencent/liteav/basic/e/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCGLSurfaceView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->F:Lcom/tencent/liteav/basic/e/j;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/basic/e/j;->b(Landroid/graphics/SurfaceTexture;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->L:Ljava/util/Queue;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->L:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 364
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b()I
    .locals 2

    .line 343
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->s:I

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background capture swapbuffer error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCGLSurfaceView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->s:I

    return v0
.end method

.method public getGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->h:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 351
    invoke-super {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceViewBase;->onDetachedFromWindow()V

    .line 352
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->w:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->w:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14

    .line 417
    iget-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->L:Ljava/util/Queue;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(Ljava/util/Queue;)Z

    const/4 p1, 0x1

    const/4 v0, 0x0

    move v1, p1

    .line 423
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 424
    iget-wide v4, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->r:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    :cond_0
    iput-wide v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->r:J

    .line 425
    :cond_1
    iget-wide v4, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->r:J

    sub-long v6, v2, v4

    iget-wide v8, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->q:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iget v12, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->p:I

    int-to-long v12, v12

    div-long/2addr v8, v12

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    const-wide/16 v1, 0xf

    .line 426
    invoke-direct {p0, v1, v2}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(J)V

    move v1, v0

    goto :goto_0

    :cond_2
    sub-long/2addr v2, v4

    cmp-long v2, v2, v10

    const-wide/16 v3, 0x1

    if-lez v2, :cond_3

    .line 431
    iput-wide v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->q:J

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->r:J

    move v2, p1

    goto :goto_1

    :cond_3
    move v2, v0

    .line 438
    :goto_1
    iget-boolean v5, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->t:Z

    if-eqz v5, :cond_4

    return-void

    .line 445
    :cond_4
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :try_start_1
    iget-boolean v5, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->u:Z

    const/4 v6, 0x0

    if-nez v5, :cond_5

    move v2, v1

    move v1, p1

    goto :goto_4

    .line 452
    :cond_5
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->H:[B

    if-eqz v1, :cond_7

    .line 453
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->H:[B

    .line 454
    iput-object v6, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->H:[B

    .line 455
    iget-object v5, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    if-eqz v5, :cond_6

    .line 456
    iget-object v5, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 457
    iget-object v5, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    iget-object v6, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->k:[F

    invoke-virtual {v5, v6}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    :cond_6
    move-object v6, v1

    goto :goto_2

    .line 460
    :cond_7
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_8

    .line 461
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 462
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    iget-object v5, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->k:[F

    invoke-virtual {v1, v5}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    :cond_8
    :goto_2
    if-nez v2, :cond_9

    .line 467
    iget-wide v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->q:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->q:J

    goto :goto_3

    .line 469
    :cond_9
    iput-wide v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->q:J

    .line 471
    :goto_3
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->u:Z

    move v1, v0

    move v2, v1

    .line 473
    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_b

    if-ne p1, v2, :cond_a

    const-wide/16 v0, 0x5

    .line 477
    :try_start_2
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(J)V

    :cond_a
    return-void

    .line 482
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v3, v1

    .line 483
    iget-wide v7, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->I:J

    long-to-double v7, v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    add-double/2addr v7, v9

    cmpl-double v3, v3, v7

    if-lez v3, :cond_c

    .line 485
    iget v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->K:I

    int-to-double v3, v3

    mul-double/2addr v3, v9

    iget-wide v7, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->I:J

    sub-long v7, v1, v7

    long-to-double v7, v7

    div-double/2addr v3, v7

    double-to-int v3, v3

    add-int/2addr v3, p1

    iput v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->J:I

    .line 486
    iput-wide v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->I:J

    .line 487
    iput v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->K:I

    .line 490
    :cond_c
    iget v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->K:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->K:I

    .line 492
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->F:Lcom/tencent/liteav/basic/e/j;

    if-eqz v1, :cond_e

    if-eqz v6, :cond_d

    .line 494
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->F:Lcom/tencent/liteav/basic/e/j;

    iget-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->k:[F

    invoke-interface {v1, v6, v2}, Lcom/tencent/liteav/basic/e/j;->a([B[F)V

    goto :goto_5

    .line 497
    :cond_d
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->F:Lcom/tencent/liteav/basic/e/j;

    iget-object v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->j:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->k:[F

    invoke-interface {v1, v2, v3}, Lcom/tencent/liteav/basic/e/j;->a(I[F)I

    .line 502
    :cond_e
    :goto_5
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 503
    :try_start_3
    iget-boolean v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->c:Z

    if-nez v1, :cond_f

    goto :goto_6

    :cond_f
    move p1, v0

    .line 504
    :goto_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_10

    .line 506
    :try_start_4
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->c()I

    move-result p1

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_10

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->G:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const-string v0, "TXCGLSurfaceView"

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "background capture swapBuffer error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->G:J

    .line 511
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EVT_PARAM1"

    .line 512
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "EVT_ID"

    const/16 v1, 0x83e

    .line 513
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "EVT_TIME"

    .line 514
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "EVT_UTC_TIME"

    .line 515
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "EVT_MSG"

    const-string v2, "Failed to render video"

    .line 516
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 518
    iget-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a:Ljava/lang/ref/WeakReference;

    invoke-static {p1, v1, v0}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;ILandroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :catchall_0
    move-exception p1

    .line 504
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception p1

    .line 473
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "TXCGLSurfaceView"

    const-string v1, "onDrawFrame failed"

    .line 525
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_7
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x0

    .line 589
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->t:Z

    .line 590
    monitor-enter p0

    const/4 p1, 0x1

    .line 592
    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->u:Z

    .line 593
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .line 383
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object p1

    check-cast p1, Ljavax/microedition/khronos/egl/EGL10;

    .line 385
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->h:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 387
    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->j:[I

    .line 388
    iget-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->j:[I

    invoke-static {}, Lcom/tencent/liteav/basic/e/g;->a()I

    move-result p2

    const/4 v0, 0x0

    aput p2, p1, v0

    .line 389
    iget-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->j:[I

    aget p2, p1, v0

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    .line 390
    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->j:[I

    const-string p1, "TXCGLSurfaceView"

    const-string p2, "create oes texture error!! at glsurfaceview"

    .line 391
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 395
    :cond_0
    new-instance p2, Landroid/graphics/SurfaceTexture;

    aget p1, p1, v0

    invoke-direct {p2, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    .line 397
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->e()V

    .line 399
    new-instance p1, Lcom/tencent/liteav/basic/e/f;

    invoke-direct {p1}, Lcom/tencent/liteav/basic/e/f;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->i:Lcom/tencent/liteav/basic/e/f;

    .line 400
    iget-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->i:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {p1}, Lcom/tencent/liteav/basic/e/f;->a()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 401
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->i:Lcom/tencent/liteav/basic/e/f;

    sget-object p2, Lcom/tencent/liteav/basic/e/i;->e:[F

    sget-object v1, Lcom/tencent/liteav/basic/e/h;->a:Lcom/tencent/liteav/basic/e/h;

    invoke-static {v1, v0, v0}, Lcom/tencent/liteav/basic/e/i;->a(Lcom/tencent/liteav/basic/e/h;ZZ)[F

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/tencent/liteav/basic/e/f;->a([F[F)V

    .line 403
    iget-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->F:Lcom/tencent/liteav/basic/e/j;

    if-eqz p1, :cond_2

    .line 404
    iget-object p2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->g:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1, p2}, Lcom/tencent/liteav/basic/e/j;->a(Landroid/graphics/SurfaceTexture;)V

    :cond_2
    return-void
.end method

.method public setFPS(I)V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TXCGLSurfaceView : setFPS ():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCGLSurfaceView"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$1;-><init>(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;I)V

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V
    .locals 1

    .line 171
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setRendMirror(I)V
    .locals 1

    .line 127
    new-instance v0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$3;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$3;-><init>(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;I)V

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRendMode(I)V
    .locals 1

    .line 115
    new-instance v0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$2;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$2;-><init>(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;I)V

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setRunInBackground(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 151
    monitor-enter p0

    :try_start_0
    const-string p1, "TXCGLSurfaceView"

    const-string v0, "background capture enter background"

    .line 152
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->c:Z

    .line 154
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 156
    :cond_0
    new-instance p1, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$4;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$4;-><init>(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;)V

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public setSurfaceTextureListener(Lcom/tencent/liteav/basic/e/j;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->F:Lcom/tencent/liteav/basic/e/j;

    return-void
.end method
