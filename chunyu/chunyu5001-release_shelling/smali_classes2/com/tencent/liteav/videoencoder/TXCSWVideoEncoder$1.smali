.class Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;
.super Ljava/lang/Object;
.source "TXCSWVideoEncoder.java"

# interfaces
.implements Lcom/tencent/liteav/basic/e/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->pushVideoFrameInternal(IIIJZ)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;ZI)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    iput-boolean p2, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->a:Z

    iput p3, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 9

    .line 262
    iget-object p1, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    monitor-enter p1

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    iget-object v0, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mListener:Lcom/tencent/liteav/videoencoder/d;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    iget-object v0, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mListener:Lcom/tencent/liteav/videoencoder/d;

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    iget v1, v1, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mStreamType:I

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videoencoder/d;->b(I)V

    .line 266
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->a:Z

    if-eqz v0, :cond_1

    .line 267
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->access$000(Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;)J

    move-result-wide v2

    iget v4, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->b:I

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    iget v5, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputWidth:I

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    iget v6, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputHeight:I

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->access$100(Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;)J

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->access$200(Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;JIIIJ)I

    goto :goto_0

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->access$000(Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;)J

    move-result-wide v2

    iget v4, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->b:I

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    iget v5, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputWidth:I

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    iget v6, v0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->mOutputHeight:I

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder$1;->c:Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->access$100(Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;)J

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;->access$300(Lcom/tencent/liteav/videoencoder/TXCSWVideoEncoder;JIIIJ)I

    .line 271
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
