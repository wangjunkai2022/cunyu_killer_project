.class Lcom/tencent/liteav/renderer/TXCGLSurfaceView$1;
.super Ljava/lang/Object;
.source "TXCGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->setFPS(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;I)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$1;->b:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    iput p2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$1;->b:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    iget v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$1;->a:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;I)I

    .line 103
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$1;->b:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$1;->b:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;I)I

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$1;->b:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    invoke-static {v0}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;)I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$1;->b:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    invoke-static {v0, v1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;I)I

    .line 107
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$1;->b:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->a(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;J)J

    .line 108
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$1;->b:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->b(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;J)J

    return-void
.end method
