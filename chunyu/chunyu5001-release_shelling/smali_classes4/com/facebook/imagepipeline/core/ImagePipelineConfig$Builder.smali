.class public Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

.field private mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final mContext:Landroid/content/Context;

.field private mDecodeMemoryFileEnabled:Z

.field private mDownsampleEnabled:Z

.field private mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

.field private final mExperimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

.field private mFileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

.field private mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

.field private mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

.field private mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

.field private mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

.field private mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

.field private mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

.field private mPoolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

.field private mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

.field private mRequestListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private mResizeAndRotateEnabledForNetwork:Z

.field private mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDownsampleEnabled:Z

    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mResizeAndRotateEnabledForNetwork:Z

    .line 320
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExperimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    .line 325
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V
    .locals 0

    .line 296
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/Supplier;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/ImageDecoder;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/Supplier;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/DiskCacheConfig;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/memory/MemoryTrimmableRegistry;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/producers/NetworkFetcher;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/memory/PoolFactory;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mPoolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/util/Set;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mRequestListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z
    .locals 0

    .line 296
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mResizeAndRotateEnabledForNetwork:Z

    return p0
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/content/Context;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/DiskCacheConfig;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/ExecutorSupplier;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExperimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/CacheKeyFactory;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z
    .locals 0

    .line 296
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDecodeMemoryFileEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/FileCacheFactory;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mFileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z
    .locals 0

    .line 296
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDownsampleEnabled:Z

    return p0
.end method

.method static synthetic access$800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/Supplier;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
    .locals 2

    .line 455
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V

    return-object v0
.end method

.method public experiment()Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExperimentsBuilder:Lcom/facebook/imagepipeline/core/ImagePipelineExperiments$Builder;

    return-object v0
.end method

.method public isDownsampleEnabled()Z
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDownsampleEnabled:Z

    return v0
.end method

.method public setAnimatedImageFactory(Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    return-object p0
.end method

.method public setBitmapMemoryCacheParamsSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 341
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/internal/Supplier;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public setBitmapsConfig(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public setCacheKeyFactory(Lcom/facebook/imagepipeline/cache/CacheKeyFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    return-object p0
.end method

.method public setDecodeMemoryFileEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 351
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDecodeMemoryFileEnabled:Z

    return-object p0
.end method

.method public setDiskStorageFactory(Lcom/facebook/imagepipeline/core/DiskStorageFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 365
    new-instance v0, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/core/DiskStorageCacheFactory;-><init>(Lcom/facebook/imagepipeline/core/DiskStorageFactory;)V

    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setFileCacheFactory(Lcom/facebook/imagepipeline/core/FileCacheFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    return-object p0
.end method

.method public setDownsampleEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 374
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDownsampleEnabled:Z

    return-object p0
.end method

.method public setEncodedMemoryCacheParamsSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 381
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/internal/Supplier;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public setExecutorSupplier(Lcom/facebook/imagepipeline/core/ExecutorSupplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    return-object p0
.end method

.method public setFileCacheFactory(Lcom/facebook/imagepipeline/core/FileCacheFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mFileCacheFactory:Lcom/facebook/imagepipeline/core/FileCacheFactory;

    return-object p0
.end method

.method public setImageCacheStatsTracker(Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/ImageCacheStatsTracker;

    return-object p0
.end method

.method public setImageDecoder(Lcom/facebook/imagepipeline/decoder/ImageDecoder;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/ImageDecoder;

    return-object p0
.end method

.method public setIsPrefetchEnabledSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 401
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public setMainDiskCacheConfig(Lcom/facebook/cache/disk/DiskCacheConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMainDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object p0
.end method

.method public setMemoryTrimmableRegistry(Lcom/facebook/common/memory/MemoryTrimmableRegistry;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/MemoryTrimmableRegistry;

    return-object p0
.end method

.method public setNetworkFetcher(Lcom/facebook/imagepipeline/producers/NetworkFetcher;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/NetworkFetcher;

    return-object p0
.end method

.method public setPlatformBitmapFactory(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    return-object p0
.end method

.method public setPoolFactory(Lcom/facebook/imagepipeline/memory/PoolFactory;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mPoolFactory:Lcom/facebook/imagepipeline/memory/PoolFactory;

    return-object p0
.end method

.method public setProgressiveJpegConfig(Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/ProgressiveJpegConfig;

    return-object p0
.end method

.method public setRequestListeners(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/facebook/imagepipeline/listener/RequestListener;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mRequestListeners:Ljava/util/Set;

    return-object p0
.end method

.method public setResizeAndRotateEnabledForNetwork(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 441
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mResizeAndRotateEnabledForNetwork:Z

    return-object p0
.end method

.method public setSmallImageDiskCacheConfig(Lcom/facebook/cache/disk/DiskCacheConfig;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/DiskCacheConfig;

    return-object p0
.end method
