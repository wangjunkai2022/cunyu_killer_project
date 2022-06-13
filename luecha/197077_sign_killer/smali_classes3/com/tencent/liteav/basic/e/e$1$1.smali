.class Lcom/tencent/liteav/basic/e/e$1$1;
.super Ljava/lang/Object;
.source "TXCGLThreadHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/basic/e/e$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/basic/e/e$1;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/basic/e/e$1;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/tencent/liteav/basic/e/e$1$1;->a:Lcom/tencent/liteav/basic/e/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/e$1$1;->a:Lcom/tencent/liteav/basic/e/e$1;

    iget-object v0, v0, Lcom/tencent/liteav/basic/e/e$1;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/e$1$1;->a:Lcom/tencent/liteav/basic/e/e$1;

    iget-object v0, v0, Lcom/tencent/liteav/basic/e/e$1;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/e$1$1;->a:Lcom/tencent/liteav/basic/e/e$1;

    iget-object v0, v0, Lcom/tencent/liteav/basic/e/e$1;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 71
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/e$1$1;->a:Lcom/tencent/liteav/basic/e/e$1;

    iget-object v0, v0, Lcom/tencent/liteav/basic/e/e$1;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/e$1$1;->a:Lcom/tencent/liteav/basic/e/e$1;

    iget-object v0, v0, Lcom/tencent/liteav/basic/e/e$1;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_2
    :goto_0
    return-void
.end method
