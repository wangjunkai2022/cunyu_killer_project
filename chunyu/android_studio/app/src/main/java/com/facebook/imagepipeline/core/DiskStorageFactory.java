package com.facebook.imagepipeline.core;

import com.facebook.cache.disk.DiskCacheConfig;
import com.facebook.cache.disk.DiskStorage;

/* loaded from: classes4.dex */
public interface DiskStorageFactory {
    DiskStorage get(DiskCacheConfig diskCacheConfig);
}
