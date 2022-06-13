.class Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V
    .locals 5

    .line 467
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->setSurfaceBufferSize(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TXCVodVideoView"

    const-string v1, "setSurfaceBufferSize succeed"

    .line 468
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v1, :cond_2

    .line 472
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/16 v1, 0x7dd

    const-string v3, "VOD ready"

    const-string v4, "prepared"

    invoke-static {v0, v1, v3, v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0, v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 478
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;J)J

    .line 482
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->h(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 483
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0, v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 484
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0, v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 488
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 489
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 492
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-interface {p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 493
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-interface {p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 495
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p1

    if-eqz p1, :cond_6

    .line 496
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 497
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoSize(II)V

    .line 498
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/tencent/liteav/txcvodplayer/a;->setVideoSampleAspectRatio(II)V

    .line 499
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcvodplayer/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/liteav/txcvodplayer/a;->shouldWaitForResize()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p1

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result v0

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->k(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p1

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 503
    :cond_5
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 504
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b()V

    goto :goto_1

    .line 511
    :cond_6
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->l(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 512
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$7;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b()V

    :cond_7
    :goto_1
    return-void
.end method
