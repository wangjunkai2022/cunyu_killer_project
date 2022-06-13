package com.google.common.cache;

import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.base.Ticker;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.collect.AbstractSequentialIterator;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.primitives.Ints;
import com.google.common.util.concurrent.ExecutionError;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import com.google.common.util.concurrent.UncheckedExecutionException;
import com.google.common.util.concurrent.Uninterruptibles;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes2.dex */
public class LocalCache<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V> {
    static final int CONTAINS_VALUE_RETRIES = 3;
    static final int DRAIN_MAX = 16;
    static final int DRAIN_THRESHOLD = 63;
    static final int MAXIMUM_CAPACITY = 1073741824;
    static final int MAX_SEGMENTS = 65536;
    final int concurrencyLevel;
    @NullableDecl
    final CacheLoader<? super K, V> defaultLoader;
    final EntryFactory entryFactory;
    @MonotonicNonNullDecl
    Set<Map.Entry<K, V>> entrySet;
    final long expireAfterAccessNanos;
    final long expireAfterWriteNanos;
    final AbstractCache.StatsCounter globalStatsCounter;
    final Equivalence<Object> keyEquivalence;
    @MonotonicNonNullDecl
    Set<K> keySet;
    final Strength keyStrength;
    final long maxWeight;
    final long refreshNanos;
    final RemovalListener<K, V> removalListener;
    final Queue<RemovalNotification<K, V>> removalNotificationQueue;
    final int segmentMask;
    final int segmentShift;
    final Segment<K, V>[] segments;
    final Ticker ticker;
    final Equivalence<Object> valueEquivalence;
    final Strength valueStrength;
    @MonotonicNonNullDecl
    Collection<V> values;
    final Weigher<K, V> weigher;
    static final Logger logger = Logger.getLogger(LocalCache.class.getName());
    static final ValueReference<Object, Object> UNSET = new ValueReference<Object, Object>() { // from class: com.google.common.cache.LocalCache.1
        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<Object, Object> copyFor(ReferenceQueue<Object> referenceQueue, @NullableDecl Object obj, ReferenceEntry<Object, Object> referenceEntry) {
            return this;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public Object get() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ReferenceEntry<Object, Object> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return 0;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(Object obj) {
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public Object waitForValue() {
            return null;
        }
    };
    static final Queue<?> DISCARDING_QUEUE = new AbstractQueue<Object>() { // from class: com.google.common.cache.LocalCache.2
        @Override // java.util.Queue
        public boolean offer(Object obj) {
            return true;
        }

        @Override // java.util.Queue
        public Object peek() {
            return null;
        }

        @Override // java.util.Queue
        public Object poll() {
            return null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Object> iterator() {
            return ImmutableSet.of().iterator();
        }
    };

    /* loaded from: classes2.dex */
    public enum NullEntry implements ReferenceEntry<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return 0;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public int getHash() {
            return 0;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public Object getKey() {
            return null;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<Object, Object> getNext() {
            return null;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<Object, Object> getNextInAccessQueue() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<Object, Object> getNextInWriteQueue() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<Object, Object> getPreviousInAccessQueue() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<Object, Object> getPreviousInWriteQueue() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ValueReference<Object, Object> getValueReference() {
            return null;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return 0;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setAccessTime(long j) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<Object, Object> referenceEntry) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<Object, Object> referenceEntry) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<Object, Object> referenceEntry) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<Object, Object> referenceEntry) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setValueReference(ValueReference<Object, Object> valueReference) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setWriteTime(long j) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes2.dex */
    public static abstract class Strength extends Enum<Strength> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Equivalence<Object> defaultEquivalence();

        abstract <K, V> ValueReference<K, V> referenceValue(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, V v, int i);
    }

    /* loaded from: classes2.dex */
    public interface ValueReference<K, V> {
        ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, @NullableDecl V v, ReferenceEntry<K, V> referenceEntry);

        @NullableDecl
        V get();

        @NullableDecl
        ReferenceEntry<K, V> getEntry();

        int getWeight();

        boolean isActive();

        boolean isLoading();

        void notifyNewValue(@NullableDecl V v);

        V waitForValue() throws ExecutionException;
    }

    static int rehash(int i) {
        int i2 = i + ((i << 15) ^ -12931);
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = i5 + (i5 << 2) + (i5 << 14);
        return i6 ^ (i6 >>> 16);
    }

    LocalCache(CacheBuilder<? super K, ? super V> cacheBuilder, @NullableDecl CacheLoader<? super K, V> cacheLoader) {
        this.concurrencyLevel = Math.min(cacheBuilder.getConcurrencyLevel(), 65536);
        this.keyStrength = cacheBuilder.getKeyStrength();
        this.valueStrength = cacheBuilder.getValueStrength();
        this.keyEquivalence = cacheBuilder.getKeyEquivalence();
        this.valueEquivalence = cacheBuilder.getValueEquivalence();
        this.maxWeight = cacheBuilder.getMaximumWeight();
        this.weigher = (Weigher<K, V>) cacheBuilder.getWeigher();
        this.expireAfterAccessNanos = cacheBuilder.getExpireAfterAccessNanos();
        this.expireAfterWriteNanos = cacheBuilder.getExpireAfterWriteNanos();
        this.refreshNanos = cacheBuilder.getRefreshNanos();
        this.removalListener = (RemovalListener<K, V>) cacheBuilder.getRemovalListener();
        this.removalNotificationQueue = this.removalListener == CacheBuilder.NullListener.INSTANCE ? discardingQueue() : new ConcurrentLinkedQueue<>();
        this.ticker = cacheBuilder.getTicker(recordsTime());
        this.entryFactory = EntryFactory.getFactory(this.keyStrength, usesAccessEntries(), usesWriteEntries());
        this.globalStatsCounter = (AbstractCache.StatsCounter) cacheBuilder.getStatsCounterSupplier().get();
        this.defaultLoader = cacheLoader;
        int min = Math.min(cacheBuilder.getInitialCapacity(), 1073741824);
        if (evictsBySize() && !customWeigher()) {
            min = (int) Math.min((long) min, this.maxWeight);
        }
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        int i4 = 1;
        while (i4 < this.concurrencyLevel && (!evictsBySize() || ((long) (i4 * 20)) <= this.maxWeight)) {
            i3++;
            i4 <<= 1;
        }
        this.segmentShift = 32 - i3;
        this.segmentMask = i4 - 1;
        this.segments = newSegmentArray(i4);
        int i5 = min / i4;
        while (i2 < (i5 * i4 < min ? i5 + 1 : i5)) {
            i2 <<= 1;
        }
        if (evictsBySize()) {
            long j = this.maxWeight;
            long j2 = (long) i4;
            long j3 = (j / j2) + 1;
            long j4 = j % j2;
            while (i < this.segments.length) {
                if (((long) i) == j4) {
                    j3--;
                }
                this.segments[i] = createSegment(i2, j3, (AbstractCache.StatsCounter) cacheBuilder.getStatsCounterSupplier().get());
                i++;
            }
            return;
        }
        while (true) {
            Segment<K, V>[] segmentArr = this.segments;
            if (i < segmentArr.length) {
                segmentArr[i] = createSegment(i2, -1, (AbstractCache.StatsCounter) cacheBuilder.getStatsCounterSupplier().get());
                i++;
            } else {
                return;
            }
        }
    }

    boolean evictsBySize() {
        return this.maxWeight >= 0;
    }

    boolean customWeigher() {
        return this.weigher != CacheBuilder.OneWeigher.INSTANCE;
    }

    boolean expires() {
        return expiresAfterWrite() || expiresAfterAccess();
    }

    boolean expiresAfterWrite() {
        return this.expireAfterWriteNanos > 0;
    }

    boolean expiresAfterAccess() {
        return this.expireAfterAccessNanos > 0;
    }

    boolean refreshes() {
        return this.refreshNanos > 0;
    }

    boolean usesAccessQueue() {
        return expiresAfterAccess() || evictsBySize();
    }

    boolean usesWriteQueue() {
        return expiresAfterWrite();
    }

    boolean recordsWrite() {
        return expiresAfterWrite() || refreshes();
    }

    boolean recordsAccess() {
        return expiresAfterAccess();
    }

    boolean recordsTime() {
        return recordsWrite() || recordsAccess();
    }

    boolean usesWriteEntries() {
        return usesWriteQueue() || recordsWrite();
    }

    boolean usesAccessEntries() {
        return usesAccessQueue() || recordsAccess();
    }

    boolean usesKeyReferences() {
        return this.keyStrength != Strength.STRONG;
    }

    boolean usesValueReferences() {
        return this.valueStrength != Strength.STRONG;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes2.dex */
    public static abstract class EntryFactory extends Enum<EntryFactory> {
        static final int ACCESS_MASK = 1;
        static final int WEAK_MASK = 4;
        static final int WRITE_MASK = 2;
        static final EntryFactory[] factories = {STRONG, STRONG_ACCESS, STRONG_WRITE, STRONG_ACCESS_WRITE, WEAK, WEAK_ACCESS, WEAK_WRITE, WEAK_ACCESS_WRITE};

        abstract <K, V> ReferenceEntry<K, V> newEntry(Segment<K, V> segment, K k, int i, @NullableDecl ReferenceEntry<K, V> referenceEntry);

        /* JADX WARN: Multi-variable type inference failed */
        static EntryFactory getFactory(Strength strength, boolean z, boolean z2) {
            int i = 0;
            int i2 = (strength == Strength.WEAK ? 4 : 0) | (z ? 1 : 0);
            if (z2) {
                i = 2;
            }
            return factories[i2 | i];
        }

        <K, V> ReferenceEntry<K, V> copyEntry(Segment<K, V> segment, ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            return newEntry(segment, referenceEntry.getKey(), referenceEntry.getHash(), referenceEntry2);
        }

        <K, V> void copyAccessEntry(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            referenceEntry2.setAccessTime(referenceEntry.getAccessTime());
            LocalCache.connectAccessOrder(referenceEntry.getPreviousInAccessQueue(), referenceEntry2);
            LocalCache.connectAccessOrder(referenceEntry2, referenceEntry.getNextInAccessQueue());
            LocalCache.nullifyAccessOrder(referenceEntry);
        }

        <K, V> void copyWriteEntry(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            referenceEntry2.setWriteTime(referenceEntry.getWriteTime());
            LocalCache.connectWriteOrder(referenceEntry.getPreviousInWriteQueue(), referenceEntry2);
            LocalCache.connectWriteOrder(referenceEntry2, referenceEntry.getNextInWriteQueue());
            LocalCache.nullifyWriteOrder(referenceEntry);
        }
    }

    static <K, V> ValueReference<K, V> unset() {
        return (ValueReference<K, V>) UNSET;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class AbstractReferenceEntry<K, V> implements ReferenceEntry<K, V> {
        AbstractReferenceEntry() {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ValueReference<K, V> getValueReference() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setValueReference(ValueReference<K, V> valueReference) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNext() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public int getHash() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public K getKey() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setAccessTime(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setWriteTime(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }
    }

    static <K, V> ReferenceEntry<K, V> nullEntry() {
        return NullEntry.INSTANCE;
    }

    static <E> Queue<E> discardingQueue() {
        return (Queue<E>) DISCARDING_QUEUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class StrongEntry<K, V> extends AbstractReferenceEntry<K, V> {
        final int hash;
        final K key;
        @NullableDecl
        final ReferenceEntry<K, V> next;
        volatile ValueReference<K, V> valueReference = LocalCache.unset();

        StrongEntry(K k, int i, @NullableDecl ReferenceEntry<K, V> referenceEntry) {
            this.key = k;
            this.hash = i;
            this.next = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public K getKey() {
            return this.key;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ValueReference<K, V> getValueReference() {
            return this.valueReference;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setValueReference(ValueReference<K, V> valueReference) {
            this.valueReference = valueReference;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public int getHash() {
            return this.hash;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNext() {
            return this.next;
        }
    }

    /* loaded from: classes2.dex */
    static final class StrongAccessEntry<K, V> extends StrongEntry<K, V> {
        volatile long accessTime = Long.MAX_VALUE;
        ReferenceEntry<K, V> nextAccess = LocalCache.nullEntry();
        ReferenceEntry<K, V> previousAccess = LocalCache.nullEntry();

        StrongAccessEntry(K k, int i, @NullableDecl ReferenceEntry<K, V> referenceEntry) {
            super(k, i, referenceEntry);
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return this.accessTime;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setAccessTime(long j) {
            this.accessTime = j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.nextAccess;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextAccess = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.previousAccess;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousAccess = referenceEntry;
        }
    }

    /* loaded from: classes2.dex */
    static final class StrongWriteEntry<K, V> extends StrongEntry<K, V> {
        volatile long writeTime = Long.MAX_VALUE;
        ReferenceEntry<K, V> nextWrite = LocalCache.nullEntry();
        ReferenceEntry<K, V> previousWrite = LocalCache.nullEntry();

        StrongWriteEntry(K k, int i, @NullableDecl ReferenceEntry<K, V> referenceEntry) {
            super(k, i, referenceEntry);
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return this.writeTime;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setWriteTime(long j) {
            this.writeTime = j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.nextWrite;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextWrite = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.previousWrite;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousWrite = referenceEntry;
        }
    }

    /* loaded from: classes2.dex */
    static final class StrongAccessWriteEntry<K, V> extends StrongEntry<K, V> {
        volatile long accessTime = Long.MAX_VALUE;
        ReferenceEntry<K, V> nextAccess = LocalCache.nullEntry();
        ReferenceEntry<K, V> previousAccess = LocalCache.nullEntry();
        volatile long writeTime = Long.MAX_VALUE;
        ReferenceEntry<K, V> nextWrite = LocalCache.nullEntry();
        ReferenceEntry<K, V> previousWrite = LocalCache.nullEntry();

        StrongAccessWriteEntry(K k, int i, @NullableDecl ReferenceEntry<K, V> referenceEntry) {
            super(k, i, referenceEntry);
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return this.accessTime;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setAccessTime(long j) {
            this.accessTime = j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.nextAccess;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextAccess = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.previousAccess;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousAccess = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return this.writeTime;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setWriteTime(long j) {
            this.writeTime = j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.nextWrite;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextWrite = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.previousWrite;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousWrite = referenceEntry;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class WeakEntry<K, V> extends WeakReference<K> implements ReferenceEntry<K, V> {
        final int hash;
        @NullableDecl
        final ReferenceEntry<K, V> next;
        volatile ValueReference<K, V> valueReference = LocalCache.unset();

        WeakEntry(ReferenceQueue<K> referenceQueue, K k, int i, @NullableDecl ReferenceEntry<K, V> referenceEntry) {
            super(k, referenceQueue);
            this.hash = i;
            this.next = referenceEntry;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public K getKey() {
            return (K) get();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setAccessTime(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setWriteTime(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ValueReference<K, V> getValueReference() {
            return this.valueReference;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void setValueReference(ValueReference<K, V> valueReference) {
            this.valueReference = valueReference;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public int getHash() {
            return this.hash;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNext() {
            return this.next;
        }
    }

    /* loaded from: classes2.dex */
    static final class WeakAccessEntry<K, V> extends WeakEntry<K, V> {
        volatile long accessTime = Long.MAX_VALUE;
        ReferenceEntry<K, V> nextAccess = LocalCache.nullEntry();
        ReferenceEntry<K, V> previousAccess = LocalCache.nullEntry();

        WeakAccessEntry(ReferenceQueue<K> referenceQueue, K k, int i, @NullableDecl ReferenceEntry<K, V> referenceEntry) {
            super(referenceQueue, k, i, referenceEntry);
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return this.accessTime;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setAccessTime(long j) {
            this.accessTime = j;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.nextAccess;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextAccess = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.previousAccess;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousAccess = referenceEntry;
        }
    }

    /* loaded from: classes2.dex */
    static final class WeakWriteEntry<K, V> extends WeakEntry<K, V> {
        volatile long writeTime = Long.MAX_VALUE;
        ReferenceEntry<K, V> nextWrite = LocalCache.nullEntry();
        ReferenceEntry<K, V> previousWrite = LocalCache.nullEntry();

        WeakWriteEntry(ReferenceQueue<K> referenceQueue, K k, int i, @NullableDecl ReferenceEntry<K, V> referenceEntry) {
            super(referenceQueue, k, i, referenceEntry);
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return this.writeTime;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setWriteTime(long j) {
            this.writeTime = j;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.nextWrite;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextWrite = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.previousWrite;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousWrite = referenceEntry;
        }
    }

    /* loaded from: classes2.dex */
    static final class WeakAccessWriteEntry<K, V> extends WeakEntry<K, V> {
        volatile long accessTime = Long.MAX_VALUE;
        ReferenceEntry<K, V> nextAccess = LocalCache.nullEntry();
        ReferenceEntry<K, V> previousAccess = LocalCache.nullEntry();
        volatile long writeTime = Long.MAX_VALUE;
        ReferenceEntry<K, V> nextWrite = LocalCache.nullEntry();
        ReferenceEntry<K, V> previousWrite = LocalCache.nullEntry();

        WeakAccessWriteEntry(ReferenceQueue<K> referenceQueue, K k, int i, @NullableDecl ReferenceEntry<K, V> referenceEntry) {
            super(referenceQueue, k, i, referenceEntry);
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public long getAccessTime() {
            return this.accessTime;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setAccessTime(long j) {
            this.accessTime = j;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInAccessQueue() {
            return this.nextAccess;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextAccess = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInAccessQueue() {
            return this.previousAccess;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousAccess = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public long getWriteTime() {
            return this.writeTime;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setWriteTime(long j) {
            this.writeTime = j;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getNextInWriteQueue() {
            return this.nextWrite;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.nextWrite = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public ReferenceEntry<K, V> getPreviousInWriteQueue() {
            return this.previousWrite;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
            this.previousWrite = referenceEntry;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class WeakValueReference<K, V> extends WeakReference<V> implements ValueReference<K, V> {
        final ReferenceEntry<K, V> entry;

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(V v) {
        }

        WeakValueReference(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            super(v, referenceQueue);
            this.entry = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ReferenceEntry<K, V> getEntry() {
            return this.entry;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return new WeakValueReference(referenceQueue, v, referenceEntry);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V waitForValue() {
            return get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SoftValueReference<K, V> extends SoftReference<V> implements ValueReference<K, V> {
        final ReferenceEntry<K, V> entry;

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(V v) {
        }

        SoftValueReference(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            super(v, referenceQueue);
            this.entry = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ReferenceEntry<K, V> getEntry() {
            return this.entry;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return new SoftValueReference(referenceQueue, v, referenceEntry);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V waitForValue() {
            return get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class StrongValueReference<K, V> implements ValueReference<K, V> {
        final V referent;

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return this;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ReferenceEntry<K, V> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(V v) {
        }

        StrongValueReference(V v) {
            this.referent = v;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V get() {
            return this.referent;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V waitForValue() {
            return get();
        }
    }

    /* loaded from: classes2.dex */
    static final class WeightedWeakValueReference<K, V> extends WeakValueReference<K, V> {
        final int weight;

        WeightedWeakValueReference(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry, int i) {
            super(referenceQueue, v, referenceEntry);
            this.weight = i;
        }

        @Override // com.google.common.cache.LocalCache.WeakValueReference, com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return this.weight;
        }

        @Override // com.google.common.cache.LocalCache.WeakValueReference, com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return new WeightedWeakValueReference(referenceQueue, v, referenceEntry, this.weight);
        }
    }

    /* loaded from: classes2.dex */
    static final class WeightedSoftValueReference<K, V> extends SoftValueReference<K, V> {
        final int weight;

        WeightedSoftValueReference(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry, int i) {
            super(referenceQueue, v, referenceEntry);
            this.weight = i;
        }

        @Override // com.google.common.cache.LocalCache.SoftValueReference, com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return this.weight;
        }

        @Override // com.google.common.cache.LocalCache.SoftValueReference, com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, V v, ReferenceEntry<K, V> referenceEntry) {
            return new WeightedSoftValueReference(referenceQueue, v, referenceEntry, this.weight);
        }
    }

    /* loaded from: classes2.dex */
    static final class WeightedStrongValueReference<K, V> extends StrongValueReference<K, V> {
        final int weight;

        WeightedStrongValueReference(V v, int i) {
            super(v);
            this.weight = i;
        }

        @Override // com.google.common.cache.LocalCache.StrongValueReference, com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return this.weight;
        }
    }

    ReferenceEntry<K, V> newEntry(K k, int i, @NullableDecl ReferenceEntry<K, V> referenceEntry) {
        Segment<K, V> segmentFor = segmentFor(i);
        segmentFor.lock();
        try {
            return segmentFor.newEntry(k, i, referenceEntry);
        } finally {
            segmentFor.unlock();
        }
    }

    ReferenceEntry<K, V> copyEntry(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
        return segmentFor(referenceEntry.getHash()).copyEntry(referenceEntry, referenceEntry2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    ValueReference<K, V> newValueReference(ReferenceEntry<K, V> referenceEntry, V v, int i) {
        return this.valueStrength.referenceValue(segmentFor(referenceEntry.getHash()), referenceEntry, Preconditions.checkNotNull(v), i);
    }

    int hash(@NullableDecl Object obj) {
        return rehash(this.keyEquivalence.hash(obj));
    }

    void reclaimValue(ValueReference<K, V> valueReference) {
        ReferenceEntry<K, V> entry = valueReference.getEntry();
        int hash = entry.getHash();
        segmentFor(hash).reclaimValue(entry.getKey(), hash, valueReference);
    }

    void reclaimKey(ReferenceEntry<K, V> referenceEntry) {
        int hash = referenceEntry.getHash();
        segmentFor(hash).reclaimKey(referenceEntry, hash);
    }

    boolean isLive(ReferenceEntry<K, V> referenceEntry, long j) {
        return segmentFor(referenceEntry.getHash()).getLiveValue(referenceEntry, j) != null;
    }

    Segment<K, V> segmentFor(int i) {
        return this.segments[(i >>> this.segmentShift) & this.segmentMask];
    }

    Segment<K, V> createSegment(int i, long j, AbstractCache.StatsCounter statsCounter) {
        return new Segment<>(this, i, j, statsCounter);
    }

    @NullableDecl
    V getLiveValue(ReferenceEntry<K, V> referenceEntry, long j) {
        V v;
        if (referenceEntry.getKey() == null || (v = referenceEntry.getValueReference().get()) == null || isExpired(referenceEntry, j)) {
            return null;
        }
        return v;
    }

    boolean isExpired(ReferenceEntry<K, V> referenceEntry, long j) {
        Preconditions.checkNotNull(referenceEntry);
        if (expiresAfterAccess() && j - referenceEntry.getAccessTime() >= this.expireAfterAccessNanos) {
            return true;
        }
        if (!expiresAfterWrite() || j - referenceEntry.getWriteTime() < this.expireAfterWriteNanos) {
            return false;
        }
        return true;
    }

    static <K, V> void connectAccessOrder(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
        referenceEntry.setNextInAccessQueue(referenceEntry2);
        referenceEntry2.setPreviousInAccessQueue(referenceEntry);
    }

    static <K, V> void nullifyAccessOrder(ReferenceEntry<K, V> referenceEntry) {
        ReferenceEntry<K, V> nullEntry = nullEntry();
        referenceEntry.setNextInAccessQueue(nullEntry);
        referenceEntry.setPreviousInAccessQueue(nullEntry);
    }

    static <K, V> void connectWriteOrder(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
        referenceEntry.setNextInWriteQueue(referenceEntry2);
        referenceEntry2.setPreviousInWriteQueue(referenceEntry);
    }

    static <K, V> void nullifyWriteOrder(ReferenceEntry<K, V> referenceEntry) {
        ReferenceEntry<K, V> nullEntry = nullEntry();
        referenceEntry.setNextInWriteQueue(nullEntry);
        referenceEntry.setPreviousInWriteQueue(nullEntry);
    }

    void processPendingNotifications() {
        while (true) {
            RemovalNotification<K, V> poll = this.removalNotificationQueue.poll();
            if (poll != null) {
                try {
                    this.removalListener.onRemoval(poll);
                } catch (Throwable th) {
                    logger.log(Level.WARNING, "Exception thrown by removal listener", th);
                }
            } else {
                return;
            }
        }
    }

    final Segment<K, V>[] newSegmentArray(int i) {
        return new Segment[i];
    }

    /* loaded from: classes2.dex */
    public static class Segment<K, V> extends ReentrantLock {
        final Queue<ReferenceEntry<K, V>> accessQueue;
        volatile int count;
        @NullableDecl
        final ReferenceQueue<K> keyReferenceQueue;
        final LocalCache<K, V> map;
        final long maxSegmentWeight;
        int modCount;
        final AtomicInteger readCount = new AtomicInteger();
        final Queue<ReferenceEntry<K, V>> recencyQueue;
        final AbstractCache.StatsCounter statsCounter;
        @MonotonicNonNullDecl
        volatile AtomicReferenceArray<ReferenceEntry<K, V>> table;
        int threshold;
        long totalWeight;
        @NullableDecl
        final ReferenceQueue<V> valueReferenceQueue;
        final Queue<ReferenceEntry<K, V>> writeQueue;

        Segment(LocalCache<K, V> localCache, int i, long j, AbstractCache.StatsCounter statsCounter) {
            Queue<ReferenceEntry<K, V>> queue;
            Queue<ReferenceEntry<K, V>> queue2;
            Queue<ReferenceEntry<K, V>> queue3;
            this.map = localCache;
            this.maxSegmentWeight = j;
            this.statsCounter = (AbstractCache.StatsCounter) Preconditions.checkNotNull(statsCounter);
            initTable(newEntryArray(i));
            ReferenceQueue<V> referenceQueue = null;
            this.keyReferenceQueue = localCache.usesKeyReferences() ? new ReferenceQueue<>() : null;
            this.valueReferenceQueue = localCache.usesValueReferences() ? new ReferenceQueue<>() : referenceQueue;
            if (localCache.usesAccessQueue()) {
                queue = new ConcurrentLinkedQueue<>();
            } else {
                queue = LocalCache.discardingQueue();
            }
            this.recencyQueue = queue;
            if (localCache.usesWriteQueue()) {
                queue2 = new WriteQueue<>();
            } else {
                queue2 = LocalCache.discardingQueue();
            }
            this.writeQueue = queue2;
            if (localCache.usesAccessQueue()) {
                queue3 = new AccessQueue<>();
            } else {
                queue3 = LocalCache.discardingQueue();
            }
            this.accessQueue = queue3;
        }

        AtomicReferenceArray<ReferenceEntry<K, V>> newEntryArray(int i) {
            return new AtomicReferenceArray<>(i);
        }

        void initTable(AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray) {
            this.threshold = (atomicReferenceArray.length() * 3) / 4;
            if (!this.map.customWeigher()) {
                int i = this.threshold;
                if (((long) i) == this.maxSegmentWeight) {
                    this.threshold = i + 1;
                }
            }
            this.table = atomicReferenceArray;
        }

        /* JADX WARN: Multi-variable type inference failed */
        ReferenceEntry<K, V> newEntry(K k, int i, @NullableDecl ReferenceEntry<K, V> referenceEntry) {
            return this.map.entryFactory.newEntry(this, Preconditions.checkNotNull(k), i, referenceEntry);
        }

        ReferenceEntry<K, V> copyEntry(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            if (referenceEntry.getKey() == null) {
                return null;
            }
            ValueReference<K, V> valueReference = referenceEntry.getValueReference();
            V v = valueReference.get();
            if (v == null && valueReference.isActive()) {
                return null;
            }
            ReferenceEntry<K, V> copyEntry = this.map.entryFactory.copyEntry(this, referenceEntry, referenceEntry2);
            copyEntry.setValueReference(valueReference.copyFor(this.valueReferenceQueue, v, copyEntry));
            return copyEntry;
        }

        void setValue(ReferenceEntry<K, V> referenceEntry, K k, V v, long j) {
            ValueReference<K, V> valueReference = referenceEntry.getValueReference();
            int weigh = this.map.weigher.weigh(k, v);
            Preconditions.checkState(weigh >= 0, "Weights must be non-negative");
            referenceEntry.setValueReference(this.map.valueStrength.referenceValue(this, referenceEntry, v, weigh));
            recordWrite(referenceEntry, weigh, j);
            valueReference.notifyNewValue(v);
        }

        V get(K k, int i, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            ReferenceEntry<K, V> entry;
            try {
                Preconditions.checkNotNull(k);
                Preconditions.checkNotNull(cacheLoader);
                try {
                    if (!(this.count == 0 || (entry = getEntry(k, i)) == null)) {
                        long read = this.map.ticker.read();
                        V liveValue = getLiveValue(entry, read);
                        if (liveValue != null) {
                            recordRead(entry, read);
                            this.statsCounter.recordHits(1);
                            return scheduleRefresh(entry, k, i, liveValue, read, cacheLoader);
                        }
                        ValueReference<K, V> valueReference = entry.getValueReference();
                        if (valueReference.isLoading()) {
                            return waitForLoadingValue(entry, k, valueReference);
                        }
                    }
                    return lockedGetOrLoad(k, i, cacheLoader);
                } catch (ExecutionException e) {
                    Throwable cause = e.getCause();
                    if (cause instanceof Error) {
                        throw new ExecutionError((Error) cause);
                    } else if (cause instanceof RuntimeException) {
                        throw new UncheckedExecutionException(cause);
                    } else {
                        throw e;
                    }
                }
            } finally {
                postReadCleanup();
            }
        }

        @NullableDecl
        V get(Object obj, int i) {
            try {
                if (this.count != 0) {
                    long read = this.map.ticker.read();
                    ReferenceEntry<K, V> liveEntry = getLiveEntry(obj, i, read);
                    if (liveEntry == null) {
                        return null;
                    }
                    V v = liveEntry.getValueReference().get();
                    if (v != null) {
                        recordRead(liveEntry, read);
                        return scheduleRefresh(liveEntry, liveEntry.getKey(), i, v, read, this.map.defaultLoader);
                    }
                    tryDrainReferenceQueues();
                }
                return null;
            } finally {
                postReadCleanup();
            }
        }

        V lockedGetOrLoad(K k, int i, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            LoadingValueReference<K, V> loadingValueReference;
            boolean z;
            ValueReference<K, V> valueReference;
            V loadSync;
            lock();
            try {
                long read = this.map.ticker.read();
                preWriteCleanup(read);
                int i2 = this.count - 1;
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                ReferenceEntry<K, V> referenceEntry2 = referenceEntry;
                while (true) {
                    loadingValueReference = null;
                    if (referenceEntry2 == null) {
                        z = true;
                        valueReference = null;
                        break;
                    }
                    K key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() != i || key == null || !this.map.keyEquivalence.equivalent(k, key)) {
                        referenceEntry2 = referenceEntry2.getNext();
                    } else {
                        ValueReference<K, V> valueReference2 = referenceEntry2.getValueReference();
                        if (valueReference2.isLoading()) {
                            z = false;
                        } else {
                            V v = valueReference2.get();
                            if (v == null) {
                                enqueueNotification(key, i, v, valueReference2.getWeight(), RemovalCause.COLLECTED);
                            } else if (this.map.isExpired(referenceEntry2, read)) {
                                enqueueNotification(key, i, v, valueReference2.getWeight(), RemovalCause.EXPIRED);
                            } else {
                                recordLockedRead(referenceEntry2, read);
                                this.statsCounter.recordHits(1);
                                return v;
                            }
                            this.writeQueue.remove(referenceEntry2);
                            this.accessQueue.remove(referenceEntry2);
                            this.count = i2;
                            z = true;
                        }
                        valueReference = valueReference2;
                    }
                }
                if (z) {
                    loadingValueReference = new LoadingValueReference<>();
                    if (referenceEntry2 == null) {
                        referenceEntry2 = newEntry(k, i, referenceEntry);
                        referenceEntry2.setValueReference(loadingValueReference);
                        atomicReferenceArray.set(length, referenceEntry2);
                    } else {
                        referenceEntry2.setValueReference(loadingValueReference);
                    }
                }
                if (!z) {
                    return waitForLoadingValue(referenceEntry2, k, valueReference);
                }
                try {
                    synchronized (referenceEntry2) {
                        loadSync = loadSync(k, i, loadingValueReference, cacheLoader);
                    }
                    return loadSync;
                } finally {
                    this.statsCounter.recordMisses(1);
                }
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        V waitForLoadingValue(ReferenceEntry<K, V> referenceEntry, K k, ValueReference<K, V> valueReference) throws ExecutionException {
            if (valueReference.isLoading()) {
                Preconditions.checkState(!Thread.holdsLock(referenceEntry), "Recursive load of: %s", k);
                try {
                    V waitForValue = valueReference.waitForValue();
                    if (waitForValue != null) {
                        recordRead(referenceEntry, this.map.ticker.read());
                        return waitForValue;
                    }
                    throw new CacheLoader.InvalidCacheLoadException("CacheLoader returned null for key " + k + ".");
                } finally {
                    this.statsCounter.recordMisses(1);
                }
            } else {
                throw new AssertionError();
            }
        }

        V loadSync(K k, int i, LoadingValueReference<K, V> loadingValueReference, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
            return getAndRecordStats(k, i, loadingValueReference, loadingValueReference.loadFuture(k, cacheLoader));
        }

        ListenableFuture<V> loadAsync(final K k, final int i, final LoadingValueReference<K, V> loadingValueReference, CacheLoader<? super K, V> cacheLoader) {
            final ListenableFuture<V> loadFuture = loadingValueReference.loadFuture(k, cacheLoader);
            loadFuture.addListener(new Runnable() { // from class: com.google.common.cache.LocalCache.Segment.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Segment.this.getAndRecordStats(k, i, loadingValueReference, loadFuture);
                    } catch (Throwable th) {
                        LocalCache.logger.log(Level.WARNING, "Exception thrown during refresh", th);
                        loadingValueReference.setException(th);
                    }
                }
            }, MoreExecutors.directExecutor());
            return loadFuture;
        }

        V getAndRecordStats(K k, int i, LoadingValueReference<K, V> loadingValueReference, ListenableFuture<V> listenableFuture) throws ExecutionException {
            V v;
            Throwable th;
            try {
                v = (V) Uninterruptibles.getUninterruptibly(listenableFuture);
                try {
                    if (v != null) {
                        this.statsCounter.recordLoadSuccess(loadingValueReference.elapsedNanos());
                        storeLoadedValue(k, i, loadingValueReference, v);
                        if (v == null) {
                            this.statsCounter.recordLoadException(loadingValueReference.elapsedNanos());
                            removeLoadingValue(k, i, loadingValueReference);
                        }
                        return v;
                    }
                    throw new CacheLoader.InvalidCacheLoadException("CacheLoader returned null for key " + k + ".");
                } catch (Throwable th2) {
                    th = th2;
                    if (v == null) {
                        this.statsCounter.recordLoadException(loadingValueReference.elapsedNanos());
                        removeLoadingValue(k, i, loadingValueReference);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                v = null;
            }
        }

        V scheduleRefresh(ReferenceEntry<K, V> referenceEntry, K k, int i, V v, long j, CacheLoader<? super K, V> cacheLoader) {
            V refresh;
            return (!this.map.refreshes() || j - referenceEntry.getWriteTime() <= this.map.refreshNanos || referenceEntry.getValueReference().isLoading() || (refresh = refresh(k, i, cacheLoader, true)) == null) ? v : refresh;
        }

        @NullableDecl
        V refresh(K k, int i, CacheLoader<? super K, V> cacheLoader, boolean z) {
            LoadingValueReference<K, V> insertLoadingValueReference = insertLoadingValueReference(k, i, z);
            if (insertLoadingValueReference == null) {
                return null;
            }
            ListenableFuture<V> loadAsync = loadAsync(k, i, insertLoadingValueReference, cacheLoader);
            if (loadAsync.isDone()) {
                try {
                    return (V) Uninterruptibles.getUninterruptibly(loadAsync);
                } catch (Throwable unused) {
                }
            }
            return null;
        }

        @NullableDecl
        LoadingValueReference<K, V> insertLoadingValueReference(K k, int i, boolean z) {
            lock();
            try {
                long read = this.map.ticker.read();
                preWriteCleanup(read);
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                for (ReferenceEntry<K, V> referenceEntry2 = referenceEntry; referenceEntry2 != null; referenceEntry2 = referenceEntry2.getNext()) {
                    K key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        ValueReference<K, V> valueReference = referenceEntry2.getValueReference();
                        if (!valueReference.isLoading() && (!z || read - referenceEntry2.getWriteTime() >= this.map.refreshNanos)) {
                            this.modCount++;
                            LoadingValueReference<K, V> loadingValueReference = new LoadingValueReference<>(valueReference);
                            referenceEntry2.setValueReference(loadingValueReference);
                            return loadingValueReference;
                        }
                        return null;
                    }
                }
                this.modCount++;
                LoadingValueReference<K, V> loadingValueReference2 = new LoadingValueReference<>();
                ReferenceEntry<K, V> newEntry = newEntry(k, i, referenceEntry);
                newEntry.setValueReference(loadingValueReference2);
                atomicReferenceArray.set(length, newEntry);
                return loadingValueReference2;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    drainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }

        void drainReferenceQueues() {
            if (this.map.usesKeyReferences()) {
                drainKeyReferenceQueue();
            }
            if (this.map.usesValueReferences()) {
                drainValueReferenceQueue();
            }
        }

        void drainKeyReferenceQueue() {
            int i = 0;
            do {
                Reference<? extends K> poll = this.keyReferenceQueue.poll();
                if (poll != null) {
                    this.map.reclaimKey((ReferenceEntry) poll);
                    i++;
                } else {
                    return;
                }
            } while (i != 16);
        }

        void drainValueReferenceQueue() {
            int i = 0;
            do {
                Reference<? extends V> poll = this.valueReferenceQueue.poll();
                if (poll != null) {
                    this.map.reclaimValue((ValueReference) poll);
                    i++;
                } else {
                    return;
                }
            } while (i != 16);
        }

        void clearReferenceQueues() {
            if (this.map.usesKeyReferences()) {
                clearKeyReferenceQueue();
            }
            if (this.map.usesValueReferences()) {
                clearValueReferenceQueue();
            }
        }

        void clearKeyReferenceQueue() {
            do {
            } while (this.keyReferenceQueue.poll() != null);
        }

        void clearValueReferenceQueue() {
            do {
            } while (this.valueReferenceQueue.poll() != null);
        }

        void recordRead(ReferenceEntry<K, V> referenceEntry, long j) {
            if (this.map.recordsAccess()) {
                referenceEntry.setAccessTime(j);
            }
            this.recencyQueue.add(referenceEntry);
        }

        void recordLockedRead(ReferenceEntry<K, V> referenceEntry, long j) {
            if (this.map.recordsAccess()) {
                referenceEntry.setAccessTime(j);
            }
            this.accessQueue.add(referenceEntry);
        }

        void recordWrite(ReferenceEntry<K, V> referenceEntry, int i, long j) {
            drainRecencyQueue();
            this.totalWeight += (long) i;
            if (this.map.recordsAccess()) {
                referenceEntry.setAccessTime(j);
            }
            if (this.map.recordsWrite()) {
                referenceEntry.setWriteTime(j);
            }
            this.accessQueue.add(referenceEntry);
            this.writeQueue.add(referenceEntry);
        }

        void drainRecencyQueue() {
            while (true) {
                ReferenceEntry<K, V> poll = this.recencyQueue.poll();
                if (poll == null) {
                    return;
                }
                if (this.accessQueue.contains(poll)) {
                    this.accessQueue.add(poll);
                }
            }
        }

        void tryExpireEntries(long j) {
            if (tryLock()) {
                try {
                    expireEntries(j);
                } finally {
                    unlock();
                }
            }
        }

        void expireEntries(long j) {
            ReferenceEntry<K, V> peek;
            ReferenceEntry<K, V> peek2;
            drainRecencyQueue();
            do {
                peek = this.writeQueue.peek();
                if (peek == null || !this.map.isExpired(peek, j)) {
                    do {
                        peek2 = this.accessQueue.peek();
                        if (peek2 == null || !this.map.isExpired(peek2, j)) {
                            return;
                        }
                    } while (removeEntry(peek2, peek2.getHash(), RemovalCause.EXPIRED));
                    throw new AssertionError();
                }
            } while (removeEntry(peek, peek.getHash(), RemovalCause.EXPIRED));
            throw new AssertionError();
        }

        void enqueueNotification(@NullableDecl K k, int i, @NullableDecl V v, int i2, RemovalCause removalCause) {
            this.totalWeight -= (long) i2;
            if (removalCause.wasEvicted()) {
                this.statsCounter.recordEviction();
            }
            if (this.map.removalNotificationQueue != LocalCache.DISCARDING_QUEUE) {
                this.map.removalNotificationQueue.offer(RemovalNotification.create(k, v, removalCause));
            }
        }

        void evictEntries(ReferenceEntry<K, V> referenceEntry) {
            if (this.map.evictsBySize()) {
                drainRecencyQueue();
                if (((long) referenceEntry.getValueReference().getWeight()) <= this.maxSegmentWeight || removeEntry(referenceEntry, referenceEntry.getHash(), RemovalCause.SIZE)) {
                    while (this.totalWeight > this.maxSegmentWeight) {
                        ReferenceEntry<K, V> nextEvictable = getNextEvictable();
                        if (!removeEntry(nextEvictable, nextEvictable.getHash(), RemovalCause.SIZE)) {
                            throw new AssertionError();
                        }
                    }
                    return;
                }
                throw new AssertionError();
            }
        }

        ReferenceEntry<K, V> getNextEvictable() {
            for (ReferenceEntry<K, V> referenceEntry : this.accessQueue) {
                if (referenceEntry.getValueReference().getWeight() > 0) {
                    return referenceEntry;
                }
            }
            throw new AssertionError();
        }

        ReferenceEntry<K, V> getFirst(int i) {
            AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
            return atomicReferenceArray.get(i & (atomicReferenceArray.length() - 1));
        }

        @NullableDecl
        ReferenceEntry<K, V> getEntry(Object obj, int i) {
            for (ReferenceEntry<K, V> first = getFirst(i); first != null; first = first.getNext()) {
                if (first.getHash() == i) {
                    K key = first.getKey();
                    if (key == null) {
                        tryDrainReferenceQueues();
                    } else if (this.map.keyEquivalence.equivalent(obj, key)) {
                        return first;
                    }
                }
            }
            return null;
        }

        @NullableDecl
        ReferenceEntry<K, V> getLiveEntry(Object obj, int i, long j) {
            ReferenceEntry<K, V> entry = getEntry(obj, i);
            if (entry == null) {
                return null;
            }
            if (!this.map.isExpired(entry, j)) {
                return entry;
            }
            tryExpireEntries(j);
            return null;
        }

        V getLiveValue(ReferenceEntry<K, V> referenceEntry, long j) {
            if (referenceEntry.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            V v = referenceEntry.getValueReference().get();
            if (v == null) {
                tryDrainReferenceQueues();
                return null;
            } else if (!this.map.isExpired(referenceEntry, j)) {
                return v;
            } else {
                tryExpireEntries(j);
                return null;
            }
        }

        boolean containsKey(Object obj, int i) {
            try {
                boolean z = false;
                if (this.count == 0) {
                    return false;
                }
                ReferenceEntry<K, V> liveEntry = getLiveEntry(obj, i, this.map.ticker.read());
                if (liveEntry == null) {
                    return false;
                }
                if (liveEntry.getValueReference().get() != null) {
                    z = true;
                }
                return z;
            } finally {
                postReadCleanup();
            }
        }

        /* JADX WARN: Finally extract failed */
        boolean containsValue(Object obj) {
            try {
                if (this.count != 0) {
                    long read = this.map.ticker.read();
                    AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    for (int i = 0; i < length; i++) {
                        for (ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(i); referenceEntry != null; referenceEntry = referenceEntry.getNext()) {
                            V liveValue = getLiveValue(referenceEntry, read);
                            if (liveValue != null && this.map.valueEquivalence.equivalent(obj, liveValue)) {
                                postReadCleanup();
                                return true;
                            }
                        }
                    }
                }
                postReadCleanup();
                return false;
            } catch (Throwable th) {
                postReadCleanup();
                throw th;
            }
        }

        @NullableDecl
        V put(K k, int i, V v, boolean z) {
            int i2;
            lock();
            try {
                long read = this.map.ticker.read();
                preWriteCleanup(read);
                if (this.count + 1 > this.threshold) {
                    expand();
                    int i3 = this.count;
                }
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                ReferenceEntry<K, V> referenceEntry2 = referenceEntry;
                while (true) {
                    if (referenceEntry2 == null) {
                        this.modCount++;
                        ReferenceEntry<K, V> newEntry = newEntry(k, i, referenceEntry);
                        setValue(newEntry, k, v, read);
                        atomicReferenceArray.set(length, newEntry);
                        this.count++;
                        evictEntries(newEntry);
                        break;
                    }
                    K key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() != i || key == null || !this.map.keyEquivalence.equivalent(k, key)) {
                        referenceEntry2 = referenceEntry2.getNext();
                    } else {
                        ValueReference<K, V> valueReference = referenceEntry2.getValueReference();
                        V v2 = valueReference.get();
                        if (v2 == null) {
                            this.modCount++;
                            if (valueReference.isActive()) {
                                enqueueNotification(k, i, v2, valueReference.getWeight(), RemovalCause.COLLECTED);
                                setValue(referenceEntry2, k, v, read);
                                i2 = this.count;
                            } else {
                                setValue(referenceEntry2, k, v, read);
                                i2 = this.count + 1;
                            }
                            this.count = i2;
                            evictEntries(referenceEntry2);
                        } else {
                            if (z) {
                                recordLockedRead(referenceEntry2, read);
                            } else {
                                this.modCount++;
                                enqueueNotification(k, i, v2, valueReference.getWeight(), RemovalCause.REPLACED);
                                setValue(referenceEntry2, k, v, read);
                                evictEntries(referenceEntry2);
                            }
                            return v2;
                        }
                    }
                }
                return null;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        void expand() {
            AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
            int length = atomicReferenceArray.length();
            if (length < 1073741824) {
                int i = this.count;
                AtomicReferenceArray<ReferenceEntry<K, V>> newEntryArray = newEntryArray(length << 1);
                this.threshold = (newEntryArray.length() * 3) / 4;
                int length2 = newEntryArray.length() - 1;
                for (int i2 = 0; i2 < length; i2++) {
                    ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(i2);
                    if (referenceEntry != null) {
                        ReferenceEntry<K, V> next = referenceEntry.getNext();
                        int hash = referenceEntry.getHash() & length2;
                        if (next == null) {
                            newEntryArray.set(hash, referenceEntry);
                        } else {
                            ReferenceEntry<K, V> referenceEntry2 = referenceEntry;
                            while (next != null) {
                                int hash2 = next.getHash() & length2;
                                if (hash2 != hash) {
                                    referenceEntry2 = next;
                                    hash = hash2;
                                }
                                next = next.getNext();
                            }
                            newEntryArray.set(hash, referenceEntry2);
                            while (referenceEntry != referenceEntry2) {
                                int hash3 = referenceEntry.getHash() & length2;
                                ReferenceEntry<K, V> copyEntry = copyEntry(referenceEntry, newEntryArray.get(hash3));
                                if (copyEntry != null) {
                                    newEntryArray.set(hash3, copyEntry);
                                } else {
                                    removeCollectedEntry(referenceEntry);
                                    i--;
                                }
                                referenceEntry = referenceEntry.getNext();
                            }
                        }
                    }
                }
                this.table = newEntryArray;
                this.count = i;
            }
        }

        boolean replace(K k, int i, V v, V v2) {
            lock();
            try {
                long read = this.map.ticker.read();
                preWriteCleanup(read);
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                ReferenceEntry<K, V> referenceEntry2 = referenceEntry;
                while (true) {
                    if (referenceEntry2 == null) {
                        break;
                    }
                    K key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i && key != null) {
                        if (this.map.keyEquivalence.equivalent(k, key)) {
                            ValueReference<K, V> valueReference = referenceEntry2.getValueReference();
                            V v3 = valueReference.get();
                            if (v3 == null) {
                                if (valueReference.isActive()) {
                                    int i2 = this.count;
                                    this.modCount++;
                                    atomicReferenceArray.set(length, removeValueFromChain(referenceEntry, referenceEntry2, key, i, v3, valueReference, RemovalCause.COLLECTED));
                                    this.count--;
                                }
                            } else if (this.map.valueEquivalence.equivalent(v, v3)) {
                                this.modCount++;
                                enqueueNotification(k, i, v3, valueReference.getWeight(), RemovalCause.REPLACED);
                                setValue(referenceEntry2, k, v2, read);
                                evictEntries(referenceEntry2);
                                return true;
                            } else {
                                recordLockedRead(referenceEntry2, read);
                            }
                        }
                    }
                    referenceEntry2 = referenceEntry2.getNext();
                }
                return false;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        @NullableDecl
        V replace(K k, int i, V v) {
            lock();
            try {
                long read = this.map.ticker.read();
                preWriteCleanup(read);
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                ReferenceEntry<K, V> referenceEntry2 = referenceEntry;
                while (true) {
                    if (referenceEntry2 == null) {
                        break;
                    }
                    K key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i && key != null) {
                        if (this.map.keyEquivalence.equivalent(k, key)) {
                            ValueReference<K, V> valueReference = referenceEntry2.getValueReference();
                            V v2 = valueReference.get();
                            if (v2 != null) {
                                this.modCount++;
                                enqueueNotification(k, i, v2, valueReference.getWeight(), RemovalCause.REPLACED);
                                setValue(referenceEntry2, k, v, read);
                                evictEntries(referenceEntry2);
                                return v2;
                            } else if (valueReference.isActive()) {
                                int i2 = this.count;
                                this.modCount++;
                                atomicReferenceArray.set(length, removeValueFromChain(referenceEntry, referenceEntry2, key, i, v2, valueReference, RemovalCause.COLLECTED));
                                this.count--;
                            }
                        }
                    }
                    referenceEntry2 = referenceEntry2.getNext();
                }
                return null;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003a, code lost:
            r9 = r5.getValueReference();
            r12 = r9.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0042, code lost:
            if (r12 == null) goto L_0x0048;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
            r2 = com.google.common.cache.RemovalCause.EXPLICIT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x004c, code lost:
            if (r9.isActive() == false) goto L_0x006e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x004e, code lost:
            r2 = com.google.common.cache.RemovalCause.COLLECTED;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0051, code lost:
            r11.modCount++;
            r0.set(r1, removeValueFromChain(r4, r5, r6, r13, r12, r9, r2));
            r11.count--;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x006d, code lost:
            return r12;
         */
        @org.checkerframework.checker.nullness.compatqual.NullableDecl
        /* Code decompiled incorrectly, please refer to instructions dump */
        V remove(java.lang.Object r12, int r13) {
            /*
                r11 = this;
                r11.lock()
                com.google.common.cache.LocalCache<K, V> r0 = r11.map     // Catch: all -> 0x007a
                com.google.common.base.Ticker r0 = r0.ticker     // Catch: all -> 0x007a
                long r0 = r0.read()     // Catch: all -> 0x007a
                r11.preWriteCleanup(r0)     // Catch: all -> 0x007a
                int r0 = r11.count     // Catch: all -> 0x007a
                java.util.concurrent.atomic.AtomicReferenceArray<com.google.common.cache.ReferenceEntry<K, V>> r0 = r11.table     // Catch: all -> 0x007a
                int r1 = r0.length()     // Catch: all -> 0x007a
                int r1 = r1 + -1
                r1 = r1 & r13
                java.lang.Object r2 = r0.get(r1)     // Catch: all -> 0x007a
                r4 = r2
                com.google.common.cache.ReferenceEntry r4 = (com.google.common.cache.ReferenceEntry) r4     // Catch: all -> 0x007a
                r5 = r4
            L_0x0021:
                r2 = 0
                if (r5 == 0) goto L_0x006e
                java.lang.Object r6 = r5.getKey()     // Catch: all -> 0x007a
                int r3 = r5.getHash()     // Catch: all -> 0x007a
                if (r3 != r13) goto L_0x0075
                if (r6 == 0) goto L_0x0075
                com.google.common.cache.LocalCache<K, V> r3 = r11.map     // Catch: all -> 0x007a
                com.google.common.base.Equivalence<java.lang.Object> r3 = r3.keyEquivalence     // Catch: all -> 0x007a
                boolean r3 = r3.equivalent(r12, r6)     // Catch: all -> 0x007a
                if (r3 == 0) goto L_0x0075
                com.google.common.cache.LocalCache$ValueReference r9 = r5.getValueReference()     // Catch: all -> 0x007a
                java.lang.Object r12 = r9.get()     // Catch: all -> 0x007a
                if (r12 == 0) goto L_0x0048
                com.google.common.cache.RemovalCause r2 = com.google.common.cache.RemovalCause.EXPLICIT     // Catch: all -> 0x007a
            L_0x0046:
                r10 = r2
                goto L_0x0051
            L_0x0048:
                boolean r3 = r9.isActive()     // Catch: all -> 0x007a
                if (r3 == 0) goto L_0x006e
                com.google.common.cache.RemovalCause r2 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: all -> 0x007a
                goto L_0x0046
            L_0x0051:
                int r2 = r11.modCount     // Catch: all -> 0x007a
                int r2 = r2 + 1
                r11.modCount = r2     // Catch: all -> 0x007a
                r3 = r11
                r7 = r13
                r8 = r12
                com.google.common.cache.ReferenceEntry r13 = r3.removeValueFromChain(r4, r5, r6, r7, r8, r9, r10)     // Catch: all -> 0x007a
                int r2 = r11.count     // Catch: all -> 0x007a
                int r2 = r2 + -1
                r0.set(r1, r13)     // Catch: all -> 0x007a
                r11.count = r2     // Catch: all -> 0x007a
                r11.unlock()
                r11.postWriteCleanup()
                return r12
            L_0x006e:
                r11.unlock()
                r11.postWriteCleanup()
                return r2
            L_0x0075:
                com.google.common.cache.ReferenceEntry r5 = r5.getNext()     // Catch: all -> 0x007a
                goto L_0x0021
            L_0x007a:
                r12 = move-exception
                r11.unlock()
                r11.postWriteCleanup()
                throw r12
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.Segment.remove(java.lang.Object, int):java.lang.Object");
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003a, code lost:
            r10 = r6.getValueReference();
            r9 = r10.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x004a, code lost:
            if (r12.map.valueEquivalence.equivalent(r15, r9) == false) goto L_0x004f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x004c, code lost:
            r13 = com.google.common.cache.RemovalCause.EXPLICIT;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x004f, code lost:
            if (r9 != null) goto L_0x007a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0055, code lost:
            if (r10.isActive() == false) goto L_0x007a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
            r13 = com.google.common.cache.RemovalCause.COLLECTED;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0059, code lost:
            r12.modCount++;
            r0.set(r1, removeValueFromChain(r5, r6, r7, r14, r9, r10, r13));
            r12.count--;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x006f, code lost:
            if (r13 != com.google.common.cache.RemovalCause.EXPLICIT) goto L_0x0072;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0072, code lost:
            r2 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0079, code lost:
            return r2;
         */
        /* Code decompiled incorrectly, please refer to instructions dump */
        boolean remove(java.lang.Object r13, int r14, java.lang.Object r15) {
            /*
                r12 = this;
                r12.lock()
                com.google.common.cache.LocalCache<K, V> r0 = r12.map     // Catch: all -> 0x0086
                com.google.common.base.Ticker r0 = r0.ticker     // Catch: all -> 0x0086
                long r0 = r0.read()     // Catch: all -> 0x0086
                r12.preWriteCleanup(r0)     // Catch: all -> 0x0086
                int r0 = r12.count     // Catch: all -> 0x0086
                java.util.concurrent.atomic.AtomicReferenceArray<com.google.common.cache.ReferenceEntry<K, V>> r0 = r12.table     // Catch: all -> 0x0086
                int r1 = r0.length()     // Catch: all -> 0x0086
                r2 = 1
                int r1 = r1 - r2
                r1 = r1 & r14
                java.lang.Object r3 = r0.get(r1)     // Catch: all -> 0x0086
                r5 = r3
                com.google.common.cache.ReferenceEntry r5 = (com.google.common.cache.ReferenceEntry) r5     // Catch: all -> 0x0086
                r6 = r5
            L_0x0021:
                r3 = 0
                if (r6 == 0) goto L_0x007a
                java.lang.Object r7 = r6.getKey()     // Catch: all -> 0x0086
                int r4 = r6.getHash()     // Catch: all -> 0x0086
                if (r4 != r14) goto L_0x0081
                if (r7 == 0) goto L_0x0081
                com.google.common.cache.LocalCache<K, V> r4 = r12.map     // Catch: all -> 0x0086
                com.google.common.base.Equivalence<java.lang.Object> r4 = r4.keyEquivalence     // Catch: all -> 0x0086
                boolean r4 = r4.equivalent(r13, r7)     // Catch: all -> 0x0086
                if (r4 == 0) goto L_0x0081
                com.google.common.cache.LocalCache$ValueReference r10 = r6.getValueReference()     // Catch: all -> 0x0086
                java.lang.Object r9 = r10.get()     // Catch: all -> 0x0086
                com.google.common.cache.LocalCache<K, V> r13 = r12.map     // Catch: all -> 0x0086
                com.google.common.base.Equivalence<java.lang.Object> r13 = r13.valueEquivalence     // Catch: all -> 0x0086
                boolean r13 = r13.equivalent(r15, r9)     // Catch: all -> 0x0086
                if (r13 == 0) goto L_0x004f
                com.google.common.cache.RemovalCause r13 = com.google.common.cache.RemovalCause.EXPLICIT     // Catch: all -> 0x0086
                goto L_0x0059
            L_0x004f:
                if (r9 != 0) goto L_0x007a
                boolean r13 = r10.isActive()     // Catch: all -> 0x0086
                if (r13 == 0) goto L_0x007a
                com.google.common.cache.RemovalCause r13 = com.google.common.cache.RemovalCause.COLLECTED     // Catch: all -> 0x0086
            L_0x0059:
                int r15 = r12.modCount     // Catch: all -> 0x0086
                int r15 = r15 + r2
                r12.modCount = r15     // Catch: all -> 0x0086
                r4 = r12
                r8 = r14
                r11 = r13
                com.google.common.cache.ReferenceEntry r14 = r4.removeValueFromChain(r5, r6, r7, r8, r9, r10, r11)     // Catch: all -> 0x0086
                int r15 = r12.count     // Catch: all -> 0x0086
                int r15 = r15 - r2
                r0.set(r1, r14)     // Catch: all -> 0x0086
                r12.count = r15     // Catch: all -> 0x0086
                com.google.common.cache.RemovalCause r14 = com.google.common.cache.RemovalCause.EXPLICIT     // Catch: all -> 0x0086
                if (r13 != r14) goto L_0x0072
                goto L_0x0073
            L_0x0072:
                r2 = r3
            L_0x0073:
                r12.unlock()
                r12.postWriteCleanup()
                return r2
            L_0x007a:
                r12.unlock()
                r12.postWriteCleanup()
                return r3
            L_0x0081:
                com.google.common.cache.ReferenceEntry r6 = r6.getNext()     // Catch: all -> 0x0086
                goto L_0x0021
            L_0x0086:
                r13 = move-exception
                r12.unlock()
                r12.postWriteCleanup()
                throw r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.Segment.remove(java.lang.Object, int, java.lang.Object):boolean");
        }

        boolean storeLoadedValue(K k, int i, LoadingValueReference<K, V> loadingValueReference, V v) {
            lock();
            try {
                long read = this.map.ticker.read();
                preWriteCleanup(read);
                int i2 = this.count + 1;
                if (i2 > this.threshold) {
                    expand();
                    i2 = this.count + 1;
                }
                int i3 = i2;
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                ReferenceEntry<K, V> referenceEntry2 = referenceEntry;
                while (true) {
                    if (referenceEntry2 == null) {
                        this.modCount++;
                        ReferenceEntry<K, V> newEntry = newEntry(k, i, referenceEntry);
                        setValue(newEntry, k, v, read);
                        atomicReferenceArray.set(length, newEntry);
                        this.count = i3;
                        evictEntries(newEntry);
                        break;
                    }
                    K key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() != i || key == null || !this.map.keyEquivalence.equivalent(k, key)) {
                        referenceEntry2 = referenceEntry2.getNext();
                    } else {
                        ValueReference<K, V> valueReference = referenceEntry2.getValueReference();
                        V v2 = valueReference.get();
                        if (loadingValueReference != valueReference && (v2 != null || valueReference == LocalCache.UNSET)) {
                            enqueueNotification(k, i, v, 0, RemovalCause.REPLACED);
                            return false;
                        }
                        this.modCount++;
                        if (loadingValueReference.isActive()) {
                            enqueueNotification(k, i, v2, loadingValueReference.getWeight(), v2 == null ? RemovalCause.COLLECTED : RemovalCause.REPLACED);
                            i3--;
                        }
                        setValue(referenceEntry2, k, v, read);
                        this.count = i3;
                        evictEntries(referenceEntry2);
                    }
                }
                return true;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        void clear() {
            RemovalCause removalCause;
            if (this.count != 0) {
                lock();
                try {
                    preWriteCleanup(this.map.ticker.read());
                    AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        for (ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(i); referenceEntry != null; referenceEntry = referenceEntry.getNext()) {
                            if (referenceEntry.getValueReference().isActive()) {
                                K key = referenceEntry.getKey();
                                V v = referenceEntry.getValueReference().get();
                                if (!(key == null || v == null)) {
                                    removalCause = RemovalCause.EXPLICIT;
                                    enqueueNotification(key, referenceEntry.getHash(), v, referenceEntry.getValueReference().getWeight(), removalCause);
                                }
                                removalCause = RemovalCause.COLLECTED;
                                enqueueNotification(key, referenceEntry.getHash(), v, referenceEntry.getValueReference().getWeight(), removalCause);
                            }
                        }
                    }
                    for (int i2 = 0; i2 < atomicReferenceArray.length(); i2++) {
                        atomicReferenceArray.set(i2, null);
                    }
                    clearReferenceQueues();
                    this.writeQueue.clear();
                    this.accessQueue.clear();
                    this.readCount.set(0);
                    this.modCount++;
                    this.count = 0;
                } finally {
                    unlock();
                    postWriteCleanup();
                }
            }
        }

        @NullableDecl
        ReferenceEntry<K, V> removeValueFromChain(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2, @NullableDecl K k, int i, V v, ValueReference<K, V> valueReference, RemovalCause removalCause) {
            enqueueNotification(k, i, v, valueReference.getWeight(), removalCause);
            this.writeQueue.remove(referenceEntry2);
            this.accessQueue.remove(referenceEntry2);
            if (!valueReference.isLoading()) {
                return removeEntryFromChain(referenceEntry, referenceEntry2);
            }
            valueReference.notifyNewValue(null);
            return referenceEntry;
        }

        @NullableDecl
        ReferenceEntry<K, V> removeEntryFromChain(ReferenceEntry<K, V> referenceEntry, ReferenceEntry<K, V> referenceEntry2) {
            int i = this.count;
            ReferenceEntry<K, V> next = referenceEntry2.getNext();
            while (referenceEntry != referenceEntry2) {
                ReferenceEntry<K, V> copyEntry = copyEntry(referenceEntry, next);
                if (copyEntry != null) {
                    next = copyEntry;
                } else {
                    removeCollectedEntry(referenceEntry);
                    i--;
                }
                referenceEntry = referenceEntry.getNext();
            }
            this.count = i;
            return next;
        }

        void removeCollectedEntry(ReferenceEntry<K, V> referenceEntry) {
            enqueueNotification(referenceEntry.getKey(), referenceEntry.getHash(), referenceEntry.getValueReference().get(), referenceEntry.getValueReference().getWeight(), RemovalCause.COLLECTED);
            this.writeQueue.remove(referenceEntry);
            this.accessQueue.remove(referenceEntry);
        }

        boolean reclaimKey(ReferenceEntry<K, V> referenceEntry, int i) {
            lock();
            try {
                int i2 = this.count;
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry<K, V> referenceEntry2 = atomicReferenceArray.get(length);
                for (ReferenceEntry<K, V> referenceEntry3 = referenceEntry2; referenceEntry3 != null; referenceEntry3 = referenceEntry3.getNext()) {
                    if (referenceEntry3 == referenceEntry) {
                        this.modCount++;
                        atomicReferenceArray.set(length, removeValueFromChain(referenceEntry2, referenceEntry3, referenceEntry3.getKey(), i, referenceEntry3.getValueReference().get(), referenceEntry3.getValueReference(), RemovalCause.COLLECTED));
                        this.count--;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        boolean reclaimValue(K k, int i, ValueReference<K, V> valueReference) {
            lock();
            try {
                int i2 = this.count;
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                for (ReferenceEntry<K, V> referenceEntry2 = referenceEntry; referenceEntry2 != null; referenceEntry2 = referenceEntry2.getNext()) {
                    K key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        if (referenceEntry2.getValueReference() == valueReference) {
                            this.modCount++;
                            atomicReferenceArray.set(length, removeValueFromChain(referenceEntry, referenceEntry2, key, i, valueReference.get(), valueReference, RemovalCause.COLLECTED));
                            this.count--;
                            return true;
                        } else {
                            unlock();
                            if (!isHeldByCurrentThread()) {
                                postWriteCleanup();
                            }
                            return false;
                        }
                    }
                }
                unlock();
                if (!isHeldByCurrentThread()) {
                    postWriteCleanup();
                }
                return false;
            } finally {
                unlock();
                if (!isHeldByCurrentThread()) {
                    postWriteCleanup();
                }
            }
        }

        boolean removeLoadingValue(K k, int i, LoadingValueReference<K, V> loadingValueReference) {
            lock();
            try {
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(length);
                ReferenceEntry<K, V> referenceEntry2 = referenceEntry;
                while (true) {
                    if (referenceEntry2 == null) {
                        break;
                    }
                    K key = referenceEntry2.getKey();
                    if (referenceEntry2.getHash() != i || key == null || !this.map.keyEquivalence.equivalent(k, key)) {
                        referenceEntry2 = referenceEntry2.getNext();
                    } else if (referenceEntry2.getValueReference() == loadingValueReference) {
                        if (loadingValueReference.isActive()) {
                            referenceEntry2.setValueReference(loadingValueReference.getOldValue());
                        } else {
                            atomicReferenceArray.set(length, removeEntryFromChain(referenceEntry, referenceEntry2));
                        }
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
                postWriteCleanup();
            }
        }

        boolean removeEntry(ReferenceEntry<K, V> referenceEntry, int i, RemovalCause removalCause) {
            int i2 = this.count;
            AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.table;
            int length = (atomicReferenceArray.length() - 1) & i;
            ReferenceEntry<K, V> referenceEntry2 = atomicReferenceArray.get(length);
            for (ReferenceEntry<K, V> referenceEntry3 = referenceEntry2; referenceEntry3 != null; referenceEntry3 = referenceEntry3.getNext()) {
                if (referenceEntry3 == referenceEntry) {
                    this.modCount++;
                    atomicReferenceArray.set(length, removeValueFromChain(referenceEntry2, referenceEntry3, referenceEntry3.getKey(), i, referenceEntry3.getValueReference().get(), referenceEntry3.getValueReference(), removalCause));
                    this.count--;
                    return true;
                }
            }
            return false;
        }

        void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & 63) == 0) {
                cleanUp();
            }
        }

        void preWriteCleanup(long j) {
            runLockedCleanup(j);
        }

        void postWriteCleanup() {
            runUnlockedCleanup();
        }

        void cleanUp() {
            runLockedCleanup(this.map.ticker.read());
            runUnlockedCleanup();
        }

        void runLockedCleanup(long j) {
            if (tryLock()) {
                try {
                    drainReferenceQueues();
                    expireEntries(j);
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }

        void runUnlockedCleanup() {
            if (!isHeldByCurrentThread()) {
                this.map.processPendingNotifications();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class LoadingValueReference<K, V> implements ValueReference<K, V> {
        final SettableFuture<V> futureValue;
        volatile ValueReference<K, V> oldValue;
        final Stopwatch stopwatch;

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference<K, V> copyFor(ReferenceQueue<V> referenceQueue, @NullableDecl V v, ReferenceEntry<K, V> referenceEntry) {
            return this;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ReferenceEntry<K, V> getEntry() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isLoading() {
            return true;
        }

        public LoadingValueReference() {
            this(LocalCache.unset());
        }

        public LoadingValueReference(ValueReference<K, V> valueReference) {
            this.futureValue = SettableFuture.create();
            this.stopwatch = Stopwatch.createUnstarted();
            this.oldValue = valueReference;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public boolean isActive() {
            return this.oldValue.isActive();
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int getWeight() {
            return this.oldValue.getWeight();
        }

        public boolean set(@NullableDecl V v) {
            return this.futureValue.set(v);
        }

        public boolean setException(Throwable th) {
            return this.futureValue.setException(th);
        }

        private ListenableFuture<V> fullyFailedFuture(Throwable th) {
            return Futures.immediateFailedFuture(th);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public void notifyNewValue(@NullableDecl V v) {
            if (v != null) {
                set(v);
            } else {
                this.oldValue = LocalCache.unset();
            }
        }

        public ListenableFuture<V> loadFuture(K k, CacheLoader<? super K, V> cacheLoader) {
            try {
                this.stopwatch.start();
                V v = this.oldValue.get();
                if (v == null) {
                    V load = cacheLoader.load(k);
                    return set(load) ? this.futureValue : Futures.immediateFuture(load);
                }
                ListenableFuture<V> reload = cacheLoader.reload(k, v);
                if (reload == null) {
                    return Futures.immediateFuture(null);
                }
                return Futures.transform(reload, new Function<V, V>() { // from class: com.google.common.cache.LocalCache.LoadingValueReference.1
                    @Override // com.google.common.base.Function
                    public V apply(V v2) {
                        LoadingValueReference.this.set(v2);
                        return v2;
                    }
                }, MoreExecutors.directExecutor());
            } catch (Throwable th) {
                ListenableFuture<V> fullyFailedFuture = setException(th) ? this.futureValue : fullyFailedFuture(th);
                if (th instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                return fullyFailedFuture;
            }
        }

        public long elapsedNanos() {
            return this.stopwatch.elapsed(TimeUnit.NANOSECONDS);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V waitForValue() throws ExecutionException {
            return (V) Uninterruptibles.getUninterruptibly(this.futureValue);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public V get() {
            return this.oldValue.get();
        }

        public ValueReference<K, V> getOldValue() {
            return this.oldValue;
        }
    }

    /* loaded from: classes2.dex */
    public static final class WriteQueue<K, V> extends AbstractQueue<ReferenceEntry<K, V>> {
        final ReferenceEntry<K, V> head = new AbstractReferenceEntry<K, V>() { // from class: com.google.common.cache.LocalCache.WriteQueue.1
            ReferenceEntry<K, V> nextWrite = this;
            ReferenceEntry<K, V> previousWrite = this;

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public long getWriteTime() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public void setWriteTime(long j) {
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public ReferenceEntry<K, V> getNextInWriteQueue() {
                return this.nextWrite;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public void setNextInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
                this.nextWrite = referenceEntry;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public ReferenceEntry<K, V> getPreviousInWriteQueue() {
                return this.previousWrite;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public void setPreviousInWriteQueue(ReferenceEntry<K, V> referenceEntry) {
                this.previousWrite = referenceEntry;
            }
        };

        WriteQueue() {
        }

        @Override // java.util.Queue
        public /* bridge */ /* synthetic */ boolean offer(Object obj) {
            return offer((ReferenceEntry) ((ReferenceEntry) obj));
        }

        public boolean offer(ReferenceEntry<K, V> referenceEntry) {
            LocalCache.connectWriteOrder(referenceEntry.getPreviousInWriteQueue(), referenceEntry.getNextInWriteQueue());
            LocalCache.connectWriteOrder(this.head.getPreviousInWriteQueue(), referenceEntry);
            LocalCache.connectWriteOrder(referenceEntry, this.head);
            return true;
        }

        @Override // java.util.Queue
        public ReferenceEntry<K, V> peek() {
            ReferenceEntry<K, V> nextInWriteQueue = this.head.getNextInWriteQueue();
            if (nextInWriteQueue == this.head) {
                return null;
            }
            return nextInWriteQueue;
        }

        @Override // java.util.Queue
        public ReferenceEntry<K, V> poll() {
            ReferenceEntry<K, V> nextInWriteQueue = this.head.getNextInWriteQueue();
            if (nextInWriteQueue == this.head) {
                return null;
            }
            remove(nextInWriteQueue);
            return nextInWriteQueue;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            ReferenceEntry referenceEntry = (ReferenceEntry) obj;
            ReferenceEntry<K, V> previousInWriteQueue = referenceEntry.getPreviousInWriteQueue();
            ReferenceEntry<K, V> nextInWriteQueue = referenceEntry.getNextInWriteQueue();
            LocalCache.connectWriteOrder(previousInWriteQueue, nextInWriteQueue);
            LocalCache.nullifyWriteOrder(referenceEntry);
            return nextInWriteQueue != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((ReferenceEntry) obj).getNextInWriteQueue() != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.head.getNextInWriteQueue() == this.head;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i = 0;
            for (ReferenceEntry<K, V> nextInWriteQueue = this.head.getNextInWriteQueue(); nextInWriteQueue != this.head; nextInWriteQueue = nextInWriteQueue.getNextInWriteQueue()) {
                i++;
            }
            return i;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            ReferenceEntry<K, V> nextInWriteQueue = this.head.getNextInWriteQueue();
            while (true) {
                ReferenceEntry<K, V> referenceEntry = this.head;
                if (nextInWriteQueue != referenceEntry) {
                    ReferenceEntry<K, V> nextInWriteQueue2 = nextInWriteQueue.getNextInWriteQueue();
                    LocalCache.nullifyWriteOrder(nextInWriteQueue);
                    nextInWriteQueue = nextInWriteQueue2;
                } else {
                    referenceEntry.setNextInWriteQueue(referenceEntry);
                    ReferenceEntry<K, V> referenceEntry2 = this.head;
                    referenceEntry2.setPreviousInWriteQueue(referenceEntry2);
                    return;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<ReferenceEntry<K, V>> iterator() {
            return new AbstractSequentialIterator<ReferenceEntry<K, V>>(peek()) { // from class: com.google.common.cache.LocalCache.WriteQueue.2
                @Override // com.google.common.collect.AbstractSequentialIterator
                protected /* bridge */ /* synthetic */ Object computeNext(Object obj) {
                    return computeNext((ReferenceEntry) ((ReferenceEntry) obj));
                }

                protected ReferenceEntry<K, V> computeNext(ReferenceEntry<K, V> referenceEntry) {
                    ReferenceEntry<K, V> nextInWriteQueue = referenceEntry.getNextInWriteQueue();
                    if (nextInWriteQueue == WriteQueue.this.head) {
                        return null;
                    }
                    return nextInWriteQueue;
                }
            };
        }
    }

    /* loaded from: classes2.dex */
    public static final class AccessQueue<K, V> extends AbstractQueue<ReferenceEntry<K, V>> {
        final ReferenceEntry<K, V> head = new AbstractReferenceEntry<K, V>() { // from class: com.google.common.cache.LocalCache.AccessQueue.1
            ReferenceEntry<K, V> nextAccess = this;
            ReferenceEntry<K, V> previousAccess = this;

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public long getAccessTime() {
                return Long.MAX_VALUE;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public void setAccessTime(long j) {
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public ReferenceEntry<K, V> getNextInAccessQueue() {
                return this.nextAccess;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public void setNextInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
                this.nextAccess = referenceEntry;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public ReferenceEntry<K, V> getPreviousInAccessQueue() {
                return this.previousAccess;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public void setPreviousInAccessQueue(ReferenceEntry<K, V> referenceEntry) {
                this.previousAccess = referenceEntry;
            }
        };

        AccessQueue() {
        }

        @Override // java.util.Queue
        public /* bridge */ /* synthetic */ boolean offer(Object obj) {
            return offer((ReferenceEntry) ((ReferenceEntry) obj));
        }

        public boolean offer(ReferenceEntry<K, V> referenceEntry) {
            LocalCache.connectAccessOrder(referenceEntry.getPreviousInAccessQueue(), referenceEntry.getNextInAccessQueue());
            LocalCache.connectAccessOrder(this.head.getPreviousInAccessQueue(), referenceEntry);
            LocalCache.connectAccessOrder(referenceEntry, this.head);
            return true;
        }

        @Override // java.util.Queue
        public ReferenceEntry<K, V> peek() {
            ReferenceEntry<K, V> nextInAccessQueue = this.head.getNextInAccessQueue();
            if (nextInAccessQueue == this.head) {
                return null;
            }
            return nextInAccessQueue;
        }

        @Override // java.util.Queue
        public ReferenceEntry<K, V> poll() {
            ReferenceEntry<K, V> nextInAccessQueue = this.head.getNextInAccessQueue();
            if (nextInAccessQueue == this.head) {
                return null;
            }
            remove(nextInAccessQueue);
            return nextInAccessQueue;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            ReferenceEntry referenceEntry = (ReferenceEntry) obj;
            ReferenceEntry<K, V> previousInAccessQueue = referenceEntry.getPreviousInAccessQueue();
            ReferenceEntry<K, V> nextInAccessQueue = referenceEntry.getNextInAccessQueue();
            LocalCache.connectAccessOrder(previousInAccessQueue, nextInAccessQueue);
            LocalCache.nullifyAccessOrder(referenceEntry);
            return nextInAccessQueue != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return ((ReferenceEntry) obj).getNextInAccessQueue() != NullEntry.INSTANCE;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.head.getNextInAccessQueue() == this.head;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            int i = 0;
            for (ReferenceEntry<K, V> nextInAccessQueue = this.head.getNextInAccessQueue(); nextInAccessQueue != this.head; nextInAccessQueue = nextInAccessQueue.getNextInAccessQueue()) {
                i++;
            }
            return i;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            ReferenceEntry<K, V> nextInAccessQueue = this.head.getNextInAccessQueue();
            while (true) {
                ReferenceEntry<K, V> referenceEntry = this.head;
                if (nextInAccessQueue != referenceEntry) {
                    ReferenceEntry<K, V> nextInAccessQueue2 = nextInAccessQueue.getNextInAccessQueue();
                    LocalCache.nullifyAccessOrder(nextInAccessQueue);
                    nextInAccessQueue = nextInAccessQueue2;
                } else {
                    referenceEntry.setNextInAccessQueue(referenceEntry);
                    ReferenceEntry<K, V> referenceEntry2 = this.head;
                    referenceEntry2.setPreviousInAccessQueue(referenceEntry2);
                    return;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<ReferenceEntry<K, V>> iterator() {
            return new AbstractSequentialIterator<ReferenceEntry<K, V>>(peek()) { // from class: com.google.common.cache.LocalCache.AccessQueue.2
                @Override // com.google.common.collect.AbstractSequentialIterator
                protected /* bridge */ /* synthetic */ Object computeNext(Object obj) {
                    return computeNext((ReferenceEntry) ((ReferenceEntry) obj));
                }

                protected ReferenceEntry<K, V> computeNext(ReferenceEntry<K, V> referenceEntry) {
                    ReferenceEntry<K, V> nextInAccessQueue = referenceEntry.getNextInAccessQueue();
                    if (nextInAccessQueue == AccessQueue.this.head) {
                        return null;
                    }
                    return nextInAccessQueue;
                }
            };
        }
    }

    public void cleanUp() {
        for (Segment<K, V> segment : this.segments) {
            segment.cleanUp();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        Segment<K, V>[] segmentArr = this.segments;
        long j = 0;
        for (int i = 0; i < segmentArr.length; i++) {
            if (segmentArr[i].count != 0) {
                return false;
            }
            j += (long) segmentArr[i].modCount;
        }
        if (j == 0) {
            return true;
        }
        for (int i2 = 0; i2 < segmentArr.length; i2++) {
            if (segmentArr[i2].count != 0) {
                return false;
            }
            j -= (long) segmentArr[i2].modCount;
        }
        if (j != 0) {
            return false;
        }
        return true;
    }

    long longSize() {
        long j = 0;
        for (Segment<K, V> segment : this.segments) {
            j += (long) Math.max(0, segment.count);
        }
        return j;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return Ints.saturatedCast(longSize());
    }

    @Override // java.util.AbstractMap, java.util.Map
    @NullableDecl
    public V get(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).get(obj, hash);
    }

    V get(K k, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
        int hash = hash(Preconditions.checkNotNull(k));
        return segmentFor(hash).get(k, hash, cacheLoader);
    }

    @NullableDecl
    public V getIfPresent(Object obj) {
        int hash = hash(Preconditions.checkNotNull(obj));
        V v = segmentFor(hash).get(obj, hash);
        if (v == null) {
            this.globalStatsCounter.recordMisses(1);
        } else {
            this.globalStatsCounter.recordHits(1);
        }
        return v;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    @NullableDecl
    public V getOrDefault(@NullableDecl Object obj, @NullableDecl V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    V getOrLoad(K k) throws ExecutionException {
        return get(k, this.defaultLoader);
    }

    /* JADX WARN: Multi-variable type inference failed */
    ImmutableMap<K, V> getAllPresent(Iterable<?> iterable) {
        LinkedHashMap newLinkedHashMap = Maps.newLinkedHashMap();
        int i = 0;
        int i2 = 0;
        for (Object obj : iterable) {
            V v = get(obj);
            if (v == null) {
                i2++;
            } else {
                newLinkedHashMap.put(obj, v);
                i++;
            }
        }
        this.globalStatsCounter.recordHits(i);
        this.globalStatsCounter.recordMisses(i2);
        return ImmutableMap.copyOf(newLinkedHashMap);
    }

    /* JADX WARN: Multi-variable type inference failed */
    ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
        LinkedHashMap newLinkedHashMap = Maps.newLinkedHashMap();
        LinkedHashSet newLinkedHashSet = Sets.newLinkedHashSet();
        int i = 0;
        int i2 = 0;
        for (Object obj : iterable) {
            Object obj2 = get(obj);
            if (!newLinkedHashMap.containsKey(obj)) {
                newLinkedHashMap.put(obj, obj2);
                if (obj2 == null) {
                    i2++;
                    newLinkedHashSet.add(obj);
                } else {
                    i++;
                }
            }
        }
        try {
            if (!newLinkedHashSet.isEmpty()) {
                try {
                    Map loadAll = loadAll(newLinkedHashSet, this.defaultLoader);
                    for (Object obj3 : newLinkedHashSet) {
                        Object obj4 = loadAll.get(obj3);
                        if (obj4 != null) {
                            newLinkedHashMap.put(obj3, obj4);
                        } else {
                            throw new CacheLoader.InvalidCacheLoadException("loadAll failed to return a value for " + obj3);
                        }
                    }
                } catch (CacheLoader.UnsupportedLoadingOperationException unused) {
                    for (Object obj5 : newLinkedHashSet) {
                        i2--;
                        newLinkedHashMap.put(obj5, get(obj5, this.defaultLoader));
                    }
                }
            }
            return ImmutableMap.copyOf(newLinkedHashMap);
        } finally {
            this.globalStatsCounter.recordHits(i);
            this.globalStatsCounter.recordMisses(i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NullableDecl
    Map<K, V> loadAll(Set<? extends K> set, CacheLoader<? super K, V> cacheLoader) throws ExecutionException {
        Throwable th;
        try {
            Preconditions.checkNotNull(cacheLoader);
            Preconditions.checkNotNull(set);
            Stopwatch createStarted = Stopwatch.createStarted();
            boolean z = false;
            try {
                try {
                    Map map = (Map<? super K, V>) cacheLoader.loadAll(set);
                    if (map != null) {
                        createStarted.stop();
                        for (Map.Entry<K, V> entry : map.entrySet()) {
                            K key = entry.getKey();
                            V value = entry.getValue();
                            if (key == null || value == null) {
                                z = true;
                            } else {
                                put(key, value);
                            }
                        }
                        if (!z) {
                            this.globalStatsCounter.recordLoadSuccess(createStarted.elapsed(TimeUnit.NANOSECONDS));
                            return map;
                        }
                        this.globalStatsCounter.recordLoadException(createStarted.elapsed(TimeUnit.NANOSECONDS));
                        throw new CacheLoader.InvalidCacheLoadException(cacheLoader + " returned null keys or values from loadAll");
                    }
                    this.globalStatsCounter.recordLoadException(createStarted.elapsed(TimeUnit.NANOSECONDS));
                    throw new CacheLoader.InvalidCacheLoadException(cacheLoader + " returned null map from loadAll");
                } catch (CacheLoader.UnsupportedLoadingOperationException e) {
                    try {
                        throw e;
                    } catch (Throwable th2) {
                        th = th2;
                        z = true;
                        if (!z) {
                            this.globalStatsCounter.recordLoadException(createStarted.elapsed(TimeUnit.NANOSECONDS));
                        }
                        throw th;
                    }
                } catch (RuntimeException e2) {
                    throw new UncheckedExecutionException(e2);
                }
            } catch (Error e3) {
                throw new ExecutionError(e3);
            } catch (InterruptedException e4) {
                Thread.currentThread().interrupt();
                throw new ExecutionException(e4);
            } catch (Exception e5) {
                throw new ExecutionException(e5);
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    ReferenceEntry<K, V> getEntry(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).getEntry(obj, hash);
    }

    void refresh(K k) {
        int hash = hash(Preconditions.checkNotNull(k));
        segmentFor(hash).refresh(k, hash, this.defaultLoader, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        if (obj == null) {
            return false;
        }
        int hash = hash(obj);
        return segmentFor(hash).containsKey(obj, hash);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [int] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        boolean z = false;
        if (obj == null) {
            return false;
        }
        long read = this.ticker.read();
        Segment<K, V>[] segmentArr = this.segments;
        long j = -1;
        int i = 0;
        while (i < 3) {
            int length = segmentArr.length;
            long j2 = 0;
            int i2 = z;
            while (i2 < length) {
                Segment<K, V> segment = segmentArr[i2 == true ? 1 : 0];
                int i3 = segment.count;
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = segment.table;
                int i4 = z;
                while (i4 < atomicReferenceArray.length()) {
                    ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(i4 == true ? 1 : 0);
                    while (referenceEntry != null) {
                        V liveValue = segment.getLiveValue(referenceEntry, read);
                        if (liveValue != null && this.valueEquivalence.equivalent(obj, liveValue)) {
                            return true;
                        }
                        referenceEntry = referenceEntry.getNext();
                        segmentArr = segmentArr;
                        read = read;
                    }
                    i4++;
                }
                j2 += (long) segment.modCount;
                read = read;
                z = false;
                i2 = (i2 == true ? 1 : 0) + 1;
            }
            if (j2 == j) {
                return false;
            }
            i++;
            j = j2;
            segmentArr = segmentArr;
            read = read;
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        int hash = hash(k);
        return segmentFor(hash).put(k, hash, v, false);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V putIfAbsent(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        int hash = hash(k);
        return segmentFor(hash).put(k, hash, v, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).remove(obj, hash);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(@NullableDecl Object obj, @NullableDecl Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        int hash = hash(obj);
        return segmentFor(hash).remove(obj, hash, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(K k, @NullableDecl V v, V v2) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v2);
        if (v == null) {
            return false;
        }
        int hash = hash(k);
        return segmentFor(hash).replace(k, hash, v, v2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public V replace(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        int hash = hash(k);
        return segmentFor(hash).replace(k, hash, v);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        for (Segment<K, V> segment : this.segments) {
            segment.clear();
        }
    }

    void invalidateAll(Iterable<?> iterable) {
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        KeySet keySet = new KeySet(this);
        this.keySet = keySet;
        return keySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        Values values = new Values(this);
        this.values = values;
        return values;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        EntrySet entrySet = new EntrySet(this);
        this.entrySet = entrySet;
        return entrySet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public abstract class HashIterator<T> implements Iterator<T> {
        @MonotonicNonNullDecl
        Segment<K, V> currentSegment;
        @MonotonicNonNullDecl
        AtomicReferenceArray<ReferenceEntry<K, V>> currentTable;
        @NullableDecl
        LocalCache<K, V>.WriteThroughEntry lastReturned;
        @NullableDecl
        ReferenceEntry<K, V> nextEntry;
        @NullableDecl
        LocalCache<K, V>.WriteThroughEntry nextExternal;
        int nextSegmentIndex;
        int nextTableIndex = -1;

        @Override // java.util.Iterator
        public abstract T next();

        HashIterator() {
            LocalCache.this = r1;
            this.nextSegmentIndex = r1.segments.length - 1;
            advance();
        }

        final void advance() {
            this.nextExternal = null;
            if (!nextInChain() && !nextInTable()) {
                while (this.nextSegmentIndex >= 0) {
                    Segment<K, V>[] segmentArr = LocalCache.this.segments;
                    int i = this.nextSegmentIndex;
                    this.nextSegmentIndex = i - 1;
                    this.currentSegment = segmentArr[i];
                    if (this.currentSegment.count != 0) {
                        this.currentTable = this.currentSegment.table;
                        this.nextTableIndex = this.currentTable.length() - 1;
                        if (nextInTable()) {
                            return;
                        }
                    }
                }
            }
        }

        boolean nextInChain() {
            ReferenceEntry<K, V> referenceEntry = this.nextEntry;
            if (referenceEntry == null) {
                return false;
            }
            while (true) {
                this.nextEntry = referenceEntry.getNext();
                ReferenceEntry<K, V> referenceEntry2 = this.nextEntry;
                if (referenceEntry2 == null) {
                    return false;
                }
                if (advanceTo(referenceEntry2)) {
                    return true;
                }
                referenceEntry = this.nextEntry;
            }
        }

        boolean nextInTable() {
            while (true) {
                int i = this.nextTableIndex;
                if (i < 0) {
                    return false;
                }
                AtomicReferenceArray<ReferenceEntry<K, V>> atomicReferenceArray = this.currentTable;
                this.nextTableIndex = i - 1;
                ReferenceEntry<K, V> referenceEntry = atomicReferenceArray.get(i);
                this.nextEntry = referenceEntry;
                if (referenceEntry != null && (advanceTo(this.nextEntry) || nextInChain())) {
                    return true;
                }
            }
        }

        boolean advanceTo(ReferenceEntry<K, V> referenceEntry) {
            boolean z;
            try {
                long read = LocalCache.this.ticker.read();
                K key = referenceEntry.getKey();
                Object liveValue = LocalCache.this.getLiveValue(referenceEntry, read);
                if (liveValue != null) {
                    this.nextExternal = new WriteThroughEntry(key, liveValue);
                    z = true;
                } else {
                    z = false;
                }
                return z;
            } finally {
                this.currentSegment.postReadCleanup();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.nextExternal != null;
        }

        LocalCache<K, V>.WriteThroughEntry nextEntry() {
            LocalCache<K, V>.WriteThroughEntry writeThroughEntry = this.nextExternal;
            if (writeThroughEntry != null) {
                this.lastReturned = writeThroughEntry;
                advance();
                return this.lastReturned;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.lastReturned != null);
            LocalCache.this.remove(this.lastReturned.getKey());
            this.lastReturned = null;
        }
    }

    /* loaded from: classes2.dex */
    final class KeyIterator extends LocalCache<K, V>.HashIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        KeyIterator() {
            super();
            LocalCache.this = r1;
        }

        @Override // com.google.common.cache.LocalCache.HashIterator, java.util.Iterator
        public K next() {
            return nextEntry().getKey();
        }
    }

    /* loaded from: classes2.dex */
    final class ValueIterator extends LocalCache<K, V>.HashIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ValueIterator() {
            super();
            LocalCache.this = r1;
        }

        @Override // com.google.common.cache.LocalCache.HashIterator, java.util.Iterator
        public V next() {
            return nextEntry().getValue();
        }
    }

    /* loaded from: classes2.dex */
    public final class WriteThroughEntry implements Map.Entry<K, V> {
        final K key;
        V value;

        WriteThroughEntry(K k, V v) {
            LocalCache.this = r1;
            this.key = k;
            this.value = v;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry, java.lang.Object
        public boolean equals(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (!this.key.equals(entry.getKey()) || !this.value.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry, java.lang.Object
        public int hashCode() {
            return this.key.hashCode() ^ this.value.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) LocalCache.this.put(this.key, v);
            this.value = v;
            return v2;
        }

        @Override // java.lang.Object
        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* loaded from: classes2.dex */
    final class EntryIterator extends LocalCache<K, V>.HashIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        EntryIterator() {
            super();
            LocalCache.this = r1;
        }

        @Override // com.google.common.cache.LocalCache.HashIterator, java.util.Iterator
        public Map.Entry<K, V> next() {
            return nextEntry();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public abstract class AbstractCacheSet<T> extends AbstractSet<T> {
        final ConcurrentMap<?, ?> map;

        AbstractCacheSet(ConcurrentMap<?, ?> concurrentMap) {
            LocalCache.this = r1;
            this.map = concurrentMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.map.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.map.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.map.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return LocalCache.toArrayList(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <E> E[] toArray(E[] eArr) {
            return (E[]) LocalCache.toArrayList(this).toArray(eArr);
        }
    }

    public static <E> ArrayList<E> toArrayList(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        Iterators.addAll(arrayList, collection.iterator());
        return arrayList;
    }

    /* loaded from: classes2.dex */
    final class KeySet extends LocalCache<K, V>.AbstractCacheSet {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        KeySet(ConcurrentMap<?, ?> concurrentMap) {
            super(concurrentMap);
            LocalCache.this = r1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set, java.lang.Iterable
        public Iterator<K> iterator() {
            return new KeyIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.map.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return this.map.remove(obj) != null;
        }
    }

    /* loaded from: classes2.dex */
    final class Values extends AbstractCollection<V> {
        private final ConcurrentMap<?, ?> map;

        Values(ConcurrentMap<?, ?> concurrentMap) {
            LocalCache.this = r1;
            this.map = concurrentMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.map.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.map.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.map.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new ValueIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.map.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return LocalCache.toArrayList(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <E> E[] toArray(E[] eArr) {
            return (E[]) LocalCache.toArrayList(this).toArray(eArr);
        }
    }

    /* loaded from: classes2.dex */
    final class EntrySet extends LocalCache<K, V>.AbstractCacheSet {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        EntrySet(ConcurrentMap<?, ?> concurrentMap) {
            super(concurrentMap);
            LocalCache.this = r1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new EntryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            Object obj2;
            if ((obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = LocalCache.this.get(key)) != null && LocalCache.this.valueEquivalence.equivalent(entry.getValue(), obj2)) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            if ((obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && LocalCache.this.remove(key, entry.getValue())) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class ManualSerializationProxy<K, V> extends ForwardingCache<K, V> implements Serializable {
        private static final long serialVersionUID = 1;
        final int concurrencyLevel;
        @MonotonicNonNullDecl
        transient Cache<K, V> delegate;
        final long expireAfterAccessNanos;
        final long expireAfterWriteNanos;
        final Equivalence<Object> keyEquivalence;
        final Strength keyStrength;
        final CacheLoader<? super K, V> loader;
        final long maxWeight;
        final RemovalListener<? super K, ? super V> removalListener;
        @NullableDecl
        final Ticker ticker;
        final Equivalence<Object> valueEquivalence;
        final Strength valueStrength;
        final Weigher<K, V> weigher;

        ManualSerializationProxy(LocalCache<K, V> localCache) {
            this(localCache.keyStrength, localCache.valueStrength, localCache.keyEquivalence, localCache.valueEquivalence, localCache.expireAfterWriteNanos, localCache.expireAfterAccessNanos, localCache.maxWeight, localCache.weigher, localCache.concurrencyLevel, localCache.removalListener, localCache.ticker, localCache.defaultLoader);
        }

        private ManualSerializationProxy(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, long j, long j2, long j3, Weigher<K, V> weigher, int i, RemovalListener<? super K, ? super V> removalListener, Ticker ticker, CacheLoader<? super K, V> cacheLoader) {
            this.keyStrength = strength;
            this.valueStrength = strength2;
            this.keyEquivalence = equivalence;
            this.valueEquivalence = equivalence2;
            this.expireAfterWriteNanos = j;
            this.expireAfterAccessNanos = j2;
            this.maxWeight = j3;
            this.weigher = weigher;
            this.concurrencyLevel = i;
            this.removalListener = removalListener;
            this.ticker = (ticker == Ticker.systemTicker() || ticker == CacheBuilder.NULL_TICKER) ? null : ticker;
            this.loader = cacheLoader;
        }

        CacheBuilder<K, V> recreateCacheBuilder() {
            CacheBuilder<K, V> cacheBuilder = (CacheBuilder<K, V>) CacheBuilder.newBuilder().setKeyStrength(this.keyStrength).setValueStrength(this.valueStrength).keyEquivalence(this.keyEquivalence).valueEquivalence(this.valueEquivalence).concurrencyLevel(this.concurrencyLevel).removalListener((RemovalListener<? super K, ? super V>) this.removalListener);
            cacheBuilder.strictParsing = false;
            long j = this.expireAfterWriteNanos;
            if (j > 0) {
                cacheBuilder.expireAfterWrite(j, TimeUnit.NANOSECONDS);
            }
            long j2 = this.expireAfterAccessNanos;
            if (j2 > 0) {
                cacheBuilder.expireAfterAccess(j2, TimeUnit.NANOSECONDS);
            }
            if (this.weigher != CacheBuilder.OneWeigher.INSTANCE) {
                cacheBuilder.weigher(this.weigher);
                long j3 = this.maxWeight;
                if (j3 != -1) {
                    cacheBuilder.maximumWeight(j3);
                }
            } else {
                long j4 = this.maxWeight;
                if (j4 != -1) {
                    cacheBuilder.maximumSize(j4);
                }
            }
            Ticker ticker = this.ticker;
            if (ticker != null) {
                cacheBuilder.ticker(ticker);
            }
            return cacheBuilder;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.delegate = (Cache<K, V>) recreateCacheBuilder().build();
        }

        private Object readResolve() {
            return this.delegate;
        }

        @Override // com.google.common.cache.ForwardingCache, com.google.common.collect.ForwardingObject
        public Cache<K, V> delegate() {
            return this.delegate;
        }
    }

    /* loaded from: classes2.dex */
    static final class LoadingSerializationProxy<K, V> extends ManualSerializationProxy<K, V> implements LoadingCache<K, V>, Serializable {
        private static final long serialVersionUID = 1;
        @MonotonicNonNullDecl
        transient LoadingCache<K, V> autoDelegate;

        LoadingSerializationProxy(LocalCache<K, V> localCache) {
            super(localCache);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.autoDelegate = (LoadingCache<K, V>) recreateCacheBuilder().build(this.loader);
        }

        @Override // com.google.common.cache.LoadingCache
        public V get(K k) throws ExecutionException {
            return this.autoDelegate.get(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public V getUnchecked(K k) {
            return this.autoDelegate.getUnchecked(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
            return this.autoDelegate.getAll(iterable);
        }

        @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function
        public final V apply(K k) {
            return this.autoDelegate.apply(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public void refresh(K k) {
            this.autoDelegate.refresh(k);
        }

        private Object readResolve() {
            return this.autoDelegate;
        }
    }

    /* loaded from: classes2.dex */
    public static class LocalManualCache<K, V> implements Cache<K, V>, Serializable {
        private static final long serialVersionUID = 1;
        final LocalCache<K, V> localCache;

        public LocalManualCache(CacheBuilder<? super K, ? super V> cacheBuilder) {
            this(new LocalCache(cacheBuilder, null));
        }

        private LocalManualCache(LocalCache<K, V> localCache) {
            this.localCache = localCache;
        }

        @Override // com.google.common.cache.Cache
        @NullableDecl
        public V getIfPresent(Object obj) {
            return this.localCache.getIfPresent(obj);
        }

        @Override // com.google.common.cache.Cache
        public V get(K k, final Callable<? extends V> callable) throws ExecutionException {
            Preconditions.checkNotNull(callable);
            return this.localCache.get(k, new CacheLoader<Object, V>() { // from class: com.google.common.cache.LocalCache.LocalManualCache.1
                @Override // com.google.common.cache.CacheLoader
                public V load(Object obj) throws Exception {
                    return (V) callable.call();
                }
            });
        }

        @Override // com.google.common.cache.Cache
        public ImmutableMap<K, V> getAllPresent(Iterable<?> iterable) {
            return this.localCache.getAllPresent(iterable);
        }

        @Override // com.google.common.cache.Cache
        public void put(K k, V v) {
            this.localCache.put(k, v);
        }

        @Override // com.google.common.cache.Cache
        public void putAll(Map<? extends K, ? extends V> map) {
            this.localCache.putAll(map);
        }

        @Override // com.google.common.cache.Cache
        public void invalidate(Object obj) {
            Preconditions.checkNotNull(obj);
            this.localCache.remove(obj);
        }

        @Override // com.google.common.cache.Cache
        public void invalidateAll(Iterable<?> iterable) {
            this.localCache.invalidateAll(iterable);
        }

        @Override // com.google.common.cache.Cache
        public void invalidateAll() {
            this.localCache.clear();
        }

        @Override // com.google.common.cache.Cache
        public long size() {
            return this.localCache.longSize();
        }

        @Override // com.google.common.cache.Cache
        public ConcurrentMap<K, V> asMap() {
            return this.localCache;
        }

        @Override // com.google.common.cache.Cache
        public CacheStats stats() {
            AbstractCache.SimpleStatsCounter simpleStatsCounter = new AbstractCache.SimpleStatsCounter();
            simpleStatsCounter.incrementBy(this.localCache.globalStatsCounter);
            for (Segment<K, V> segment : this.localCache.segments) {
                simpleStatsCounter.incrementBy(segment.statsCounter);
            }
            return simpleStatsCounter.snapshot();
        }

        @Override // com.google.common.cache.Cache
        public void cleanUp() {
            this.localCache.cleanUp();
        }

        Object writeReplace() {
            return new ManualSerializationProxy(this.localCache);
        }
    }

    /* loaded from: classes2.dex */
    public static class LocalLoadingCache<K, V> extends LocalManualCache<K, V> implements LoadingCache<K, V> {
        private static final long serialVersionUID = 1;

        public LocalLoadingCache(CacheBuilder<? super K, ? super V> cacheBuilder, CacheLoader<? super K, V> cacheLoader) {
            super();
        }

        @Override // com.google.common.cache.LoadingCache
        public V get(K k) throws ExecutionException {
            return (V) this.localCache.getOrLoad(k);
        }

        @Override // com.google.common.cache.LoadingCache
        public V getUnchecked(K k) {
            try {
                return get(k);
            } catch (ExecutionException e) {
                throw new UncheckedExecutionException(e.getCause());
            }
        }

        @Override // com.google.common.cache.LoadingCache
        public ImmutableMap<K, V> getAll(Iterable<? extends K> iterable) throws ExecutionException {
            return this.localCache.getAll(iterable);
        }

        @Override // com.google.common.cache.LoadingCache
        public void refresh(K k) {
            this.localCache.refresh(k);
        }

        @Override // com.google.common.cache.LoadingCache, com.google.common.base.Function
        public final V apply(K k) {
            return getUnchecked(k);
        }

        @Override // com.google.common.cache.LocalCache.LocalManualCache
        Object writeReplace() {
            return new LoadingSerializationProxy(this.localCache);
        }
    }
}
