.class Lcom/tencent/liteav/videoencoder/b$9;
.super Ljava/lang/Object;
.source "TXCHWVideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videoencoder/b;->signalEOSAndFlush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videoencoder/b;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoencoder/b;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b$9;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$9;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->k(Lcom/tencent/liteav/videoencoder/b;)Landroid/media/MediaCodec;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 387
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$9;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->k(Lcom/tencent/liteav/videoencoder/b;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TXCHWVideoEncoder"

    const-string v2, "signalEndOfInputStream failed."

    .line 390
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$9;->a:Lcom/tencent/liteav/videoencoder/b;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoencoder/b;->c(Lcom/tencent/liteav/videoencoder/b;I)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$9;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/b;)V

    return-void
.end method
