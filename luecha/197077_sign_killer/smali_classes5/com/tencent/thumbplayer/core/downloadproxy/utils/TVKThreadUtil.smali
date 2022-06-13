.class public Lcom/tencent/thumbplayer/core/downloadproxy/utils/TVKThreadUtil;
.super Ljava/lang/Object;
.source "TVKThreadUtil.java"


# static fields
.field private static volatile mScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScheduledExecutorServiceInstance()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 19
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TVKThreadUtil;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TVKThreadUtil;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TVKThreadUtil;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 22
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TVKThreadUtil;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TVKThreadUtil;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
