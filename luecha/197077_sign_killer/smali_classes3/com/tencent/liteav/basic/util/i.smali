.class public Lcom/tencent/liteav/basic/util/i;
.super Ljava/lang/Object;
.source "TXCThread.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Looper;

.field private c:Z

.field private d:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/tencent/liteav/basic/util/i;->c:Z

    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/basic/util/i;->b:Landroid/os/Looper;

    .line 18
    new-instance p1, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/liteav/basic/util/i;->b:Landroid/os/Looper;

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/liteav/basic/util/i;->a:Landroid/os/Handler;

    .line 19
    iput-object v0, p0, Lcom/tencent/liteav/basic/util/i;->d:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/util/i;)Landroid/os/Handler;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/tencent/liteav/basic/util/i;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/i;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/basic/util/i;->d:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/basic/util/i;->a:Landroid/os/Handler;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    aput-boolean v2, v0, v2

    .line 50
    iget-object v3, p0, Lcom/tencent/liteav/basic/util/i;->a:Landroid/os/Handler;

    new-instance v4, Lcom/tencent/liteav/basic/util/i$1;

    invoke-direct {v4, p0, p1, v0}, Lcom/tencent/liteav/basic/util/i$1;-><init>(Lcom/tencent/liteav/basic/util/i;Ljava/lang/Runnable;[Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    :catch_0
    :goto_0
    aget-boolean p1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 62
    :try_start_1
    iget-object p1, p0, Lcom/tencent/liteav/basic/util/i;->a:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :cond_1
    :try_start_2
    monitor-exit v1

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/i;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/i;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    iget-boolean v0, p0, Lcom/tencent/liteav/basic/util/i;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/basic/util/i;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 39
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
