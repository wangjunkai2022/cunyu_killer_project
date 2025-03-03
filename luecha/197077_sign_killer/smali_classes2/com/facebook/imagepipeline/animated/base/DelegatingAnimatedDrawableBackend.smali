.class public abstract Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;
.super Ljava/lang/Object;
.source "DelegatingAnimatedDrawableBackend.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;


# instance fields
.field private final mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    return-void
.end method


# virtual methods
.method public dropCaches()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->dropCaches()V

    return-void
.end method

.method public getAnimatedImageResult()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getAnimatedImageResult()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    move-result-object v0

    return-object v0
.end method

.method protected getDelegate()Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    return-object v0
.end method

.method public getDurationMs()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getDurationMs()I

    move-result v0

    return v0
.end method

.method public getDurationMsForFrame(I)I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getDurationMsForFrame(I)I

    move-result p1

    return p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getFrameForPreview()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameForPreview()I

    move-result v0

    return v0
.end method

.method public getFrameForTimestampMs(I)I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameForTimestampMs(I)I

    move-result p1

    return p1
.end method

.method public getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object p1

    return-object p1
.end method

.method public getHeight()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getLoopCount()I

    move-result v0

    return v0
.end method

.method public getMemoryUsage()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public getPreDecodedFrame(I)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getPreDecodedFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method public getRenderedHeight()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getRenderedHeight()I

    move-result v0

    return v0
.end method

.method public getRenderedWidth()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getRenderedWidth()I

    move-result v0

    return v0
.end method

.method public getTimestampMsForFrame(I)I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getTimestampMsForFrame(I)I

    move-result p1

    return p1
.end method

.method public getWidth()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getWidth()I

    move-result v0

    return v0
.end method

.method public hasPreDecodedFrame(I)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->hasPreDecodedFrame(I)Z

    move-result p1

    return p1
.end method

.method public renderFrame(ILandroid/graphics/Canvas;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->renderFrame(ILandroid/graphics/Canvas;)V

    return-void
.end method
