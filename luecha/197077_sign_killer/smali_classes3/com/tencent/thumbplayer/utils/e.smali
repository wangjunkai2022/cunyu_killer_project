.class public Lcom/tencent/thumbplayer/utils/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Z

.field private c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/utils/e;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/utils/e;->b:Z

    iput-object v0, p0, Lcom/tencent/thumbplayer/utils/e;->c:Ljava/lang/Throwable;

    return-void
.end method

.method private b(J)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    sub-long/2addr p1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResult wait has InterruptedException, remainTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TPFutureResult"

    invoke-static {v4, v3}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/utils/e;->b:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/utils/e;->b(J)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/utils/e;->c:Ljava/lang/Throwable;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tencent/thumbplayer/utils/e;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/tencent/thumbplayer/utils/e;->c:Ljava/lang/Throwable;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/utils/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/tencent/thumbplayer/utils/e;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/thumbplayer/utils/e;->b:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Throwable;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/utils/e;->c:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/thumbplayer/utils/e;->b:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
