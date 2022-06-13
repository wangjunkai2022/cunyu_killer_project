.class public Lcom/facebook/imagepipeline/decoder/ImageDecoder;
.super Ljava/lang/Object;
.source "ImageDecoder.java"


# instance fields
.field private final mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

.field private final mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final mPlatformDecoder:Lcom/facebook/imagepipeline/platform/PlatformDecoder;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;Lcom/facebook/imagepipeline/platform/PlatformDecoder;Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    .line 56
    iput-object p3, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 57
    iput-object p2, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->mPlatformDecoder:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    return-void
.end method


# virtual methods
.method public decodeAnimatedWebp(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    iget-object v1, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, p1, p2, v1}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;->decodeWebP(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    return-object p1
.end method

.method public decodeGif(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 3

    .line 107
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 112
    :cond_0
    :try_start_0
    iget-boolean v1, p2, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->forceStaticImage:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    if-eqz v1, :cond_1

    .line 114
    invoke-static {v0}, Lcom/facebook/imageformat/GifFormatChecker;->isAnimated(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    iget-object v2, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-interface {v1, p1, p2, v2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;->decodeGif(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    .line 117
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decodeStaticImage(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/facebook/common/internal/Closeables;->closeQuietly(Ljava/io/InputStream;)V

    throw p1
.end method

.method public decodeImage(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;
    .locals 2

    .line 74
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getImageFormat()Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    if-ne v0, v1, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/facebook/imageformat/ImageFormatChecker;->getImageFormat_WrapIOException(Ljava/io/InputStream;)Lcom/facebook/imageformat/ImageFormat;

    move-result-object v0

    .line 80
    :cond_1
    sget-object v1, Lcom/facebook/imagepipeline/decoder/ImageDecoder$1;->$SwitchMap$com$facebook$imageformat$ImageFormat:[I

    invoke-virtual {v0}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 p2, 0x3

    if-eq v0, p2, :cond_3

    const/4 p2, 0x4

    if-eq v0, p2, :cond_2

    .line 94
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decodeStaticImage(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object p1

    return-object p1

    .line 91
    :cond_2
    invoke-virtual {p0, p1, p4}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decodeAnimatedWebp(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    return-object p1

    .line 88
    :cond_3
    invoke-virtual {p0, p1, p4}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decodeGif(Lcom/facebook/imagepipeline/image/EncodedImage;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;)Lcom/facebook/imagepipeline/image/CloseableImage;

    move-result-object p1

    return-object p1

    .line 85
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->decodeJpeg(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    move-result-object p1

    return-object p1

    .line 82
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unknown image format"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decodeJpeg(Lcom/facebook/imagepipeline/image/EncodedImage;ILcom/facebook/imagepipeline/image/QualityInfo;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->mPlatformDecoder:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    iget-object v1, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 154
    invoke-interface {v0, p1, v1, p2}, Lcom/facebook/imagepipeline/platform/PlatformDecoder;->decodeJPEGFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/CloseableReference;

    move-result-object p2

    .line 156
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    .line 159
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result p1

    invoke-direct {v0, p2, p3, p1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;-><init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->close()V

    throw p1
.end method

.method public decodeStaticImage(Lcom/facebook/imagepipeline/image/EncodedImage;)Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->mPlatformDecoder:Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    iget-object v1, p0, Lcom/facebook/imagepipeline/decoder/ImageDecoder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 130
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/platform/PlatformDecoder;->decodeFromEncodedImage(Lcom/facebook/imagepipeline/image/EncodedImage;Landroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 132
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    sget-object v2, Lcom/facebook/imagepipeline/image/ImmutableQualityInfo;->FULL_QUALITY:Lcom/facebook/imagepipeline/image/QualityInfo;

    .line 135
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getRotationAngle()I

    move-result p1

    invoke-direct {v1, v0, v2, p1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;-><init>(Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/image/QualityInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    throw p1
.end method
