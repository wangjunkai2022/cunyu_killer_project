.class Lcom/tencent/liteav/renderer/e$1;
.super Ljava/lang/Object;
.source "TXCVideoRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/basic/e/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Matrix;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Landroid/view/TextureView;

.field final synthetic d:Lcom/tencent/liteav/basic/e/k;

.field final synthetic e:Lcom/tencent/liteav/renderer/e;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/renderer/e;Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/view/TextureView;Lcom/tencent/liteav/basic/e/k;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/tencent/liteav/renderer/e$1;->e:Lcom/tencent/liteav/renderer/e;

    iput-object p2, p0, Lcom/tencent/liteav/renderer/e$1;->a:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/tencent/liteav/renderer/e$1;->b:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/tencent/liteav/renderer/e$1;->c:Landroid/view/TextureView;

    iput-object p5, p0, Lcom/tencent/liteav/renderer/e$1;->d:Lcom/tencent/liteav/basic/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "takePhoto error "

    const-string v1, "TXCVideoRender"

    const/4 v2, 0x0

    .line 177
    :try_start_0
    iget-object v3, p0, Lcom/tencent/liteav/renderer/e$1;->e:Lcom/tencent/liteav/renderer/e;

    iget-object v4, p0, Lcom/tencent/liteav/renderer/e$1;->a:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/tencent/liteav/renderer/e$1;->b:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/tencent/liteav/renderer/e$1;->c:Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/TextureView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/tencent/liteav/renderer/e$1;->c:Landroid/view/TextureView;

    invoke-virtual {v7}, Landroid/view/TextureView;->getHeight()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/tencent/liteav/renderer/e;->a(Lcom/tencent/liteav/renderer/e;Landroid/graphics/Matrix;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e$1;->d:Lcom/tencent/liteav/basic/e/k;

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0, v2}, Lcom/tencent/liteav/basic/e/k;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
