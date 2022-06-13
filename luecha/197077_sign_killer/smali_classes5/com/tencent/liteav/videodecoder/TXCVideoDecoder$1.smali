.class Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$1;
.super Ljava/lang/Object;
.source "TXCVideoDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;->uninitializeHWDecoderThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;Landroid/os/Handler;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$1;->b:Lcom/tencent/liteav/videodecoder/TXCVideoDecoder;

    iput-object p2, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/TXCVideoDecoder$1;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
