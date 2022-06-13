.class Lcom/tencent/liteav/network/i$1;
.super Landroid/os/Handler;
.source "TXCVodPlayerNetApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/network/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/network/i;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/i;Landroid/os/Looper;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tencent/liteav/network/i$1;->a:Lcom/tencent/liteav/network/i;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/tencent/liteav/network/i$1;->a:Lcom/tencent/liteav/network/i;

    iget-object v0, v0, Lcom/tencent/liteav/network/i;->a:Lcom/tencent/liteav/network/j;

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/network/i$1;->a:Lcom/tencent/liteav/network/i;

    iget-object v0, v0, Lcom/tencent/liteav/network/i;->a:Lcom/tencent/liteav/network/j;

    iget-object v1, p0, Lcom/tencent/liteav/network/i$1;->a:Lcom/tencent/liteav/network/i;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, p1}, Lcom/tencent/liteav/network/j;->onNetFailed(Lcom/tencent/liteav/network/i;Ljava/lang/String;I)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/network/i$1;->a:Lcom/tencent/liteav/network/i;

    iget-object p1, p1, Lcom/tencent/liteav/network/i;->a:Lcom/tencent/liteav/network/j;

    iget-object v0, p0, Lcom/tencent/liteav/network/i$1;->a:Lcom/tencent/liteav/network/i;

    invoke-interface {p1, v0}, Lcom/tencent/liteav/network/j;->onNetSuccess(Lcom/tencent/liteav/network/i;)V

    :goto_0
    return-void
.end method
