.class Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$i;


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

    .line 703
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V
    .locals 3

    const-string p1, "TXCVodVideoView"

    const-string v0, "seek complete"

    .line 707
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;Z)Z

    .line 710
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$3;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/16 v0, 0x7e3

    const-string v1, "seek\u5b8c\u6210"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
