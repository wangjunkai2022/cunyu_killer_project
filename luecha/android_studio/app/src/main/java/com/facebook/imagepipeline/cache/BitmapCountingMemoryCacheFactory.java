package com.facebook.imagepipeline.cache;

import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.Supplier;
import com.facebook.common.memory.MemoryTrimmableRegistry;
import com.facebook.imagepipeline.image.CloseableImage;

/* loaded from: classes2.dex */
public class BitmapCountingMemoryCacheFactory {
    public static CountingMemoryCache<CacheKey, CloseableImage> get(Supplier<MemoryCacheParams> supplier, MemoryTrimmableRegistry memoryTrimmableRegistry) {
        CountingMemoryCache<CacheKey, CloseableImage> countingMemoryCache = new CountingMemoryCache<>(new ValueDescriptor<CloseableImage>() { // from class: com.facebook.imagepipeline.cache.BitmapCountingMemoryCacheFactory.1
            public int getSizeInBytes(CloseableImage closeableImage) {
                return closeableImage.getSizeInBytes();
            }
        }, new BitmapMemoryCacheTrimStrategy(), supplier);
        memoryTrimmableRegistry.registerMemoryTrimmable(countingMemoryCache);
        return countingMemoryCache;
    }
}
