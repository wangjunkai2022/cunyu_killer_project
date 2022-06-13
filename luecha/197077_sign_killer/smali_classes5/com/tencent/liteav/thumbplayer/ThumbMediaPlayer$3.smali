.class Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$3;
.super Ljava/lang/Object;
.source "ThumbMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$3;->this$0:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$3;->this$0:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    invoke-static {v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->access$000(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)Lcom/tencent/thumbplayer/api/ITPPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 464
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
