.class public Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
.super Ljava/lang/Object;
.source "ImageDecodeOptions.java"


# static fields
.field private static final DEFAULTS:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;


# instance fields
.field public final backgroundColor:I

.field public final decodeAllFrames:Z

.field public final decodePreviewFrame:Z

.field public final forceOldAnimationCode:Z

.field public final forceStaticImage:Z

.field public final minDecodeIntervalMs:I

.field public final useLastFrameForPreview:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    invoke-static {}, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->newBuilder()Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->build()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->DEFAULTS:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->getMinDecodeIntervalMs()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->minDecodeIntervalMs:I

    .line 65
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->backgroundColor:I

    .line 66
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->getForceOldAnimationCode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->forceOldAnimationCode:Z

    .line 67
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->getDecodePreviewFrame()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->decodePreviewFrame:Z

    .line 68
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->getUseLastFrameForPreview()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->useLastFrameForPreview:Z

    .line 69
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->getDecodeAllFrames()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->decodeAllFrames:Z

    .line 70
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;->getForceStaticImage()Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->forceStaticImage:Z

    return-void
.end method

.method public static defaults()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .locals 1

    .line 79
    sget-object v0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->DEFAULTS:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    return-object v0
.end method

.method public static newBuilder()Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;
    .locals 1

    .line 88
    new-instance v0, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/common/ImageDecodeOptionsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    check-cast p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 98
    iget v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->backgroundColor:I

    iget v3, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->backgroundColor:I

    if-eq v2, v3, :cond_2

    return v1

    .line 99
    :cond_2
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->forceOldAnimationCode:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->forceOldAnimationCode:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 100
    :cond_3
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->decodePreviewFrame:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->decodePreviewFrame:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 101
    :cond_4
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->useLastFrameForPreview:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->useLastFrameForPreview:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 102
    :cond_5
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->decodeAllFrames:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->decodeAllFrames:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 103
    :cond_6
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->forceStaticImage:Z

    iget-boolean p1, p1, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->forceStaticImage:Z

    if-eq v2, p1, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 110
    iget v0, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->backgroundColor:I

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->forceOldAnimationCode:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 117
    check-cast v0, Ljava/util/Locale;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->minDecodeIntervalMs:I

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->backgroundColor:I

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->forceOldAnimationCode:Z

    .line 122
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->decodePreviewFrame:Z

    .line 123
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->useLastFrameForPreview:Z

    .line 124
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->decodeAllFrames:Z

    .line 125
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->forceStaticImage:Z

    .line 126
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "%d-%d-%b-%b-%b-%b-%b"

    .line 117
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
