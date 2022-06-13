.class Lcom/tencent/liteav/videodecoder/f$5;
.super Ljava/lang/Object;
.source "TXCVideoMediaCodecDecoderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videodecoder/f;->enableLimitDecCache(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tencent/liteav/videodecoder/f;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videodecoder/f;Z)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/f$5;->b:Lcom/tencent/liteav/videodecoder/f;

    iput-boolean p2, p0, Lcom/tencent/liteav/videodecoder/f$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$5;->b:Lcom/tencent/liteav/videodecoder/f;

    iget-boolean v1, p0, Lcom/tencent/liteav/videodecoder/f$5;->a:Z

    invoke-static {v0, v1}, Lcom/tencent/liteav/videodecoder/f;->a(Lcom/tencent/liteav/videodecoder/f;Z)V

    return-void
.end method
