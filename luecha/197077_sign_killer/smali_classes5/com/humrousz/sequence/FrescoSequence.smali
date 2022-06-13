.class public Lcom/humrousz/sequence/FrescoSequence;
.super Lcom/humrousz/sequence/BaseAnimationSequence;
.source "FrescoSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/humrousz/sequence/FrescoSequence$FrescoGifSequenceFactory;,
        Lcom/humrousz/sequence/FrescoSequence$FrescoWebpSequenceFactory;,
        Lcom/humrousz/sequence/FrescoSequence$ImageType;
    }
.end annotation


# static fields
.field public static final GIF:I = 0x2

.field public static final WEBP:I = 0x1


# instance fields
.field private mWebpImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;


# direct methods
.method private constructor <init>(IIII)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/humrousz/sequence/BaseAnimationSequence;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;)V
    .locals 4

    .line 34
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getHeight()I

    move-result v1

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrameCount()I

    move-result v2

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getLoopCount()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/humrousz/sequence/FrescoSequence;-><init>(IIII)V

    .line 35
    iput-object p1, p0, Lcom/humrousz/sequence/FrescoSequence;->mWebpImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    return-void
.end method

.method public static decodeGifPByteArray([B)Lcom/humrousz/sequence/FrescoSequence;
    .locals 1

    .line 83
    new-instance v0, Lcom/humrousz/sequence/FrescoSequence;

    invoke-static {p0}, Lcom/facebook/animated/gif/GifImage;->create([B)Lcom/facebook/animated/gif/GifImage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/humrousz/sequence/FrescoSequence;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;)V

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;I)Lcom/humrousz/sequence/FrescoSequence;
    .locals 4

    .line 56
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 60
    :goto_0
    :try_start_0
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    .line 61
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 72
    invoke-static {p0}, Lcom/humrousz/sequence/FrescoSequence;->decodeWebPByteArray([B)Lcom/humrousz/sequence/FrescoSequence;

    move-result-object p0

    return-object p0

    .line 70
    :cond_1
    invoke-static {p0}, Lcom/humrousz/sequence/FrescoSequence;->decodeGifPByteArray([B)Lcom/humrousz/sequence/FrescoSequence;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static decodeWebPByteArray([B)Lcom/humrousz/sequence/FrescoSequence;
    .locals 1

    .line 79
    new-instance v0, Lcom/humrousz/sequence/FrescoSequence;

    invoke-static {p0}, Lcom/facebook/animated/webp/WebPImage;->create([B)Lcom/facebook/animated/webp/WebPImage;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/humrousz/sequence/FrescoSequence;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedImage;)V

    return-object v0
.end method

.method public static getSequenceFactory(I)Lcom/humrousz/sequence/BaseSequenceFactory;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 102
    new-instance p0, Lcom/humrousz/sequence/FrescoSequence$FrescoGifSequenceFactory;

    invoke-direct {p0}, Lcom/humrousz/sequence/FrescoSequence$FrescoGifSequenceFactory;-><init>()V

    return-object p0

    .line 104
    :cond_0
    new-instance p0, Lcom/humrousz/sequence/FrescoSequence$FrescoWebpSequenceFactory;

    invoke-direct {p0}, Lcom/humrousz/sequence/FrescoSequence$FrescoWebpSequenceFactory;-><init>()V

    return-object p0
.end method


# virtual methods
.method public getFrame(ILandroid/graphics/Bitmap;I)J
    .locals 2

    .line 44
    iget-object p3, p0, Lcom/humrousz/sequence/FrescoSequence;->mWebpImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {p3, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrame(I)Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;

    move-result-object p3

    .line 45
    iget-object v0, p0, Lcom/humrousz/sequence/FrescoSequence;->mWebpImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/humrousz/sequence/FrescoSequence;->mWebpImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getHeight()I

    move-result v1

    invoke-interface {p3, v0, v1, p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->renderFrame(IILandroid/graphics/Bitmap;)V

    .line 46
    iget-object p2, p0, Lcom/humrousz/sequence/FrescoSequence;->mWebpImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrameCount()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lcom/humrousz/sequence/FrescoSequence;->mWebpImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrameCount()I

    move-result p2

    rem-int/2addr p1, p2

    .line 47
    iget-object p2, p0, Lcom/humrousz/sequence/FrescoSequence;->mWebpImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getFrame(I)Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;->getDurationMs()I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
