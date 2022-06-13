.class Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$c;


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

    .line 615
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;II)Z
    .locals 6

    .line 617
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCVodVideoView"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 619
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    const/16 p1, -0x3f2

    const/4 v0, 0x1

    const-string v1, "disconnect"

    const-string v2, "Disconnected from the network. Playback error"

    const/16 v3, -0x8fd

    if-eq p2, p1, :cond_3

    const/16 p1, -0x3ef

    if-eq p2, p1, :cond_3

    const/16 p1, -0x3ec

    if-eq p2, p1, :cond_3

    const/16 p1, 0xc8

    if-eq p2, p1, :cond_3

    .line 639
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {p3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getCurrentPosition()J

    move-result-wide v4

    cmp-long p1, p1, v4

    if-eqz p1, :cond_0

    .line 640
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 642
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getCurrentPosition()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;J)J

    .line 643
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->r(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/liteav/txcplayer/h;->a()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 644
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 645
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x66

    iget-object p3, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tencent/liteav/txcplayer/h;->b()F

    move-result p3

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p3, v1

    float-to-long v1, p3

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 648
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1, v3, v2, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/16 p1, -0x8ff

    if-ne p3, p1, :cond_4

    .line 627
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const-string p2, "The file does not exist"

    const-string v1, "file not exist"

    invoke-static {p1, p3, p2, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 629
    :cond_4
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1, v3, v2, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    .line 631
    :goto_1
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$10;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c()V

    return v0
.end method
