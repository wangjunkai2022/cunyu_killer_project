.class Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;
.super Ljava/lang/Object;
.source "TXCVodVideoView.java"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/ITXVCubePlayer$f;


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

    .line 667
    iput-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/txcplayer/ITXVCubePlayer;)V
    .locals 3

    const-string p1, "TXCVodVideoView"

    const-string v0, "onHevcVideoDecoderError"

    .line 670
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object p1, p0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView$13;->a:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/16 v0, -0x900

    const-string v1, "Vod H265 decoding failed"

    const-string v2, "hevc decode fail"

    invoke-static {p1, v0, v1, v2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
