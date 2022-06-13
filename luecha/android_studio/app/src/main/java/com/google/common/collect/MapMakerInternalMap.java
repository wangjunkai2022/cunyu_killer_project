package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMaker;
import com.google.common.collect.MapMakerInternalMap.InternalEntry;
import com.google.common.collect.MapMakerInternalMap.Segment;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class MapMakerInternalMap<K, V, E extends InternalEntry<K, V, E>, S extends Segment<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {
    static final long CLEANUP_EXECUTOR_DELAY_SECS = 60;
    static final int CONTAINS_VALUE_RETRIES = 3;
    static final int DRAIN_MAX = 16;
    static final int DRAIN_THRESHOLD = 63;
    static final int MAXIMUM_CAPACITY = 1073741824;
    static final int MAX_SEGMENTS = 65536;
    static final WeakValueReference<Object, Object, DummyInternalEntry> UNSET_WEAK_VALUE_REFERENCE = new WeakValueReference<Object, Object, DummyInternalEntry>() { // from class: com.google.common.collect.MapMakerInternalMap.1
        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public void clear() {
        }

        public WeakValueReference<Object, Object, DummyInternalEntry> copyFor(ReferenceQueue<Object> referenceQueue, DummyInternalEntry dummyInternalEntry) {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public Object get() {
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public DummyInternalEntry getEntry() {
            return null;
        }
    };
    private static final long serialVersionUID = 5;
    final int concurrencyLevel;
    final transient InternalEntryHelper<K, V, E, S> entryHelper;
    @MonotonicNonNullDecl
    transient Set<Map.Entry<K, V>> entrySet;
    final Equivalence<Object> keyEquivalence;
    @MonotonicNonNullDecl
    transient Set<K> keySet;
    final transient int segmentMask;
    final transient int segmentShift;
    final transient Segment<K, V, E, S>[] segments;
    @MonotonicNonNullDecl
    transient Collection<V> values;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface InternalEntry<K, V, E extends InternalEntry<K, V, E>> {
        int getHash();

        K getKey();

        E getNext();

        V getValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface InternalEntryHelper<K, V, E extends InternalEntry<K, V, E>, S extends Segment<K, V, E, S>> {
        E copy(S s, E e, @NullableDecl E e2);

        Strength keyStrength();

        E newEntry(S s, K k, int i, @NullableDecl E e);

        S newSegment(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i, int i2);

        void setValue(S s, E e, V v);

        Strength valueStrength();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public enum Strength {
        STRONG {
            @Override // com.google.common.collect.MapMakerInternalMap.Strength
            Equivalence<Object> defaultEquivalence() {
                return Equivalence.equals();
            }
        },
        WEAK {
            @Override // com.google.common.collect.MapMakerInternalMap.Strength
            Equivalence<Object> defaultEquivalence() {
                return Equivalence.identity();
            }
        };

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Equivalence<Object> defaultEquivalence();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    interface StrongValueEntry<K, V, E extends InternalEntry<K, V, E>> extends InternalEntry<K, V, E> {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface WeakValueEntry<K, V, E extends InternalEntry<K, V, E>> extends InternalEntry<K, V, E> {
        void clearValue();

        WeakValueReference<K, V, E> getValueReference();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public interface WeakValueReference<K, V, E extends InternalEntry<K, V, E>> {
        void clear();

        WeakValueReference<K, V, E> copyFor(ReferenceQueue<V> referenceQueue, E e);

        @NullableDecl
        V get();

        E getEntry();
    }

    static int rehash(int i) {
        int i2 = i + ((i << 15) ^ -12931);
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = i5 + (i5 << 2) + (i5 << 14);
        return i6 ^ (i6 >>> 16);
    }

    private MapMakerInternalMap(MapMaker mapMaker, InternalEntryHelper<K, V, E, S> internalEntryHelper) {
        this.concurrencyLevel = Math.min(mapMaker.getConcurrencyLevel(), 65536);
        this.keyEquivalence = mapMaker.getKeyEquivalence();
        this.entryHelper = internalEntryHelper;
        int min = Math.min(mapMaker.getInitialCapacity(), 1073741824);
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        int i4 = 1;
        while (i4 < this.concurrencyLevel) {
            i3++;
            i4 <<= 1;
        }
        this.segmentShift = 32 - i3;
        this.segmentMask = i4 - 1;
        this.segments = newSegmentArray(i4);
        int i5 = min / i4;
        while (i2 < (i4 * i5 < min ? i5 + 1 : i5)) {
            i2 <<= 1;
        }
        while (true) {
            Segment<K, V, E, S>[] segmentArr = this.segments;
            if (i < segmentArr.length) {
                segmentArr[i] = createSegment(i2, -1);
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> MapMakerInternalMap<K, V, ? extends InternalEntry<K, V, ?>, ?> create(MapMaker mapMaker) {
        if (mapMaker.getKeyStrength() == Strength.STRONG && mapMaker.getValueStrength() == Strength.STRONG) {
            return new MapMakerInternalMap<>(mapMaker, StrongKeyStrongValueEntry.Helper.instance());
        }
        if (mapMaker.getKeyStrength() == Strength.STRONG && mapMaker.getValueStrength() == Strength.WEAK) {
            return new MapMakerInternalMap<>(mapMaker, StrongKeyWeakValueEntry.Helper.instance());
        }
        if (mapMaker.getKeyStrength() == Strength.WEAK && mapMaker.getValueStrength() == Strength.STRONG) {
            return new MapMakerInternalMap<>(mapMaker, WeakKeyStrongValueEntry.Helper.instance());
        }
        if (mapMaker.getKeyStrength() == Strength.WEAK && mapMaker.getValueStrength() == Strength.WEAK) {
            return new MapMakerInternalMap<>(mapMaker, WeakKeyWeakValueEntry.Helper.instance());
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K> MapMakerInternalMap<K, MapMaker.Dummy, ? extends InternalEntry<K, MapMaker.Dummy, ?>, ?> createWithDummyValues(MapMaker mapMaker) {
        if (mapMaker.getKeyStrength() == Strength.STRONG && mapMaker.getValueStrength() == Strength.STRONG) {
            return new MapMakerInternalMap<>(mapMaker, StrongKeyDummyValueEntry.Helper.instance());
        }
        if (mapMaker.getKeyStrength() == Strength.WEAK && mapMaker.getValueStrength() == Strength.STRONG) {
            return new MapMakerInternalMap<>(mapMaker, WeakKeyDummyValueEntry.Helper.instance());
        }
        if (mapMaker.getValueStrength() == Strength.WEAK) {
            throw new IllegalArgumentException("Map cannot have both weak and dummy values");
        }
        throw new AssertionError();
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    static abstract class AbstractStrongKeyEntry<K, V, E extends InternalEntry<K, V, E>> implements InternalEntry<K, V, E> {
        final int hash;
        final K key;
        @NullableDecl
        final E next;

        AbstractStrongKeyEntry(K k, int i, @NullableDecl E e) {
            this.key = k;
            this.hash = i;
            this.next = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public K getKey() {
            return this.key;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public int getHash() {
            return this.hash;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public E getNext() {
            return this.next;
        }
    }

    static <K, V, E extends InternalEntry<K, V, E>> WeakValueReference<K, V, E> unsetWeakValueReference() {
        return (WeakValueReference<K, V, E>) UNSET_WEAK_VALUE_REFERENCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class StrongKeyStrongValueEntry<K, V> extends AbstractStrongKeyEntry<K, V, StrongKeyStrongValueEntry<K, V>> implements StrongValueEntry<K, V, StrongKeyStrongValueEntry<K, V>> {
        @NullableDecl
        private volatile V value = null;

        StrongKeyStrongValueEntry(K k, int i, @NullableDecl StrongKeyStrongValueEntry<K, V> strongKeyStrongValueEntry) {
            super(k, i, strongKeyStrongValueEntry);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        @NullableDecl
        public V getValue() {
            return this.value;
        }

        void setValue(V v) {
            this.value = v;
        }

        StrongKeyStrongValueEntry<K, V> copy(StrongKeyStrongValueEntry<K, V> strongKeyStrongValueEntry) {
            StrongKeyStrongValueEntry<K, V> strongKeyStrongValueEntry2 = new StrongKeyStrongValueEntry<>(this.key, this.hash, strongKeyStrongValueEntry);
            strongKeyStrongValueEntry2.value = this.value;
            return strongKeyStrongValueEntry2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Classes with same name are omitted:
          classes3.dex
         */
        /* loaded from: classes5.dex */
        public static final class Helper<K, V> implements InternalEntryHelper<K, V, StrongKeyStrongValueEntry<K, V>, StrongKeyStrongValueSegment<K, V>> {
            private static final Helper<?, ?> INSTANCE = new Helper<>();

            Helper() {
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ InternalEntry copy(Segment segment, InternalEntry internalEntry, @NullableDecl InternalEntry internalEntry2) {
                return copy((StrongKeyStrongValueSegment) ((StrongKeyStrongValueSegment) segment), (StrongKeyStrongValueEntry) ((StrongKeyStrongValueEntry) internalEntry), (StrongKeyStrongValueEntry) ((StrongKeyStrongValueEntry) internalEntry2));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ InternalEntry newEntry(Segment segment, Object obj, int i, @NullableDecl InternalEntry internalEntry) {
                return newEntry((StrongKeyStrongValueSegment<StrongKeyStrongValueSegment<K, V>, V>) ((StrongKeyStrongValueSegment) segment), (StrongKeyStrongValueSegment<K, V>) obj, i, (StrongKeyStrongValueEntry<StrongKeyStrongValueSegment<K, V>, V>) ((StrongKeyStrongValueEntry) internalEntry));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ void setValue(Segment segment, InternalEntry internalEntry, Object obj) {
                setValue((StrongKeyStrongValueSegment<K, StrongKeyStrongValueEntry<K, V>>) ((StrongKeyStrongValueSegment) segment), (StrongKeyStrongValueEntry<K, StrongKeyStrongValueEntry<K, V>>) ((StrongKeyStrongValueEntry) internalEntry), (StrongKeyStrongValueEntry<K, V>) obj);
            }

            static <K, V> Helper<K, V> instance() {
                return (Helper<K, V>) INSTANCE;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Strength keyStrength() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Strength valueStrength() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public StrongKeyStrongValueSegment<K, V> newSegment(MapMakerInternalMap<K, V, StrongKeyStrongValueEntry<K, V>, StrongKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new StrongKeyStrongValueSegment<>(mapMakerInternalMap, i, i2);
            }

            public StrongKeyStrongValueEntry<K, V> copy(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, StrongKeyStrongValueEntry<K, V> strongKeyStrongValueEntry, @NullableDecl StrongKeyStrongValueEntry<K, V> strongKeyStrongValueEntry2) {
                return strongKeyStrongValueEntry.copy(strongKeyStrongValueEntry2);
            }

            public void setValue(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, StrongKeyStrongValueEntry<K, V> strongKeyStrongValueEntry, V v) {
                strongKeyStrongValueEntry.setValue(v);
            }

            public StrongKeyStrongValueEntry<K, V> newEntry(StrongKeyStrongValueSegment<K, V> strongKeyStrongValueSegment, K k, int i, @NullableDecl StrongKeyStrongValueEntry<K, V> strongKeyStrongValueEntry) {
                return new StrongKeyStrongValueEntry<>(k, i, strongKeyStrongValueEntry);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class StrongKeyWeakValueEntry<K, V> extends AbstractStrongKeyEntry<K, V, StrongKeyWeakValueEntry<K, V>> implements WeakValueEntry<K, V, StrongKeyWeakValueEntry<K, V>> {
        private volatile WeakValueReference<K, V, StrongKeyWeakValueEntry<K, V>> valueReference = MapMakerInternalMap.unsetWeakValueReference();

        StrongKeyWeakValueEntry(K k, int i, @NullableDecl StrongKeyWeakValueEntry<K, V> strongKeyWeakValueEntry) {
            super(k, i, strongKeyWeakValueEntry);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public V getValue() {
            return this.valueReference.get();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueEntry
        public void clearValue() {
            this.valueReference.clear();
        }

        void setValue(V v, ReferenceQueue<V> referenceQueue) {
            WeakValueReference<K, V, StrongKeyWeakValueEntry<K, V>> weakValueReference = this.valueReference;
            this.valueReference = new WeakValueReferenceImpl(referenceQueue, v, this);
            weakValueReference.clear();
        }

        StrongKeyWeakValueEntry<K, V> copy(ReferenceQueue<V> referenceQueue, StrongKeyWeakValueEntry<K, V> strongKeyWeakValueEntry) {
            StrongKeyWeakValueEntry<K, V> strongKeyWeakValueEntry2 = new StrongKeyWeakValueEntry<>(this.key, this.hash, strongKeyWeakValueEntry);
            strongKeyWeakValueEntry2.valueReference = this.valueReference.copyFor(referenceQueue, strongKeyWeakValueEntry2);
            return strongKeyWeakValueEntry2;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueEntry
        public WeakValueReference<K, V, StrongKeyWeakValueEntry<K, V>> getValueReference() {
            return this.valueReference;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Classes with same name are omitted:
          classes3.dex
         */
        /* loaded from: classes5.dex */
        public static final class Helper<K, V> implements InternalEntryHelper<K, V, StrongKeyWeakValueEntry<K, V>, StrongKeyWeakValueSegment<K, V>> {
            private static final Helper<?, ?> INSTANCE = new Helper<>();

            Helper() {
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ InternalEntry copy(Segment segment, InternalEntry internalEntry, @NullableDecl InternalEntry internalEntry2) {
                return copy((StrongKeyWeakValueSegment) ((StrongKeyWeakValueSegment) segment), (StrongKeyWeakValueEntry) ((StrongKeyWeakValueEntry) internalEntry), (StrongKeyWeakValueEntry) ((StrongKeyWeakValueEntry) internalEntry2));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ InternalEntry newEntry(Segment segment, Object obj, int i, @NullableDecl InternalEntry internalEntry) {
                return newEntry((StrongKeyWeakValueSegment<StrongKeyWeakValueSegment<K, V>, V>) ((StrongKeyWeakValueSegment) segment), (StrongKeyWeakValueSegment<K, V>) obj, i, (StrongKeyWeakValueEntry<StrongKeyWeakValueSegment<K, V>, V>) ((StrongKeyWeakValueEntry) internalEntry));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ void setValue(Segment segment, InternalEntry internalEntry, Object obj) {
                setValue((StrongKeyWeakValueSegment<K, StrongKeyWeakValueEntry<K, V>>) ((StrongKeyWeakValueSegment) segment), (StrongKeyWeakValueEntry<K, StrongKeyWeakValueEntry<K, V>>) ((StrongKeyWeakValueEntry) internalEntry), (StrongKeyWeakValueEntry<K, V>) obj);
            }

            static <K, V> Helper<K, V> instance() {
                return (Helper<K, V>) INSTANCE;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Strength keyStrength() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Strength valueStrength() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public StrongKeyWeakValueSegment<K, V> newSegment(MapMakerInternalMap<K, V, StrongKeyWeakValueEntry<K, V>, StrongKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new StrongKeyWeakValueSegment<>(mapMakerInternalMap, i, i2);
            }

            public StrongKeyWeakValueEntry<K, V> copy(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, StrongKeyWeakValueEntry<K, V> strongKeyWeakValueEntry, @NullableDecl StrongKeyWeakValueEntry<K, V> strongKeyWeakValueEntry2) {
                if (Segment.isCollected(strongKeyWeakValueEntry)) {
                    return null;
                }
                return strongKeyWeakValueEntry.copy(((StrongKeyWeakValueSegment) strongKeyWeakValueSegment).queueForValues, strongKeyWeakValueEntry2);
            }

            public void setValue(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, StrongKeyWeakValueEntry<K, V> strongKeyWeakValueEntry, V v) {
                strongKeyWeakValueEntry.setValue(v, ((StrongKeyWeakValueSegment) strongKeyWeakValueSegment).queueForValues);
            }

            public StrongKeyWeakValueEntry<K, V> newEntry(StrongKeyWeakValueSegment<K, V> strongKeyWeakValueSegment, K k, int i, @NullableDecl StrongKeyWeakValueEntry<K, V> strongKeyWeakValueEntry) {
                return new StrongKeyWeakValueEntry<>(k, i, strongKeyWeakValueEntry);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class StrongKeyDummyValueEntry<K> extends AbstractStrongKeyEntry<K, MapMaker.Dummy, StrongKeyDummyValueEntry<K>> implements StrongValueEntry<K, MapMaker.Dummy, StrongKeyDummyValueEntry<K>> {
        void setValue(MapMaker.Dummy dummy) {
        }

        StrongKeyDummyValueEntry(K k, int i, @NullableDecl StrongKeyDummyValueEntry<K> strongKeyDummyValueEntry) {
            super(k, i, strongKeyDummyValueEntry);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }

        StrongKeyDummyValueEntry<K> copy(StrongKeyDummyValueEntry<K> strongKeyDummyValueEntry) {
            return new StrongKeyDummyValueEntry<>(this.key, this.hash, strongKeyDummyValueEntry);
        }

        /* JADX WARN: Classes with same name are omitted:
          classes3.dex
         */
        /* loaded from: classes5.dex */
        static final class Helper<K> implements InternalEntryHelper<K, MapMaker.Dummy, StrongKeyDummyValueEntry<K>, StrongKeyDummyValueSegment<K>> {
            private static final Helper<?> INSTANCE = new Helper<>();

            public void setValue(StrongKeyDummyValueSegment<K> strongKeyDummyValueSegment, StrongKeyDummyValueEntry<K> strongKeyDummyValueEntry, MapMaker.Dummy dummy) {
            }

            Helper() {
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ InternalEntry copy(Segment segment, InternalEntry internalEntry, @NullableDecl InternalEntry internalEntry2) {
                return copy((StrongKeyDummyValueSegment) ((StrongKeyDummyValueSegment) segment), (StrongKeyDummyValueEntry) ((StrongKeyDummyValueEntry) internalEntry), (StrongKeyDummyValueEntry) ((StrongKeyDummyValueEntry) internalEntry2));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ InternalEntry newEntry(Segment segment, Object obj, int i, @NullableDecl InternalEntry internalEntry) {
                return newEntry((StrongKeyDummyValueSegment<StrongKeyDummyValueSegment<K>>) ((StrongKeyDummyValueSegment) segment), (StrongKeyDummyValueSegment<K>) obj, i, (StrongKeyDummyValueEntry<StrongKeyDummyValueSegment<K>>) ((StrongKeyDummyValueEntry) internalEntry));
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ void setValue(Segment segment, InternalEntry internalEntry, MapMaker.Dummy dummy) {
                setValue((StrongKeyDummyValueSegment) ((StrongKeyDummyValueSegment) segment), (StrongKeyDummyValueEntry) ((StrongKeyDummyValueEntry) internalEntry), dummy);
            }

            static <K> Helper<K> instance() {
                return (Helper<K>) INSTANCE;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Strength keyStrength() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Strength valueStrength() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public StrongKeyDummyValueSegment<K> newSegment(MapMakerInternalMap<K, MapMaker.Dummy, StrongKeyDummyValueEntry<K>, StrongKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
                return new StrongKeyDummyValueSegment<>(mapMakerInternalMap, i, i2);
            }

            public StrongKeyDummyValueEntry<K> copy(StrongKeyDummyValueSegment<K> strongKeyDummyValueSegment, StrongKeyDummyValueEntry<K> strongKeyDummyValueEntry, @NullableDecl StrongKeyDummyValueEntry<K> strongKeyDummyValueEntry2) {
                return strongKeyDummyValueEntry.copy(strongKeyDummyValueEntry2);
            }

            public StrongKeyDummyValueEntry<K> newEntry(StrongKeyDummyValueSegment<K> strongKeyDummyValueSegment, K k, int i, @NullableDecl StrongKeyDummyValueEntry<K> strongKeyDummyValueEntry) {
                return new StrongKeyDummyValueEntry<>(k, i, strongKeyDummyValueEntry);
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    static abstract class AbstractWeakKeyEntry<K, V, E extends InternalEntry<K, V, E>> extends WeakReference<K> implements InternalEntry<K, V, E> {
        final int hash;
        @NullableDecl
        final E next;

        AbstractWeakKeyEntry(ReferenceQueue<K> referenceQueue, K k, int i, @NullableDecl E e) {
            super(k, referenceQueue);
            this.hash = i;
            this.next = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public K getKey() {
            return (K) get();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public int getHash() {
            return this.hash;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public E getNext() {
            return this.next;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class WeakKeyDummyValueEntry<K> extends AbstractWeakKeyEntry<K, MapMaker.Dummy, WeakKeyDummyValueEntry<K>> implements StrongValueEntry<K, MapMaker.Dummy, WeakKeyDummyValueEntry<K>> {
        void setValue(MapMaker.Dummy dummy) {
        }

        WeakKeyDummyValueEntry(ReferenceQueue<K> referenceQueue, K k, int i, @NullableDecl WeakKeyDummyValueEntry<K> weakKeyDummyValueEntry) {
            super(referenceQueue, k, i, weakKeyDummyValueEntry);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public MapMaker.Dummy getValue() {
            return MapMaker.Dummy.VALUE;
        }

        WeakKeyDummyValueEntry<K> copy(ReferenceQueue<K> referenceQueue, WeakKeyDummyValueEntry<K> weakKeyDummyValueEntry) {
            return new WeakKeyDummyValueEntry<>(referenceQueue, getKey(), this.hash, weakKeyDummyValueEntry);
        }

        /* JADX WARN: Classes with same name are omitted:
          classes3.dex
         */
        /* loaded from: classes5.dex */
        static final class Helper<K> implements InternalEntryHelper<K, MapMaker.Dummy, WeakKeyDummyValueEntry<K>, WeakKeyDummyValueSegment<K>> {
            private static final Helper<?> INSTANCE = new Helper<>();

            public void setValue(WeakKeyDummyValueSegment<K> weakKeyDummyValueSegment, WeakKeyDummyValueEntry<K> weakKeyDummyValueEntry, MapMaker.Dummy dummy) {
            }

            Helper() {
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ InternalEntry copy(Segment segment, InternalEntry internalEntry, @NullableDecl InternalEntry internalEntry2) {
                return copy((WeakKeyDummyValueSegment) ((WeakKeyDummyValueSegment) segment), (WeakKeyDummyValueEntry) ((WeakKeyDummyValueEntry) internalEntry), (WeakKeyDummyValueEntry) ((WeakKeyDummyValueEntry) internalEntry2));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ InternalEntry newEntry(Segment segment, Object obj, int i, @NullableDecl InternalEntry internalEntry) {
                return newEntry((WeakKeyDummyValueSegment<WeakKeyDummyValueSegment<K>>) ((WeakKeyDummyValueSegment) segment), (WeakKeyDummyValueSegment<K>) obj, i, (WeakKeyDummyValueEntry<WeakKeyDummyValueSegment<K>>) ((WeakKeyDummyValueEntry) internalEntry));
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ void setValue(Segment segment, InternalEntry internalEntry, MapMaker.Dummy dummy) {
                setValue((WeakKeyDummyValueSegment) ((WeakKeyDummyValueSegment) segment), (WeakKeyDummyValueEntry) ((WeakKeyDummyValueEntry) internalEntry), dummy);
            }

            static <K> Helper<K> instance() {
                return (Helper<K>) INSTANCE;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Strength keyStrength() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Strength valueStrength() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public WeakKeyDummyValueSegment<K> newSegment(MapMakerInternalMap<K, MapMaker.Dummy, WeakKeyDummyValueEntry<K>, WeakKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
                return new WeakKeyDummyValueSegment<>(mapMakerInternalMap, i, i2);
            }

            public WeakKeyDummyValueEntry<K> copy(WeakKeyDummyValueSegment<K> weakKeyDummyValueSegment, WeakKeyDummyValueEntry<K> weakKeyDummyValueEntry, @NullableDecl WeakKeyDummyValueEntry<K> weakKeyDummyValueEntry2) {
                if (weakKeyDummyValueEntry.getKey() == null) {
                    return null;
                }
                return weakKeyDummyValueEntry.copy(((WeakKeyDummyValueSegment) weakKeyDummyValueSegment).queueForKeys, weakKeyDummyValueEntry2);
            }

            public WeakKeyDummyValueEntry<K> newEntry(WeakKeyDummyValueSegment<K> weakKeyDummyValueSegment, K k, int i, @NullableDecl WeakKeyDummyValueEntry<K> weakKeyDummyValueEntry) {
                return new WeakKeyDummyValueEntry<>(((WeakKeyDummyValueSegment) weakKeyDummyValueSegment).queueForKeys, k, i, weakKeyDummyValueEntry);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class WeakKeyStrongValueEntry<K, V> extends AbstractWeakKeyEntry<K, V, WeakKeyStrongValueEntry<K, V>> implements StrongValueEntry<K, V, WeakKeyStrongValueEntry<K, V>> {
        @NullableDecl
        private volatile V value = null;

        WeakKeyStrongValueEntry(ReferenceQueue<K> referenceQueue, K k, int i, @NullableDecl WeakKeyStrongValueEntry<K, V> weakKeyStrongValueEntry) {
            super(referenceQueue, k, i, weakKeyStrongValueEntry);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        @NullableDecl
        public V getValue() {
            return this.value;
        }

        void setValue(V v) {
            this.value = v;
        }

        WeakKeyStrongValueEntry<K, V> copy(ReferenceQueue<K> referenceQueue, WeakKeyStrongValueEntry<K, V> weakKeyStrongValueEntry) {
            WeakKeyStrongValueEntry<K, V> weakKeyStrongValueEntry2 = new WeakKeyStrongValueEntry<>(referenceQueue, getKey(), this.hash, weakKeyStrongValueEntry);
            weakKeyStrongValueEntry2.setValue(this.value);
            return weakKeyStrongValueEntry2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Classes with same name are omitted:
          classes3.dex
         */
        /* loaded from: classes5.dex */
        public static final class Helper<K, V> implements InternalEntryHelper<K, V, WeakKeyStrongValueEntry<K, V>, WeakKeyStrongValueSegment<K, V>> {
            private static final Helper<?, ?> INSTANCE = new Helper<>();

            Helper() {
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ InternalEntry copy(Segment segment, InternalEntry internalEntry, @NullableDecl InternalEntry internalEntry2) {
                return copy((WeakKeyStrongValueSegment) ((WeakKeyStrongValueSegment) segment), (WeakKeyStrongValueEntry) ((WeakKeyStrongValueEntry) internalEntry), (WeakKeyStrongValueEntry) ((WeakKeyStrongValueEntry) internalEntry2));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ InternalEntry newEntry(Segment segment, Object obj, int i, @NullableDecl InternalEntry internalEntry) {
                return newEntry((WeakKeyStrongValueSegment<WeakKeyStrongValueSegment<K, V>, V>) ((WeakKeyStrongValueSegment) segment), (WeakKeyStrongValueSegment<K, V>) obj, i, (WeakKeyStrongValueEntry<WeakKeyStrongValueSegment<K, V>, V>) ((WeakKeyStrongValueEntry) internalEntry));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ void setValue(Segment segment, InternalEntry internalEntry, Object obj) {
                setValue((WeakKeyStrongValueSegment<K, WeakKeyStrongValueEntry<K, V>>) ((WeakKeyStrongValueSegment) segment), (WeakKeyStrongValueEntry<K, WeakKeyStrongValueEntry<K, V>>) ((WeakKeyStrongValueEntry) internalEntry), (WeakKeyStrongValueEntry<K, V>) obj);
            }

            static <K, V> Helper<K, V> instance() {
                return (Helper<K, V>) INSTANCE;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Strength keyStrength() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Strength valueStrength() {
                return Strength.STRONG;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public WeakKeyStrongValueSegment<K, V> newSegment(MapMakerInternalMap<K, V, WeakKeyStrongValueEntry<K, V>, WeakKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new WeakKeyStrongValueSegment<>(mapMakerInternalMap, i, i2);
            }

            public WeakKeyStrongValueEntry<K, V> copy(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, WeakKeyStrongValueEntry<K, V> weakKeyStrongValueEntry, @NullableDecl WeakKeyStrongValueEntry<K, V> weakKeyStrongValueEntry2) {
                if (weakKeyStrongValueEntry.getKey() == null) {
                    return null;
                }
                return weakKeyStrongValueEntry.copy(((WeakKeyStrongValueSegment) weakKeyStrongValueSegment).queueForKeys, weakKeyStrongValueEntry2);
            }

            public void setValue(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, WeakKeyStrongValueEntry<K, V> weakKeyStrongValueEntry, V v) {
                weakKeyStrongValueEntry.setValue(v);
            }

            public WeakKeyStrongValueEntry<K, V> newEntry(WeakKeyStrongValueSegment<K, V> weakKeyStrongValueSegment, K k, int i, @NullableDecl WeakKeyStrongValueEntry<K, V> weakKeyStrongValueEntry) {
                return new WeakKeyStrongValueEntry<>(((WeakKeyStrongValueSegment) weakKeyStrongValueSegment).queueForKeys, k, i, weakKeyStrongValueEntry);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class WeakKeyWeakValueEntry<K, V> extends AbstractWeakKeyEntry<K, V, WeakKeyWeakValueEntry<K, V>> implements WeakValueEntry<K, V, WeakKeyWeakValueEntry<K, V>> {
        private volatile WeakValueReference<K, V, WeakKeyWeakValueEntry<K, V>> valueReference = MapMakerInternalMap.unsetWeakValueReference();

        WeakKeyWeakValueEntry(ReferenceQueue<K> referenceQueue, K k, int i, @NullableDecl WeakKeyWeakValueEntry<K, V> weakKeyWeakValueEntry) {
            super(referenceQueue, k, i, weakKeyWeakValueEntry);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public V getValue() {
            return this.valueReference.get();
        }

        WeakKeyWeakValueEntry<K, V> copy(ReferenceQueue<K> referenceQueue, ReferenceQueue<V> referenceQueue2, WeakKeyWeakValueEntry<K, V> weakKeyWeakValueEntry) {
            WeakKeyWeakValueEntry<K, V> weakKeyWeakValueEntry2 = new WeakKeyWeakValueEntry<>(referenceQueue, getKey(), this.hash, weakKeyWeakValueEntry);
            weakKeyWeakValueEntry2.valueReference = this.valueReference.copyFor(referenceQueue2, weakKeyWeakValueEntry2);
            return weakKeyWeakValueEntry2;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueEntry
        public void clearValue() {
            this.valueReference.clear();
        }

        void setValue(V v, ReferenceQueue<V> referenceQueue) {
            WeakValueReference<K, V, WeakKeyWeakValueEntry<K, V>> weakValueReference = this.valueReference;
            this.valueReference = new WeakValueReferenceImpl(referenceQueue, v, this);
            weakValueReference.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueEntry
        public WeakValueReference<K, V, WeakKeyWeakValueEntry<K, V>> getValueReference() {
            return this.valueReference;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Classes with same name are omitted:
          classes3.dex
         */
        /* loaded from: classes5.dex */
        public static final class Helper<K, V> implements InternalEntryHelper<K, V, WeakKeyWeakValueEntry<K, V>, WeakKeyWeakValueSegment<K, V>> {
            private static final Helper<?, ?> INSTANCE = new Helper<>();

            Helper() {
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ InternalEntry copy(Segment segment, InternalEntry internalEntry, @NullableDecl InternalEntry internalEntry2) {
                return copy((WeakKeyWeakValueSegment) ((WeakKeyWeakValueSegment) segment), (WeakKeyWeakValueEntry) ((WeakKeyWeakValueEntry) internalEntry), (WeakKeyWeakValueEntry) ((WeakKeyWeakValueEntry) internalEntry2));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ InternalEntry newEntry(Segment segment, Object obj, int i, @NullableDecl InternalEntry internalEntry) {
                return newEntry((WeakKeyWeakValueSegment<WeakKeyWeakValueSegment<K, V>, V>) ((WeakKeyWeakValueSegment) segment), (WeakKeyWeakValueSegment<K, V>) obj, i, (WeakKeyWeakValueEntry<WeakKeyWeakValueSegment<K, V>, V>) ((WeakKeyWeakValueEntry) internalEntry));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public /* bridge */ /* synthetic */ void setValue(Segment segment, InternalEntry internalEntry, Object obj) {
                setValue((WeakKeyWeakValueSegment<K, WeakKeyWeakValueEntry<K, V>>) ((WeakKeyWeakValueSegment) segment), (WeakKeyWeakValueEntry<K, WeakKeyWeakValueEntry<K, V>>) ((WeakKeyWeakValueEntry) internalEntry), (WeakKeyWeakValueEntry<K, V>) obj);
            }

            static <K, V> Helper<K, V> instance() {
                return (Helper<K, V>) INSTANCE;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Strength keyStrength() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public Strength valueStrength() {
                return Strength.WEAK;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public WeakKeyWeakValueSegment<K, V> newSegment(MapMakerInternalMap<K, V, WeakKeyWeakValueEntry<K, V>, WeakKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
                return new WeakKeyWeakValueSegment<>(mapMakerInternalMap, i, i2);
            }

            public WeakKeyWeakValueEntry<K, V> copy(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, WeakKeyWeakValueEntry<K, V> weakKeyWeakValueEntry, @NullableDecl WeakKeyWeakValueEntry<K, V> weakKeyWeakValueEntry2) {
                if (weakKeyWeakValueEntry.getKey() != null && !Segment.isCollected(weakKeyWeakValueEntry)) {
                    return weakKeyWeakValueEntry.copy(((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).queueForKeys, ((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).queueForValues, weakKeyWeakValueEntry2);
                }
                return null;
            }

            public void setValue(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, WeakKeyWeakValueEntry<K, V> weakKeyWeakValueEntry, V v) {
                weakKeyWeakValueEntry.setValue(v, ((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).queueForValues);
            }

            public WeakKeyWeakValueEntry<K, V> newEntry(WeakKeyWeakValueSegment<K, V> weakKeyWeakValueSegment, K k, int i, @NullableDecl WeakKeyWeakValueEntry<K, V> weakKeyWeakValueEntry) {
                return new WeakKeyWeakValueEntry<>(((WeakKeyWeakValueSegment) weakKeyWeakValueSegment).queueForKeys, k, i, weakKeyWeakValueEntry);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class DummyInternalEntry implements InternalEntry<Object, Object, DummyInternalEntry> {
        private DummyInternalEntry() {
            throw new AssertionError();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public DummyInternalEntry getNext() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public int getHash() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public Object getKey() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public Object getValue() {
            throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class WeakValueReferenceImpl<K, V, E extends InternalEntry<K, V, E>> extends WeakReference<V> implements WeakValueReference<K, V, E> {
        final E entry;

        WeakValueReferenceImpl(ReferenceQueue<V> referenceQueue, V v, E e) {
            super(v, referenceQueue);
            this.entry = e;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public E getEntry() {
            return this.entry;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public WeakValueReference<K, V, E> copyFor(ReferenceQueue<V> referenceQueue, E e) {
            return new WeakValueReferenceImpl(referenceQueue, get(), e);
        }
    }

    E copyEntry(E e, E e2) {
        return segmentFor(e.getHash()).copyEntry(e, e2);
    }

    int hash(Object obj) {
        return rehash(this.keyEquivalence.hash(obj));
    }

    void reclaimValue(WeakValueReference<K, V, E> weakValueReference) {
        E entry = weakValueReference.getEntry();
        int hash = entry.getHash();
        segmentFor(hash).reclaimValue((K) entry.getKey(), hash, weakValueReference);
    }

    void reclaimKey(E e) {
        int hash = e.getHash();
        segmentFor(hash).reclaimKey(e, hash);
    }

    boolean isLiveForTesting(InternalEntry<K, V, ?> internalEntry) {
        return segmentFor(internalEntry.getHash()).getLiveValueForTesting(internalEntry) != null;
    }

    Segment<K, V, E, S> segmentFor(int i) {
        return this.segments[(i >>> this.segmentShift) & this.segmentMask];
    }

    Segment<K, V, E, S> createSegment(int i, int i2) {
        return (S) this.entryHelper.newSegment(this, i, i2);
    }

    V getLiveValue(E e) {
        if (e.getKey() == null) {
            return null;
        }
        return (V) e.getValue();
    }

    final Segment<K, V, E, S>[] newSegmentArray(int i) {
        return new Segment[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static abstract class Segment<K, V, E extends InternalEntry<K, V, E>, S extends Segment<K, V, E, S>> extends ReentrantLock {
        volatile int count;
        final MapMakerInternalMap<K, V, E, S> map;
        final int maxSegmentSize;
        int modCount;
        final AtomicInteger readCount = new AtomicInteger();
        @MonotonicNonNullDecl
        volatile AtomicReferenceArray<E> table;
        int threshold;

        abstract E castForTesting(InternalEntry<K, V, ?> internalEntry);

        void maybeClearReferenceQueues() {
        }

        void maybeDrainReferenceQueues() {
        }

        abstract S self();

        Segment(MapMakerInternalMap<K, V, E, S> mapMakerInternalMap, int i, int i2) {
            this.map = mapMakerInternalMap;
            this.maxSegmentSize = i2;
            initTable(newEntryArray(i));
        }

        void setValue(E e, V v) {
            this.map.entryHelper.setValue(self(), e, v);
        }

        E copyEntry(E e, E e2) {
            return this.map.entryHelper.copy(self(), e, e2);
        }

        AtomicReferenceArray<E> newEntryArray(int i) {
            return new AtomicReferenceArray<>(i);
        }

        void initTable(AtomicReferenceArray<E> atomicReferenceArray) {
            this.threshold = (atomicReferenceArray.length() * 3) / 4;
            int i = this.threshold;
            if (i == this.maxSegmentSize) {
                this.threshold = i + 1;
            }
            this.table = atomicReferenceArray;
        }

        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            throw new AssertionError();
        }

        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            throw new AssertionError();
        }

        WeakValueReference<K, V, E> getWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry) {
            throw new AssertionError();
        }

        WeakValueReference<K, V, E> newWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry, V v) {
            throw new AssertionError();
        }

        void setWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry, WeakValueReference<K, V, ? extends InternalEntry<K, V, ?>> weakValueReference) {
            throw new AssertionError();
        }

        void setTableEntryForTesting(int i, InternalEntry<K, V, ?> internalEntry) {
            this.table.set(i, castForTesting(internalEntry));
        }

        E copyForTesting(InternalEntry<K, V, ?> internalEntry, @NullableDecl InternalEntry<K, V, ?> internalEntry2) {
            return this.map.entryHelper.copy(self(), castForTesting(internalEntry), castForTesting(internalEntry2));
        }

        void setValueForTesting(InternalEntry<K, V, ?> internalEntry, V v) {
            this.map.entryHelper.setValue(self(), castForTesting(internalEntry), v);
        }

        E newEntryForTesting(K k, int i, @NullableDecl InternalEntry<K, V, ?> internalEntry) {
            return this.map.entryHelper.newEntry(self(), k, i, castForTesting(internalEntry));
        }

        boolean removeTableEntryForTesting(InternalEntry<K, V, ?> internalEntry) {
            return removeEntryForTesting(castForTesting(internalEntry));
        }

        E removeFromChainForTesting(InternalEntry<K, V, ?> internalEntry, InternalEntry<K, V, ?> internalEntry2) {
            return removeFromChain(castForTesting(internalEntry), castForTesting(internalEntry2));
        }

        @NullableDecl
        V getLiveValueForTesting(InternalEntry<K, V, ?> internalEntry) {
            return getLiveValue(castForTesting(internalEntry));
        }

        void tryDrainReferenceQueues() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                } finally {
                    unlock();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void drainKeyReferenceQueue(ReferenceQueue<K> referenceQueue) {
            int i = 0;
            do {
                Reference<? extends K> poll = referenceQueue.poll();
                if (poll != null) {
                    this.map.reclaimKey((InternalEntry) poll);
                    i++;
                } else {
                    return;
                }
            } while (i != 16);
        }

        void drainValueReferenceQueue(ReferenceQueue<V> referenceQueue) {
            int i = 0;
            do {
                Reference<? extends V> poll = referenceQueue.poll();
                if (poll != null) {
                    this.map.reclaimValue((WeakValueReference) poll);
                    i++;
                } else {
                    return;
                }
            } while (i != 16);
        }

        <T> void clearReferenceQueue(ReferenceQueue<T> referenceQueue) {
            do {
            } while (referenceQueue.poll() != null);
        }

        E getFirst(int i) {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            return atomicReferenceArray.get(i & (atomicReferenceArray.length() - 1));
        }

        E getEntry(Object obj, int i) {
            if (this.count == 0) {
                return null;
            }
            for (E first = getFirst(i); first != null; first = (E) first.getNext()) {
                if (first.getHash() == i) {
                    Object key = first.getKey();
                    if (key == null) {
                        tryDrainReferenceQueues();
                    } else if (this.map.keyEquivalence.equivalent(obj, key)) {
                        return first;
                    }
                }
            }
            return null;
        }

        E getLiveEntry(Object obj, int i) {
            return getEntry(obj, i);
        }

        V get(Object obj, int i) {
            try {
                E liveEntry = getLiveEntry(obj, i);
                if (liveEntry == null) {
                    return null;
                }
                V v = (V) liveEntry.getValue();
                if (v == null) {
                    tryDrainReferenceQueues();
                }
                return v;
            } finally {
                postReadCleanup();
            }
        }

        boolean containsKey(Object obj, int i) {
            try {
                boolean z = false;
                if (this.count == 0) {
                    return false;
                }
                E liveEntry = getLiveEntry(obj, i);
                if (liveEntry != null) {
                    if (liveEntry.getValue() != null) {
                        z = true;
                    }
                }
                return z;
            } finally {
                postReadCleanup();
            }
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        boolean containsValue(Object obj) {
            try {
                if (this.count != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    int length = atomicReferenceArray.length();
                    for (int i = 0; i < length; i++) {
                        for (E e = atomicReferenceArray.get(i); e != null; e = e.getNext()) {
                            Object liveValue = getLiveValue(e);
                            if (liveValue != null && this.map.valueEquivalence().equivalent(obj, liveValue)) {
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

        /* JADX WARN: Multi-variable type inference failed */
        V put(K k, int i, V v, boolean z) {
            lock();
            try {
                preWriteCleanup();
                int i2 = this.count + 1;
                if (i2 > this.threshold) {
                    expand();
                    i2 = this.count + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (InternalEntry internalEntry = e; internalEntry != null; internalEntry = internalEntry.getNext()) {
                    Object key = internalEntry.getKey();
                    if (internalEntry.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        V v2 = (V) internalEntry.getValue();
                        if (v2 == null) {
                            this.modCount++;
                            setValue(internalEntry, v);
                            this.count = this.count;
                            return null;
                        } else if (z) {
                            return v2;
                        } else {
                            this.modCount++;
                            setValue(internalEntry, v);
                            return v2;
                        }
                    }
                }
                this.modCount++;
                E newEntry = this.map.entryHelper.newEntry(self(), k, i, e);
                setValue(newEntry, v);
                atomicReferenceArray.set(length, newEntry);
                this.count = i2;
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void expand() {
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = atomicReferenceArray.length();
            if (length < 1073741824) {
                int i = this.count;
                AtomicReferenceArray<E> atomicReferenceArray2 = (AtomicReferenceArray<E>) newEntryArray(length << 1);
                this.threshold = (atomicReferenceArray2.length() * 3) / 4;
                int length2 = atomicReferenceArray2.length() - 1;
                for (int i2 = 0; i2 < length; i2++) {
                    E e = atomicReferenceArray.get(i2);
                    if (e != null) {
                        InternalEntry next = e.getNext();
                        int hash = e.getHash() & length2;
                        if (next == null) {
                            atomicReferenceArray2.set(hash, e);
                        } else {
                            InternalEntry internalEntry = e;
                            while (next != null) {
                                int hash2 = next.getHash() & length2;
                                if (hash2 != hash) {
                                    internalEntry = next;
                                    hash = hash2;
                                }
                                next = next.getNext();
                            }
                            atomicReferenceArray2.set(hash, internalEntry);
                            while (e != internalEntry) {
                                int hash3 = e.getHash() & length2;
                                InternalEntry copyEntry = copyEntry(e, (InternalEntry) atomicReferenceArray2.get(hash3));
                                if (copyEntry != null) {
                                    atomicReferenceArray2.set(hash3, copyEntry);
                                } else {
                                    i--;
                                }
                                e = e.getNext();
                            }
                        }
                    }
                }
                this.table = atomicReferenceArray2;
                this.count = i;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean replace(K k, int i, V v, V v2) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (InternalEntry internalEntry = e; internalEntry != null; internalEntry = internalEntry.getNext()) {
                    Object key = internalEntry.getKey();
                    if (internalEntry.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        Object value = internalEntry.getValue();
                        if (value == null) {
                            if (isCollected(internalEntry)) {
                                int i2 = this.count;
                                this.modCount++;
                                atomicReferenceArray.set(length, removeFromChain(e, internalEntry));
                                this.count--;
                            }
                            return false;
                        } else if (!this.map.valueEquivalence().equivalent(v, value)) {
                            return false;
                        } else {
                            this.modCount++;
                            setValue(internalEntry, v2);
                            return true;
                        }
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        V replace(K k, int i, V v) {
            lock();
            try {
                preWriteCleanup();
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (InternalEntry internalEntry = e; internalEntry != null; internalEntry = internalEntry.getNext()) {
                    Object key = internalEntry.getKey();
                    if (internalEntry.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        V v2 = (V) internalEntry.getValue();
                        if (v2 == null) {
                            if (isCollected(internalEntry)) {
                                int i2 = this.count;
                                this.modCount++;
                                atomicReferenceArray.set(length, removeFromChain(e, internalEntry));
                                this.count--;
                            }
                            return null;
                        }
                        this.modCount++;
                        setValue(internalEntry, v);
                        return v2;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        V remove(Object obj, int i) {
            lock();
            try {
                preWriteCleanup();
                int i2 = this.count;
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (InternalEntry internalEntry = e; internalEntry != null; internalEntry = internalEntry.getNext()) {
                    Object key = internalEntry.getKey();
                    if (internalEntry.getHash() == i && key != null && this.map.keyEquivalence.equivalent(obj, key)) {
                        V v = (V) internalEntry.getValue();
                        if (v == null && !isCollected(internalEntry)) {
                            return null;
                        }
                        this.modCount++;
                        atomicReferenceArray.set(length, removeFromChain(e, internalEntry));
                        this.count--;
                        return v;
                    }
                }
                return null;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x003f, code lost:
            if (r8.map.valueEquivalence().equivalent(r11, r4.getValue()) == false) goto L_0x0043;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
            r5 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
            if (isCollected(r4) == false) goto L_0x005e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
            r8.modCount++;
            r0.set(r1, removeFromChain(r3, r4));
            r8.count--;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
            return r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0061, code lost:
            return false;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump */
        boolean remove(java.lang.Object r9, int r10, java.lang.Object r11) {
            /*
                r8 = this;
                r8.lock()
                r8.preWriteCleanup()     // Catch: all -> 0x006b
                int r0 = r8.count     // Catch: all -> 0x006b
                java.util.concurrent.atomic.AtomicReferenceArray<E extends com.google.common.collect.MapMakerInternalMap$InternalEntry<K, V, E>> r0 = r8.table     // Catch: all -> 0x006b
                int r1 = r0.length()     // Catch: all -> 0x006b
                r2 = 1
                int r1 = r1 - r2
                r1 = r1 & r10
                java.lang.Object r3 = r0.get(r1)     // Catch: all -> 0x006b
                com.google.common.collect.MapMakerInternalMap$InternalEntry r3 = (com.google.common.collect.MapMakerInternalMap.InternalEntry) r3     // Catch: all -> 0x006b
                r4 = r3
            L_0x0018:
                r5 = 0
                if (r4 == 0) goto L_0x0067
                java.lang.Object r6 = r4.getKey()     // Catch: all -> 0x006b
                int r7 = r4.getHash()     // Catch: all -> 0x006b
                if (r7 != r10) goto L_0x0062
                if (r6 == 0) goto L_0x0062
                com.google.common.collect.MapMakerInternalMap<K, V, E extends com.google.common.collect.MapMakerInternalMap$InternalEntry<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>> r7 = r8.map     // Catch: all -> 0x006b
                com.google.common.base.Equivalence<java.lang.Object> r7 = r7.keyEquivalence     // Catch: all -> 0x006b
                boolean r6 = r7.equivalent(r9, r6)     // Catch: all -> 0x006b
                if (r6 == 0) goto L_0x0062
                java.lang.Object r9 = r4.getValue()     // Catch: all -> 0x006b
                com.google.common.collect.MapMakerInternalMap<K, V, E extends com.google.common.collect.MapMakerInternalMap$InternalEntry<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>> r10 = r8.map     // Catch: all -> 0x006b
                com.google.common.base.Equivalence r10 = r10.valueEquivalence()     // Catch: all -> 0x006b
                boolean r9 = r10.equivalent(r11, r9)     // Catch: all -> 0x006b
                if (r9 == 0) goto L_0x0043
                r5 = r2
                goto L_0x0049
            L_0x0043:
                boolean r9 = isCollected(r4)     // Catch: all -> 0x006b
                if (r9 == 0) goto L_0x005e
            L_0x0049:
                int r9 = r8.modCount     // Catch: all -> 0x006b
                int r9 = r9 + r2
                r8.modCount = r9     // Catch: all -> 0x006b
                com.google.common.collect.MapMakerInternalMap$InternalEntry r9 = r8.removeFromChain(r3, r4)     // Catch: all -> 0x006b
                int r10 = r8.count     // Catch: all -> 0x006b
                int r10 = r10 - r2
                r0.set(r1, r9)     // Catch: all -> 0x006b
                r8.count = r10     // Catch: all -> 0x006b
                r8.unlock()
                return r5
            L_0x005e:
                r8.unlock()
                return r5
            L_0x0062:
                com.google.common.collect.MapMakerInternalMap$InternalEntry r4 = r4.getNext()     // Catch: all -> 0x006b
                goto L_0x0018
            L_0x0067:
                r8.unlock()
                return r5
            L_0x006b:
                r9 = move-exception
                r8.unlock()
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.MapMakerInternalMap.Segment.remove(java.lang.Object, int, java.lang.Object):boolean");
        }

        void clear() {
            if (this.count != 0) {
                lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = this.table;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        atomicReferenceArray.set(i, null);
                    }
                    maybeClearReferenceQueues();
                    this.readCount.set(0);
                    this.modCount++;
                    this.count = 0;
                } finally {
                    unlock();
                }
            }
        }

        E removeFromChain(E e, E e2) {
            int i = this.count;
            E e3 = (E) e2.getNext();
            while (e != e2) {
                E copyEntry = copyEntry(e, e3);
                if (copyEntry != null) {
                    e3 = copyEntry;
                } else {
                    i--;
                }
                e = (E) e.getNext();
            }
            this.count = i;
            return e3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean reclaimKey(E e, int i) {
            lock();
            try {
                int i2 = this.count;
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = i & (atomicReferenceArray.length() - 1);
                E e2 = atomicReferenceArray.get(length);
                for (InternalEntry internalEntry = e2; internalEntry != null; internalEntry = internalEntry.getNext()) {
                    if (internalEntry == e) {
                        this.modCount++;
                        atomicReferenceArray.set(length, removeFromChain(e2, internalEntry));
                        this.count--;
                        return true;
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean reclaimValue(K k, int i, WeakValueReference<K, V, E> weakValueReference) {
            lock();
            try {
                int i2 = this.count;
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (InternalEntry internalEntry = e; internalEntry != null; internalEntry = internalEntry.getNext()) {
                    Object key = internalEntry.getKey();
                    if (internalEntry.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        if (((WeakValueEntry) internalEntry).getValueReference() != weakValueReference) {
                            return false;
                        } else {
                            this.modCount++;
                            atomicReferenceArray.set(length, removeFromChain(e, internalEntry));
                            this.count--;
                            return true;
                        }
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean clearValueForTesting(K k, int i, WeakValueReference<K, V, ? extends InternalEntry<K, V, ?>> weakValueReference) {
            lock();
            try {
                AtomicReferenceArray<E> atomicReferenceArray = this.table;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (InternalEntry internalEntry = e; internalEntry != null; internalEntry = internalEntry.getNext()) {
                    Object key = internalEntry.getKey();
                    if (internalEntry.getHash() == i && key != null && this.map.keyEquivalence.equivalent(k, key)) {
                        if (((WeakValueEntry) internalEntry).getValueReference() != weakValueReference) {
                            return false;
                        } else {
                            atomicReferenceArray.set(length, removeFromChain(e, internalEntry));
                            return true;
                        }
                    }
                }
                return false;
            } finally {
                unlock();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        boolean removeEntryForTesting(E e) {
            int hash = e.getHash();
            int i = this.count;
            AtomicReferenceArray<E> atomicReferenceArray = this.table;
            int length = hash & (atomicReferenceArray.length() - 1);
            E e2 = atomicReferenceArray.get(length);
            for (InternalEntry internalEntry = e2; internalEntry != null; internalEntry = internalEntry.getNext()) {
                if (internalEntry == e) {
                    this.modCount++;
                    atomicReferenceArray.set(length, removeFromChain(e2, internalEntry));
                    this.count--;
                    return true;
                }
            }
            return false;
        }

        static <K, V, E extends InternalEntry<K, V, E>> boolean isCollected(E e) {
            return e.getValue() == null;
        }

        @NullableDecl
        V getLiveValue(E e) {
            if (e.getKey() == null) {
                tryDrainReferenceQueues();
                return null;
            }
            V v = (V) e.getValue();
            if (v != null) {
                return v;
            }
            tryDrainReferenceQueues();
            return null;
        }

        void postReadCleanup() {
            if ((this.readCount.incrementAndGet() & 63) == 0) {
                runCleanup();
            }
        }

        void preWriteCleanup() {
            runLockedCleanup();
        }

        void runCleanup() {
            runLockedCleanup();
        }

        void runLockedCleanup() {
            if (tryLock()) {
                try {
                    maybeDrainReferenceQueues();
                    this.readCount.set(0);
                } finally {
                    unlock();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class StrongKeyStrongValueSegment<K, V> extends Segment<K, V, StrongKeyStrongValueEntry<K, V>, StrongKeyStrongValueSegment<K, V>> {
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyStrongValueSegment<K, V> self() {
            return this;
        }

        StrongKeyStrongValueSegment(MapMakerInternalMap<K, V, StrongKeyStrongValueEntry<K, V>, StrongKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyStrongValueEntry<K, V> castForTesting(InternalEntry<K, V, ?> internalEntry) {
            return (StrongKeyStrongValueEntry) internalEntry;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class StrongKeyWeakValueSegment<K, V> extends Segment<K, V, StrongKeyWeakValueEntry<K, V>, StrongKeyWeakValueSegment<K, V>> {
        private final ReferenceQueue<V> queueForValues = new ReferenceQueue<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyWeakValueSegment<K, V> self() {
            return this;
        }

        StrongKeyWeakValueSegment(MapMakerInternalMap<K, V, StrongKeyWeakValueEntry<K, V>, StrongKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyWeakValueEntry<K, V> castForTesting(InternalEntry<K, V, ?> internalEntry) {
            return (StrongKeyWeakValueEntry) internalEntry;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakValueReference<K, V, StrongKeyWeakValueEntry<K, V>> getWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry) {
            return castForTesting((InternalEntry) internalEntry).getValueReference();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakValueReference<K, V, StrongKeyWeakValueEntry<K, V>> newWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry, V v) {
            return new WeakValueReferenceImpl(this.queueForValues, v, castForTesting((InternalEntry) internalEntry));
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void setWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry, WeakValueReference<K, V, ? extends InternalEntry<K, V, ?>> weakValueReference) {
            StrongKeyWeakValueEntry<K, V> castForTesting = castForTesting((InternalEntry) internalEntry);
            WeakValueReference weakValueReference2 = ((StrongKeyWeakValueEntry) castForTesting).valueReference;
            ((StrongKeyWeakValueEntry) castForTesting).valueReference = weakValueReference;
            weakValueReference2.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeDrainReferenceQueues() {
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeClearReferenceQueues() {
            clearReferenceQueue((ReferenceQueue<V>) this.queueForValues);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class StrongKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, StrongKeyDummyValueEntry<K>, StrongKeyDummyValueSegment<K>> {
        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyDummyValueSegment<K> self() {
            return this;
        }

        StrongKeyDummyValueSegment(MapMakerInternalMap<K, MapMaker.Dummy, StrongKeyDummyValueEntry<K>, StrongKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public StrongKeyDummyValueEntry<K> castForTesting(InternalEntry<K, MapMaker.Dummy, ?> internalEntry) {
            return (StrongKeyDummyValueEntry) internalEntry;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class WeakKeyStrongValueSegment<K, V> extends Segment<K, V, WeakKeyStrongValueEntry<K, V>, WeakKeyStrongValueSegment<K, V>> {
        private final ReferenceQueue<K> queueForKeys = new ReferenceQueue<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyStrongValueSegment<K, V> self() {
            return this;
        }

        WeakKeyStrongValueSegment(MapMakerInternalMap<K, V, WeakKeyStrongValueEntry<K, V>, WeakKeyStrongValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyStrongValueEntry<K, V> castForTesting(InternalEntry<K, V, ?> internalEntry) {
            return (WeakKeyStrongValueEntry) internalEntry;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeClearReferenceQueues() {
            clearReferenceQueue((ReferenceQueue<K>) this.queueForKeys);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class WeakKeyWeakValueSegment<K, V> extends Segment<K, V, WeakKeyWeakValueEntry<K, V>, WeakKeyWeakValueSegment<K, V>> {
        private final ReferenceQueue<K> queueForKeys = new ReferenceQueue<>();
        private final ReferenceQueue<V> queueForValues = new ReferenceQueue<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyWeakValueSegment<K, V> self() {
            return this;
        }

        WeakKeyWeakValueSegment(MapMakerInternalMap<K, V, WeakKeyWeakValueEntry<K, V>, WeakKeyWeakValueSegment<K, V>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<V> getValueReferenceQueueForTesting() {
            return this.queueForValues;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyWeakValueEntry<K, V> castForTesting(InternalEntry<K, V, ?> internalEntry) {
            return (WeakKeyWeakValueEntry) internalEntry;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakValueReference<K, V, WeakKeyWeakValueEntry<K, V>> getWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry) {
            return castForTesting((InternalEntry) internalEntry).getValueReference();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakValueReference<K, V, WeakKeyWeakValueEntry<K, V>> newWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry, V v) {
            return new WeakValueReferenceImpl(this.queueForValues, v, castForTesting((InternalEntry) internalEntry));
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public void setWeakValueReferenceForTesting(InternalEntry<K, V, ?> internalEntry, WeakValueReference<K, V, ? extends InternalEntry<K, V, ?>> weakValueReference) {
            WeakKeyWeakValueEntry<K, V> castForTesting = castForTesting((InternalEntry) internalEntry);
            WeakValueReference weakValueReference2 = ((WeakKeyWeakValueEntry) castForTesting).valueReference;
            ((WeakKeyWeakValueEntry) castForTesting).valueReference = weakValueReference;
            weakValueReference2.clear();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
            drainValueReferenceQueue(this.queueForValues);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeClearReferenceQueues() {
            clearReferenceQueue((ReferenceQueue<K>) this.queueForKeys);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static final class WeakKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, WeakKeyDummyValueEntry<K>, WeakKeyDummyValueSegment<K>> {
        private final ReferenceQueue<K> queueForKeys = new ReferenceQueue<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyDummyValueSegment<K> self() {
            return this;
        }

        WeakKeyDummyValueSegment(MapMakerInternalMap<K, MapMaker.Dummy, WeakKeyDummyValueEntry<K>, WeakKeyDummyValueSegment<K>> mapMakerInternalMap, int i, int i2) {
            super(mapMakerInternalMap, i, i2);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        ReferenceQueue<K> getKeyReferenceQueueForTesting() {
            return this.queueForKeys;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public WeakKeyDummyValueEntry<K> castForTesting(InternalEntry<K, MapMaker.Dummy, ?> internalEntry) {
            return (WeakKeyDummyValueEntry) internalEntry;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeDrainReferenceQueues() {
            drainKeyReferenceQueue(this.queueForKeys);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        void maybeClearReferenceQueues() {
            clearReferenceQueue((ReferenceQueue<K>) this.queueForKeys);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    static final class CleanupMapTask implements Runnable {
        final WeakReference<MapMakerInternalMap<?, ?, ?, ?>> mapReference;

        public CleanupMapTask(MapMakerInternalMap<?, ?, ?, ?> mapMakerInternalMap) {
            this.mapReference = new WeakReference<>(mapMakerInternalMap);
        }

        @Override // java.lang.Runnable
        public void run() {
            MapMakerInternalMap<?, ?, ?, ?> mapMakerInternalMap = this.mapReference.get();
            if (mapMakerInternalMap != null) {
                for (Segment<?, ?, ?, ?> segment : mapMakerInternalMap.segments) {
                    segment.runCleanup();
                }
                return;
            }
            throw new CancellationException();
        }
    }

    Strength keyStrength() {
        return this.entryHelper.keyStrength();
    }

    Strength valueStrength() {
        return this.entryHelper.valueStrength();
    }

    Equivalence<Object> valueEquivalence() {
        return this.entryHelper.valueStrength().defaultEquivalence();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        Segment<K, V, E, S>[] segmentArr = this.segments;
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

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        long j = 0;
        for (Segment<K, V, E, S> segment : this.segments) {
            j += (long) segment.count;
        }
        return Ints.saturatedCast(j);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).get(obj, hash);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public E getEntry(@NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        int hash = hash(obj);
        return segmentFor(hash).getEntry(obj, hash);
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
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.collect.MapMakerInternalMap$Segment<K, V, E extends com.google.common.collect.MapMakerInternalMap$InternalEntry<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>>[]] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.google.common.collect.MapMakerInternalMap$Segment] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // java.util.AbstractMap, java.util.Map
    /* Code decompiled incorrectly, please refer to instructions dump */
    public boolean containsValue(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object r17) {
        /*
            r16 = this;
            r0 = r17
            r1 = 0
            if (r0 != 0) goto L_0x0006
            return r1
        L_0x0006:
            r2 = r16
            com.google.common.collect.MapMakerInternalMap$Segment<K, V, E extends com.google.common.collect.MapMakerInternalMap$InternalEntry<K, V, E>, S extends com.google.common.collect.MapMakerInternalMap$Segment<K, V, E, S>>[] r3 = r2.segments
            r4 = -1
            r5 = r4
            r4 = r1
        L_0x000e:
            r7 = 3
            if (r4 >= r7) goto L_0x005c
            r7 = 0
            int r9 = r3.length
            r10 = r7
            r7 = r1
        L_0x0016:
            if (r7 >= r9) goto L_0x0051
            r8 = r3[r7]
            int r12 = r8.count
            java.util.concurrent.atomic.AtomicReferenceArray<E extends com.google.common.collect.MapMakerInternalMap$InternalEntry<K, V, E>> r12 = r8.table
            r13 = r1
        L_0x001f:
            int r14 = r12.length()
            if (r13 >= r14) goto L_0x0049
            java.lang.Object r14 = r12.get(r13)
            com.google.common.collect.MapMakerInternalMap$InternalEntry r14 = (com.google.common.collect.MapMakerInternalMap.InternalEntry) r14
        L_0x002b:
            if (r14 == 0) goto L_0x0045
            java.lang.Object r15 = r8.getLiveValue(r14)
            if (r15 == 0) goto L_0x003f
            com.google.common.base.Equivalence r1 = r16.valueEquivalence()
            boolean r1 = r1.equivalent(r0, r15)
            if (r1 == 0) goto L_0x003f
            r0 = 1
            return r0
        L_0x003f:
            com.google.common.collect.MapMakerInternalMap$InternalEntry r14 = r14.getNext()
            r1 = 0
            goto L_0x002b
        L_0x0045:
            int r13 = r13 + 1
            r1 = 0
            goto L_0x001f
        L_0x0049:
            int r1 = r8.modCount
            long r12 = (long) r1
            long r10 = r10 + r12
            int r7 = r7 + 1
            r1 = 0
            goto L_0x0016
        L_0x0051:
            int r1 = (r10 > r5 ? 1 : (r10 == r5 ? 0 : -1))
            if (r1 != 0) goto L_0x0057
            r0 = 0
            goto L_0x005d
        L_0x0057:
            int r4 = r4 + 1
            r5 = r10
            r1 = 0
            goto L_0x000e
        L_0x005c:
            r0 = r1
        L_0x005d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.MapMakerInternalMap.containsValue(java.lang.Object):boolean");
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
        for (Segment<K, V, E, S> segment : this.segments) {
            segment.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        KeySet keySet = new KeySet();
        this.keySet = keySet;
        return keySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        Values values = new Values();
        this.values = values;
        return values;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        EntrySet entrySet = new EntrySet();
        this.entrySet = entrySet;
        return entrySet;
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* JADX WARN: Incorrect field signature: TE; */
    /* loaded from: classes5.dex */
    abstract class HashIterator<T> implements Iterator<T> {
        @MonotonicNonNullDecl
        Segment<K, V, E, S> currentSegment;
        @MonotonicNonNullDecl
        AtomicReferenceArray<E> currentTable;
        @NullableDecl
        MapMakerInternalMap<K, V, E, S>.WriteThroughEntry lastReturned;
        @NullableDecl
        InternalEntry nextEntry;
        @NullableDecl
        MapMakerInternalMap<K, V, E, S>.WriteThroughEntry nextExternal;
        int nextSegmentIndex;
        int nextTableIndex = -1;

        @Override // java.util.Iterator
        public abstract T next();

        HashIterator() {
            this.nextSegmentIndex = MapMakerInternalMap.this.segments.length - 1;
            advance();
        }

        final void advance() {
            this.nextExternal = null;
            if (!nextInChain() && !nextInTable()) {
                while (this.nextSegmentIndex >= 0) {
                    Segment<K, V, E, S>[] segmentArr = MapMakerInternalMap.this.segments;
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
            InternalEntry internalEntry = this.nextEntry;
            if (internalEntry == null) {
                return false;
            }
            while (true) {
                this.nextEntry = internalEntry.getNext();
                InternalEntry internalEntry2 = this.nextEntry;
                if (internalEntry2 == null) {
                    return false;
                }
                if (advanceTo(internalEntry2)) {
                    return true;
                }
                internalEntry = this.nextEntry;
            }
        }

        boolean nextInTable() {
            while (true) {
                int i = this.nextTableIndex;
                if (i < 0) {
                    return false;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.currentTable;
                this.nextTableIndex = i - 1;
                InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(i);
                this.nextEntry = internalEntry;
                if (internalEntry != null && (advanceTo(this.nextEntry) || nextInChain())) {
                    return true;
                }
            }
        }

        boolean advanceTo(E e) {
            boolean z;
            try {
                Object key = e.getKey();
                Object liveValue = MapMakerInternalMap.this.getLiveValue(e);
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

        MapMakerInternalMap<K, V, E, S>.WriteThroughEntry nextEntry() {
            MapMakerInternalMap<K, V, E, S>.WriteThroughEntry writeThroughEntry = this.nextExternal;
            if (writeThroughEntry != null) {
                this.lastReturned = writeThroughEntry;
                advance();
                return this.lastReturned;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            CollectPreconditions.checkRemove(this.lastReturned != null);
            MapMakerInternalMap.this.remove(this.lastReturned.getKey());
            this.lastReturned = null;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    final class KeyIterator extends MapMakerInternalMap<K, V, E, S>.HashIterator {
        KeyIterator() {
            super();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.HashIterator, java.util.Iterator
        public K next() {
            return nextEntry().getKey();
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    final class ValueIterator extends MapMakerInternalMap<K, V, E, S>.HashIterator {
        ValueIterator() {
            super();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.HashIterator, java.util.Iterator
        public V next() {
            return nextEntry().getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public final class WriteThroughEntry extends AbstractMapEntry<K, V> {
        final K key;
        V value;

        WriteThroughEntry(K k, V v) {
            this.key = k;
            this.value = v;
        }

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        public K getKey() {
            return this.key;
        }

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        public V getValue() {
            return this.value;
        }

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry, java.lang.Object
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

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry, java.lang.Object
        public int hashCode() {
            return this.key.hashCode() ^ this.value.hashCode();
        }

        @Override // com.google.common.collect.AbstractMapEntry, java.util.Map.Entry
        public V setValue(V v) {
            V v2 = (V) MapMakerInternalMap.this.put(this.key, v);
            this.value = v;
            return v2;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    final class EntryIterator extends MapMakerInternalMap<K, V, E, S>.HashIterator {
        EntryIterator() {
            super();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.HashIterator, java.util.Iterator
        public Map.Entry<K, V> next() {
            return nextEntry();
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    final class KeySet extends SafeToArraySet<K> {
        KeySet() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set, java.lang.Iterable
        public Iterator<K> iterator() {
            return new KeyIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return MapMakerInternalMap.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    final class Values extends AbstractCollection<V> {
        Values() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new ValueIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return MapMakerInternalMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return MapMakerInternalMap.toArrayList(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapMakerInternalMap.toArrayList(this).toArray(tArr);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    final class EntrySet extends SafeToArraySet<Map.Entry<K, V>> {
        EntrySet() {
            super();
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
            if ((obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = MapMakerInternalMap.this.get(key)) != null && MapMakerInternalMap.this.valueEquivalence().equivalent(entry.getValue(), obj2)) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            if ((obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && MapMakerInternalMap.this.remove(key, entry.getValue())) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return MapMakerInternalMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            MapMakerInternalMap.this.clear();
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static abstract class SafeToArraySet<E> extends AbstractSet<E> {
        private SafeToArraySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return MapMakerInternalMap.toArrayList(this).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapMakerInternalMap.toArrayList(this).toArray(tArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> ArrayList<E> toArrayList(Collection<E> collection) {
        ArrayList<E> arrayList = new ArrayList<>(collection.size());
        Iterators.addAll(arrayList, collection.iterator());
        return arrayList;
    }

    Object writeReplace() {
        return new SerializationProxy(this.entryHelper.keyStrength(), this.entryHelper.valueStrength(), this.keyEquivalence, this.entryHelper.valueStrength().defaultEquivalence(), this.concurrencyLevel, this);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    static abstract class AbstractSerializationProxy<K, V> extends ForwardingConcurrentMap<K, V> implements Serializable {
        private static final long serialVersionUID = 3;
        final int concurrencyLevel;
        transient ConcurrentMap<K, V> delegate;
        final Equivalence<Object> keyEquivalence;
        final Strength keyStrength;
        final Equivalence<Object> valueEquivalence;
        final Strength valueStrength;

        AbstractSerializationProxy(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i, ConcurrentMap<K, V> concurrentMap) {
            this.keyStrength = strength;
            this.valueStrength = strength2;
            this.keyEquivalence = equivalence;
            this.valueEquivalence = equivalence2;
            this.concurrencyLevel = i;
            this.delegate = concurrentMap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingConcurrentMap, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public ConcurrentMap<K, V> delegate() {
            return this.delegate;
        }

        void writeMapTo(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.writeInt(this.delegate.size());
            for (Map.Entry<K, V> entry : this.delegate.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }

        MapMaker readMapMaker(ObjectInputStream objectInputStream) throws IOException {
            return new MapMaker().initialCapacity(objectInputStream.readInt()).setKeyStrength(this.keyStrength).setValueStrength(this.valueStrength).keyEquivalence(this.keyEquivalence).concurrencyLevel(this.concurrencyLevel);
        }

        /* JADX WARN: Multi-variable type inference failed */
        void readEntries(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            while (true) {
                Object readObject = objectInputStream.readObject();
                if (readObject != null) {
                    this.delegate.put(readObject, objectInputStream.readObject());
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static final class SerializationProxy<K, V> extends AbstractSerializationProxy<K, V> {
        private static final long serialVersionUID = 3;

        SerializationProxy(Strength strength, Strength strength2, Equivalence<Object> equivalence, Equivalence<Object> equivalence2, int i, ConcurrentMap<K, V> concurrentMap) {
            super(strength, strength2, equivalence, equivalence2, i, concurrentMap);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            writeMapTo(objectOutputStream);
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            this.delegate = readMapMaker(objectInputStream).makeMap();
            readEntries(objectInputStream);
        }

        private Object readResolve() {
            return this.delegate;
        }
    }
}
