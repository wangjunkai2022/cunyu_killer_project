.class Lcom/tencent/liteav/renderer/TXCGLSurfaceView$3;
.super Ljava/lang/Object;
.source "TXCGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->setRendMirror(I)V
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

    .line 127
    iput-object p1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$3;->b:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    iput p2, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$3;->b:Lcom/tencent/liteav/renderer/TXCGLSurfaceView;

    iget v1, p0, Lcom/tencent/liteav/renderer/TXCGLSurfaceView$3;->a:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/renderer/TXCGLSurfaceView;->c(Lcom/tencent/liteav/renderer/TXCGLSurfaceView;I)I

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 131
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 132
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method
