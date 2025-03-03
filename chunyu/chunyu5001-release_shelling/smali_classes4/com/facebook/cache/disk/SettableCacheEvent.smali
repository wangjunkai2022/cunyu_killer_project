.class public Lcom/facebook/cache/disk/SettableCacheEvent;
.super Ljava/lang/Object;
.source "SettableCacheEvent.java"

# interfaces
.implements Lcom/facebook/cache/common/CacheEvent;


# instance fields
.field private mCacheKey:Lcom/facebook/cache/common/CacheKey;

.field private mCacheLimit:J

.field private mCacheSize:J

.field private mEvictionReason:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

.field private mException:Ljava/io/IOException;

.field private mItemSize:J

.field private mResourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheKey()Lcom/facebook/cache/common/CacheKey;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheKey:Lcom/facebook/cache/common/CacheKey;

    return-object v0
.end method

.method public getCacheLimit()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheLimit:J

    return-wide v0
.end method

.method public getCacheSize()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheSize:J

    return-wide v0
.end method

.method public getEvictionReason()Lcom/facebook/cache/common/CacheEventListener$EvictionReason;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mEvictionReason:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-object v0
.end method

.method public getException()Ljava/io/IOException;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mException:Ljava/io/IOException;

    return-object v0
.end method

.method public getItemSize()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mItemSize:J

    return-wide v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mResourceId:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheKey(Lcom/facebook/cache/common/CacheKey;)Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheKey:Lcom/facebook/cache/common/CacheKey;

    return-object p0
.end method

.method public setCacheLimit(J)Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheLimit:J

    return-object p0
.end method

.method public setCacheSize(J)Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mCacheSize:J

    return-object p0
.end method

.method public setEvictionReason(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;)Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mEvictionReason:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    return-object p0
.end method

.method public setException(Ljava/io/IOException;)Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mException:Ljava/io/IOException;

    return-object p0
.end method

.method public setItemSize(J)Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mItemSize:J

    return-object p0
.end method

.method public setResourceId(Ljava/lang/String;)Lcom/facebook/cache/disk/SettableCacheEvent;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/facebook/cache/disk/SettableCacheEvent;->mResourceId:Ljava/lang/String;

    return-object p0
.end method
