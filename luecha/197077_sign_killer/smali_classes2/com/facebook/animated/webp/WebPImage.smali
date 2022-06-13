.class public Lcom/facebook/animated/webp/WebPImage;
.super Ljava/lang/Object;
.source "WebPImage.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
.implements Lcom/facebook/imagepipeline/animated/factory/AnimatedImageDecoder;


# static fields
.field private static volatile sInitialized:Z


# instance fields
.field private mNativeContext:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Lcom/facebook/animated/webp/WebPImage;->mNativeContext:J

    return-void
.end method

.method public static create(JI)Lcom/facebook/animated/webp/WebPImage;
    .locals 2

    .line 95
    invoke-static {}, Lcom/facebook/animated/webp/WebPImage;->ensure()V

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 97
    invoke-static {p0, p1, p2}, Lcom/facebook/animated/webp/WebPImage;->nativeCreateFromNativeMemory(JI)Lcom/facebook/animated/webp/WebPImage;

    move-result-object p0

    return-object p0
.end method

.method public static create([B)Lcom/facebook/animated/webp/WebPImage;
    .locals 1

    .line 84
    invoke-static {}, Lcom/facebook/animated/webp/WebPImage;->ensure()V

    .line 85
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 91
    invoke-static {v0}, Lcom/facebook/animated/webp/WebPImage;->nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lcom/facebook/animated/webp/WebPImage;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized ensure()V
    .locals 2

    const-class v0, Lcom/facebook/animated/webp/WebPImage;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-boolean v1, Lcom/facebook/animated/webp/WebPImage;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string/jumbo v1, "webp"

    .line 44
    invoke-static {v1}, Lcom/facebook/common/soloader/SoLoaderShim;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    const-string/jumbo v1, "webpimage"

    .line 48
    invoke-static {v1}, Lcom/facebook/common/soloader/SoLoaderShim;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 49
    sput-boolean v1, Lcom/facebook/animated/webp/WebPImage;->sInitialized:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native nativeCreateFromDirectByteBuffer(Ljava/nio/ByteBuffer;)Lcom/facebook/animated/webp/WebPImage;
.end method

.method private static native nativeCreateFromNativeMemory(JI)Lcom/facebook/animated/webp/WebPImage;
.end method

.method private native nativeDispose()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetDuration()I
.end method

.method private native nativeGetFrame(I)Lcom/facebook/animated/webp/WebPFrame;
.end method

.method private native nativeGetFrameCount()I
.end method

.method private native nativeGetFrameDurations()[I
.end method

.method private native nativeGetHeight()I
.end method

.method private native nativeGetLoopCount()I
.end method

.method private native nativeGetSizeInBytes()I
.end method

.method private native nativeGetWidth()I
.end method


# virtual methods
.method public decode(JI)Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    .locals 0

    .line 102
    invoke-static {p1, p2, p3}, Lcom/facebook/animated/webp/WebPImage;->create(JI)Lcom/facebook/animated/webp/WebPImage;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeDispose()V

    return-void
.end method

.method public doesRenderSupportScaling()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeFinalize()V

    return-void
.end method

.method public getDuration()I
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeGetDuration()I

    move-result v0

    return v0
.end method

.method public getFrame(I)Lcom/facebook/animated/webp/WebPFrame;
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/facebook/animated/webp/WebPImage;->nativeGetFrame(I)Lcom/facebook/animated/webp/WebPFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFrame(I)Lcom/facebook/imagepipeline/animated/base/AnimatedImageFrame;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/facebook/animated/webp/WebPImage;->getFrame(I)Lcom/facebook/animated/webp/WebPFrame;

    move-result-object p1

    return-object p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeGetFrameCount()I

    move-result v0

    return v0
.end method

.method public getFrameDurations()[I
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeGetFrameDurations()[I

    move-result-object v0

    return-object v0
.end method

.method public getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .locals 10

    .line 152
    invoke-virtual {p0, p1}, Lcom/facebook/animated/webp/WebPImage;->getFrame(I)Lcom/facebook/animated/webp/WebPFrame;

    move-result-object v0

    .line 154
    :try_start_0
    new-instance v9, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    .line 156
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->getXOffset()I

    move-result v3

    .line 157
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->getYOffset()I

    move-result v4

    .line 158
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->getWidth()I

    move-result v5

    .line 159
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->getHeight()I

    move-result v6

    .line 160
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->isBlendWithPreviousFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->BLEND_WITH_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;->NO_BLEND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;

    :goto_0
    move-object v7, v1

    .line 163
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->shouldDisposeToBackgroundColor()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_DO_NOT:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    :goto_1
    move-object v8, v1

    move-object v1, v9

    move v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;-><init>(IIIIILcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$BlendOperation;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->dispose()V

    return-object v9

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPFrame;->dispose()V

    throw p1
.end method

.method public getHeight()I
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeGetHeight()I

    move-result v0

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 132
    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeGetLoopCount()I

    move-result v0

    return v0
.end method

.method public getSizeInBytes()I
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeGetSizeInBytes()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/facebook/animated/webp/WebPImage;->nativeGetWidth()I

    move-result v0

    return v0
.end method
