.class Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$k;


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

    .line 675
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V
    .locals 3

    const-string p1, "TXCVodVideoView"

    const-string v0, "onVideoDecoderError"

    .line 678
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->i(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 680
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/16 v0, 0x83a

    const-string v1, "VOD decoding failed"

    const-string v2, "decode fail"

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->q(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 683
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result p1

    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0x438

    if-lt p1, v0, :cond_1

    return-void

    .line 685
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/h;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 686
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->j(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/h;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcplayer/h;->a(Z)V

    .line 687
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$14;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->r(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)V

    :cond_2
    return-void
.end method
