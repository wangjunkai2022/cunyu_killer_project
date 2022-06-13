.class public Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapFactory;
.super Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
.source "HoneycombBitmapFactory.java"


# instance fields
.field private final mJpegGenerator:Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;

.field private final mPurgeableDecoder:Lcom/facebook/imagepipeline/platform/PlatformDecoder;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;Lcom/facebook/imagepipeline/platform/PlatformDecoder;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapFactory;->mJpegGenerator:Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;

    .line 38
    iput-object p2, p0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapFactory;->mPurgeableDecoder:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    return-void
.end method


# virtual methods
.method public createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapFactory;->mJpegGenerator:Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;

    int-to-short p1, p1

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/bitmaps/EmptyJpegGenerator;->generate(SS)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    .line 61
    :try_start_0
    new-instance p2, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-direct {p2, p1}, Lcom/facebook/imagepipeline/image/EncodedImage;-><init>(Lcom/facebook/common/references/CloseableReference;)V

    .line 62
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    invoke-virtual {p2, v0}, Lcom/facebook/imagepipeline/image/EncodedImage;->setImageFormat(Lcom/facebook/imageformat/ImageFormat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/HoneycombBitmapFactory;->mPurgeableDecoder:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    .line 65
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/memory/PooledByteBuffer;->size()I

    move-result v1

    .line 64
    invoke-interface {v0, p2, p3, v1}, Lcom/facebook/imagepipeline/platform/PlatformDecoder;->decodeJPEGFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/CloseableReference;

    move-result-object p3

    .line 66
    invoke-virtual {p3}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    return-object p3

    :catchall_0
    move-exception p3

    .line 69
    :try_start_3
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/EncodedImage;->closeSafely(Lcom/facebook/imagepipeline/image/EncodedImage;)V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 72
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->close()V

    throw p2
.end method
