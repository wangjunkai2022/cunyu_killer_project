.class public abstract Lcom/facebook/imagepipeline/request/BasePostprocessor;
.super Ljava/lang/Object;
.source "BasePostprocessor.java"

# interfaces
.implements Lcom/facebook/imagepipeline/request/Postprocessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Unknown postprocessor"

    return-object v0
.end method

.method public getPostprocessorCacheKey()Lcom/facebook/cache/common/CacheKey;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public process(Landroid/graphics/Bitmap;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;)Lcom/facebook/common/references/CloseableReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 51
    invoke-virtual {p2, v0, v1, v2}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p2

    .line 56
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/facebook/imagepipeline/request/BasePostprocessor;->process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 57
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw p1
.end method

.method public process(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public process(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 79
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->copyBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/request/BasePostprocessor;->process(Landroid/graphics/Bitmap;)V

    return-void
.end method
