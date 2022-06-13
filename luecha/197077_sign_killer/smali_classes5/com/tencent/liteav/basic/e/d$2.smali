.class Lcom/tencent/liteav/basic/e/d$2;
.super Ljava/lang/Object;
.source "TXCGLSurfaceRenderThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/basic/e/d;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/nio/ByteBuffer;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/tencent/liteav/basic/e/k;

.field final synthetic f:Lcom/tencent/liteav/basic/e/d;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/basic/e/d;Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap;IILcom/tencent/liteav/basic/e/k;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/tencent/liteav/basic/e/d$2;->f:Lcom/tencent/liteav/basic/e/d;

    iput-object p2, p0, Lcom/tencent/liteav/basic/e/d$2;->a:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lcom/tencent/liteav/basic/e/d$2;->b:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/tencent/liteav/basic/e/d$2;->c:I

    iput p5, p0, Lcom/tencent/liteav/basic/e/d$2;->d:I

    iput-object p6, p0, Lcom/tencent/liteav/basic/e/d$2;->e:Lcom/tencent/liteav/basic/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 349
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d$2;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 350
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d$2;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/liteav/basic/e/d$2;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 353
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 354
    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 355
    iget-object v2, p0, Lcom/tencent/liteav/basic/e/d$2;->b:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/tencent/liteav/basic/e/d$2;->c:I

    iget v6, p0, Lcom/tencent/liteav/basic/e/d$2;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/tencent/liteav/basic/e/d$2;->e:Lcom/tencent/liteav/basic/e/k;

    invoke-interface {v1, v0}, Lcom/tencent/liteav/basic/e/k;->a(Landroid/graphics/Bitmap;)V

    .line 358
    iget-object v0, p0, Lcom/tencent/liteav/basic/e/d$2;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
