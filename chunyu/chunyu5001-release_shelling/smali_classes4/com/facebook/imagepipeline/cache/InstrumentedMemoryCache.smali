.class public Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;
.super Ljava/lang/Object;
.source "InstrumentedMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/MemoryCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/MemoryCache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/facebook/imagepipeline/cache/MemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final mTracker:Lcom/facebook/imagepipeline/cache/MemoryCacheTracker;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/MemoryCache;Lcom/facebook/imagepipeline/cache/MemoryCacheTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/MemoryCache<",
            "TK;TV;>;",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheTracker;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;->mDelegate:Lcom/facebook/imagepipeline/cache/MemoryCache;

    .line 23
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;->mTracker:Lcom/facebook/imagepipeline/cache/MemoryCacheTracker;

    return-void
.end method


# virtual methods
.method public cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;->mTracker:Lcom/facebook/imagepipeline/cache/MemoryCacheTracker;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/cache/MemoryCacheTracker;->onCachePut()V

    .line 40
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;->mDelegate:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/MemoryCache;->cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    return-object p1
.end method

.method public contains(Lcom/android/internal/util/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate<",
            "TK;>;)Z"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;->mDelegate:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->contains(Lcom/android/internal/util/Predicate;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;->mDelegate:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    if-nez p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;->mTracker:Lcom/facebook/imagepipeline/cache/MemoryCacheTracker;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/cache/MemoryCacheTracker;->onCacheMiss()V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;->mTracker:Lcom/facebook/imagepipeline/cache/MemoryCacheTracker;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/cache/MemoryCacheTracker;->onCacheHit()V

    :goto_0
    return-object p1
.end method

.method public removeAll(Lcom/android/internal/util/Predicate;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate<",
            "TK;>;)I"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/InstrumentedMemoryCache;->mDelegate:Lcom/facebook/imagepipeline/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/MemoryCache;->removeAll(Lcom/android/internal/util/Predicate;)I

    move-result p1

    return p1
.end method
