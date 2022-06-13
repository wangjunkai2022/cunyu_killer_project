.class Lcom/tencent/liteav/videodecoder/f$3;
.super Ljava/lang/Object;
.source "TXCVideoMediaCodecDecoderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videodecoder/f;->config(Landroid/view/Surface;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Surface;

.field final synthetic b:Lcom/tencent/liteav/videodecoder/f;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videodecoder/f;Landroid/view/Surface;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/f$3;->b:Lcom/tencent/liteav/videodecoder/f;

    iput-object p2, p0, Lcom/tencent/liteav/videodecoder/f$3;->a:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$3;->b:Lcom/tencent/liteav/videodecoder/f;

    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/f$3;->a:Landroid/view/Surface;

    invoke-static {v0, v1}, Lcom/tencent/liteav/videodecoder/f;->a(Lcom/tencent/liteav/videodecoder/f;Landroid/view/Surface;)I

    return-void
.end method
