.class public Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;
.super Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;
.source "AnimatedDrawableCachingBackendImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;


# static fields
.field private static final PREFETCH_FRAMES:I = 0x3

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sTotalBitmaps:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

.field private final mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

.field private final mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

.field private final mAnimatedImageCompositor:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

.field private final mApproxKiloBytesToHoldAllFrames:D

.field private final mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

.field private final mCachedBitmaps:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentFrameIndex:I

.field private final mDecodesInFlight:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lbolts/Task<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mExecutorService:Lcom/facebook/common/executors/SerialExecutorService;

.field private final mFreeBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaximumKiloBytes:D

.field private final mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

.field private final mResourceReleaserForBitmaps:Lcom/facebook/common/references/ResourceReleaser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/ResourceReleaser<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;

    sput-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->sTotalBitmaps:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/executors/SerialExecutorService;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;)V
    .locals 0

    .line 96
    invoke-direct {p0, p5}, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;)V

    .line 97
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mExecutorService:Lcom/facebook/common/executors/SerialExecutorService;

    .line 98
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 99
    iput-object p3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    .line 100
    iput-object p4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    .line 101
    iput-object p5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 102
    iput-object p6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    .line 103
    iget p1, p6, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->maximumBytes:I

    if-ltz p1, :cond_0

    iget p1, p6, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->maximumBytes:I

    div-int/lit16 p1, p1, 0x400

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->getDefaultMaxBytes(Landroid/app/ActivityManager;)I

    move-result p1

    div-int/lit16 p1, p1, 0x400

    :goto_0
    int-to-double p1, p1

    iput-wide p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMaximumKiloBytes:D

    .line 106
    new-instance p1, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    new-instance p2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$1;

    invoke-direct {p2, p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$1;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;)V

    invoke-direct {p1, p5, p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedImageCompositor:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 119
    new-instance p1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$2;

    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$2;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mResourceReleaserForBitmaps:Lcom/facebook/common/references/ResourceReleaser;

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    .line 126
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroidx/collection/SparseArrayCompat;

    .line 127
    new-instance p1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {p1, p2}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    .line 128
    new-instance p1, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameCount()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    .line 129
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 130
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getRenderedWidth()I

    move-result p1

    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 131
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getRenderedHeight()I

    move-result p2

    mul-int/2addr p1, p2

    div-int/lit16 p1, p1, 0x400

    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 132
    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameCount()I

    move-result p2

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x4

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mApproxKiloBytesToHoldAllFrames:D

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->maybeCacheBitmapDuringRender(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;I)Lcom/facebook/common/references/CloseableReference;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->getCachedOrPredecodedFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->runPrefetch(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;Lbolts/Task;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->onFutureFinished(Lbolts/Task;I)V

    return-void
.end method

.method private declared-synchronized cancelFuturesOutsideOfRange(II)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 481
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 482
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v1

    .line 483
    invoke-static {p1, p2, v1}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->isOutsideRange(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task;

    .line 486
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private copyAndCacheBitmapDuringRendering(ILandroid/graphics/Bitmap;)V
    .locals 4

    .line 315
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->obtainBitmapInternal()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 317
    :try_start_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    .line 318
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 319
    invoke-virtual {v1, p2, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 320
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->maybeCacheRenderedBitmap(ILcom/facebook/common/references/CloseableReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    throw p1
.end method

.method private createNewBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 146
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    const-string v1, "Creating new bitmap"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->sTotalBitmaps:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 148
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    sget-object v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->sTotalBitmaps:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Total bitmaps: %d"

    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 150
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getRenderedWidth()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 151
    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getRenderedHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 149
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized doPrefetch(II)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    add-int v1, p1, v0

    .line 404
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameCount()I

    move-result v2

    rem-int/2addr v1, v2

    .line 405
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->hasCachedOrPredecodedFrame(I)Z

    move-result v2

    .line 406
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbolts/Task;

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 408
    new-instance v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$3;

    invoke-direct {v2, p0, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$3;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;I)V

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mExecutorService:Lcom/facebook/common/executors/SerialExecutorService;

    invoke-static {v2, v3}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v2

    .line 416
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, v1, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 417
    new-instance v3, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$4;

    invoke-direct {v3, p0, v2, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$4;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;Lbolts/Task;I)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 427
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized dropBitmapsThatShouldNotBeCached()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 496
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 497
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v1

    .line 498
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/references/CloseableReference;

    .line 501
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 502
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getBitmapForFrameInternal(IZ)Lcom/facebook/common/references/CloseableReference;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    const/4 v5, 0x0

    .line 250
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 251
    :try_start_1
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    invoke-virtual {v6, p1, v2}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->set(IZ)V

    .line 252
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->getCachedOrPredecodedFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 254
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 273
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {p2}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v7

    sub-long/2addr v7, v0

    cmp-long p2, v7, v3

    if-lez p2, :cond_0

    .line 283
    sget-object p2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "ok"

    const-string v2, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {p2, v2, p1, v0, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v6

    .line 256
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p2, :cond_3

    .line 261
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->obtainBitmapInternal()Lcom/facebook/common/references/CloseableReference;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    :try_start_4
    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedImageCompositor:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v5, p1, v6}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->renderFrame(ILandroid/graphics/Bitmap;)V

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->maybeCacheRenderedBitmap(ILcom/facebook/common/references/CloseableReference;)V

    .line 265
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 267
    :try_start_5
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 273
    iget-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {p2}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v6

    sub-long/2addr v6, v0

    cmp-long p2, v6, v3

    if-lez p2, :cond_2

    .line 283
    sget-object p2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "renderedOnCallingThread"

    const-string v2, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {p2, v2, p1, v0, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v5

    :catchall_0
    move-exception v5

    .line 267
    :try_start_6
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->close()V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 273
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v5

    sub-long/2addr v5, v0

    cmp-long v0, v5, v3

    if-lez v0, :cond_4

    .line 283
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "deferred"

    const-string v3, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {v0, v3, p1, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-object p2

    :catchall_2
    move-exception p2

    .line 256
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p2

    move v2, v5

    .line 273
    :goto_0
    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v5}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v5

    sub-long/2addr v5, v0

    cmp-long v0, v5, v3

    if-lez v0, :cond_6

    if-nez v2, :cond_5

    const-string v0, "ok"

    goto :goto_1

    :cond_5
    const-string v0, "renderedOnCallingThread"

    .line 283
    :goto_1
    sget-object v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {v1, v3, p1, v2, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    :cond_6
    throw p2
.end method

.method private declared-synchronized getCachedOrPredecodedFrame(I)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    .line 527
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getPreDecodedFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static getDefaultMaxBytes(Landroid/app/ActivityManager;)I
    .locals 1

    .line 386
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/high16 p0, 0x500000

    return p0

    :cond_0
    const/high16 p0, 0x300000

    return p0
.end method

.method private declared-synchronized hasCachedOrPredecodedFrame(I)Z
    .locals 1

    monitor-enter p0

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 536
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->hasPreDecodedFrame(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private maybeCacheBitmapDuringRender(ILandroid/graphics/Bitmap;)V
    .locals 2

    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->get(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 302
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->copyAndCacheBitmapDuringRendering(ILandroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 302
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized maybeCacheRenderedBitmap(ILcom/facebook/common/references/CloseableReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->get(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 513
    monitor-exit p0

    return-void

    .line 516
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 518
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/references/CloseableReference;

    .line 519
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 520
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private obtainBitmapInternal()Lcom/facebook/common/references/CloseableReference;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 328
    monitor-enter p0

    .line 329
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 330
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 331
    :goto_0
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 333
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v0, v2, v0

    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 334
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 336
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 337
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->createNewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 346
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mResourceReleaserForBitmaps:Lcom/facebook/common/references/ResourceReleaser;

    invoke-static {v0, v1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 346
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private declared-synchronized onFutureFinished(Lbolts/Task;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "*>;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 469
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task;

    if-ne v1, p1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 472
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    const-string v1, "Failed to render frame %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {v0, p1, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private runPrefetch(I)V
    .locals 4

    .line 435
    monitor-enter p0

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    monitor-exit p0

    return-void

    .line 440
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->hasCachedOrPredecodedFrame(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    monitor-exit p0

    return-void

    .line 444
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 446
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 447
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getPreDecodedFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 450
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->maybeCacheRenderedBitmap(ILcom/facebook/common/references/CloseableReference;)V

    goto :goto_0

    .line 452
    :cond_2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->obtainBitmapInternal()Lcom/facebook/common/references/CloseableReference;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 454
    :try_start_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedImageCompositor:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, v3}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->renderFrame(ILandroid/graphics/Bitmap;)V

    .line 455
    invoke-direct {p0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->maybeCacheRenderedBitmap(ILcom/facebook/common/references/CloseableReference;)V

    .line 456
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    const-string v3, "Prefetch rendered frame %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    :try_start_3
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 462
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    return-void

    :catchall_0
    move-exception p1

    .line 458
    :try_start_4
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 462
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 444
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method private declared-synchronized schedulePrefetches()V
    .locals 5

    monitor-enter p0

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    iget v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCurrentFrameIndex:I

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v0

    .line 356
    iget-object v0, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->disposalMethod:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 358
    :goto_0
    iget v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCurrentFrameIndex:I

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    sub-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 359
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    iget-boolean v4, v4, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->allowPrefetching:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-eqz v0, :cond_3

    move v3, v2

    .line 360
    :cond_3
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int v3, v1, v0

    .line 361
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v4}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameCount()I

    move-result v4

    rem-int/2addr v3, v4

    .line 362
    invoke-direct {p0, v1, v3}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->cancelFuturesOutsideOfRange(II)V

    .line 364
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->shouldKeepAllFramesInMemory()Z

    move-result v4

    if-nez v4, :cond_6

    .line 365
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    invoke-virtual {v4, v2}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->setAll(Z)V

    .line 366
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    invoke-virtual {v4, v1, v3}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->removeOutsideRange(II)V

    move v3, v1

    :goto_3
    if-ltz v3, :cond_5

    .line 371
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v3}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 372
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    invoke-virtual {v4, v3, v2}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->set(IZ)V

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 376
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->dropBitmapsThatShouldNotBeCached()V

    .line 378
    :cond_6
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    iget-boolean v2, v2, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->allowPrefetching:Z

    if-eqz v2, :cond_7

    .line 379
    invoke-direct {p0, v1, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->doPrefetch(II)V

    goto :goto_5

    .line 381
    :cond_7
    iget v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCurrentFrameIndex:I

    iget v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCurrentFrameIndex:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->cancelFuturesOutsideOfRange(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :goto_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldKeepAllFramesInMemory()Z
    .locals 6

    .line 395
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    iget-boolean v0, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->forceKeepAllFramesInMemory:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 399
    :cond_0
    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mApproxKiloBytesToHoldAllFrames:D

    iget-wide v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMaximumKiloBytes:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public appendDebugOptionString(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    iget-boolean v0, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->forceKeepAllFramesInMemory:Z

    if-eqz v0, :cond_0

    const-string v0, "Pinned To Memory"

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 231
    :cond_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mApproxKiloBytesToHoldAllFrames:D

    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMaximumKiloBytes:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const-string/jumbo v0, "within "

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "exceeds "

    .line 234
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    iget-wide v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMaximumKiloBytes:D

    double-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->appendMemoryString(Ljava/lang/StringBuilder;I)V

    .line 238
    :goto_1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->shouldKeepAllFramesInMemory()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    iget-boolean v0, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->allowPrefetching:Z

    if-eqz v0, :cond_2

    const-string v0, " MT"

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public declared-synchronized dropCaches()V
    .locals 3

    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->setAll(Z)V

    .line 200
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->dropBitmapsThatShouldNotBeCached()V

    .line 201
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 202
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    sget-object v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->sTotalBitmaps:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->dropCaches()V

    .line 207
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    const-string v1, "Total bitmaps: %d"

    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->sTotalBitmaps:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 138
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    const-string v1, "Finalizing with rendered bitmaps"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 141
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->sTotalBitmaps:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 142
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic forNewBounds(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->forNewBounds(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    move-result-object p1

    return-object p1
.end method

.method public forNewBounds(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;
    .locals 8

    .line 184
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->forNewBounds(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    move-result-object v6

    .line 185
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    if-ne v6, p1, :cond_0

    return-object p0

    .line 188
    :cond_0
    new-instance p1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mExecutorService:Lcom/facebook/common/executors/SerialExecutorService;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    iget-object v7, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;-><init>(Lcom/facebook/common/executors/SerialExecutorService;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;)V

    return-object p1
.end method

.method public getBitmapForFrame(I)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 163
    iput p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCurrentFrameIndex:I

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->getBitmapForFrameInternal(IZ)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    .line 165
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->schedulePrefetches()V

    return-object p1
.end method

.method getBitmapForFrameBlocking(I)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 176
    iput p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCurrentFrameIndex:I

    const/4 v0, 0x1

    .line 177
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->getBitmapForFrameInternal(IZ)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    .line 178
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->schedulePrefetches()V

    return-object p1
.end method

.method declared-synchronized getDecodesInFlight()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lbolts/Task<",
            "*>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 541
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 542
    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getFramesCached()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 550
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 551
    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 552
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMemoryUsage()I
    .locals 5

    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 215
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    invoke-virtual {v4, v3}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->getSizeOfBitmap(Landroid/graphics/Bitmap;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 217
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    .line 219
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->getSizeOfBitmap(Landroid/graphics/Bitmap;)I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 221
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getMemoryUsage()I

    move-result v0

    add-int/2addr v2, v0

    return v2

    :catchall_0
    move-exception v0

    .line 221
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPreviewBitmap()Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->getAnimatedImageResult()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->getPreviewBitmap()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized releaseBitmapInternal(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public renderFrame(ILandroid/graphics/Canvas;)V
    .locals 0

    .line 158
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
