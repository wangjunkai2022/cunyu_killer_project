.class Lcom/tencent/liteav/basic/util/i$1;
.super Ljava/lang/Object;
.source "TXCThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/basic/util/i;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:[Z

.field final synthetic c:Lcom/tencent/liteav/basic/util/i;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/basic/util/i;Ljava/lang/Runnable;[Z)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/tencent/liteav/basic/util/i$1;->c:Lcom/tencent/liteav/basic/util/i;

    iput-object p2, p0, Lcom/tencent/liteav/basic/util/i$1;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/tencent/liteav/basic/util/i$1;->b:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/i$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/i$1;->b:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 55
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/i$1;->c:Lcom/tencent/liteav/basic/util/i;

    invoke-static {v0}, Lcom/tencent/liteav/basic/util/i;->a(Lcom/tencent/liteav/basic/util/i;)Landroid/os/Handler;

    move-result-object v0

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/basic/util/i$1;->c:Lcom/tencent/liteav/basic/util/i;

    invoke-static {v1}, Lcom/tencent/liteav/basic/util/i;->a(Lcom/tencent/liteav/basic/util/i;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
