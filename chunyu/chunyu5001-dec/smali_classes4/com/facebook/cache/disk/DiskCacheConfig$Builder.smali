.class public Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DiskCacheConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBaseDirectoryName:Ljava/lang/String;

.field private mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

.field private mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

.field private final mContext:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDiskTrimmableRegistry:Lcom/facebook/common/disk/DiskTrimmableRegistry;

.field private mEntryEvictionComparatorSupplier:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

.field private mMaxCacheSize:J

.field private mMaxCacheSizeOnLowDiskSpace:J

.field private mMaxCacheSizeOnVeryLowDiskSpace:J

.field private mVersion:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 130
    iput v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mVersion:I

    const-string v0, "image_cache"

    .line 131
    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryName:Ljava/lang/String;

    const-wide/32 v0, 0x2800000

    .line 133
    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSize:J

    const-wide/32 v0, 0xa00000

    .line 134
    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSizeOnLowDiskSpace:J

    const-wide/32 v0, 0x200000

    .line 135
    iput-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSizeOnVeryLowDiskSpace:J

    .line 136
    new-instance v0, Lcom/facebook/cache/disk/DefaultEntryEvictionComparatorSupplier;

    invoke-direct {v0}, Lcom/facebook/cache/disk/DefaultEntryEvictionComparatorSupplier;-><init>()V

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mEntryEvictionComparatorSupplier:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    .line 145
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/cache/disk/DiskCacheConfig$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)I
    .locals 0

    .line 128
    iget p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mVersion:I

    return p0
.end method

.method static synthetic access$100(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Landroid/content/Context;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/common/internal/Supplier;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSize:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSizeOnLowDiskSpace:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSizeOnVeryLowDiskSpace:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mEntryEvictionComparatorSupplier:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/cache/common/CacheErrorLogger;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object p0
.end method

.method static synthetic access$800(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/cache/common/CacheEventListener;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)Lcom/facebook/common/disk/DiskTrimmableRegistry;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mDiskTrimmableRegistry:Lcom/facebook/common/disk/DiskTrimmableRegistry;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/cache/disk/DiskCacheConfig;
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Either a non-null context or a base directory path or supplier must be provided."

    invoke-static {v0, v1}, Lcom/facebook/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 249
    new-instance v0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder$1;

    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/DiskCacheConfig$Builder$1;-><init>(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;)V

    iput-object v0, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;

    .line 256
    :cond_2
    new-instance v0, Lcom/facebook/cache/disk/DiskCacheConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cache/disk/DiskCacheConfig;-><init>(Lcom/facebook/cache/disk/DiskCacheConfig$Builder;Lcom/facebook/cache/disk/DiskCacheConfig$1;)V

    return-object v0
.end method

.method public setBaseDirectoryName(Ljava/lang/String;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryName:Ljava/lang/String;

    return-object p0
.end method

.method public setBaseDirectoryPath(Ljava/io/File;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .locals 0

    .line 173
    invoke-static {p1}, Lcom/facebook/common/internal/Suppliers;->of(Ljava/lang/Object;)Lcom/facebook/common/internal/Supplier;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public setBaseDirectoryPathSupplier(Lcom/facebook/common/internal/Supplier;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/Supplier<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/facebook/cache/disk/DiskCacheConfig$Builder;"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mBaseDirectoryPathSupplier:Lcom/facebook/common/internal/Supplier;

    return-object p0
.end method

.method public setCacheErrorLogger(Lcom/facebook/cache/common/CacheErrorLogger;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mCacheErrorLogger:Lcom/facebook/cache/common/CacheErrorLogger;

    return-object p0
.end method

.method public setCacheEventListener(Lcom/facebook/cache/common/CacheEventListener;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mCacheEventListener:Lcom/facebook/cache/common/CacheEventListener;

    return-object p0
.end method

.method public setDiskTrimmableRegistry(Lcom/facebook/common/disk/DiskTrimmableRegistry;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mDiskTrimmableRegistry:Lcom/facebook/common/disk/DiskTrimmableRegistry;

    return-object p0
.end method

.method public setEntryEvictionComparatorSupplier(Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mEntryEvictionComparatorSupplier:Lcom/facebook/cache/disk/EntryEvictionComparatorSupplier;

    return-object p0
.end method

.method public setMaxCacheSize(J)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .locals 0

    .line 186
    iput-wide p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSize:J

    return-object p0
.end method

.method public setMaxCacheSizeOnLowDiskSpace(J)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .locals 0

    .line 196
    iput-wide p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSizeOnLowDiskSpace:J

    return-object p0
.end method

.method public setMaxCacheSizeOnVeryLowDiskSpace(J)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .locals 0

    .line 206
    iput-wide p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mMaxCacheSizeOnVeryLowDiskSpace:J

    return-object p0
.end method

.method public setVersion(I)Lcom/facebook/cache/disk/DiskCacheConfig$Builder;
    .locals 0

    .line 154
    iput p1, p0, Lcom/facebook/cache/disk/DiskCacheConfig$Builder;->mVersion:I

    return-object p0
.end method
