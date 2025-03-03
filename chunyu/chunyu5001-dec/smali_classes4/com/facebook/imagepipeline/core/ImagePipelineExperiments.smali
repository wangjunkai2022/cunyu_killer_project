.class public Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    }
.end annotation


# instance fields
.field private mDecodeFileDescriptorEnabled:Z

.field private final mForceSmallCacheThresholdBytes:I

.field private final mThrottlingMaxSimultaneousRequests:I

.field private final mWebpSupportEnabled:Z


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$000(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mForceSmallCacheThresholdBytes:I

    .line 29
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$100(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/facebook/common/webp/WebpSupportStatus;->sWebpLibraryPresent:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mWebpSupportEnabled:Z

    .line 30
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->isDownsampleEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 31
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$200(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mDecodeFileDescriptorEnabled:Z

    .line 32
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;->access$300(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;)I

    move-result p1

    iput p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mThrottlingMaxSimultaneousRequests:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    return-void
.end method

.method public static newBuilder(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .locals 1

    .line 53
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    return-object v0
.end method


# virtual methods
.method public getForceSmallCacheThresholdBytes()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mForceSmallCacheThresholdBytes:I

    return v0
.end method

.method public getThrottlingMaxSimultaneousRequests()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mThrottlingMaxSimultaneousRequests:I

    return v0
.end method

.method public isDecodeFileDescriptorEnabled()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mDecodeFileDescriptorEnabled:Z

    return v0
.end method

.method public isWebpSupportEnabled()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments;->mWebpSupportEnabled:Z

    return v0
.end method
