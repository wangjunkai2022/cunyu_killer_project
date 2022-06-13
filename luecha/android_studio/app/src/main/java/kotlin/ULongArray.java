package kotlin;

import java.util.Arrays;
import java.util.Collection;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt;
import kotlin.collections.ULongIterator;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: ULongArray.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0016\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0010(\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00012B\u0014\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006B\u0014\b\u0001\u0012\u0006\u0010\u0007\u001a\u00020\bø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\tJ\u001b\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J \u0010\u0013\u001a\u00020\u000f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0017\u001a\u00020\u000f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bJ\u001e\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0004H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b!\u0010\u000bJ\u000f\u0010\"\u001a\u00020\u000fH\u0016¢\u0006\u0004\b#\u0010$J\u0019\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00020&H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b'\u0010(J#\u0010)\u001a\u00020*2\u0006\u0010\u001d\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0002H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b,\u0010-J\u0010\u0010.\u001a\u00020/HÖ\u0001¢\u0006\u0004\b0\u00101R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0007\u001a\u00020\b8\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\r\u0088\u0001\u0007\u0092\u0001\u00020\bø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u00063"}, d2 = {"Lkotlin/ULongArray;", "", "Lkotlin/ULong;", "size", "", "constructor-impl", "(I)[J", "storage", "", "([J)[J", "getSize-impl", "([J)I", "getStorage$annotations", "()V", "contains", "", "element", "contains-VKZWuLQ", "([JJ)Z", "containsAll", "elements", "containsAll-impl", "([JLjava/util/Collection;)Z", "equals", "other", "", "equals-impl", "([JLjava/lang/Object;)Z", "get", "index", "get-s-VKNKU", "([JI)J", "hashCode", "hashCode-impl", "isEmpty", "isEmpty-impl", "([J)Z", "iterator", "", "iterator-impl", "([J)Ljava/util/Iterator;", "set", "", "value", "set-k8EXiF4", "([JIJ)V", "toString", "", "toString-impl", "([J)Ljava/lang/String;", "Iterator", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@JvmInline
/* loaded from: classes4.dex */
public final class ULongArray implements Collection<ULong>, KMappedMarker {
    private final long[] storage;

    /* renamed from: constructor-impl */
    public static long[] m270constructorimpl(long[] jArr) {
        Intrinsics.checkNotNullParameter(jArr, "storage");
        return jArr;
    }

    /* renamed from: equals-impl */
    public static boolean m273equalsimpl(long[] jArr, Object obj) {
        return (obj instanceof ULongArray) && Intrinsics.areEqual(jArr, ((ULongArray) obj).m284unboximpl());
    }

    /* renamed from: equals-impl0 */
    public static final boolean m274equalsimpl0(long[] jArr, long[] jArr2) {
        return Intrinsics.areEqual(jArr, jArr2);
    }

    public static /* synthetic */ void getStorage$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m277hashCodeimpl(long[] jArr) {
        if (jArr != null) {
            return Arrays.hashCode(jArr);
        }
        return 0;
    }

    /* renamed from: toString-impl */
    public static String m281toStringimpl(long[] jArr) {
        return "ULongArray(storage=" + Arrays.toString(jArr) + ")";
    }

    @Override // java.util.Collection
    public /* synthetic */ boolean add(ULong uLong) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: add-VKZWuLQ */
    public boolean m282addVKZWuLQ(long j) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends ULong> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: contains-VKZWuLQ */
    public boolean m283containsVKZWuLQ(long j) {
        return m271containsVKZWuLQ(this.storage, j);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> collection) {
        return m272containsAllimpl(this.storage, collection);
    }

    @Override // java.util.Collection, java.lang.Object
    public boolean equals(Object obj) {
        return m273equalsimpl(this.storage, obj);
    }

    public int getSize() {
        return m276getSizeimpl(this.storage);
    }

    @Override // java.util.Collection, java.lang.Object
    public int hashCode() {
        return m277hashCodeimpl(this.storage);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m278isEmptyimpl(this.storage);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public java.util.Iterator<ULong> iterator() {
        return m279iteratorimpl(this.storage);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) CollectionToArray.toArray(this, tArr);
    }

    @Override // java.lang.Object
    public String toString() {
        return m281toStringimpl(this.storage);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ long[] m284unboximpl() {
        return this.storage;
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ULong) {
            return m283containsVKZWuLQ(((ULong) obj).m267unboximpl());
        }
        return false;
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    private /* synthetic */ ULongArray(long[] jArr) {
        Intrinsics.checkNotNullParameter(jArr, "storage");
        this.storage = jArr;
    }

    /* renamed from: constructor-impl */
    public static long[] m269constructorimpl(int i) {
        return m270constructorimpl(new long[i]);
    }

    /* renamed from: get-s-VKNKU */
    public static final long m275getsVKNKU(long[] jArr, int i) {
        return ULong.m216constructorimpl(jArr[i]);
    }

    /* renamed from: set-k8EXiF4 */
    public static final void m280setk8EXiF4(long[] jArr, int i, long j) {
        jArr[i] = j;
    }

    /* renamed from: getSize-impl */
    public static int m276getSizeimpl(long[] jArr) {
        return jArr.length;
    }

    /* renamed from: iterator-impl */
    public static java.util.Iterator<ULong> m279iteratorimpl(long[] jArr) {
        return new Iterator(jArr);
    }

    /* compiled from: ULongArray.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\bH\u0096\u0002J\u0015\u0010\t\u001a\u00020\nH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\r"}, d2 = {"Lkotlin/ULongArray$Iterator;", "Lkotlin/collections/ULongIterator;", "array", "", "([J)V", "index", "", "hasNext", "", "nextULong", "Lkotlin/ULong;", "nextULong-s-VKNKU", "()J", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes4.dex */
    public static final class Iterator extends ULongIterator {
        private final long[] array;
        private int index;

        public Iterator(long[] jArr) {
            Intrinsics.checkNotNullParameter(jArr, "array");
            this.array = jArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.array.length;
        }

        @Override // kotlin.collections.ULongIterator
        /* renamed from: nextULong-s-VKNKU */
        public long mo285nextULongsVKNKU() {
            int i = this.index;
            long[] jArr = this.array;
            if (i < jArr.length) {
                this.index = i + 1;
                return ULong.m216constructorimpl(jArr[i]);
            }
            throw new NoSuchElementException(String.valueOf(this.index));
        }
    }

    /* renamed from: contains-VKZWuLQ */
    public static boolean m271containsVKZWuLQ(long[] jArr, long j) {
        return ArraysKt.contains(jArr, j);
    }

    /* renamed from: containsAll-impl */
    public static boolean m272containsAllimpl(long[] jArr, Collection<ULong> collection) {
        boolean z;
        Intrinsics.checkNotNullParameter(collection, "elements");
        Collection<ULong> collection2 = collection;
        if (!collection2.isEmpty()) {
            for (Object obj : collection2) {
                if (!(obj instanceof ULong) || !ArraysKt.contains(jArr, ((ULong) obj).m267unboximpl())) {
                    z = false;
                    continue;
                } else {
                    z = true;
                    continue;
                }
                if (!z) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: isEmpty-impl */
    public static boolean m278isEmptyimpl(long[] jArr) {
        return jArr.length == 0;
    }
}
