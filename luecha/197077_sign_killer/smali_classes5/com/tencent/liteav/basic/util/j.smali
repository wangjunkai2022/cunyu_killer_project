.class public Lcom/tencent/liteav/basic/util/j;
.super Landroid/os/Handler;
.source "TXCTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/basic/util/j$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/tencent/liteav/basic/util/j$a;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/tencent/liteav/basic/util/j$a;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/tencent/liteav/basic/util/j;->b:Z

    .line 19
    iput-object p2, p0, Lcom/tencent/liteav/basic/util/j;->c:Lcom/tencent/liteav/basic/util/j$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :goto_0
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/basic/util/j;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/basic/util/j;->removeMessages(I)V

    goto :goto_0

    .line 45
    :cond_0
    iput-boolean v0, p0, Lcom/tencent/liteav/basic/util/j;->b:Z

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/util/j;->a()V

    .line 36
    iput p2, p0, Lcom/tencent/liteav/basic/util/j;->a:I

    const/4 p2, 0x1

    .line 37
    iput-boolean p2, p0, Lcom/tencent/liteav/basic/util/j;->b:Z

    int-to-long p1, p1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/liteav/basic/util/j;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 24
    iget-object p1, p0, Lcom/tencent/liteav/basic/util/j;->c:Lcom/tencent/liteav/basic/util/j$a;

    if-eqz p1, :cond_0

    .line 25
    invoke-interface {p1}, Lcom/tencent/liteav/basic/util/j$a;->onTimeout()V

    .line 28
    :cond_0
    iget-boolean p1, p0, Lcom/tencent/liteav/basic/util/j;->b:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 29
    iget v0, p0, Lcom/tencent/liteav/basic/util/j;->a:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/liteav/basic/util/j;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
