.class Lcom/tencent/liteav/videodecoder/f$6;
.super Ljava/lang/Object;
.source "TXCVideoMediaCodecDecoderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videodecoder/f;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/tencent/liteav/videodecoder/f;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videodecoder/f;II)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/f$6;->c:Lcom/tencent/liteav/videodecoder/f;

    iput p2, p0, Lcom/tencent/liteav/videodecoder/f$6;->a:I

    iput p3, p0, Lcom/tencent/liteav/videodecoder/f$6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$6;->c:Lcom/tencent/liteav/videodecoder/f;

    iget v1, p0, Lcom/tencent/liteav/videodecoder/f$6;->a:I

    iget v2, p0, Lcom/tencent/liteav/videodecoder/f$6;->b:I

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/videodecoder/f;->a(Lcom/tencent/liteav/videodecoder/f;II)V

    return-void
.end method
