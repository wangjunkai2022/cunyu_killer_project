.class Lcom/tencent/liteav/videoencoder/b$4;
.super Ljava/lang/Object;
.source "TXCHWVideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videoencoder/b;->stop()V
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

    .line 117
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b$4;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$4;->a:Lcom/tencent/liteav/videoencoder/b;

    iget-boolean v0, v0, Lcom/tencent/liteav/videoencoder/b;->mInit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 122
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b$4;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/tencent/liteav/videoencoder/b$4;->a:Lcom/tencent/liteav/videoencoder/b;

    iget v4, v4, Lcom/tencent/liteav/videoencoder/b;->mStreamType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "VideoEncoder[%d]: Stop, streamType:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "streamType: 2-big, 3-small, 7-sub"

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 124
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$4;->a:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/b;)V

    :cond_0
    return-void
.end method
