.class Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$d;


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

    .line 710
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V
    .locals 4

    const-string p1, "TXCVodVideoView"

    const-string v0, "onHLSKeyError"

    .line 713
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/16 v1, -0x901

    const-string v2, "HLS decypt key get failed"

    const-string v3, "hls key error"

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHLSKeyError stop Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->u(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;->release()V

    .line 723
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;

    .line 726
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    .line 727
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$4;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-static {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;I)I

    return-void
.end method
