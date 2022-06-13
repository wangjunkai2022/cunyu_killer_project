package com.facebook.imagepipeline.cache;

/* loaded from: classes4.dex */
public interface MemoryCacheTracker {
    void onCacheHit();

    void onCacheMiss();

    void onCachePut();
}
