.class public Lcom/tencent/liteav/txcplayer/a/a;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "CommonThreadPool.java"


# static fields
.field public static a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>(I)V
    .locals 9

    .line 16
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 18
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v1, 0x1

    const-wide/16 v3, 0x64

    move-object v0, p0

    move v2, p1

    .line 16
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public static declared-synchronized a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 3

    const-class v0, Lcom/tencent/liteav/txcplayer/a/a;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/txcplayer/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/liteav/txcplayer/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    :cond_0
    new-instance v1, Lcom/tencent/liteav/txcplayer/a/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/tencent/liteav/txcplayer/a/a;-><init>(I)V

    sput-object v1, Lcom/tencent/liteav/txcplayer/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 25
    :cond_1
    sget-object v1, Lcom/tencent/liteav/txcplayer/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
