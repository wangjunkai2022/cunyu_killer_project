.class Lcom/tencent/liteav/videodecoder/f$8;
.super Ljava/lang/Object;
.source "TXCVideoMediaCodecDecoderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videodecoder/f;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/videodecoder/f;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videodecoder/f;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/f$8;->a:Lcom/tencent/liteav/videodecoder/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$8;->a:Lcom/tencent/liteav/videodecoder/f;

    const-string v1, "stop decoder."

    invoke-static {v0, v1}, Lcom/tencent/liteav/videodecoder/f;->a(Lcom/tencent/liteav/videodecoder/f;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$8;->a:Lcom/tencent/liteav/videodecoder/f;

    invoke-static {v0}, Lcom/tencent/liteav/videodecoder/f;->h(Lcom/tencent/liteav/videodecoder/f;)V

    .line 137
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$8;->a:Lcom/tencent/liteav/videodecoder/f;

    const-string v1, "stop decoder finish."

    invoke-static {v0, v1}, Lcom/tencent/liteav/videodecoder/f;->a(Lcom/tencent/liteav/videodecoder/f;Ljava/lang/String;)V

    return-void
.end method
