package com.facebook.imagepipeline.cache;

import android.net.Uri;
import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.Objects;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.common.util.HashCodeUtil;
import com.facebook.imagepipeline.common.ImageDecodeOptions;
import com.facebook.imagepipeline.common.ResizeOptions;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public class BitmapMemoryCacheKey implements CacheKey {
    private final boolean mAutoRotated;
    private final long mCacheTime;
    private final Object mCallerContext;
    private final int mHash;
    private final ImageDecodeOptions mImageDecodeOptions;
    @Nullable
    private final CacheKey mPostprocessorCacheKey;
    @Nullable
    private final String mPostprocessorName;
    @Nullable
    private final ResizeOptions mResizeOptions;
    private final String mSourceString;

    public BitmapMemoryCacheKey(String str, @Nullable ResizeOptions resizeOptions, boolean z, ImageDecodeOptions imageDecodeOptions, @Nullable CacheKey cacheKey, @Nullable String str2, Object obj) {
        Boolean bool;
        this.mSourceString = (String) Preconditions.checkNotNull(str);
        this.mResizeOptions = resizeOptions;
        this.mAutoRotated = z;
        this.mImageDecodeOptions = imageDecodeOptions;
        this.mPostprocessorCacheKey = cacheKey;
        this.mPostprocessorName = str2;
        Integer valueOf = Integer.valueOf(str.hashCode());
        Integer valueOf2 = Integer.valueOf(resizeOptions != null ? resizeOptions.hashCode() : 0);
        if (z) {
            bool = Boolean.TRUE;
        } else {
            bool = Boolean.FALSE;
        }
        this.mHash = HashCodeUtil.hashCode(valueOf, valueOf2, Integer.valueOf(bool.hashCode()), this.mImageDecodeOptions, this.mPostprocessorCacheKey, str2);
        this.mCallerContext = obj;
        this.mCacheTime = RealtimeSinceBootClock.get().now();
    }

    @Override // com.facebook.cache.common.CacheKey
    public boolean equals(Object obj) {
        if (!(obj instanceof BitmapMemoryCacheKey)) {
            return false;
        }
        BitmapMemoryCacheKey bitmapMemoryCacheKey = (BitmapMemoryCacheKey) obj;
        if (this.mHash != bitmapMemoryCacheKey.mHash || !this.mSourceString.equals(bitmapMemoryCacheKey.mSourceString) || !Objects.equal(this.mResizeOptions, bitmapMemoryCacheKey.mResizeOptions) || this.mAutoRotated != bitmapMemoryCacheKey.mAutoRotated || !Objects.equal(this.mImageDecodeOptions, bitmapMemoryCacheKey.mImageDecodeOptions) || !Objects.equal(this.mPostprocessorCacheKey, bitmapMemoryCacheKey.mPostprocessorCacheKey) || !Objects.equal(this.mPostprocessorName, bitmapMemoryCacheKey.mPostprocessorName)) {
            return false;
        }
        return true;
    }

    @Override // com.facebook.cache.common.CacheKey
    public int hashCode() {
        return this.mHash;
    }

    @Override // com.facebook.cache.common.CacheKey
    public boolean containsUri(Uri uri) {
        return getSourceUriString().contains(uri.toString());
    }

    public String getSourceUriString() {
        return this.mSourceString;
    }

    @Nullable
    public String getPostprocessorName() {
        return this.mPostprocessorName;
    }

    @Override // com.facebook.cache.common.CacheKey
    public String toString() {
        return String.format(null, "%s_%s_%s_%s_%s_%s_%d", this.mSourceString, this.mResizeOptions, Boolean.toString(this.mAutoRotated), this.mImageDecodeOptions, this.mPostprocessorCacheKey, this.mPostprocessorName, Integer.valueOf(this.mHash));
    }

    public Object getCallerContext() {
        return this.mCallerContext;
    }

    public long getInBitmapCacheSince() {
        return this.mCacheTime;
    }
}
