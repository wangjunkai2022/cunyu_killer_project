.class Lcom/tencent/liteav/renderer/b;
.super Ljava/lang/Thread;
.source "TXCGLRenderThread.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/renderer/a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z

.field private c:I

.field private d:I

.field private final e:Ljava/util/concurrent/Semaphore;

.field private f:Lcom/tencent/liteav/basic/e/b;

.field private g:Lcom/tencent/liteav/basic/e/a;

.field private h:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/renderer/a;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/b;->b:Z

    const/16 v1, 0x500

    .line 28
    iput v1, p0, Lcom/tencent/liteav/renderer/b;->c:I

    const/16 v1, 0x2d0

    .line 29
    iput v1, p0, Lcom/tencent/liteav/renderer/b;->d:I

    .line 31
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/tencent/liteav/renderer/b;->e:Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/tencent/liteav/renderer/b;->f:Lcom/tencent/liteav/basic/e/b;

    .line 34
    iput-object v0, p0, Lcom/tencent/liteav/renderer/b;->g:Lcom/tencent/liteav/basic/e/a;

    .line 35
    iput-object v0, p0, Lcom/tencent/liteav/renderer/b;->h:Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lcom/tencent/liteav/renderer/b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(II)Z
    .locals 1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/renderer/a;->b(II)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "drawFrame failed."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCVideoRenderThread"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private f()Lcom/tencent/liteav/basic/util/e;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->g:Lcom/tencent/liteav/basic/e/a;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/a;->f()Lcom/tencent/liteav/basic/util/e;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->f:Lcom/tencent/liteav/basic/e/b;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/b;->c()Lcom/tencent/liteav/basic/util/e;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "getSurfaceSize"

    .line 79
    invoke-static {v0}, Lcom/tencent/liteav/basic/e/g;->a(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/tencent/liteav/basic/util/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/tencent/liteav/basic/util/e;-><init>(II)V

    return-object v0
.end method

.method private g()V
    .locals 3

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p0}, Lcom/tencent/liteav/renderer/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TXCVideoRenderThread"

    const-string v2, "init texture render failed."

    .line 130
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p0}, Lcom/tencent/liteav/renderer/a;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TXCVideoRenderThread"

    const-string v2, "destroy texture render failed"

    .line 142
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private i()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/a;->j()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/a;->k()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/renderer/a;

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/a;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 188
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->h:Ljava/lang/Object;

    if-eqz v0, :cond_3

    instance-of v3, v0, Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    check-cast v0, Landroid/opengl/EGLContext;

    iget v3, p0, Lcom/tencent/liteav/renderer/b;->c:I

    iget v4, p0, Lcom/tencent/liteav/renderer/b;->d:I

    invoke-static {v1, v0, v2, v3, v4}, Lcom/tencent/liteav/basic/e/b;->a(Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/liteav/basic/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/renderer/b;->f:Lcom/tencent/liteav/basic/e/b;

    goto :goto_2

    .line 191
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->h:Ljava/lang/Object;

    check-cast v0, Ljavax/microedition/khronos/egl/EGLContext;

    iget v3, p0, Lcom/tencent/liteav/renderer/b;->c:I

    iget v4, p0, Lcom/tencent/liteav/renderer/b;->d:I

    invoke-static {v1, v0, v2, v3, v4}, Lcom/tencent/liteav/basic/e/a;->a(Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;Landroid/view/Surface;II)Lcom/tencent/liteav/basic/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/renderer/b;->g:Lcom/tencent/liteav/basic/e/a;

    .line 196
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vrender: init egl share context "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/renderer/b;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", create context"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/b;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVideoRenderThread"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/b;->e()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vrender: uninit egl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/b;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVideoRenderThread"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->g:Lcom/tencent/liteav/basic/e/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/a;->c()V

    .line 206
    iput-object v1, p0, Lcom/tencent/liteav/renderer/b;->g:Lcom/tencent/liteav/basic/e/a;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->f:Lcom/tencent/liteav/basic/e/b;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/b;->d()V

    .line 210
    iput-object v1, p0, Lcom/tencent/liteav/renderer/b;->f:Lcom/tencent/liteav/basic/e/b;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->g:Lcom/tencent/liteav/basic/e/a;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/a;->d()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->f:Lcom/tencent/liteav/basic/e/b;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/b;->f()Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/tencent/liteav/renderer/b;->h:Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/b;->b:Z

    .line 98
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/b;->c()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->g:Lcom/tencent/liteav/basic/e/a;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/a;->a()Z

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->f:Lcom/tencent/liteav/basic/e/b;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/b;->e()Z

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->g:Lcom/tencent/liteav/basic/e/a;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/a;->b()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->f:Lcom/tencent/liteav/basic/e/b;

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/b;->b()V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 4

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VRender-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/b;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/renderer/b;->setName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 46
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/b;->b:Z

    .line 47
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/b;->k()V

    .line 49
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/b;->g()V

    .line 51
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/b;->i()V

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/b;->b:Z

    if-eqz v0, :cond_3

    .line 53
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/b;->f()Lcom/tencent/liteav/basic/util/e;

    move-result-object v0

    .line 54
    iget v1, v0, Lcom/tencent/liteav/basic/util/e;->a:I

    iget v0, v0, Lcom/tencent/liteav/basic/util/e;->b:I

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/renderer/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/renderer/a;

    :goto_0
    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/a;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/b;->d()V

    .line 61
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/renderer/b;->e:Ljava/util/concurrent/Semaphore;

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 63
    :cond_3
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/b;->j()V

    .line 64
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/b;->h()V

    .line 65
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/b;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "TXCVideoRenderThread"

    const-string v2, "render failed."

    .line 67
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    return-void

    .line 69
    :goto_3
    throw v0
.end method
