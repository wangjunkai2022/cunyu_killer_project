package com.facebook.cache.disk;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.binaryresource.BinaryResource;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheEventListener;
import com.facebook.cache.common.CacheKey;
import com.facebook.cache.common.MultiCacheKey;
import com.facebook.cache.common.WriterCallback;
import com.facebook.cache.disk.DiskStorage;
import com.facebook.common.disk.DiskTrimmable;
import com.facebook.common.disk.DiskTrimmableRegistry;
import com.facebook.common.logging.FLog;
import com.facebook.common.statfs.StatFsHelper;
import com.facebook.common.time.Clock;
import com.facebook.common.time.SystemClock;
import com.facebook.common.util.SecureHashUtil;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* loaded from: classes4.dex */
public class DiskStorageCache implements FileCache, DiskTrimmable {
    private static final String SHARED_PREFS_FILENAME_PREFIX = "disk_entries_list";
    public static final int START_OF_VERSIONING = 1;
    private static final double TRIMMING_LOWER_BOUND = 0.02d;
    private static final long UNINITIALIZED = -1;
    private final CacheErrorLogger mCacheErrorLogger;
    private final CacheEventListener mCacheEventListener;
    private long mCacheSizeLimit;
    private final long mCacheSizeLimitMinimum;
    private final Clock mClock;
    private final long mDefaultCacheSizeLimit;
    private final EntryEvictionComparatorSupplier mEntryEvictionComparatorSupplier;
    private final long mLowDiskSpaceCacheSizeLimit;
    final Set<String> mResourceIndex;
    private final SharedPreferences mSharedPreferences;
    private final DiskStorage mStorage;
    private static final Class<?> TAG = DiskStorageCache.class;
    private static final long FUTURE_TIMESTAMP_THRESHOLD_MS = TimeUnit.HOURS.toMillis(2);
    private static final long FILECACHE_SIZE_UPDATE_PERIOD_MS = TimeUnit.MINUTES.toMillis(30);
    private final CountDownLatch mCountDownLatch = new CountDownLatch(1);
    Map<Integer, String> mIndex = new HashMap();
    private final Object mLock = new Object();
    private final StatFsHelper mStatFsHelper = StatFsHelper.getInstance();
    private long mCacheSizeLastUpdateTime = -1;
    private final CacheStats mCacheStats = new CacheStats();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class CacheStats {
        private boolean mInitialized = false;
        private long mSize = -1;
        private long mCount = -1;

        CacheStats() {
        }

        public synchronized boolean isInitialized() {
            return this.mInitialized;
        }

        public synchronized void reset() {
            this.mInitialized = false;
            this.mCount = -1;
            this.mSize = -1;
        }

        public synchronized void set(long j, long j2) {
            this.mCount = j2;
            this.mSize = j;
            this.mInitialized = true;
        }

        public synchronized void increment(long j, long j2) {
            if (this.mInitialized) {
                this.mSize += j;
                this.mCount += j2;
            }
        }

        public synchronized long getSize() {
            return this.mSize;
        }

        public synchronized long getCount() {
            return this.mCount;
        }
    }

    /* loaded from: classes4.dex */
    public static class Params {
        public final long mCacheSizeLimitMinimum;
        public final long mDefaultCacheSizeLimit;
        public final long mLowDiskSpaceCacheSizeLimit;

        public Params(long j, long j2, long j3) {
            this.mCacheSizeLimitMinimum = j;
            this.mLowDiskSpaceCacheSizeLimit = j2;
            this.mDefaultCacheSizeLimit = j3;
        }
    }

    public DiskStorageCache(DiskStorage diskStorage, EntryEvictionComparatorSupplier entryEvictionComparatorSupplier, Params params, CacheEventListener cacheEventListener, CacheErrorLogger cacheErrorLogger, @Nullable DiskTrimmableRegistry diskTrimmableRegistry, Context context) {
        this.mLowDiskSpaceCacheSizeLimit = params.mLowDiskSpaceCacheSizeLimit;
        this.mDefaultCacheSizeLimit = params.mDefaultCacheSizeLimit;
        this.mCacheSizeLimit = params.mDefaultCacheSizeLimit;
        this.mStorage = diskStorage;
        this.mEntryEvictionComparatorSupplier = entryEvictionComparatorSupplier;
        this.mCacheEventListener = cacheEventListener;
        this.mCacheSizeLimitMinimum = params.mCacheSizeLimitMinimum;
        this.mCacheErrorLogger = cacheErrorLogger;
        if (diskTrimmableRegistry != null) {
            diskTrimmableRegistry.registerDiskTrimmable(this);
        }
        this.mClock = SystemClock.get();
        this.mSharedPreferences = initializeSharedPreferences(context, this.mStorage.getStorageName());
        this.mResourceIndex = new HashSet();
        Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.facebook.cache.disk.DiskStorageCache.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (DiskStorageCache.this.mLock) {
                    DiskStorageCache.this.maybeUpdateFileCacheSize();
                }
                DiskStorageCache.this.mCountDownLatch.countDown();
            }
        });
    }

    @Override // com.facebook.cache.disk.FileCache
    public DiskStorage.DiskDumpInfo getDumpInfo() throws IOException {
        return this.mStorage.getDumpInfo();
    }

    @Override // com.facebook.cache.disk.FileCache
    public boolean isEnabled() {
        return this.mStorage.isEnabled();
    }

    protected void awaitIndex() {
        try {
            this.mCountDownLatch.await();
        } catch (InterruptedException unused) {
            FLog.e(TAG, "Memory Index is not ready yet. ");
        }
    }

    @Override // com.facebook.cache.disk.FileCache
    public BinaryResource getResource(CacheKey cacheKey) {
        BinaryResource binaryResource;
        String str;
        SettableCacheEvent cacheKey2 = new SettableCacheEvent().setCacheKey(cacheKey);
        Integer valueOf = Integer.valueOf(cacheKey.hashCode());
        try {
            synchronized (this.mLock) {
                if (this.mIndex.containsKey(valueOf)) {
                    String str2 = this.mIndex.get(valueOf);
                    cacheKey2.setResourceId(str2);
                    binaryResource = this.mStorage.getResource(str2, cacheKey);
                    str = str2;
                } else {
                    List<String> resourceIds = getResourceIds(cacheKey);
                    str = null;
                    binaryResource = null;
                    for (int i = 0; i < resourceIds.size(); i++) {
                        str = resourceIds.get(i);
                        if (this.mResourceIndex.contains(str)) {
                            cacheKey2.setResourceId(str);
                            binaryResource = this.mStorage.getResource(str, cacheKey);
                            if (binaryResource != null) {
                                break;
                            }
                        }
                    }
                }
                if (binaryResource == null) {
                    this.mCacheEventListener.onMiss(cacheKey2);
                    removeKeyFromIndex(valueOf);
                } else {
                    this.mCacheEventListener.onHit(cacheKey2);
                    addKeyToIndex(valueOf, str);
                }
            }
            return binaryResource;
        } catch (IOException e) {
            this.mCacheErrorLogger.logError(CacheErrorLogger.CacheErrorCategory.GENERIC_IO, TAG, "getResource", e);
            cacheKey2.setException(e);
            this.mCacheEventListener.onReadException(cacheKey2);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.Throwable] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.facebook.cache.disk.FileCache
    /* Code decompiled incorrectly, please refer to instructions dump */
    public boolean probe(com.facebook.cache.common.CacheKey r9) {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            java.lang.Object r2 = r8.mLock     // Catch: IOException -> 0x006a
            monitor-enter(r2)     // Catch: IOException -> 0x006a
            int r3 = r9.hashCode()     // Catch: all -> 0x005f
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: all -> 0x005f
            java.util.Map<java.lang.Integer, java.lang.String> r4 = r8.mIndex     // Catch: all -> 0x005f
            boolean r4 = r4.containsKey(r3)     // Catch: all -> 0x005f
            if (r4 == 0) goto L_0x0024
            java.util.Map<java.lang.Integer, java.lang.String> r4 = r8.mIndex     // Catch: all -> 0x005f
            java.lang.Object r4 = r4.get(r3)     // Catch: all -> 0x005f
            java.lang.String r4 = (java.lang.String) r4     // Catch: all -> 0x005f
            com.facebook.cache.disk.DiskStorage r1 = r8.mStorage     // Catch: all -> 0x0068
            boolean r1 = r1.touch(r4, r9)     // Catch: all -> 0x0068
            goto L_0x0055
        L_0x0024:
            java.util.List r4 = getResourceIds(r9)     // Catch: all -> 0x005f
            r6 = r0
            r5 = r1
            r1 = r6
        L_0x002b:
            int r7 = r4.size()     // Catch: all -> 0x005c
            if (r1 >= r7) goto L_0x0053
            java.lang.Object r7 = r4.get(r1)     // Catch: all -> 0x005c
            java.lang.String r7 = (java.lang.String) r7     // Catch: all -> 0x005c
            java.util.Set<java.lang.String> r5 = r8.mResourceIndex     // Catch: all -> 0x0050
            boolean r5 = r5.contains(r7)     // Catch: all -> 0x0050
            if (r5 != 0) goto L_0x0040
            goto L_0x004c
        L_0x0040:
            com.facebook.cache.disk.DiskStorage r5 = r8.mStorage     // Catch: all -> 0x0050
            boolean r5 = r5.touch(r7, r9)     // Catch: all -> 0x0050
            if (r5 == 0) goto L_0x004b
            r1 = r5
            r4 = r7
            goto L_0x0055
        L_0x004b:
            r6 = r5
        L_0x004c:
            int r1 = r1 + 1
            r5 = r7
            goto L_0x002b
        L_0x0050:
            r1 = move-exception
            r4 = r7
            goto L_0x0062
        L_0x0053:
            r4 = r5
            r1 = r6
        L_0x0055:
            if (r1 == 0) goto L_0x005a
            r8.addKeyToIndex(r3, r4)     // Catch: all -> 0x0068
        L_0x005a:
            monitor-exit(r2)     // Catch: all -> 0x0068
            return r1
        L_0x005c:
            r1 = move-exception
            r4 = r5
            goto L_0x0062
        L_0x005f:
            r3 = move-exception
            r4 = r1
            r1 = r3
        L_0x0062:
            monitor-exit(r2)     // Catch: all -> 0x0068
            throw r1     // Catch: IOException -> 0x0064
        L_0x0064:
            r1 = move-exception
            r2 = r1
            r1 = r4
            goto L_0x006b
        L_0x0068:
            r1 = move-exception
            goto L_0x0062
        L_0x006a:
            r2 = move-exception
        L_0x006b:
            com.facebook.cache.common.CacheEventListener r3 = r8.mCacheEventListener
            com.facebook.cache.disk.SettableCacheEvent r4 = new com.facebook.cache.disk.SettableCacheEvent
            r4.<init>()
            com.facebook.cache.disk.SettableCacheEvent r9 = r4.setCacheKey(r9)
            com.facebook.cache.disk.SettableCacheEvent r9 = r9.setResourceId(r1)
            com.facebook.cache.disk.SettableCacheEvent r9 = r9.setException(r2)
            r3.onReadException(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.cache.disk.DiskStorageCache.probe(com.facebook.cache.common.CacheKey):boolean");
    }

    private DiskStorage.Inserter startInsert(String str, CacheKey cacheKey) throws IOException {
        maybeEvictFilesInCacheDir();
        return this.mStorage.insert(str, cacheKey);
    }

    private BinaryResource endInsert(DiskStorage.Inserter inserter, CacheKey cacheKey, String str) throws IOException {
        BinaryResource commit;
        synchronized (this.mLock) {
            commit = inserter.commit(cacheKey);
            addKeyToIndex(Integer.valueOf(cacheKey.hashCode()), str);
            this.mCacheStats.increment(commit.size(), 1);
        }
        return commit;
    }

    @Override // com.facebook.cache.disk.FileCache
    public BinaryResource insert(CacheKey cacheKey, WriterCallback writerCallback) throws IOException {
        String str;
        SettableCacheEvent cacheKey2 = new SettableCacheEvent().setCacheKey(cacheKey);
        this.mCacheEventListener.onWriteAttempt(cacheKey2);
        synchronized (this.mLock) {
            Integer valueOf = Integer.valueOf(cacheKey.hashCode());
            if (this.mIndex.containsKey(valueOf)) {
                str = this.mIndex.get(valueOf);
            } else {
                str = getFirstResourceId(cacheKey);
            }
        }
        cacheKey2.setResourceId(str);
        try {
            DiskStorage.Inserter startInsert = startInsert(str, cacheKey);
            startInsert.writeData(writerCallback, cacheKey);
            BinaryResource endInsert = endInsert(startInsert, cacheKey, str);
            cacheKey2.setItemSize(endInsert.size()).setCacheSize(this.mCacheStats.getSize());
            this.mCacheEventListener.onWriteSuccess(cacheKey2);
            if (!startInsert.cleanUp()) {
                FLog.e(TAG, "Failed to delete temp file");
            }
            return endInsert;
        } catch (IOException e) {
            cacheKey2.setException(e);
            this.mCacheEventListener.onWriteException(cacheKey2);
            FLog.e(TAG, "Failed inserting a file into the cache", e);
            throw e;
        }
    }

    @Override // com.facebook.cache.disk.FileCache
    public void remove(CacheKey cacheKey) {
        synchronized (this.mLock) {
            try {
                Integer valueOf = Integer.valueOf(cacheKey.hashCode());
                if (this.mIndex.containsKey(valueOf)) {
                    this.mStorage.remove(this.mIndex.get(valueOf));
                } else {
                    List<String> resourceIds = getResourceIds(cacheKey);
                    for (int i = 0; i < resourceIds.size(); i++) {
                        this.mStorage.remove(resourceIds.get(i));
                    }
                }
                removeKeyFromIndex(valueOf);
            } catch (IOException e) {
                CacheErrorLogger cacheErrorLogger = this.mCacheErrorLogger;
                CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.DELETE_FILE;
                Class<?> cls = TAG;
                cacheErrorLogger.logError(cacheErrorCategory, cls, "delete: " + e.getMessage(), e);
            }
        }
    }

    @Override // com.facebook.cache.disk.FileCache
    public long clearOldEntries(long j) {
        long j2;
        IOException e;
        synchronized (this.mLock) {
            try {
                long now = this.mClock.now();
                Collection<DiskStorage.Entry> entries = this.mStorage.getEntries();
                long size = this.mCacheStats.getSize();
                int i = 0;
                long j3 = 0;
                j2 = 0;
                for (DiskStorage.Entry entry : entries) {
                    try {
                        long max = Math.max(1L, Math.abs(now - entry.getTimestamp()));
                        if (max >= j) {
                            long remove = this.mStorage.remove(entry);
                            removeValueFromIndex(entry.getId());
                            if (remove > 0) {
                                i++;
                                j3 += remove;
                                this.mCacheEventListener.onEviction(new SettableCacheEvent().setResourceId(entry.getId()).setEvictionReason(CacheEventListener.EvictionReason.CONTENT_STALE).setItemSize(remove).setCacheSize(size - j3));
                            }
                        } else {
                            j2 = Math.max(j2, max);
                        }
                        now = now;
                    } catch (IOException e2) {
                        e = e2;
                        CacheErrorLogger cacheErrorLogger = this.mCacheErrorLogger;
                        CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.EVICTION;
                        Class<?> cls = TAG;
                        cacheErrorLogger.logError(cacheErrorCategory, cls, "clearOldEntries: " + e.getMessage(), e);
                        return j2;
                    }
                }
                this.mStorage.purgeUnexpectedResources();
                if (i > 0) {
                    maybeUpdateFileCacheSize();
                    this.mCacheStats.increment(-j3, (long) (-i));
                }
            } catch (IOException e3) {
                e = e3;
                j2 = 0;
            }
        }
        return j2;
    }

    private void maybeEvictFilesInCacheDir() throws IOException {
        synchronized (this.mLock) {
            boolean maybeUpdateFileCacheSize = maybeUpdateFileCacheSize();
            updateFileCacheSizeLimit();
            long size = this.mCacheStats.getSize();
            if (size > this.mCacheSizeLimit && !maybeUpdateFileCacheSize) {
                this.mCacheStats.reset();
                maybeUpdateFileCacheSize();
            }
            if (size > this.mCacheSizeLimit) {
                evictAboveSize((this.mCacheSizeLimit * 9) / 10, CacheEventListener.EvictionReason.CACHE_FULL);
            }
        }
    }

    private void evictAboveSize(long j, CacheEventListener.EvictionReason evictionReason) throws IOException {
        try {
            Collection<DiskStorage.Entry> sortedEntries = getSortedEntries(this.mStorage.getEntries());
            long size = this.mCacheStats.getSize();
            long j2 = size - j;
            int i = 0;
            Iterator<DiskStorage.Entry> it = sortedEntries.iterator();
            long j3 = 0;
            long j4 = 0;
            while (it.hasNext()) {
                DiskStorage.Entry next = it.next();
                if (j4 > j2) {
                    break;
                }
                long remove = this.mStorage.remove(next);
                removeValueFromIndex(next.getId());
                if (remove > j3) {
                    i++;
                    j4 += remove;
                    this.mCacheEventListener.onEviction(new SettableCacheEvent().setResourceId(next.getId()).setEvictionReason(evictionReason).setItemSize(remove).setCacheSize(size - j4).setCacheLimit(j));
                }
                it = it;
                j3 = 0;
            }
            this.mCacheStats.increment(-j4, (long) (-i));
            this.mStorage.purgeUnexpectedResources();
        } catch (IOException e) {
            this.mCacheErrorLogger.logError(CacheErrorLogger.CacheErrorCategory.EVICTION, TAG, "evictAboveSize: " + e.getMessage(), e);
            throw e;
        }
    }

    private Collection<DiskStorage.Entry> getSortedEntries(Collection<DiskStorage.Entry> collection) {
        long now = this.mClock.now() + FUTURE_TIMESTAMP_THRESHOLD_MS;
        ArrayList arrayList = new ArrayList(collection.size());
        ArrayList arrayList2 = new ArrayList(collection.size());
        for (DiskStorage.Entry entry : collection) {
            if (entry.getTimestamp() > now) {
                arrayList.add(entry);
            } else {
                arrayList2.add(entry);
            }
        }
        Collections.sort(arrayList2, this.mEntryEvictionComparatorSupplier.get());
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    private void updateFileCacheSizeLimit() {
        if (this.mStatFsHelper.testLowDiskSpace(StatFsHelper.StorageType.INTERNAL, this.mDefaultCacheSizeLimit - this.mCacheStats.getSize())) {
            this.mCacheSizeLimit = this.mLowDiskSpaceCacheSizeLimit;
        } else {
            this.mCacheSizeLimit = this.mDefaultCacheSizeLimit;
        }
    }

    @Override // com.facebook.cache.disk.FileCache
    public long getSize() {
        return this.mCacheStats.getSize();
    }

    @Override // com.facebook.cache.disk.FileCache
    public void clearAll() {
        synchronized (this.mLock) {
            try {
                this.mStorage.clearAll();
                this.mResourceIndex.clear();
                this.mIndex.clear();
            } catch (IOException e) {
                CacheErrorLogger cacheErrorLogger = this.mCacheErrorLogger;
                CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.EVICTION;
                Class<?> cls = TAG;
                cacheErrorLogger.logError(cacheErrorCategory, cls, "clearAll: " + e.getMessage(), e);
            }
            DiskStorageCacheUtil.clearDiskEntries(this.mSharedPreferences);
            this.mCacheStats.reset();
        }
    }

    @Override // com.facebook.cache.disk.FileCache
    public boolean hasKeySync(CacheKey cacheKey) {
        synchronized (this.mLock) {
            int hashCode = cacheKey.hashCode();
            if (this.mIndex.containsKey(Integer.valueOf(hashCode))) {
                return true;
            }
            List<String> resourceIds = getResourceIds(cacheKey);
            for (int i = 0; i < resourceIds.size(); i++) {
                String str = resourceIds.get(i);
                if (this.mResourceIndex.contains(str)) {
                    this.mIndex.put(Integer.valueOf(hashCode), str);
                    return true;
                }
            }
            return false;
        }
    }

    @Override // com.facebook.cache.disk.FileCache
    public boolean hasKey(CacheKey cacheKey) {
        synchronized (this.mLock) {
            if (hasKeySync(cacheKey)) {
                return true;
            }
            try {
                List<String> resourceIds = getResourceIds(cacheKey);
                String str = null;
                int i = 0;
                boolean z = false;
                while (i < resourceIds.size() && !(z = this.mStorage.contains((str = resourceIds.get(i)), cacheKey))) {
                    i++;
                }
                if (z) {
                    addKeyToIndex(Integer.valueOf(cacheKey.hashCode()), str);
                }
                return z;
            } catch (IOException unused) {
                return false;
            }
        }
    }

    @Override // com.facebook.common.disk.DiskTrimmable
    public void trimToMinimum() {
        synchronized (this.mLock) {
            maybeUpdateFileCacheSize();
            long size = this.mCacheStats.getSize();
            if (this.mCacheSizeLimitMinimum > 0 && size > 0 && size >= this.mCacheSizeLimitMinimum) {
                double d = 1.0d - (((double) this.mCacheSizeLimitMinimum) / ((double) size));
                if (d > TRIMMING_LOWER_BOUND) {
                    trimBy(d);
                }
            }
        }
    }

    @Override // com.facebook.common.disk.DiskTrimmable
    public void trimToNothing() {
        clearAll();
    }

    private void trimBy(double d) {
        synchronized (this.mLock) {
            try {
                this.mCacheStats.reset();
                maybeUpdateFileCacheSize();
                long size = this.mCacheStats.getSize();
                evictAboveSize(size - ((long) (d * ((double) size))), CacheEventListener.EvictionReason.CACHE_MANAGER_TRIMMED);
            } catch (IOException e) {
                CacheErrorLogger cacheErrorLogger = this.mCacheErrorLogger;
                CacheErrorLogger.CacheErrorCategory cacheErrorCategory = CacheErrorLogger.CacheErrorCategory.EVICTION;
                Class<?> cls = TAG;
                cacheErrorLogger.logError(cacheErrorCategory, cls, "trimBy: " + e.getMessage(), e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean maybeUpdateFileCacheSize() {
        long now = this.mClock.now();
        if (this.mCacheStats.isInitialized()) {
            long j = this.mCacheSizeLastUpdateTime;
            if (j != -1 && now - j <= FILECACHE_SIZE_UPDATE_PERIOD_MS) {
                return false;
            }
        }
        maybeUpdateFileCacheSizeAndIndex();
        this.mCacheSizeLastUpdateTime = now;
        return true;
    }

    private void maybeUpdateFileCacheSizeAndIndex() {
        long j;
        long now = this.mClock.now();
        long j2 = FUTURE_TIMESTAMP_THRESHOLD_MS + now;
        HashSet hashSet = new HashSet();
        try {
            boolean z = false;
            long j3 = 0;
            long j4 = -1;
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            for (DiskStorage.Entry entry : this.mStorage.getEntries()) {
                i3++;
                j3 += entry.getSize();
                if (entry.getTimestamp() > j2) {
                    i2++;
                    j = j2;
                    int size = (int) (((long) i) + entry.getSize());
                    j4 = Math.max(entry.getTimestamp() - now, j4);
                    z = true;
                    i = size;
                } else {
                    j = j2;
                    hashSet.add(entry.getId());
                }
                j2 = j;
            }
            if (z) {
                this.mCacheErrorLogger.logError(CacheErrorLogger.CacheErrorCategory.READ_INVALID_ENTRY, TAG, "Future timestamp found in " + i2 + " files , with a total size of " + i + " bytes, and a maximum time delta of " + j4 + "ms", null);
            }
            long j5 = (long) i3;
            if (!(this.mCacheStats.getCount() == j5 && this.mCacheStats.getSize() == j3)) {
                this.mResourceIndex.clear();
                this.mResourceIndex.addAll(hashSet);
                this.mIndex = DiskStorageCacheUtil.readStoredIndex(this.mSharedPreferences, this.mResourceIndex);
                this.mCacheStats.set(j3, j5);
            }
        } catch (IOException e) {
            this.mCacheErrorLogger.logError(CacheErrorLogger.CacheErrorCategory.GENERIC_IO, TAG, "calcFileCacheSize: " + e.getMessage(), e);
        }
    }

    private static List<String> getResourceIds(CacheKey cacheKey) {
        try {
            if (cacheKey instanceof MultiCacheKey) {
                List<CacheKey> cacheKeys = ((MultiCacheKey) cacheKey).getCacheKeys();
                ArrayList arrayList = new ArrayList(cacheKeys.size());
                for (int i = 0; i < cacheKeys.size(); i++) {
                    arrayList.add(secureHashKey(cacheKeys.get(i)));
                }
                return arrayList;
            }
            ArrayList arrayList2 = new ArrayList(1);
            arrayList2.add(secureHashKey(cacheKey));
            return arrayList2;
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    static String getFirstResourceId(CacheKey cacheKey) {
        try {
            if (cacheKey instanceof MultiCacheKey) {
                return secureHashKey(((MultiCacheKey) cacheKey).getCacheKeys().get(0));
            }
            return secureHashKey(cacheKey);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    private static String secureHashKey(CacheKey cacheKey) throws UnsupportedEncodingException {
        return SecureHashUtil.makeSHA1HashBase64(cacheKey.toString().getBytes("UTF-8"));
    }

    private static SharedPreferences initializeSharedPreferences(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext.getSharedPreferences(SHARED_PREFS_FILENAME_PREFIX + str, 0);
    }

    private void addKeyToIndex(Integer num, String str) {
        this.mIndex.put(num, str);
        this.mResourceIndex.add(str);
        DiskStorageCacheUtil.addDiskCacheEntry(num, str, this.mSharedPreferences);
    }

    private void removeKeyFromIndex(Integer num) {
        String remove = this.mIndex.remove(num);
        if (remove != null) {
            this.mResourceIndex.remove(remove);
            DiskStorageCacheUtil.deleteDiskCacheEntry(num, this.mSharedPreferences);
        }
    }

    private void removeValueFromIndex(String str) {
        removeKeyFromIndex(removeKeyByValue(this.mIndex, str));
    }

    private static Integer removeKeyByValue(Map<Integer, String> map, String str) {
        for (Map.Entry<Integer, String> entry : map.entrySet()) {
            if (entry.getValue().equals(str)) {
                return entry.getKey();
            }
        }
        return 0;
    }
}
