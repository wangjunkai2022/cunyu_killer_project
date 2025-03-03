package com.facebook.cache.disk;

import com.facebook.cache.common.CacheEvent;
import com.facebook.cache.common.CacheEventListener;
import com.facebook.cache.common.CacheKey;
import java.io.IOException;
import javax.annotation.Nullable;

/* loaded from: classes4.dex */
public class SettableCacheEvent implements CacheEvent {
    private CacheKey mCacheKey;
    private long mCacheLimit;
    private long mCacheSize;
    private CacheEventListener.EvictionReason mEvictionReason;
    private IOException mException;
    private long mItemSize;
    private String mResourceId;

    @Override // com.facebook.cache.common.CacheEvent
    @Nullable
    public CacheKey getCacheKey() {
        return this.mCacheKey;
    }

    public SettableCacheEvent setCacheKey(CacheKey cacheKey) {
        this.mCacheKey = cacheKey;
        return this;
    }

    @Override // com.facebook.cache.common.CacheEvent
    @Nullable
    public String getResourceId() {
        return this.mResourceId;
    }

    public SettableCacheEvent setResourceId(String str) {
        this.mResourceId = str;
        return this;
    }

    @Override // com.facebook.cache.common.CacheEvent
    public long getItemSize() {
        return this.mItemSize;
    }

    public SettableCacheEvent setItemSize(long j) {
        this.mItemSize = j;
        return this;
    }

    @Override // com.facebook.cache.common.CacheEvent
    public long getCacheSize() {
        return this.mCacheSize;
    }

    public SettableCacheEvent setCacheSize(long j) {
        this.mCacheSize = j;
        return this;
    }

    @Override // com.facebook.cache.common.CacheEvent
    public long getCacheLimit() {
        return this.mCacheLimit;
    }

    public SettableCacheEvent setCacheLimit(long j) {
        this.mCacheLimit = j;
        return this;
    }

    @Override // com.facebook.cache.common.CacheEvent
    @Nullable
    public IOException getException() {
        return this.mException;
    }

    public SettableCacheEvent setException(IOException iOException) {
        this.mException = iOException;
        return this;
    }

    @Override // com.facebook.cache.common.CacheEvent
    @Nullable
    public CacheEventListener.EvictionReason getEvictionReason() {
        return this.mEvictionReason;
    }

    public SettableCacheEvent setEvictionReason(CacheEventListener.EvictionReason evictionReason) {
        this.mEvictionReason = evictionReason;
        return this;
    }
}
