package com.facebook.imagepipeline.memory;

import android.util.SparseArray;
import android.util.SparseIntArray;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Sets;
import com.facebook.common.internal.Throwables;
import com.facebook.common.logging.FLog;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.common.memory.MemoryTrimmableRegistry;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class BasePool<V> implements Pool<V> {
    private boolean mAllowNewBuckets;
    final MemoryTrimmableRegistry mMemoryTrimmableRegistry;
    final PoolParams mPoolParams;
    private final PoolStatsTracker mPoolStatsTracker;
    private final Class<?> TAG = getClass();
    final SparseArray<Bucket<V>> mBuckets = new SparseArray<>();
    final Set<V> mInUseValues = Sets.newIdentityHashSet();
    final Counter mFree = new Counter();
    final Counter mUsed = new Counter();

    protected abstract V alloc(int i);

    protected abstract void free(V v);

    protected abstract int getBucketedSize(int i);

    protected abstract int getBucketedSizeForValue(V v);

    protected abstract int getSizeInBytes(int i);

    protected void onParamsChanged() {
    }

    public BasePool(MemoryTrimmableRegistry memoryTrimmableRegistry, PoolParams poolParams, PoolStatsTracker poolStatsTracker) {
        this.mMemoryTrimmableRegistry = (MemoryTrimmableRegistry) Preconditions.checkNotNull(memoryTrimmableRegistry);
        this.mPoolParams = (PoolParams) Preconditions.checkNotNull(poolParams);
        this.mPoolStatsTracker = (PoolStatsTracker) Preconditions.checkNotNull(poolStatsTracker);
        initBuckets(new SparseIntArray(0));
    }

    protected void initialize() {
        this.mMemoryTrimmableRegistry.registerMemoryTrimmable(this);
        this.mPoolStatsTracker.setBasePool(this);
    }

    @Override // com.facebook.imagepipeline.memory.Pool
    public V get(int i) {
        V v;
        ensurePoolSizeInvariant();
        int bucketedSize = getBucketedSize(i);
        synchronized (this) {
            try {
                Bucket<V> bucket = getBucket(bucketedSize);
                if (bucket == null || (v = bucket.get()) == null) {
                    int sizeInBytes = getSizeInBytes(bucketedSize);
                    if (canAllocate(sizeInBytes)) {
                        this.mUsed.increment(sizeInBytes);
                        if (bucket != null) {
                            bucket.incrementInUseCount();
                        }
                        V v2 = null;
                        try {
                            v2 = alloc(bucketedSize);
                        } catch (Throwable th) {
                            synchronized (this) {
                                try {
                                    this.mUsed.decrement(sizeInBytes);
                                    Bucket<V> bucket2 = getBucket(bucketedSize);
                                    if (bucket2 != null) {
                                        bucket2.decrementInUseCount();
                                    }
                                    Throwables.propagateIfPossible(th);
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                        }
                        synchronized (this) {
                            try {
                                Preconditions.checkState(this.mInUseValues.add(v2));
                                trimToSoftCap();
                                this.mPoolStatsTracker.onAlloc(sizeInBytes);
                                logStats();
                                if (FLog.isLoggable(2)) {
                                    FLog.v(this.TAG, "get (alloc) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(v2)), Integer.valueOf(bucketedSize));
                                }
                            } catch (Throwable th3) {
                                throw th3;
                            }
                        }
                        return v2;
                    }
                    throw new PoolSizeViolationException(this.mPoolParams.maxSizeHardCap, this.mUsed.mNumBytes, this.mFree.mNumBytes, sizeInBytes);
                }
                Preconditions.checkState(this.mInUseValues.add(v));
                int bucketedSizeForValue = getBucketedSizeForValue(v);
                int sizeInBytes2 = getSizeInBytes(bucketedSizeForValue);
                this.mUsed.increment(sizeInBytes2);
                this.mFree.decrement(sizeInBytes2);
                this.mPoolStatsTracker.onValueReuse(sizeInBytes2);
                logStats();
                if (FLog.isLoggable(2)) {
                    FLog.v(this.TAG, "get (reuse) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(v)), Integer.valueOf(bucketedSizeForValue));
                }
                return v;
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0080, code lost:
        r2.decrementInUseCount();
     */
    @Override // com.facebook.imagepipeline.memory.Pool, com.facebook.common.references.ResourceReleaser
    /* Code decompiled incorrectly, please refer to instructions dump */
    public void release(V r8) {
        /*
            r7 = this;
            com.facebook.common.internal.Preconditions.checkNotNull(r8)
            int r0 = r7.getBucketedSizeForValue(r8)
            int r1 = r7.getSizeInBytes(r0)
            monitor-enter(r7)
            com.facebook.imagepipeline.memory.Bucket r2 = r7.getBucket(r0)     // Catch: all -> 0x00ae
            java.util.Set<V> r3 = r7.mInUseValues     // Catch: all -> 0x00ae
            boolean r3 = r3.remove(r8)     // Catch: all -> 0x00ae
            r4 = 2
            if (r3 != 0) goto L_0x003d
            java.lang.Class<?> r2 = r7.TAG     // Catch: all -> 0x00ae
            java.lang.String r3 = "release (free, value unrecognized) (object, size) = (%x, %s)"
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: all -> 0x00ae
            r5 = 0
            int r6 = java.lang.System.identityHashCode(r8)     // Catch: all -> 0x00ae
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: all -> 0x00ae
            r4[r5] = r6     // Catch: all -> 0x00ae
            r5 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: all -> 0x00ae
            r4[r5] = r0     // Catch: all -> 0x00ae
            com.facebook.common.logging.FLog.e(r2, r3, r4)     // Catch: all -> 0x00ae
            r7.free(r8)     // Catch: all -> 0x00ae
            com.facebook.imagepipeline.memory.PoolStatsTracker r8 = r7.mPoolStatsTracker     // Catch: all -> 0x00ae
            r8.onFree(r1)     // Catch: all -> 0x00ae
            goto L_0x00a9
        L_0x003d:
            if (r2 == 0) goto L_0x007e
            boolean r3 = r2.isMaxLengthExceeded()     // Catch: all -> 0x00ae
            if (r3 != 0) goto L_0x007e
            boolean r3 = r7.isMaxSizeSoftCapExceeded()     // Catch: all -> 0x00ae
            if (r3 != 0) goto L_0x007e
            boolean r3 = r7.isReusable(r8)     // Catch: all -> 0x00ae
            if (r3 != 0) goto L_0x0052
            goto L_0x007e
        L_0x0052:
            r2.release(r8)     // Catch: all -> 0x00ae
            com.facebook.imagepipeline.memory.BasePool$Counter r2 = r7.mFree     // Catch: all -> 0x00ae
            r2.increment(r1)     // Catch: all -> 0x00ae
            com.facebook.imagepipeline.memory.BasePool$Counter r2 = r7.mUsed     // Catch: all -> 0x00ae
            r2.decrement(r1)     // Catch: all -> 0x00ae
            com.facebook.imagepipeline.memory.PoolStatsTracker r2 = r7.mPoolStatsTracker     // Catch: all -> 0x00ae
            r2.onValueRelease(r1)     // Catch: all -> 0x00ae
            boolean r1 = com.facebook.common.logging.FLog.isLoggable(r4)     // Catch: all -> 0x00ae
            if (r1 == 0) goto L_0x00a9
            java.lang.Class<?> r1 = r7.TAG     // Catch: all -> 0x00ae
            java.lang.String r2 = "release (reuse) (object, size) = (%x, %s)"
            int r8 = java.lang.System.identityHashCode(r8)     // Catch: all -> 0x00ae
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch: all -> 0x00ae
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: all -> 0x00ae
            com.facebook.common.logging.FLog.v(r1, r2, r8, r0)     // Catch: all -> 0x00ae
            goto L_0x00a9
        L_0x007e:
            if (r2 == 0) goto L_0x0083
            r2.decrementInUseCount()     // Catch: all -> 0x00ae
        L_0x0083:
            boolean r2 = com.facebook.common.logging.FLog.isLoggable(r4)     // Catch: all -> 0x00ae
            if (r2 == 0) goto L_0x009c
            java.lang.Class<?> r2 = r7.TAG     // Catch: all -> 0x00ae
            java.lang.String r3 = "release (free) (object, size) = (%x, %s)"
            int r4 = java.lang.System.identityHashCode(r8)     // Catch: all -> 0x00ae
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: all -> 0x00ae
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: all -> 0x00ae
            com.facebook.common.logging.FLog.v(r2, r3, r4, r0)     // Catch: all -> 0x00ae
        L_0x009c:
            r7.free(r8)     // Catch: all -> 0x00ae
            com.facebook.imagepipeline.memory.BasePool$Counter r8 = r7.mUsed     // Catch: all -> 0x00ae
            r8.decrement(r1)     // Catch: all -> 0x00ae
            com.facebook.imagepipeline.memory.PoolStatsTracker r8 = r7.mPoolStatsTracker     // Catch: all -> 0x00ae
            r8.onFree(r1)     // Catch: all -> 0x00ae
        L_0x00a9:
            r7.logStats()     // Catch: all -> 0x00ae
            monitor-exit(r7)     // Catch: all -> 0x00ae
            return
        L_0x00ae:
            r8 = move-exception
            monitor-exit(r7)     // Catch: all -> 0x00ae
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.memory.BasePool.release(java.lang.Object):void");
    }

    @Override // com.facebook.common.memory.MemoryTrimmable
    public void trim(MemoryTrimType memoryTrimType) {
        trimToNothing();
    }

    protected boolean isReusable(V v) {
        Preconditions.checkNotNull(v);
        return true;
    }

    private synchronized void ensurePoolSizeInvariant() {
        boolean z;
        if (isMaxSizeSoftCapExceeded() && this.mFree.mNumBytes != 0) {
            z = false;
            Preconditions.checkState(z);
        }
        z = true;
        Preconditions.checkState(z);
    }

    private synchronized void initBuckets(SparseIntArray sparseIntArray) {
        Preconditions.checkNotNull(sparseIntArray);
        this.mBuckets.clear();
        SparseIntArray sparseIntArray2 = this.mPoolParams.bucketSizes;
        if (sparseIntArray2 != null) {
            for (int i = 0; i < sparseIntArray2.size(); i++) {
                int keyAt = sparseIntArray2.keyAt(i);
                this.mBuckets.put(keyAt, new Bucket<>(getSizeInBytes(keyAt), sparseIntArray2.valueAt(i), sparseIntArray.get(keyAt, 0)));
            }
            this.mAllowNewBuckets = false;
        } else {
            this.mAllowNewBuckets = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    void trimToNothing() {
        int i;
        ArrayList arrayList = new ArrayList(this.mBuckets.size());
        SparseIntArray sparseIntArray = new SparseIntArray();
        synchronized (this) {
            for (int i2 = 0; i2 < this.mBuckets.size(); i2++) {
                Bucket<V> valueAt = this.mBuckets.valueAt(i2);
                if (valueAt.getFreeListSize() > 0) {
                    arrayList.add(valueAt);
                }
                sparseIntArray.put(this.mBuckets.keyAt(i2), valueAt.getInUseCount());
            }
            initBuckets(sparseIntArray);
            this.mFree.reset();
            logStats();
        }
        onParamsChanged();
        for (i = 0; i < arrayList.size(); i++) {
            Bucket bucket = (Bucket) arrayList.get(i);
            while (true) {
                Object pop = bucket.pop();
                if (pop == null) {
                    break;
                }
                free(pop);
            }
        }
    }

    synchronized void trimToSoftCap() {
        if (isMaxSizeSoftCapExceeded()) {
            trimToSize(this.mPoolParams.maxSizeSoftCap);
        }
    }

    synchronized void trimToSize(int i) {
        int min = Math.min((this.mUsed.mNumBytes + this.mFree.mNumBytes) - i, this.mFree.mNumBytes);
        if (min > 0) {
            if (FLog.isLoggable(2)) {
                FLog.v(this.TAG, "trimToSize: TargetSize = %d; Initial Size = %d; Bytes to free = %d", Integer.valueOf(i), Integer.valueOf(this.mUsed.mNumBytes + this.mFree.mNumBytes), Integer.valueOf(min));
            }
            logStats();
            for (int i2 = 0; i2 < this.mBuckets.size() && min > 0; i2++) {
                Bucket<V> valueAt = this.mBuckets.valueAt(i2);
                while (min > 0) {
                    V pop = valueAt.pop();
                    if (pop == null) {
                        break;
                    }
                    free(pop);
                    min -= valueAt.mItemSize;
                    this.mFree.decrement(valueAt.mItemSize);
                }
            }
            logStats();
            if (FLog.isLoggable(2)) {
                FLog.v(this.TAG, "trimToSize: TargetSize = %d; Final Size = %d", Integer.valueOf(i), Integer.valueOf(this.mUsed.mNumBytes + this.mFree.mNumBytes));
            }
        }
    }

    synchronized Bucket<V> getBucket(int i) {
        Bucket<V> bucket = this.mBuckets.get(i);
        if (bucket == null && this.mAllowNewBuckets) {
            if (FLog.isLoggable(2)) {
                FLog.v(this.TAG, "creating new bucket %s", Integer.valueOf(i));
            }
            Bucket<V> newBucket = newBucket(i);
            this.mBuckets.put(i, newBucket);
            return newBucket;
        }
        return bucket;
    }

    Bucket<V> newBucket(int i) {
        return new Bucket<>(getSizeInBytes(i), Integer.MAX_VALUE, 0);
    }

    synchronized boolean isMaxSizeSoftCapExceeded() {
        boolean z;
        z = this.mUsed.mNumBytes + this.mFree.mNumBytes > this.mPoolParams.maxSizeSoftCap;
        if (z) {
            this.mPoolStatsTracker.onSoftCapReached();
        }
        return z;
    }

    synchronized boolean canAllocate(int i) {
        int i2 = this.mPoolParams.maxSizeHardCap;
        if (i > i2 - this.mUsed.mNumBytes) {
            this.mPoolStatsTracker.onHardCapReached();
            return false;
        }
        int i3 = this.mPoolParams.maxSizeSoftCap;
        if (i > i3 - (this.mUsed.mNumBytes + this.mFree.mNumBytes)) {
            trimToSize(i3 - i);
        }
        if (i <= i2 - (this.mUsed.mNumBytes + this.mFree.mNumBytes)) {
            return true;
        }
        this.mPoolStatsTracker.onHardCapReached();
        return false;
    }

    private void logStats() {
        if (FLog.isLoggable(2)) {
            FLog.v(this.TAG, "Used = (%d, %d); Free = (%d, %d)", Integer.valueOf(this.mUsed.mCount), Integer.valueOf(this.mUsed.mNumBytes), Integer.valueOf(this.mFree.mCount), Integer.valueOf(this.mFree.mNumBytes));
        }
    }

    public synchronized Map<String, Integer> getStats() {
        HashMap hashMap;
        hashMap = new HashMap();
        for (int i = 0; i < this.mBuckets.size(); i++) {
            int keyAt = this.mBuckets.keyAt(i);
            hashMap.put(PoolStatsTracker.BUCKETS_USED_PREFIX + getSizeInBytes(keyAt), Integer.valueOf(this.mBuckets.valueAt(i).getInUseCount()));
        }
        hashMap.put(PoolStatsTracker.SOFT_CAP, Integer.valueOf(this.mPoolParams.maxSizeSoftCap));
        hashMap.put(PoolStatsTracker.HARD_CAP, Integer.valueOf(this.mPoolParams.maxSizeHardCap));
        hashMap.put(PoolStatsTracker.USED_COUNT, Integer.valueOf(this.mUsed.mCount));
        hashMap.put(PoolStatsTracker.USED_BYTES, Integer.valueOf(this.mUsed.mNumBytes));
        hashMap.put(PoolStatsTracker.FREE_COUNT, Integer.valueOf(this.mFree.mCount));
        hashMap.put(PoolStatsTracker.FREE_BYTES, Integer.valueOf(this.mFree.mNumBytes));
        return hashMap;
    }

    /* loaded from: classes2.dex */
    public static class Counter {
        private static final String TAG = "com.facebook.imagepipeline.memory.BasePool.Counter";
        int mCount;
        int mNumBytes;

        Counter() {
        }

        public void increment(int i) {
            this.mCount++;
            this.mNumBytes += i;
        }

        public void decrement(int i) {
            int i2;
            int i3 = this.mNumBytes;
            if (i3 < i || (i2 = this.mCount) <= 0) {
                FLog.wtf(TAG, "Unexpected decrement of %d. Current numBytes = %d, count = %d", Integer.valueOf(i), Integer.valueOf(this.mNumBytes), Integer.valueOf(this.mCount));
                return;
            }
            this.mCount = i2 - 1;
            this.mNumBytes = i3 - i;
        }

        public void reset() {
            this.mCount = 0;
            this.mNumBytes = 0;
        }
    }

    /* loaded from: classes2.dex */
    public static class InvalidValueException extends RuntimeException {
        public InvalidValueException(Object obj) {
            super("Invalid value: " + obj.toString());
        }
    }

    /* loaded from: classes2.dex */
    public static class InvalidSizeException extends RuntimeException {
        public InvalidSizeException(Object obj) {
            super("Invalid size: " + obj.toString());
        }
    }

    /* loaded from: classes2.dex */
    public static class SizeTooLargeException extends InvalidSizeException {
        public SizeTooLargeException(Object obj) {
            super(obj);
        }
    }

    /* loaded from: classes2.dex */
    public static class PoolSizeViolationException extends RuntimeException {
        public PoolSizeViolationException(int i, int i2, int i3, int i4) {
            super("Pool hard cap violation? Hard cap = " + i + " Used size = " + i2 + " Free size = " + i3 + " Request size = " + i4);
        }
    }
}
